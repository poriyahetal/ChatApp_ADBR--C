// ignore_for_file: cast_nullable_to_non_nullable, deprecated_member_use

import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contact/contacts.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/supportChat/reported_message_model.dart';
import 'package:flutter_template/domain/supportChat/support_chat_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/pages/disappearing_messages.dart';
import 'package:flutter_template/presentation/core/pages/shared_media.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class ChatDetailsPage extends StatefulWidget {
  final KahoChatUser peerUser;
  final String displayNameOrNumber;
  const ChatDetailsPage({
    Key? key,
    required this.peerUser,
    required this.displayNameOrNumber,
  }) : super(key: key);

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  bool isBarEnable = false;
  bool isVideoCall = false;
  late StreamController controller;
  String displayNameOrNumber = '';

  @override
  void initState() {
    // TODO: implement initState
    // checkLocalContact();
    super.initState();
  }

  bool checkLocalContact() {
    final PhoneContact contact =
        context.read<ContactsBloc>().state.phoneContacts.firstWhere(
              (contact) =>
                  contact.phoneNumber.contains(widget.peerUser.phoneNumber),
              orElse: () => PhoneContact.empty(),
            );
    if (contact.phoneNumber.contains(widget.peerUser.phoneNumber)) {
      debugPrint("true");

      return true;
    } else {
      debugPrint("false");
      return false;
    }
  }

  void refreshContacts() {
    setState(() {
      print("Refresh has been called");
      context
          .read<ContactsBloc>()
          .add(ContactsEvent.fetchPhoneContacts(context: context));
    });
  }

  String getPeerPhoneContactName() {
    final PhoneContact contact =
        context.read<ContactsBloc>().state.phoneContacts.firstWhere(
              (contact) =>
                  contact.phoneNumber.contains(widget.peerUser.phoneNumber),
              orElse: () => PhoneContact.empty(),
            );
    return contact.name;
  }

  String getDisString(num? des) {
    switch (des) {
      case 0:
        {
          return "Disappearing message turned off";
        }
      case 30:
        {
          return "Disappearing message set for 30 seconds";
        }
      case 300:
        {
          return "Disappearing message set for 5 minuits";
        }
      case 3600:
        {
          return "Disappearing message set for 1 hour";
        }
      case 28800:
        {
          return "Disappearing message set for 8 hours";
        }
      case 86400:
        {
          return "Disappearing message set for 1 day";
        }
      case 604800:
        {
          return "Disappearing message set for 1 week";
        }
      case 2419200:
        {
          return "Disappearing message set for 4 weeks";
        }
      default:
        {
          return "Disappearing message turned off";
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<CallsBloc, CallsState>(listener: (context, state) {
      // TODO: implement listener
      state.chatDetailPageWaitingCallFailureOrSuccessOpt.fold(() => null,
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
    }, child: BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, contacts) {
        final String phoneContactNumberOrName = Getters.checkLocalContact(
          phoneContacts: contacts.phoneContacts,
          phoneNumber: widget.peerUser.phoneNumber,
        );
        if (phoneContactNumberOrName == '') {
          displayNameOrNumber = widget.peerUser.name;
        } else {
          displayNameOrNumber = phoneContactNumberOrName;
        }
        final inContact = contacts.phoneContacts.where((phoneContact) {
          return phoneContact.phoneNumber.contains(widget.peerUser.phoneNumber);
        }).isNotEmpty;
        return StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance.chatCollection
              .doc(Getters.getCurrentUserUid())
              .chatUsersCollection
              .doc(widget.peerUser.uid)
              .snapshots(),
          builder: (context, snapshot) {
            String isBlock = "";
            num diseaperingMessage = 0;
            if (snapshot.hasData) {
              final _isBlock = snapshot.data!.data() != null
                  ? snapshot.data!.data().toJson()['isBlock']
                  : null;
              isBlock = _isBlock != null ? _isBlock.toString() : "";
              final _diseaperingMessage = snapshot.data!.data() != null
                  ? snapshot.data!.data().toJson()['desepeaearingTime']
                  : null;
              diseaperingMessage =
                  _diseaperingMessage != null ? _diseaperingMessage as num : 0;
            }
            final String deseperingMessageText =
                getDisString(diseaperingMessage);
            return StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance.usersCollection
                  .doc(widget.peerUser.uid)
                  .snapshots(),
              builder: (
                context,
                AsyncSnapshot<DocumentSnapshot> singleUserSnapShot,
              ) {
                KahoChatUser userSnapShot = KahoChatUser.empty();
                if (singleUserSnapShot.hasData) {
                  userSnapShot = KahoChatUser.fromMap(
                    singleUserSnapShot.data!.data() as Map<String, dynamic>,
                  );
                  //print(userSnapShot.toString());
                  // activeStatus = userSnapShot.activeStatus == ActiveStatus.Online
                  //     ? "Online"
                  //     : userSnapShot.activeStatus == ActiveStatus.Offline
                  //         ? "Offline"
                  //         : "Typing...";
                }
                // print(singleUserSnapShot.data!.id);
                // print(userSnapShot.aboutYou);
                return BlocBuilder<UserBloc, UserState>(
                  builder: (context, uState) {
                    return SafeScaffold(
                      appBar: AppBar(
                        backgroundColor: Theme.of(context).backgroundColor,
                        iconTheme: Theme.of(context).iconTheme,
                        actions: [
                          IconButton(
                            icon: const Icon(Icons.edit_outlined),
                            onPressed: () async {
                              if (!inContact) {
                                print("This number is not in contact");
                                try {
                                  if (await Permission.contacts.isGranted) {
                                    // AutoRouter.of(context)
                                    //     .push(ContactPermissionRoute(
                                    //   onPressed: () async {
                                    //     Navigator.pop(context);
                                    //     if (await Getters.requestPermission(
                                    //         Permission.contacts)) {
                                    //       final Contact newContact = Contact();
                                    //       newContact.givenName =
                                    //           widget.peerUser.name;
                                    //       newContact.phones = [
                                    //         Item(
                                    //             label: "mobile",
                                    //             value:
                                    //                 widget.peerUser.phoneNumber)
                                    //       ];
                                    //       await Contacts.openContactInsertForm(
                                    //               newContact)
                                    //           .whenComplete(
                                    //               () => refreshContacts());
                                    //     }
                                    //   },
                                    // ));
                                    final Contact newContact = Contact();
                                    newContact.givenName = widget.peerUser.name;
                                    newContact.phones = [
                                      Item(
                                          label: "mobile",
                                          value: widget.peerUser.phoneNumber)
                                    ];
                                    await Contacts.openContactInsertForm(
                                            newContact)
                                        .whenComplete(() => refreshContacts());
                                  } else {
                                    Fluttertoast.showToast(
                                      msg:
                                          'Allow contact permission from app drawer then my contact tab to use this functionality',
                                      backgroundColor: Kolors.grey,
                                    );
                                  }
                                } catch (e) {
                                  log(e.toString());
                                }
                              } else {
                                print("This number is in contact");
                                final cont = await HelperFunctions.getContactId(
                                  widget.peerUser.phoneNumber,
                                );
                                // Contacts.openContactEditForm(cont);
                                Contacts.openContactEditForm(cont)
                                    .whenComplete(() => refreshContacts());
                              }
                            },
                          )
                        ],
                      ),
                      body: ListView(
                        //title: widget.peerUser.name,
                        //imageUrl: widget.peerUser.profilePictureUrl,
                        children: [
                          const SizedBoxH20(),
                          CustomCircleAvatar(
                            nameFontSize: 60,
                            // profilePictureUrl: isBlock.isEmpty
                            //     ? userSnapShot.profilePhoto == Privacy.Everyone
                            //         ? userSnapShot.profilePictureUrl
                            //         : userSnapShot.profilePhoto ==
                            //                 Privacy.Only_my_contact
                            //             ? checkLocalContact()
                            //                 ? userSnapShot.profilePictureUrl
                            //                 : AppConstants
                            //                     .dummyProfilePictureUrl
                            //             : AppConstants.dummyProfilePictureUrl
                            //     : AppConstants.dummyProfilePictureUrl,
                            profilePictureUrl: userSnapShot.profilePictureUrl,
                            radius: 60,
                            name: displayNameOrNumber.contains("+")
                                ? userSnapShot.name
                                : displayNameOrNumber,
                            color: userSnapShot.userColor,
                          ),
                          /*Column(
                                      children: [
                                        RawMaterialButton(
                                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                          onPressed: () {    context.read<CallsBloc>().add(
                                                  CallsEvent.startVoiceCall(
                                                    context.read<UserBloc>().state.signedInUser,
                                                    widget.peerUser,
                                                  ),
                                                );  },
                                          child: Container(
                                            height: size.width*0.2,
                                            width: size.width*0.2,
                                            margin: EdgeInsets.symmetric(horizontal: 4.0,vertical: 4.0),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Colors.grey.shade100
                                            ),
                                            child: const Icon(CupertinoIcons.phone,size: 30),
                                          ),
                                        ),
                                        const SizedBox(height:5),
                                        const Text("Voice")
                                      ],
                                    ),*/
                          const SizedBoxH10(),
                          Text(displayNameOrNumber,
                              // style: TextStyle(
                              //     color: Colors.grey[800],
                              //     fontSize: 22,
                              //     fontWeight: FontWeight.bold),
                              // textAlign: TextAlign.center),
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyText2
                                  ?.copyWith(
                                      // color: Colors.grey[800],
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          Text(
                              "${widget.peerUser.countryCode} ${widget.peerUser.phoneNumber}",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyText2
                                  ?.copyWith(
                                      // color: Colors.grey[800],
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center),

                          // //  TextStyle(

                          // ),
                          //const DetailsPageEncryptionTile(),
                          const SizedBoxH30(),
                          const SizedBoxH10(),
                          const Divider(
                            thickness: 5,
                            height: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBoxH10(),
                              ListTile(
                                title: Text(
                                  "${context.read<SettingsBloc>().state.languageData.bio}",
                                  style: const TextStyle(
                                      color: Kolors.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                //                           aboutYou: map['aboutYou'] == "Privacy.everyone"
                                // ? Privacy.everyone
                                // : map['aboutYou'] == "Privacy.onlyMyContact"
                                //     ? Privacy.onlyMyContact
                                //     : Privacy.noOne,
                                // subtitle: Text(widget.peerUser.about),
                                subtitle: Text(userSnapShot.aboutYou
                                            .toString() ==
                                        Privacy.Everyone.toString()
                                    ? userSnapShot.about
                                    : userSnapShot.aboutYou.toString() ==
                                            Privacy.Only_my_contact.toString()
                                        ? checkLocalContact()
                                            ? userSnapShot.about
                                            : ''
                                        : ''),
                              ),
                              const Divider(
                                thickness: 5,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  // height: size.height,
                                  width: size.width,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          RawMaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            onPressed: () async {
                                              if (isBlock.isEmpty) {
                                                if (!await Permission
                                                        .camera.isGranted &&
                                                    !await Permission
                                                        .microphone.isGranted) {
                                                  showRequestPermissionDialogue(
                                                    context: context,
                                                    title:
                                                        'Give the access to KahoChat to capture the audio and videos.',
                                                    subtitle:
                                                        "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                                                    icon:
                                                        Icons.camera_alt_outlined,
                                                    onPressed: () async {
                                                      Navigator.pop(context);
                                                      if (await Getters
                                                              .requestPermission(
                                                                  Permission
                                                                      .camera) &&
                                                          await Getters
                                                              .requestPermission(
                                                                  Permission
                                                                      .microphone)) {
                                                        // context.read<CallsBloc>().add(
                                                        //       CallsEvent.startVideoCall(
                                                        //         state.signedInUser,
                                                        //         widget.peerUser,
                                                        //       ),

                                                        isVideoCall = true;

                                                        context
                                                            .read<CallsBloc>()
                                                            .add(
                                                              CallsEvent
                                                                  .isPeerUserOnAnotherCall(
                                                                peerUser: widget
                                                                    .peerUser,
                                                                page: CallingPage
                                                                    .chatDetailPage,
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
                                                        CallsEvent
                                                            .isPeerUserOnAnotherCall(
                                                          peerUser:
                                                              widget.peerUser,
                                                          page: CallingPage
                                                              .chatDetailPage,
                                                        ),
                                                      );
                                                }
                                              } else {
                                                Fluttertoast.showToast(
                                                  msg:
                                                      "You cannot video call this contact",
                                                  backgroundColor: Kolors.grey,
                                                );
                                              }
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 4.0, vertical: 4.0),
                                              height: size.width * 0.2,
                                              width: size.width * 0.2,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.grey.shade100),
                                              child: const Icon(
                                                CupertinoIcons.videocam,
                                                size: 35,
                                                color: Kolors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          const Text("Video")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          RawMaterialButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            onPressed: () async {
                                              if (isBlock.isEmpty) {
                                                if (!await Permission
                                                        .camera.isGranted &&
                                                    !await Permission
                                                        .microphone.isGranted) {
                                                  showRequestPermissionDialogue(
                                                    context: context,
                                                    title:
                                                        'Give the access to KahoChat to capture the audio and videos.',
                                                    subtitle:
                                                        "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                                                    icon:
                                                        Icons.camera_alt_outlined,
                                                    onPressed: () async {
                                                      Navigator.pop(context);
                                                      if (await Getters
                                                              .requestPermission(
                                                                  Permission
                                                                      .camera) &&
                                                          await Getters
                                                              .requestPermission(
                                                                  Permission
                                                                      .microphone)) {
                                                        // context.read<CallsBloc>().add(
                                                        //       CallsEvent.startVideoCall(
                                                        //         state.signedInUser,
                                                        //         widget.peerUser,
                                                        //       ),

                                                        isVideoCall = false;

                                                        context
                                                            .read<CallsBloc>()
                                                            .add(
                                                              CallsEvent
                                                                  .isPeerUserOnAnotherCall(
                                                                peerUser: widget
                                                                    .peerUser,
                                                                page: CallingPage
                                                                    .chatDetailPage,
                                                              ),
                                                            );
                                                        //     );
                                                      }
                                                    },
                                                  );
                                                } else {
                                                  isVideoCall = false;

                                                  // context.read<CallsBloc>().add(
                                                  //       CallsEvent.startVideoCall(
                                                  //         state.signedInUser,
                                                  //         widget.peerUser,
                                                  //       ),
                                                  //     );
                                                  context.read<CallsBloc>().add(
                                                        CallsEvent
                                                            .isPeerUserOnAnotherCall(
                                                          peerUser:
                                                              widget.peerUser,
                                                          page: CallingPage
                                                              .chatDetailPage,
                                                        ),
                                                      );
                                                }
                                              } else {
                                                Fluttertoast.showToast(
                                                  msg:
                                                      "You cannot call this contact",
                                                  backgroundColor: Kolors.grey,
                                                );
                                              }
                                            },
                                            child: Container(
                                              height: size.width * 0.2,
                                              width: size.width * 0.2,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 4.0, vertical: 4.0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.grey.shade100),
                                              child: const Icon(
                                                CupertinoIcons.phone,
                                                color: Kolors.black,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          const Text("Voice")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          RawMaterialButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            onPressed: () {
                                              final List<dynamic> muteUsers =
                                                  uState.mutedUsersOrGroups
                                                      .muteNotification;

                                              if (uState.mutedUsersOrGroups
                                                  .muteNotification
                                                  .contains(
                                                widget.peerUser.uid,
                                              )) {
                                                muteUsers
                                                    .remove(widget.peerUser.uid);
                                                context.read<UserBloc>().add(
                                                      UserEvent
                                                          .createOrUpdateMuteUserGroupNotification(
                                                        mutedMotification: uState
                                                            .mutedUsersOrGroups
                                                            .copyWith(
                                                          muteNotification:
                                                              muteUsers,
                                                        ),
                                                      ),
                                                    );
                                              } else {
                                                muteUsers
                                                    .add(widget.peerUser.uid);
                                                context.read<UserBloc>().add(
                                                      UserEvent
                                                          .createOrUpdateMuteUserGroupNotification(
                                                        mutedMotification: uState
                                                            .mutedUsersOrGroups
                                                            .copyWith(
                                                          muteNotification:
                                                              muteUsers,
                                                        ),
                                                      ),
                                                    );
                                              }
                                            },
                                            child: Container(
                                              height: size.width * 0.2,
                                              width: size.width * 0.2,
                                              margin: const EdgeInsets.symmetric(
                                                horizontal: 4.0,
                                                vertical: 4.0,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.grey.shade100,
                                              ),
                                              child: Icon(
                                                  uState.mutedUsersOrGroups
                                                          .muteNotification
                                                          .contains(
                                                    widget.peerUser.uid,
                                                  )
                                                      ? CupertinoIcons.speaker
                                                      : CupertinoIcons
                                                          .speaker_slash,
                                                  color: Kolors.black,
                                                  size: 35),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                              uState.mutedUsersOrGroups
                                                  .muteNotification
                                                  .contains(
                                              widget.peerUser.uid,
                                              )?"${context.read<SettingsBloc>().state.languageData.unmute}":
                                              "${context.read<SettingsBloc>().state.languageData.mute}")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          RawMaterialButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            onPressed: () {
                                              if (!HelperFunctions.checkBlock(
                                                  isBlock)) {
                                                //Navigator.pop(context);
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (context) => AlertDialog(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                              title: Row(
                                                                children: [
                                                                  Text(
                                                                    "${context.read<SettingsBloc>().state.languageData.Block}",
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600),
                                                                  ),
                                                                  Text(
                                                                      "${widget.peerUser.name} ?",
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600))
                                                                ],
                                                              ),
                                                              content: Text(
                                                                  "${context.read<SettingsBloc>().state.languageData.blockedPeopleDonTAbleToCallOrSendMessageToYou}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal)),
                                                              actions: [
                                                                FlatButton(
                                                                    onPressed:
                                                                        () {
                                                                      final Map blockDataMap = context
                                                                          .read<
                                                                              UserBloc>()
                                                                          .state
                                                                          .signedInUser
                                                                          .mute!;
                                                                      // blockDataMap.addAll('': 'blocked');
                                                                      blockDataMap
                                                                          .addAll({
                                                                        '${widget.peerUser.uid}':
                                                                            'blocked'
                                                                      } as Map<String, dynamic>);
                                                                      final KahoChatUser updatedUser = context
                                                                          .read<
                                                                              UserBloc>()
                                                                          .state
                                                                          .signedInUser
                                                                          .copyWith(
                                                                              mute:
                                                                                  blockDataMap);
                                                                      context
                                                                          .read<
                                                                              UserBloc>()
                                                                          .add(UserEvent.createOrUpdateUser(
                                                                              updatedUser));
                                                                      // FirebaseFirestore
                                                                      //     .instance
                                                                      //     .usersCollection
                                                                      //     .doc(Getters
                                                                      //         .getCurrentUserUid())
                                                                      //     .set(
                                                                      //         updatedUser.toMap(),
                                                                      //         SetOptions(merge: true));
                                                                      FirebaseFirestore
                                                                          .instance
                                                                          .chatCollection
                                                                          .doc(Getters
                                                                              .getCurrentUserUid())
                                                                          .chatUsersCollection
                                                                          .doc(widget
                                                                              .peerUser
                                                                              .uid)
                                                                          .update({
                                                                        'isBlock':
                                                                            Getters
                                                                                .getCurrentUserUid()
                                                                      }).whenComplete(
                                                                              () {
                                                                        FirebaseFirestore
                                                                            .instance
                                                                            .chatCollection
                                                                            .doc(widget
                                                                                .peerUser
                                                                                .uid)
                                                                            .chatUsersCollection
                                                                            .doc(Getters
                                                                                .getCurrentUserUid())
                                                                            .update({
                                                                          'isBlock':
                                                                              Getters.getCurrentUserUid()
                                                                        });
                                                                        context
                                                                            .read<
                                                                                ChatsBloc>()
                                                                            .add(
                                                                              ChatsEvent.sendBlockMessage(
                                                                                myUser: context.read<UserBloc>().state.signedInUser,
                                                                                peerUser: widget.peerUser,
                                                                                message: "blocked",
                                                                              ),
                                                                            );
                                                                        Navigator.pop(
                                                                            context);
                                                                      });
                                                                    },
                                                                    textColor: Kolors
                                                                        .primary,
                                                                    child: Text(
                                                                        "${context.read<SettingsBloc>().state.languageData.Block}")),
                                                                FlatButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            context),
                                                                    textColor: Kolors
                                                                        .primary,
                                                                    child: Text(
                                                                        "${context.read<SettingsBloc>().state.languageData.cancel}")),
                                                              ],
                                                            ));
                                              } else {
                                                //Navigator.pop(context);
                                                showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        AlertDialog(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                          title: Text(
                                                            "Unblock ${widget.peerUser.name} ?",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight.w600,
                                                            ),
                                                          ),
                                                          content: Text(
                                                            "${context.read<SettingsBloc>().state.languageData.UnblockToSendAMessageOrMakeACall}",
                                                            style: const TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                          actions: [
                                                            FlatButton(
                                                              onPressed: () {
                                                                final Map
                                                                    blockDataMap =
                                                                    context
                                                                        .read<
                                                                            UserBloc>()
                                                                        .state
                                                                        .signedInUser
                                                                        .mute!;
                                                                blockDataMap
                                                                    .remove(widget
                                                                        .peerUser
                                                                        .uid);
                                                                final KahoChatUser
                                                                    updatedUser =
                                                                    context
                                                                        .read<
                                                                            UserBloc>()
                                                                        .state
                                                                        .signedInUser
                                                                        .copyWith(
                                                                            mute:
                                                                                blockDataMap);
                                                                context
                                                                    .read<
                                                                        UserBloc>()
                                                                    .add(UserEvent
                                                                        .createOrUpdateUser(
                                                                            updatedUser));
                                                                FirebaseFirestore
                                                                    .instance
                                                                    .chatCollection
                                                                    .doc(Getters
                                                                        .getCurrentUserUid())
                                                                    .chatUsersCollection
                                                                    .doc(widget
                                                                        .peerUser
                                                                        .uid)
                                                                    .update({
                                                                  'isBlock': null
                                                                }).whenComplete(
                                                                        () {
                                                                  FirebaseFirestore
                                                                      .instance
                                                                      .chatCollection
                                                                      .doc(widget
                                                                          .peerUser
                                                                          .uid)
                                                                      .chatUsersCollection
                                                                      .doc(Getters
                                                                          .getCurrentUserUid())
                                                                      .update({
                                                                    'isBlock':
                                                                        null
                                                                  });
                                                                  context.read<ChatsBloc>().add(ChatsEvent.sendBlockMessage(
                                                                      myUser: context
                                                                          .read<
                                                                              UserBloc>()
                                                                          .state
                                                                          .signedInUser,
                                                                      peerUser: widget
                                                                          .peerUser,
                                                                      message:
                                                                          "unblock"));
                                                                  Navigator.pop(
                                                                    context,
                                                                  );
                                                                });
                                                              },
                                                              textColor:
                                                                  Kolors.primary,
                                                              child: Text(
                                                                  "${context.read<SettingsBloc>().state.languageData.unblock}"),
                                                            ),
                                                            FlatButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      context),
                                                              textColor:
                                                                  Kolors.primary,
                                                              child: Text(
                                                                  "${context.read<SettingsBloc>().state.languageData.cancel}"),
                                                            ),
                                                          ],
                                                        ));
                                              }
                                            },
                                            child: Container(
                                              height: size.width * 0.2,
                                              width: size.width * 0.2,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 4.0, vertical: 4.0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.red.shade50),
                                              child: const Icon(
                                                  CupertinoIcons.slash_circle,
                                                  size: 35,
                                                  color: Colors.red),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          if (!HelperFunctions.checkBlock(
                                              isBlock))
                                            Text(
                                                "${context.read<SettingsBloc>().state.languageData.Block}",
                                                style: const TextStyle(
                                                    color: Colors.red))
                                          else
                                            Text(
                                                "${context.read<SettingsBloc>().state.languageData.unblock}",
                                                style: const TextStyle(
                                                    color: Colors.red))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(
                                thickness: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                    "${context.read<SettingsBloc>().state.languageData.sharedMedia}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 75,
                                      child: StreamBuilder<QuerySnapshot>(
                                        stream: FirebaseFirestore
                                            .instance.chatCollection
                                            .doc(
                                              Getters.getChatDocumentId(
                                                Getters.getCurrentUserUid(),
                                                widget.peerUser.uid,
                                              ),
                                            )
                                            .messagesCollection
                                            .orderBy('timeOfSending',
                                                descending: true)
                                            .where('type',
                                                isEqualTo: 'MessageType.image')
                                            .snapshots(),
                                        builder: (BuildContext context,
                                            AsyncSnapshot<QuerySnapshot>
                                                snapshot) {
                                          if (snapshot.hasData) {
                                            if (snapshot.data!.docs.isEmpty) {
                                              return Center(
                                                  child: Text(
                                                      "${context.read<SettingsBloc>().state.languageData.noMediaSentYet}"));
                                            }
                                            return ListView.separated(
                                              separatorBuilder: (_, __) =>
                                                  const SizedBoxW10(),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  snapshot.data!.docs.length,
                                              itemBuilder: (context, index) {
                                                final String imageUrl = snapshot
                                                        .data!.docs[index]
                                                        .data()
                                                        .toJson()['imageUrl']
                                                    as String;
                                                return InkWell(
                                                  onTap: () {
                                                    AutoRouter.of(context)
                                                        .push(ImageViewRoute(
                                                      imageUrl: imageUrl,
                                                    ));
                                                  },
                                                  child: CachedNetworkImage(
                                                    imageUrl: imageUrl,
                                                    height: 75,
                                                    width: 75,
                                                    fit: BoxFit.fill,
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            return const Center(
                                                child:
                                                    CircularProgressIndicator());
                                          }
                                        },
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: FlatButton(
                                          color: Kolors.primary,
                                          textColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 4),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SharedMedia(
                                                  peerUser: widget.peerUser,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                              "${context.read<SettingsBloc>().state.languageData.viewAll}"),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 5,
                              ),
                              ListTile(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DisappearingMessages(
                                        myUser: uState.signedInUser,
                                        currentValue: diseaperingMessage,
                                        peerUser: widget.peerUser),
                                  ),
                                ),
                                leading:
                                    const Icon(Icons.access_alarms_outlined),
                                title: Text(
                                    "${context.read<SettingsBloc>().state.languageData.disappearingMessages}"),
                                subtitle: Text(""),
                              ),
                              const Divider(
                                thickness: 5,
                              ),
                              ListTile(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      title: Text(
                                          "${context.read<SettingsBloc>().state.languageData.reportUser} ?",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      content: Text(
                                        "${context.read<SettingsBloc>().state.languageData.theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      actions: [
                                        FlatButton(
                                          onPressed: () async {
                                            final doc = await FirebaseFirestore
                                                .instance.chatCollection
                                                .doc(
                                                    Getters.getCurrentUserUid())
                                                .chatUsersCollection
                                                .doc(widget.peerUser.uid)
                                                .messagesCollection
                                                .orderBy('timeOfSending',
                                                    descending: true)
                                                .limit(10)
                                                .get();
                                            final List<ReportedMessageModel>
                                                lastTenMsgs = [];
                                            doc.docs.forEach((element) {
                                              final MessageModel msg =
                                                  MessageModel.fromMap(element
                                                          .data()
                                                      as Map<String, dynamic>);
                                              final ReportedMessageModel rpmsg =
                                                  ReportedMessageModel(
                                                sender: msg.sender,
                                                receiverUid: msg.receiverUid,
                                                sendFrom: msg.sendFrom,
                                                text: msg.text,
                                                type: msg.type,
                                                timeOfSending: msg.timeOfSending
                                                    .millisecondsSinceEpoch,
                                                imageUrl: msg.imageUrl,
                                                isSeen: msg.isSeen,
                                                isDelivered: msg.isDelivered,
                                                fileUrl: msg.fileUrl,
                                                fileName: msg.fileName,
                                                fileLocation: msg.fileLocation,
                                                fileSize: msg.fileSize,
                                                firebaseFileLocation:
                                                    msg.firebaseFileLocation,
                                              );
                                              lastTenMsgs.add(rpmsg);
                                            });
                                            final SupportChatModel
                                                suppportMessage =
                                                SupportChatModel(
                                              message: "Reported ",
                                              type: "text",
                                              time: DateTime.now().toString(),
                                              seen: false,
                                              sender: FirebaseAuth
                                                  .instance.currentUser!.uid,
                                              reportedMessageList: lastTenMsgs,
                                              reportedUser: widget.peerUser,
                                            );
                                            final ref =
                                                FirebaseDatabase.instance.ref();
                                            ref
                                                .child("support_chats")
                                                .child(FirebaseAuth
                                                    .instance.currentUser!.uid)
                                                .child("messages")
                                                .child(Timestamp.now()
                                                    .microsecondsSinceEpoch
                                                    .toString())
                                                .set(suppportMessage.toMap());
                                            Fluttertoast.showToast(
                                              msg:
                                                  'Your report action will be taken within 72 hours. You can check update on your report in help centre.',
                                              backgroundColor: Kolors.grey,
                                            );
                                            Navigator.pop(context);
                                          },
                                          textColor: Kolors.primary,
                                          child: Text(
                                            "${context.read<SettingsBloc>().state.languageData.report}",
                                            style: const TextStyle(
                                                color: Kolors.red),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          textColor: Kolors.primary,
                                          child: Text(
                                              "${context.read<SettingsBloc>().state.languageData.cancel}"),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                leading: const Icon(
                                  Icons.thumb_down_outlined,
                                  color: Kolors.red,
                                ),
                                title: Text(
                                  "${context.read<SettingsBloc>().state.languageData.report} ",
                                  style: const TextStyle(color: Kolors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    ));
  }
}
