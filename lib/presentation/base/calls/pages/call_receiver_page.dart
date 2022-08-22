import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/audio_player.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CallReceiverPage extends StatefulWidget {
  const CallReceiverPage({
    Key? key,
  }) : super(key: key);

  @override
  _CallReceiverPageState createState() => _CallReceiverPageState();
}

class _CallReceiverPageState extends State<CallReceiverPage> {
  Timer? timer;
  bool isMuted = false;
  bool isCameraOff = false;
  bool isCallDeclined = true;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 30), () {
      context.read<CallsBloc>().add(const CallsEvent.callNotAnswered());
      isCallDeclined = false;
      AutoRouter.of(context).pop();
    });
    if (mounted) {
      AppAudioPlayer.playCallertune();
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    AppAudioPlayer.stopCallertune();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CallsBloc, CallsState>(
      listener: (context, state) {
        if (!state.currentRoomDetails.isCallActive) {
          AutoRouter.of(context).pop();
        }
        state.acceptCallFailureOrSuccessOpt.fold(
          () {},
          (some) {
            some.fold(
              (failure) {
                Fluttertoast.showToast(
                  msg: "Unexpected error occurred.",
                  backgroundColor: Kolors.grey,
                );
                AutoRouter.of(context).pop();
              },
              (success) {
                isCallDeclined = false;
                if (state.currentRoomDetails.currentCall.type ==
                    CallType.audio) {
                  AutoRouter.of(context)
                      .replace(VoiceCallRoute(initalize: true));
                } else {
                  AutoRouter.of(context).replace(const VideoCallRoute());
                }
              },
            );
          },
        );
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            print("ÖN WILL POP CALLED");
            _onCallDecline(context, isCallDeclined: isCallDeclined);
            return Future.value(true);
          },
          child: BlocBuilder<CallsBloc, CallsState>(
            builder: (context, state) {
              String displayNameOrNumber;
              final String phoneContactNumberOrName = Getters.checkLocalContact(
                phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
                phoneNumber:
                    state.currentRoomDetails.currentCall.sender.phoneNumber,
              );
              if (phoneContactNumberOrName == '') {
                displayNameOrNumber =
                    state.currentRoomDetails.currentCall.sender.name;
              } else {
                displayNameOrNumber = phoneContactNumberOrName;
              }
              final String callType =
                  state.currentRoomDetails.currentCall.type == CallType.audio
                      ? "Audio"
                      : "Video";
              return SafeScaffold(
                backgroundColor: Kolors.callBackground,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: DragTarget(
                        builder: (context, a, b) => Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomCircleAvatar(
                              radius: 60,
                              profilePictureUrl: state.currentRoomDetails
                                  .currentCall.sender.profilePictureUrl,
                              name: displayNameOrNumber.contains("+")
                                  ? state.currentRoomDetails.currentCall.sender
                                      .name
                                  : displayNameOrNumber,
                              color: state.currentRoomDetails.currentCall.sender
                                  .userColor,
                            ),
                            const SizedBoxH10(),
                            Text(
                              "${context.read<SettingsBloc>().state.languageData.incoming} $callType ${context.read<SettingsBloc>().state.languageData.call}",
                              style: const TextStyle(
                                color: Kolors.white,
                              ),
                            ),
                            const SizedBoxH10(),
                            Text(
                              displayNameOrNumber,
                              // "John Doe",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Kolors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  AutoRouter.of(context).pop();
                                },
                                shape: const CircleBorder(),
                                fillColor: Kolors.callEndButton,
                                padding: const EdgeInsets.all(15.0),
                                child: const Icon(
                                  Icons.call_end,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                              Draggable<bool>(
                                onDragCompleted: () {
                                  print("a");
                                  // if (state.callTimer > 5) {
                                  //   context.read<CallsBloc>().add(
                                  //         CallsEvent.endCurrentCall(
                                  //           context
                                  //               .read<CallScreenBloc>()
                                  //               .state
                                  //               .callTimer,
                                  //         ),
                                  //       );
                                  // Future.delayed(Duration(seconds: 4));
                                  // }
                                  context.read<CallsBloc>().add(
                                        const CallsEvent.acceptIncomingCall(),
                                      );
                                  timer?.cancel();
                                  AppAudioPlayer.stopRingtone();
                                },
                                childWhenDragging: const SizedBox(
                                  width: 88,
                                  height: 195,
                                ),
                                axis: Axis.vertical,
                                // axis: AxisDirection.up,
                                feedback: Column(
                                  children: [
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      // onPressed: () => () {
                                      //   context.read<CallsBloc>().add(
                                      //       const CallsEvent
                                      //           .acceptIncomingCall());
                                      // },
                                      shape: const CircleBorder(),
                                      fillColor: Kolors.primary,
                                      padding: const EdgeInsets.all(15.0),
                                      child: const Icon(
                                        Icons.call,
                                        color: Colors.white,
                                        size: 35.0,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.keyboard_arrow_up,
                                      size: 40,
                                      color: Kolors.white,
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_up,
                                      size: 40,
                                      color: Kolors.white,
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_up,
                                      size: 40,
                                      color: Kolors.white,
                                    ),
                                    const SizedBoxH10(),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      // onPressed: () => () {
                                      //   context.read<CallsBloc>().add(
                                      //       const CallsEvent
                                      //           .acceptIncomingCall());
                                      // },
                                      shape: const CircleBorder(),
                                      fillColor: Kolors.primary,
                                      padding: const EdgeInsets.all(15.0),
                                      child: const Icon(
                                        Icons.call,
                                        color: Colors.white,
                                        size: 35.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (state.currentRoomDetails.currentCall.type ==
                                  CallType.video)
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      isCameraOff = !isCameraOff;
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  fillColor: Kolors.callButton,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(
                                    isCameraOff
                                        ? Icons.videocam_off_outlined
                                        
                                        : Icons.videocam_outlined,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    isMuted = !isMuted;
                                  });
                                },
                                shape: const CircleBorder(),
                                fillColor: Kolors.callButton,
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  isMuted
                                      ? Icons.mic_off
                                      : Icons.mic_none_outlined,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),

                              // FloatingActionButton(
                              //   onPressed: () {
                              //     _onCallDecline(context);
                              //   },
                              //   backgroundColor: Colors.red,
                              //   child: const Icon(Icons.call_end),
                              // ),
                              // const SizedBoxW15(),
                              // FloatingActionButton(
                              //   onPressed: () {
                              //     context
                              //         .read<CallsBloc>()
                              //         .add(const CallsEvent.acceptIncomingCall());
                              //   },
                              //   backgroundColor: Colors.blue,
                              //   child: const Icon(Icons.call),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _onCallDecline(BuildContext context,
      {required bool isCallDeclined}) async {
    // bool callEnd = false;
    // callEnd = true;
    if (isCallDeclined) {
      print("Call declined");
      context.read<UserBloc>().add(
            UserEvent.createOrUpdateUser(
              context
                  .read<UserBloc>()
                  .state
                  .signedInUser
                  .copyWith(isOnCall: false),
            ),
          );
      context.read<CallsBloc>().add(const CallsEvent.rejectIncomingCall());

      Future.delayed(const Duration(milliseconds: 500), () {
        context.read<CallsBloc>().add(
              CallsEvent.isAddCallUserAcceptedCall(
                peerUser: context.read<UserBloc>().state.signedInUser,
                callid: context
                    .read<CallsBloc>()
                    .state
                    .currentRoomDetails
                    .currentCall
                    .callId,
              ),
            );
      });
    }
    timer?.cancel();
    AppAudioPlayer.stopRingtone();

    // AutoRouter.of(context).pop();
    // await showDialog(
    //   context: context,
    //   builder: (context) {
    //     return AlertDialog(
    //       title: const Text("Do you want to end this call?"),
    //       actions: [
    //         TextButton(
    //           onPressed: () async {
    //             callEnd = true;
    //             context
    //                 .read<CallsBloc>()
    //                 .add(const CallsEvent.rejectIncomingCall());
    //             AutoRouter.of(context).pop();
    //           },
    //           child: const Text("Yes"),
    //         ),
    //         TextButton(
    //           onPressed: () {
    //             callEnd = false;
    //             AutoRouter.of(context).pop();
    //           },
    //           child: const Text("No"),
    //         ),
    //       ],
    //     );
    //   },
    // );
    // return callEnd;
  }
}
