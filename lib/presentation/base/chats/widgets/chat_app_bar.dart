// ignore_for_file: require_trailing_commas, cast_nullable_to_non_nullable

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_template/application/calls/call_screen/call_screen_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/active_status_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/calling_functions.dart';
import 'package:flutter_template/presentation/base/chats/widgets/more_button_menu.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_app_bar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class ChatAppBar extends StatefulWidget {
  const ChatAppBar({
    Key? key,
    required this.peerUser,
    required this.isBlock,
  }) : super(key: key);
  final KahoChatUser peerUser;
  final String isBlock;

  @override
  State<ChatAppBar> createState() => _ChatAppBarState();
}

class _ChatAppBarState extends State<ChatAppBar> {
  bool isVideoCall = false;
  bool checkLocalContact() {
    final PhoneContact contact =
        context.read<ContactsBloc>().state.phoneContacts.firstWhere(
              (contact) => contact.phoneNumber
                  .contains(widget.peerUser.phoneNumber.replaceAll(" ", "")),
              orElse: () => PhoneContact.empty(),
            );
    if (contact.phoneNumber
        .contains(widget.peerUser.phoneNumber.replaceAll(" ", ""))) {
      debugPrint("true");
      return true;
    } else {
      debugPrint("false");
      return false;
    }
  }

  Widget build(BuildContext context) {
    return BlocListener<CallsBloc, CallsState>(
      listener: (context, state) {
        // TODO: implement listener
        state.isPeerUserOnAnotherCallFailureOrSuccessOpt.fold(() => null,
            (some) {
          some.fold((failure) {
            Fluttertoast.showToast(
              msg: failure.maybeMap(
                permissionNotGranted: (e) =>
                    "Please grant camera and microphone permissions for call feature.",
                orElse: () => "Couldn't start the call. Please try again.",
              ),
              backgroundColor: Kolors.grey,
            );
          }, (peerUser) {
            if (peerUser.isOnCall != null && peerUser.isOnCall!) {
              context.read<UserBloc>().add(
                    UserEvent.createOrUpdateUser(
                      context
                          .read<UserBloc>()
                          .state
                          .signedInUser
                          .copyWith(isOnCall: false),
                    ),
                  );
              Fluttertoast.showToast(
                msg: "The person is on another call",
                backgroundColor: Kolors.grey,
              );
            } else {
              if (isVideoCall) {
                context.read<CallsBloc>().add(
                      CallsEvent.startVideoCall(
                        context.read<UserBloc>().state.signedInUser,
                        widget.peerUser,
                      ),
                    );
              } else {
                context.read<CallsBloc>().add(
                      CallsEvent.startVoiceCall(
                        context.read<UserBloc>().state.signedInUser,
                        widget.peerUser,
                      ),
                    );
              }
            }
          });
        });
      },
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final ref = FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('lastActive')
              .child(widget.peerUser.uid);
          return StreamBuilder<DatabaseEvent>(
            stream: ref.onValue,
            builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
              String activeStatus = "";
              String phoneContactNumberOrName = "";
              String displayNameOrNumber = widget.peerUser.phoneNumber;
              String dateString = '';
              if (snapshot.hasData) {
                print('activstts');
                print(snapshot.data!.snapshot.value);
                final LastActiveStatus userSnapShot = LastActiveStatus.fromJson(
                    snapshot.data!.snapshot.value as String);

                final DateTime date = DateTime.fromMillisecondsSinceEpoch(
                  userSnapShot.lastActiveMillisecondsSinceEpoch,
                );
                DateFormat format;

                if (DateTime.now().difference(date).inDays > 1) {
                  format = DateFormat("MMM d,h:mm a");
                  dateString = format.format(date.toLocal());
                } else {
                  format = DateFormat("h:mm a");
                  dateString = format.format(date);
                }
                // print("${DateTime.now().difference(date).inMinutes}");

                //print(dateString);
                activeStatus = userSnapShot.lastSeen == Privacy.Everyone
                    ? userSnapShot.activeStatus == ActiveStatus.Online
                        ? "Online"
                        : userSnapShot.activeStatus == ActiveStatus.Offline
                            ? "Last seen $dateString"
                            : "Typing..."
                    : userSnapShot.lastSeen == Privacy.Only_my_contact
                        ? checkLocalContact()
                            ? userSnapShot.activeStatus == ActiveStatus.Online
                                ? "Online"
                                : userSnapShot.activeStatus ==
                                        ActiveStatus.Offline
                                    ? "Last seen $dateString"
                                    : "Typing..."
                            : ''
                        : userSnapShot.activeStatus == ActiveStatus.Online
                            ? "Online"
                            : userSnapShot.activeStatus == ActiveStatus.Offline
                                ? "Last seen $dateString"
                                : "Typing...";

                phoneContactNumberOrName = Getters.checkLocalContact(
                  phoneContacts:
                      context.read<ContactsBloc>().state.phoneContacts,
                  phoneNumber: widget.peerUser.phoneNumber,
                );
                if (phoneContactNumberOrName == '') {
                  displayNameOrNumber = "${widget.peerUser.name}";
                } else {
                  displayNameOrNumber = phoneContactNumberOrName;
                }
              }
              return StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance.invitesCollection
                      .doc(Getters.getCurrentUserUid())
                      .inviteUsersCollection
                      .doc(widget.peerUser.uid)
                      .snapshots(),
                  builder: (context, snapShot) {
                    bool answered = false;
                    if (snapShot.hasData) {
                      try {
                        answered = snapShot.data!["answered"] as bool;
                        print("answered ");
                      } catch (e) {
                        print(e.toString());
                      }
                    }
                    return CustomAppBar(
                      imageUrl: widget.isBlock.isEmpty
                          ? widget.peerUser.profilePictureUrl
                          : AppConstants.dummyProfilePictureUrl,
                      title: displayNameOrNumber,
                      name: displayNameOrNumber.contains("+")
                          ? widget.peerUser.name
                          : displayNameOrNumber,
                      color: widget.peerUser.userColor,
                      subtitle: answered && phoneContactNumberOrName == ''
                          ? "$activeStatus"
                          : phoneContactNumberOrName != ''
                              ? activeStatus
                              : "",
                      onClick: () {
                        AutoRouter.of(context).push(ChatDetailsRoute(
                            peerUser: widget.peerUser,
                            displayNameOrNumber: displayNameOrNumber));
                      },
                      actions: [
                        IconButton(
                          onPressed: () async {
                            //  showCallRoomNotification(context: callContext);
                            if (widget.isBlock.isEmpty) {
                              if (!await Permission.camera.isGranted &&
                                  !await Permission.microphone.isGranted) {
                                showRequestPermissionDialogue(
                                  context: context,
                                  title:
                                      'Give the access to KahoChat to capture the audio and videos.',
                                  subtitle:
                                      "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                                  icon: Icons.camera_alt_outlined,
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    if (await Getters.requestPermission(
                                            Permission.camera) &&
                                        await Getters.requestPermission(
                                            Permission.microphone)) {
                                      isVideoCall = false;

                                      context.read<CallsBloc>().add(
                                            CallsEvent.isPeerUserOnAnotherCall(
                                              peerUser: widget.peerUser,
                                              page: CallingPage.chatAppBar,
                                            ),
                                          );
                                    }
                                  },
                                );
                              } else {
                                isVideoCall = false;

                                context.read<CallsBloc>().add(
                                      CallsEvent.isPeerUserOnAnotherCall(
                                        peerUser: widget.peerUser,
                                        page: CallingPage.chatAppBar,
                                      ),
                                    );
                              }
                            } else {
                              Fluttertoast.showToast(
                                msg: "You cannot call this contact",
                                backgroundColor: Kolors.grey,
                              );
                            }
                          },
                          icon: const Icon(CupertinoIcons.phone),
                        ),
                        IconButton(
                          onPressed: () async {
                            if (widget.isBlock.isEmpty) {
                              if (!await Permission.camera.isGranted &&
                                  !await Permission.microphone.isGranted) {
                                showRequestPermissionDialogue(
                                  context: context,
                                  title:
                                      'Give the access to KahoChat to capture the audio and videos.',
                                  subtitle:
                                      "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                                  icon: Icons.camera_alt_outlined,
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    if (await Getters.requestPermission(
                                            Permission.camera) &&
                                        await Getters.requestPermission(
                                            Permission.microphone)) {
                                      // context.read<CallsBloc>().add(
                                      //       CallsEvent.startVideoCall(
                                      //         state.signedInUser,
                                      //         widget.peerUser,
                                      //       ),

                                      isVideoCall = true;

                                      context.read<CallsBloc>().add(
                                            CallsEvent.isPeerUserOnAnotherCall(
                                              peerUser: widget.peerUser,
                                              page: CallingPage.chatAppBar,
                                            ),
                                          );
                                      //     );
                                    }
                                  },
                                );
                              } else {
                                isVideoCall = true;

                                // context.read<CallsBloc>().add(
                                //       CallsEvent.startVideoCall(
                                //         state.signedInUser,
                                //         widget.peerUser,
                                //       ),
                                //     );
                                context.read<CallsBloc>().add(
                                      CallsEvent.isPeerUserOnAnotherCall(
                                        peerUser: widget.peerUser,
                                        page: CallingPage.chatAppBar,
                                      ),
                                    );
                              }
                            } else {
                              Fluttertoast.showToast(
                                  msg: "You cannot video call this contact",
                                  backgroundColor: Kolors.grey);
                            }
                          },
                          icon: const Icon(CupertinoIcons.videocam, size: 32),
                        ),
                      ],
                      onClickMore: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          context: context,
                          builder: (builder) => MoreButtonMenu(
                              peerUser: widget.peerUser,
                              isBlock: widget.isBlock),
                        );
                      },
                    );
                  });
            },
          );
        },
      ),
    );
  }
}
