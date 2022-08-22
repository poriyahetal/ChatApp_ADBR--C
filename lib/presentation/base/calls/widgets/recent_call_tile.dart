import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/call_log/call_log_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class RecentCallTile extends StatefulWidget {
  const RecentCallTile({
    Key? key,
    required this.callRoomDetails,
    required this.callLogs,
    required this.onPressed,
  }) : super(key: key);
  final List<CallModel> callLogs;
  final CallRoomModel callRoomDetails;
  final Function() onPressed;

  @override
  State<RecentCallTile> createState() => _RecentCallTileState();
}

class _RecentCallTileState extends State<RecentCallTile> {
  bool isSelected = false;
  Color tileColor = Colors.white;

  late String getPhoneContactNumberOrName;
  late String displayNameOrNumber;
  @override
  void initState() {
    // TODO: implement initState
    getPhoneContactNumberOrName = Getters.checkLocalContact(
      phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
      phoneNumber: widget.callRoomDetails.currentCall.sender.phoneNumber,
    );
    if (getPhoneContactNumberOrName == '') {
      displayNameOrNumber =
          widget.callRoomDetails.currentCall.sender.phoneNumber;
    } else {
      displayNameOrNumber = getPhoneContactNumberOrName;
    }

    super.initState();
  }

  void openWindow(BuildContext context, KahoChatUser peerCaller) {
    AutoRouter.of(context).push(
      CallInfoRoute(
        callDocumentId: widget.callRoomDetails.lastCall!.callId,
        peerUser: peerCaller,
        callLogs: widget.callLogs,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final DateFormat format = DateFormat("d MMM, h:mm a");
    final String dateString =
        format.format(widget.callRoomDetails.lastCall!.timeOfCalling.toDate());
    final bool isIncoming = widget.callRoomDetails.lastCall?.sender.uid ==
        Getters.getCurrentUserUid();
    final KahoChatUser tempUser = widget.callRoomDetails.lastCall!.participants
        .where(
          (element) => element.participant.uid == Getters.getCurrentUserUid(),
        )
        .first
        .participant;
    final KahoChatUser peerCaller =
        tempUser.uid == widget.callRoomDetails.lastCall!.sender.uid
            ? widget.callRoomDetails.lastCall!.participants
                .firstWhere(
                  (element) =>
                      element.participant.uid != Getters.getCurrentUserUid(),
                )
                .participant
            : widget.callRoomDetails.lastCall!.sender;
    getPhoneContactNumberOrName = Getters.checkLocalContact(
      phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
      phoneNumber: peerCaller.phoneNumber,
    );
    if (getPhoneContactNumberOrName == '') {
      displayNameOrNumber =
          "${peerCaller.countryCode} ${peerCaller.phoneNumber}";
    } else {
      displayNameOrNumber = getPhoneContactNumberOrName;
    }

    return BlocConsumer<CallLogBloc, CallLogState>(
      listener: (context, state) {
        state.deletionSuccessorFailure.fold(() => null, (error) {
          Fluttertoast.showToast(
            msg: "Deletion Error",
            backgroundColor: Kolors.grey,
          );
        });
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (state.length > 0) {
              if (state.calls.contains(widget.callRoomDetails.id)) {
                context.read<CallLogBloc>().add(CallLogEvent.unSelect(
                      callLogs: widget.callLogs,
                      callLogId: widget.callRoomDetails.id,
                    ));
              } else {
                context.read<CallLogBloc>().add(CallLogEvent.select(
                      callLogs: widget.callLogs,
                      callLogId: widget.callRoomDetails.id,
                    ));
              }
            } else {
              openWindow(context, peerCaller);
            }
          },
          onLongPress: () {
            if (state.length == 0) {
              if (state.calls.contains(widget.callRoomDetails.id)) {
                context.read<CallLogBloc>().add(CallLogEvent.unSelect(
                      callLogs: widget.callLogs,
                      callLogId: widget.callRoomDetails.id,
                    ));
              } else {
                context.read<CallLogBloc>().add(CallLogEvent.select(
                      callLogs: widget.callLogs,
                      callLogId: widget.callRoomDetails.id,
                    ));
              }
            }
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: state.calls.contains(widget.callRoomDetails.id)
                  ? Kolors.callLogSelected
                  : Theme.of(context).backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomCircleAvatar(
                        name: displayNameOrNumber.contains("+")
                            ? peerCaller.name
                            : displayNameOrNumber,
                        profilePictureUrl: peerCaller.profilePictureUrl,
                        color: peerCaller.userColor,
                      ),
                      if (state.calls.contains(widget.callRoomDetails.id))
                        Container(
                          decoration: BoxDecoration(
                              color: Kolors.primary,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.check,
                            size: 20,
                            color: Kolors.white,
                          ),
                        )
                    ],
                  ),
                  const SizedBoxW15(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          displayNameOrNumber,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              isIncoming
                                  ? Icons.call_missed_outgoing_outlined
                                  : Icons.call_missed_outlined,
                              color: !isIncoming &&
                                      widget.callRoomDetails.lastCall!.status ==
                                          CallStatus.missed
                                  ? Kolors.red
                                  : Kolors.primary,
                              size: 17,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              dateString,
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          IconButton(
                            onPressed: widget.onPressed,
                            //  () async {

                            // if (widget.callRoomDetails.lastCall!.type ==
                            //     CallType.audio) {
                            //   context.read<CallsBloc>().add(
                            //         CallsEvent.startVoiceCall(
                            //           state.signedInUser,
                            //           peerCaller,
                            //         ),
                            //       );
                            // } else {
                            //   context.read<CallsBloc>().add(
                            //         CallsEvent.startVideoCall(
                            //           state.signedInUser,
                            //           peerCaller,
                            //         ),
                            //       );
                            // }
                            // },
                            icon: Icon(
                              // Icons.call_outlined,
                              widget.callRoomDetails.lastCall!.type ==
                                      CallType.audio
                                  ? Icons.call_outlined
                                  : Icons.videocam_outlined,
                              size: 30,
                            ),
                            color: Kolors.primary,
                          ),
                          IconButton(
                            onPressed: () {
                              openWindow(context, peerCaller);
                            },
                            icon: const Icon(
                              Icons.info_outline,
                              size: 25,
                            ),
                            color: Kolors.grey,
                          ),

                          // Text(
                          //     "${widget.callRoomDetails.lastCall!.durationInSeconds} sec"),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
