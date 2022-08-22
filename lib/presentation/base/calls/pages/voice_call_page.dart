import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/call_screen/call_screen_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/core/audio_player.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/calling_functions.dart';
import 'package:flutter_template/presentation/base/calls/pages/add_participants_page.dart';
import 'package:flutter_template/presentation/base/calls/widgets/modal_bottom_sheet.dart';
import 'package:flutter_template/presentation/base/calls/widgets/recording_widget.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:vibration/vibration.dart';

class VoiceCallPage extends StatefulWidget {
  final bool initalize;
  const VoiceCallPage({Key? key, required this.initalize}) : super(key: key);

  @override
  _VoiceCallPageState createState() => _VoiceCallPageState();
}

class _VoiceCallPageState extends State<VoiceCallPage> {
  late String callId;
  bool _joined = false;
  int _remoteUid = 0;
  bool isDeclined = false;
  bool callEnded = false;
  bool participantsToggled = false;
  bool _showParticipantsButton = true;
  late String resourceId;
  late String sid;
  bool disposedPage = true;
  late Timer timer;
  bool addedOrLeftUserToasterShown = false;
  Timer? addCallTime = null;
  int totalUser = 0;
  Map<String, bool> toasterInfo = {};
  // AppAudioPlayer player = AppAudioPlayer.instance;

  void checkAddedUserAcceptsCall({required KahoChatUser addedUser}) {
    addCallTime = Timer(const Duration(seconds: 31), () {
      context.read<CallsBloc>().add(
            CallsEvent.isAddCallUserAcceptedCall(
              peerUser: addedUser,
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

  @override
  void initState() {
    AppAudioPlayer.stopRingtone();
    AppAudioPlayer.stopDialerTone();
    context
        .read<CallScreenBloc>()
        .add(const CallScreenEvent.enableDisableToolBar(isEnabled: true));
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initializeAgoraSDK(context, CallType.audio);
    });
    disableToolBar();
  }

  void disableToolBar() {
    timer = Timer(const Duration(seconds: 10), () {
      if (mounted) {
        context
            .read<CallScreenBloc>()
            .add(const CallScreenEvent.enableDisableToolBar(isEnabled: false));
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    if (addCallTime != null) {
      addCallTime!.cancel();
    }
    // AppAudioPlayer.stopDialerTone();
    AppAudioPlayer.stopDialerTone();
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (!callEnded) {
          context.read<CallScreenBloc>().add(const CallScreenEvent.minimize());
          // AutoRouter.of(context).push(const BaseRoute());
        }
        return Future.value(true);
      },
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.callsCollection
            .doc(context
                .read<CallsBloc>()
                .state
                .currentRoomDetails
                .currentCall
                .callId)
            .snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          CallRoomModel callDetails;
          if (snapshot.hasData) {
            callDetails = CallRoomModel.fromMap(
              snapshot.data!.data() as Map<String, dynamic>,
            );

            context.read<CallsBloc>().add(
                  CallsEvent.updateCurrentRoomDetails(callDetails),
                );
            int k = 0;
            for (final participant in callDetails.currentCall.participants) {
              if (participant.isActive) {
                k = k + 1;
              }
            }
            if (k == 1) {
              destroyCallChannel();
              onCallEnd(
                context,
                true,
              );
              AppAudioPlayer.stopDialerTone();
              AutoRouter.of(context).pop();
            }

            if (callDetails.users.length >= 2 &&
                !context.read<CallScreenBloc>().state.isDialerTonePlaying &&
                callDetails.currentCall.sender.uid ==
                    context.read<UserBloc>().state.signedInUser.uid) {
              AppAudioPlayer.playdialerTone();
              context.read<CallScreenBloc>().add(
                    const CallScreenEvent.startDialeTone(
                      isDialerTonePlaying: true,
                    ),
                  );
            }
            return BlocListener<CallsBloc, CallsState>(
              listener: (_, state) {
                if (callDetails.currentCall.participants.length > 1) {
                  if (toasterInfo.isNotEmpty) {
                    if (toasterInfo.containsKey(
                      callDetails.lastJoinedOrLeftUser!.participant.uid,
                    )) {
                      if (toasterInfo[callDetails
                              .lastJoinedOrLeftUser!.participant.uid] ==
                          false) {
                        String displayNameOrNumber;
                        String getPhoneContactNumberOrName =
                            Getters.checkLocalContact(
                          phoneContacts:
                              context.read<ContactsBloc>().state.phoneContacts,
                          phoneNumber: callDetails
                              .lastJoinedOrLeftUser!.participant.phoneNumber,
                        );
                        if (getPhoneContactNumberOrName == '') {
                          displayNameOrNumber = callDetails
                              .lastJoinedOrLeftUser!.participant.name;
                        } else {
                          displayNameOrNumber = getPhoneContactNumberOrName;
                        }
                        if (callDetails.lastJoinedOrLeftUser!.status ==
                            CallStatus.answered) {
                          Fluttertoast.showToast(
                            msg: "$displayNameOrNumber has joioned the call",
                            backgroundColor: Kolors.grey,
                          );
                          toasterInfo[callDetails
                              .lastJoinedOrLeftUser!.participant.uid] = true;
                        } else if (callDetails.lastJoinedOrLeftUser!.status ==
                            CallStatus.ended) {
                          Fluttertoast.showToast(
                            msg: "$displayNameOrNumber has left the call",
                            backgroundColor: Kolors.grey,
                          );
                          toasterInfo[callDetails
                              .lastJoinedOrLeftUser!.participant.uid] = true;
                        }
                      }
                    } else {
                      toasterInfo = {};
                      toasterInfo.addAll({
                        callDetails.lastJoinedOrLeftUser!.participant.uid: false
                      });
                      if (toasterInfo[callDetails
                              .lastJoinedOrLeftUser!.participant.uid] ==
                          false) {
                        String displayNameOrNumber;
                        String getPhoneContactNumberOrName =
                            Getters.checkLocalContact(
                          phoneContacts:
                              context.read<ContactsBloc>().state.phoneContacts,
                          phoneNumber: callDetails
                              .lastJoinedOrLeftUser!.participant.phoneNumber,
                        );
                        if (getPhoneContactNumberOrName == '') {
                          displayNameOrNumber = callDetails
                              .lastJoinedOrLeftUser!.participant.name;
                        } else {
                          displayNameOrNumber = getPhoneContactNumberOrName;
                        }
                        if (callDetails.lastJoinedOrLeftUser!.status ==
                            CallStatus.answered) {
                          Fluttertoast.showToast(
                            msg: "$displayNameOrNumber has joioned call",
                            backgroundColor: Kolors.grey,
                          );
                          toasterInfo[callDetails
                              .lastJoinedOrLeftUser!.participant.uid] = true;
                        } else if (callDetails.lastJoinedOrLeftUser!.status ==
                            CallStatus.ended) {
                          Fluttertoast.showToast(
                            msg: "$displayNameOrNumber has left call",
                            backgroundColor: Kolors.grey,
                          );
                          toasterInfo[callDetails
                              .lastJoinedOrLeftUser!.participant.uid] = true;
                        }
                      }
                    }
                  } else {
                    toasterInfo.addAll({
                      callDetails.lastJoinedOrLeftUser!.participant.uid: false
                    });
                  }
                }
                state.checkAddedUserAcceptsCallOpt.fold(() {}, (some) {
                  Vibration.vibrate(duration: 300);
                  some.fold((something) {
                    Fluttertoast.showToast(
                      msg: something.maybeMap(
                        addedUserUnableToResponse: (value) =>
                            '${value.addedUser.name} unable to accept your call',
                        orElse: () => 'unable to get response',
                      ),
                      backgroundColor: Kolors.grey,
                    );
                  }, (r) {});
                });
                if (!state.currentRoomDetails.currentCall.participants
                    .firstWhere(
                      (element) =>
                          element.participant.uid ==
                          Getters.getCurrentUserUid(),
                    )
                    .isActive) {
                  if (mounted && disposedPage) {
                    disposedPage = false;
                    callEnded = true;
                    destroyCallChannel();
                    onCallEnd(
                      context,
                      false,
                    );
                    timer.cancel();
                    AppAudioPlayer.stopDialerTone();
                    context.read<CallScreenBloc>().add(
                          const CallScreenEvent.enableDisableToolBar(
                            isEnabled: false,
                          ),
                        );
                    AutoRouter.of(context).pop();
                  }
                }
                state.callEndFailureOrSuccessOpt.fold(
                  () {},
                  (some) {
                    some.fold(
                      (failure) {
                        Fluttertoast.showToast(
                          msg: "Couldn't end this call. Please try again",
                          backgroundColor: Kolors.grey,
                        );
                      },
                      (success) {
                        if (mounted && disposedPage) {
                          disposedPage = false;
                          AutoRouter.of(context).pop();
                        }
                      },
                    );
                  },
                );
              },
              child: BlocBuilder<CallsBloc, CallsState>(
                  builder: (context, state) {
                if (state.currentRoomDetails.isCallActive) {
                  callId = state.currentRoomDetails.currentCall.callId;

                  return BlocBuilder<CallsBloc, CallsState>(
                    builder: (context, state) {
                      final KahoChatUser peerUser = state
                          .currentRoomDetails.currentCall.participants
                          .firstWhere((element) =>
                              element.participant.uid !=
                              Getters.getCurrentUserUid())
                          .participant;
                      if (state.currentRoomDetails.currentCall.status
                              .toString() ==
                          CallStatus.answered.toString()) {
                        AppAudioPlayer.stopDialerTone();
                      }
                      return BlocBuilder<CallScreenBloc, CallScreenState>(
                        builder: (context, callScreenState) {
                          String displayNameOrNumber;
                          final String phoneContactNumberOrName =
                              Getters.checkLocalContact(
                            phoneContacts: context
                                .read<ContactsBloc>()
                                .state
                                .phoneContacts,
                            phoneNumber: peerUser.phoneNumber,
                          );
                          if (phoneContactNumberOrName == '') {
                            displayNameOrNumber = peerUser.name;
                          } else {
                            displayNameOrNumber = phoneContactNumberOrName;
                          }
                          // if (callScreenState.callTimer == 1) {
                          //   setState(() {});
                          // }
                          return SafeScaffold(
                            backgroundColor: Kolors.callBackground,
                            body: InkWell(
                              onTap: () async {
                                context.read<CallScreenBloc>().add(
                                      const CallScreenEvent
                                          .enableDisableToolBar(
                                        isEnabled: true,
                                      ),
                                    );

                                if (mounted) {
                                  timer =
                                      Timer(const Duration(seconds: 10), () {
                                    if (mounted) {
                                      context.read<CallScreenBloc>().add(
                                            const CallScreenEvent
                                                .enableDisableToolBar(
                                              isEnabled: false,
                                            ),
                                          );
                                    }
                                  });
                                }
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 43,
                                        // TODO
                                        child: (state.currentRoomDetails
                                                        .currentCall.status ==
                                                    CallStatus.answered &&
                                                _showParticipantsButton)
                                            ? IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    participantsToggled =
                                                        !participantsToggled;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.group_outlined,
                                                  size: 35,
                                                  color: Kolors.white,
                                                ),
                                              )
                                            : Container(),
                                      ),
                                      RecordingWidget(callId: callId)
                                    ],
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: participantsToggled
                                        ? _listOfParticipants(context)
                                        : Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomCircleAvatar(
                                                radius: 60,
                                                nameFontSize: 50,
                                                profilePictureUrl:
                                                    peerUser.profilePictureUrl,
                                                name: peerUser.name,
                                                color: peerUser.userColor,
                                              ),
                                              const SizedBoxH10(),
                                              // TODO

                                              if (!(state.currentRoomDetails
                                                      .currentCall.status ==
                                                  CallStatus.answered))
                                                Text(
                                                  callScreenState.isRinging
                                                      ? "${context.read<SettingsBloc>().state.languageData.ringing}..."
                                                      : "${context.read<SettingsBloc>().state.languageData.connecting}...",
                                                  style: const TextStyle(
                                                      color: Kolors.white),
                                                )
                                              else
                                                Text(
                                                  context
                                                      .read<SettingsBloc>()
                                                      .state
                                                      .languageData
                                                      .inCallWith,
                                                  style: const TextStyle(
                                                      color: Kolors.primary,
                                                      fontSize: 18),
                                                ),

                                              const SizedBoxH10(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  if (callScreenState
                                                      .isRemoteUserMuted)
                                                    const Icon(
                                                      Icons.mic_off,
                                                      color: Kolors.white,
                                                    ),
                                                  Text(
                                                    displayNameOrNumber,
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Kolors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBoxH20(),
                                              // TODO
                                              if (state.currentRoomDetails
                                                      .currentCall.status ==
                                                  CallStatus.answered)
                                                if (callScreenState.callTimer ==
                                                    0) ...[
                                                  Text(
                                                    "${context.read<SettingsBloc>().state.languageData.connecting}...",
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      color: Kolors.white,
                                                    ),
                                                  ),
                                                ] else
                                                  Text(
                                                    StopWatchTimer
                                                        .getDisplayTime(
                                                      StopWatchTimer
                                                          .getMilliSecFromSecond(
                                                        callScreenState
                                                            .callTimer,
                                                      ),
                                                      milliSecond: false,
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      color: Kolors.white,
                                                    ),
                                                  ),
                                            ],
                                          ),
                                  ),
                                  const SizedBoxH30(),
                                  // if (context.read<CallScreenBloc>().state.isToolBarEnable)

                                  if (callScreenState.isToolBarEnable)
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _toolbar(context, peerUser),
                                        ],
                                      ),
                                    ),

                                  //TODO
                                  if (state.currentRoomDetails.currentCall
                                          .status ==
                                      CallStatus.answered)
                                    InkWell(
                                      onTap: () {
                                        showMaterialModalBottomSheet(
                                          useRootNavigator: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          expand: false,
                                          context: context,
                                          builder: (context) => MBottomSheet(
                                            addParticipantsFunction: () async {
                                              final result =
                                                  await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddParticipantsPage(
                                                    users: state
                                                        .currentRoomDetails
                                                        .users,
                                                  ),
                                                ),
                                              );
                                              if (result != null) {
                                                checkAddedUserAcceptsCall(
                                                    addedUser:
                                                        result as KahoChatUser);
                                              }
                                            },
                                            showTurnOnVideoFunction: () async {
                                              callEnded = true;
                                              destroyCallChannel();
                                              onCallEnd(
                                                context,
                                                true,
                                              );
                                              timer.cancel();
                                              context.read<CallsBloc>().add(
                                                    CallsEvent.startVideoCall(
                                                      context
                                                          .read<UserBloc>()
                                                          .state
                                                          .signedInUser,
                                                      peerUser,
                                                    ),
                                                  );
                                              //  await Future.delayed(Duration(seconds: 6));
                                            },
                                            showTurnOnVideo: true,
                                          ),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 50,
                                        color: Kolors.white,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }

                  // return const Center(child: CircularProgressIndicator());
                  // },

                  ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  // Widget _voiceCallPageContents(
  //   BuildContext context,
  // ) {}

  Widget _toolbar(BuildContext context, KahoChatUser peerUser) {
    return BlocBuilder<CallScreenBloc, CallScreenState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                state.engine.fold((e) => null, (engine) async {
                  await engine.setEnableSpeakerphone(!state.isSpeakerOn);
                  context
                      .read<CallScreenBloc>()
                      .add(const CallScreenEvent.setEnableSpeakerPhone());
                });
              },
              shape: const CircleBorder(),
              fillColor: Kolors.callButton,
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                state.isSpeakerOn
                    ? Icons.volume_up_outlined
                    : Icons.volume_mute_outlined,
                color: Colors.white,
                size: 35.0,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                timer.cancel();
                AppAudioPlayer.stopDialerTone();
                callEnded = true;
                print("end call button");
                destroyCallChannel();
                onCallEnd(
                  context,
                  true,
                );
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
            RawMaterialButton(
              onPressed: () {
                // FlutterLocalNotificationsPlugin
                //     flutterLocalNotificationsPlugin =
                //     FlutterLocalNotificationsPlugin();

                // flutterLocalNotificationsPlugin.cancel(0);
                if (!state.isMuted) {
                  Fluttertoast.showToast(
                    msg: "You are muted",
                    backgroundColor: Kolors.grey,
                  );
                } else {
                  Fluttertoast.showToast(
                    msg: "You are unmuted",
                    backgroundColor: Kolors.grey,
                  );
                }
                state.engine.fold((e) => null, (engine) async {
                  await engine.muteLocalAudioStream(!state.isMuted);
                  context.read<CallsBloc>().add(
                        CallsEvent.changeUserMuteState(
                          currentRoomDetails: context
                              .read<CallsBloc>()
                              .state
                              .currentRoomDetails,
                          isMuted: !state.isMuted,
                        ),
                      );
                  context
                      .read<CallScreenBloc>()
                      .add(const CallScreenEvent.muteLocalAudioStream());
                });
              },
              shape: const CircleBorder(),
              fillColor: Kolors.callButton,
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                state.isMuted ? Icons.mic_off : Icons.mic_none_outlined,
                color: Colors.white,
                size: 35.0,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _listOfParticipants(
    BuildContext context,
  ) {
    return BlocBuilder<CallsBloc, CallsState>(
      builder: (context, state) {
        return BlocBuilder<CallScreenBloc, CallScreenState>(
          builder: (context, callScreenState) {
            return ListView.builder(
                itemCount: state
                    .currentRoomDetails
                    .currentCall
                    .participants
                    // .where((element) =>
                    //     element.participant.uid != Getters.getCurrentUserUid())
                    .length,
                itemBuilder: (builder, index) {
                  if (state.currentRoomDetails.currentCall.participants[index]
                              .participant.uid !=
                          Getters.getCurrentUserUid() &&
                      state.currentRoomDetails.currentCall.participants[index]
                              .status ==
                          CallStatus.answered &&
                      state.currentRoomDetails.currentCall.participants[index]
                          .isActive) {
                    print(
                        "printing caller id ${state.currentRoomDetails.currentCall.participants[index].callerInfo}");
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Kolors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .65,
                              child: Row(
                                children: [
                                  CustomCircleAvatar(
                                    radius: 30,
                                    profilePictureUrl: state
                                        .currentRoomDetails
                                        .currentCall
                                        .participants[index]
                                        .participant
                                        .profilePictureUrl,
                                    name: state.currentRoomDetails.currentCall
                                        .participants[index].participant.name,
                                    color: state
                                        .currentRoomDetails
                                        .currentCall
                                        .participants[index]
                                        .participant
                                        .userColor,
                                  ),
                                  // const CustomCircleAvatar(
                                  //   radius: 30,
                                  //   name: 'N O',
                                  //   color: '',
                                  // ),
                                  const SizedBoxW10(),
                                  Expanded(
                                    child: Text(
                                      state.currentRoomDetails.currentCall
                                          .participants[index].participant.name,
                                      style: const TextStyle(
                                        color: Kolors.black,
                                        fontSize: 18,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                state.currentRoomDetails.currentCall
                                        .participants[index].isMuted!
                                    ? Icons.mic_off
                                    : Icons.mic,
                                color: Kolors.black,
                                size: 20.0,
                              ),
                            ),
                            if (state.currentRoomDetails.currentCall.sender
                                    .uid ==
                                Getters.getCurrentUserUid())
                              RawMaterialButton(
                                onPressed: () async {
                                  // callScreenState.engine.fold(
                                  //   (e) => null,
                                  //   (engine) async {
                                  //     // await engine.leaveChannel();
                                  //     context.read<CallScreenBloc>().add(
                                  //           const CallScreenEvent
                                  //               .setEnableSpeakerPhone(),
                                  //         );
                                  //   },
                                  // );

                                  context.read<CallsBloc>().add(
                                        CallsEvent.leaveCall(
                                          state.currentRoomDetails.currentCall
                                              .participants[index].participant,
                                        ),
                                      );
                                },
                                shape: const CircleBorder(),
                                fillColor: Kolors.callEndButton,
                                padding: const EdgeInsets.all(13.0),
                                child: const Icon(
                                  Icons.call_end,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  }
                  return Container();
                });
          },
        );
      },
    );
  }
}

// class VoiceCallPageContents extends StatefulWidget {
//   @override
//   _VoiceCallPageContentsState createState() => _VoiceCallPageContentsState();
// }

// class _VoiceCallPageContentsState extends State<VoiceCallPageContents> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CallsBloc, CallsState>(
//       builder: (context, state) {
//         final KahoChatUser peerUser =
//             state.currentRoomDetails.currentCall.sender.uid ==
//                     Getters.getCurrentUserUid()
//                 ? state.currentRoomDetails.currentCall.receiver
//                 : state.currentRoomDetails.currentCall.sender;
//         if (state.currentRoomDetails.currentCall.status ==
//             CallStatus.answered) {
//           // _startTimer(context);
//         } else if (state.currentRoomDetails.currentCall.status ==
//             CallStatus.declined) {
//           context.read<CallsBloc>().add(const CallsEvent.endCurrentCall(0));
//         }
//         return SafeScaffold(
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Expanded(
//                 child: Container(
//                   color: Kolors.lightGrey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomCircleAvatar(
//                         profilePictureUrl: peerUser.profilePictureUrl,
//                       ),
//                       const SizedBoxH10(),
//                       Text(
//                         peerUser.name,
//                         style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Kolors.white,
//                         ),
//                       ),
//                       const SizedBoxH10(),
//                       if (state.currentRoomDetails.currentCall.status ==
//                           CallStatus.answered)
//                         const Text("Ongoing call")
//                       else
//                         const Text("Connecting..."),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   alignment: Alignment.center,
//                   color: Kolors.white,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           IconButtonWithLabel(
//                             onTap: () {},
//                             iconData: Icons.mic,
//                             label: "Mute",
//                           ),
//                           IconButtonWithLabel(
//                             onTap: () {},
//                             iconData: Icons.person_add,
//                             label: "Add call",
//                           ),
//                           IconButtonWithLabel(
//                             onTap: () {},
//                             iconData: Icons.volume_up,
//                             label: "Speaker",
//                           ),
//                         ],
//                       ),
//                       const SizedBoxH30(),
//                       FloatingActionButton(
//                         onPressed: () {
//                           AutoRouter.of(context).pop();
//                         },
//                         backgroundColor: Colors.red,
//                         child: const Icon(Icons.call_end),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
