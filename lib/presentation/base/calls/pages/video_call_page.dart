import 'dart:async';
import 'package:agora_rtc_engine/rtc_local_view.dart' as rtc_local_view;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as rtc_remote_view;
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
import 'package:simple_pip_mode/pip_widget.dart';
import 'package:simple_pip_mode/simple_pip.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:vibration/vibration.dart';

class VideoCallPage extends StatefulWidget {
  const VideoCallPage({
    Key? key,
  }) : super(key: key);

  @override
  _VideoCallPageState createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  Offset position = const Offset(215, 475);
  bool disposedPage = true;
  late String resourceId;
  late String sid;
  late Timer timer;
  bool callEnded = false;
  bool isPipOn = false;
  late SimplePip pip;
  Timer? addCallTime = null;

  late List<Widget> views;
  void changePipOn() {
    isPipOn = true;
    print("pip enable");
    setState(() {});
  }

  void changePipOff() {
    isPipOn = false;
    print("pip disable");
    setState(() {});
  }

  @override
  void initState() {
    pip = SimplePip(
      onPipEntered: () => changePipOff(),
      onPipExited: () => changePipOn(),
    );
    context
        .read<CallScreenBloc>()
        .add(const CallScreenEvent.enableDisableToolBar(isEnabled: true));
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initializeAgoraSDK(context, CallType.video);
    });
    disableToolBar();
  }

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
  void dispose() {
    AppAudioPlayer.stopDialerTone();
    // TODO: implement dispose
    timer.cancel();
    if (addCallTime != null) {
      addCallTime!.cancel();
    }
    super.dispose();
    AppAudioPlayer.stopDialerTone();
    // if (isRecording) {
    //   context.read<RecordingsBloc>().add(const RecordingsEvent.stopRecording());
    // }
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

  List<Widget> _getRenderViews() {
    final List<Widget> list = [];
    list.add(Stack(
      children: [
        rtc_local_view.SurfaceView(),
      ],
    ));
    context.read<CallScreenBloc>().state.users.forEach((int uid) {
      return list.add(BlocBuilder<CallsBloc, CallsState>(
        builder: (context, state) {
          String displayNameOrNumber;
          bool isMuted = false;
          try {
            final String phoneContactNumberOrName = Getters.checkLocalContact(
              phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
              phoneNumber: state.currentRoomDetails.currentCall.participants
                  .firstWhere((element) => element.id == uid)
                  .participant
                  .phoneNumber,
            );

            if (phoneContactNumberOrName == '') {
              displayNameOrNumber = state
                  .currentRoomDetails.currentCall.participants
                  .firstWhere((element) => element.id == uid)
                  .participant
                  .name;
            } else {
              displayNameOrNumber =
                  state.currentRoomDetails.currentCall.sender.name;
            }
          } catch (e) {
            displayNameOrNumber = "";
          }
          try {
            isMuted = state.currentRoomDetails.currentCall.participants
                .firstWhere((element) => element.id == uid)
                .isMuted!;
          } catch (e) {}
          return Stack(
            children: [
              rtc_remote_view.SurfaceView(
                uid: uid,
                channelId: 'temp',
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      displayNameOrNumber,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Kolors.white,
                      ),
                    ),
                    Icon(
                      isMuted ? Icons.mic_off : Icons.mic_none_outlined,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    const SizedBoxH10(),
                  ],
                ),
              ),
            ],
          );
        },
      ));
    });
    return list;
  }

  Widget _videoView(Widget view) {
    return Expanded(child: Container(child: view));
  }

  /// Video view row wrapper
  Widget _expandedVideoRow(List<Widget> views) {
    final wrappedViews = views.map<Widget>(_videoView).toList();
    return Expanded(
      child: Row(
        children: wrappedViews,
      ),
    );
  }

  Widget _viewRows() {
    views = _getRenderViews();
    switch (views.length) {
      case 3:
        return SizedBox(
          child: Column(
            children: <Widget>[
              // _expandedVideoRow([views[0]]),
              _expandedVideoRow([views[2]])
            ],
          ),
        );
      case 4:
        return SizedBox(
          child: Column(
            children: <Widget>[
              _expandedVideoRow([views[2]]),
              _expandedVideoRow([views[3]])
            ],
          ),
        );
      case 5:
        return SizedBox(
          child: Column(
            children: <Widget>[
              _expandedVideoRow([views[2]]),
              _expandedVideoRow(views.sublist(3, 4))
            ],
          ),
        );
      case 6:
        return SizedBox(
          child: Column(
            children: <Widget>[
              _expandedVideoRow(views.sublist(2, 3)),
              _expandedVideoRow(views.sublist(4, 5))
            ],
          ),
        );
      case 7:
        return SizedBox(
          child: Column(
            children: <Widget>[
              _expandedVideoRow(views.sublist(2, 3)),
              _expandedVideoRow(views.sublist(4, 5)),
              _expandedVideoRow([views[6]])
            ],
          ),
        );
      case 8:
        return SizedBox(
          child: Column(
            children: <Widget>[
              _expandedVideoRow(views.sublist(2, 3)),
              _expandedVideoRow(views.sublist(4, 5)),
              _expandedVideoRow(views.sublist(6, 7)),
            ],
          ),
        );
      default:
    }
    return const Center(
      child: Icon(
        Icons.person,
        color: Kolors.white,
        size: 80,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!callEnded) {
          context.read<CallScreenBloc>().add(const CallScreenEvent.minimize());

          pip.enterPipMode(
            aspectRatio: [3, 3],
          );

          // isPipOn = true;
          // setState(() {});
          return Future.value(false);
        } else {
          return Future.value(true);
        }
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
          if (snapshot.hasData) {
            final CallRoomModel callDetails = CallRoomModel.fromMap(
              snapshot.data!.data() as Map<String, dynamic>,
            );
            context
                .read<CallsBloc>()
                .add(CallsEvent.updateCurrentRoomDetails(callDetails));
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
              disposedPage = false;
              callEnded = true;
              AppAudioPlayer.stopDialerTone();
              AutoRouter.of(context).pop();
            }

            if (callDetails.users.length >= 2 &&
                !context.read<CallScreenBloc>().state.isDialerTonePlaying &&
                callDetails.isCallActive &&
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
                // if (!state.currentRoomDetails.isCallActive) {
                //   callEnded = true;
                //   destroyCallChannel();
                //   onCallEnd(
                //     context,
                //     false,
                //   );
                //   AppAudioPlayer.stopDialerTone();
                //   // print(state.currentRoomDetails.toString());
                //   timer.cancel();
                //   AppAudioPlayer.stopDialerTone();
                //   if (mounted && disposedPage) {
                //     disposedPage = false;
                //     // setState(() {});
                //     AutoRouter.of(context).pop();
                //   }
                // }
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
                          AppAudioPlayer.stopDialerTone();
                          disposedPage = false;
                          // setState(() {});
                          AutoRouter.of(context).pop();
                        }
                      },
                    );
                  },
                );
              },
              child: BlocBuilder<CallsBloc, CallsState>(
                builder: (context, state) {
                  // callId = state.currentRoomDetails.currentCall.callId;
                  return PipWidget(
                    pipBuilder: (context) => BlocBuilder<CallsBloc, CallsState>(
                      builder: (context, callState) {
                        if (callState.currentRoomDetails.currentCall.status ==
                            CallStatus.answered) {
                          return _expandedVideoRow([views[2]]);
                        }
                        return const SafeScaffold(
                          body: Center(
                            child: Text(
                              'Waiting to pickup the call',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      },
                    ),
                    builder: (context) {
                      return BlocBuilder<CallsBloc, CallsState>(
                        builder: (context, callState) {
                          final KahoChatUser peerUser = callState
                              .currentRoomDetails.currentCall.participants
                              .firstWhere((element) =>
                                  element.participant.uid !=
                                  Getters.getCurrentUserUid())
                              .participant;
                          if (callState.currentRoomDetails.currentCall.status
                                  .toString() ==
                              CallStatus.answered.toString()) {
                            AppAudioPlayer.stopDialerTone();
                          }
                          return BlocBuilder<CallScreenBloc, CallScreenState>(
                            builder: (context, callScreenState) {
                              return SafeScaffold(
                                backgroundColor: Kolors.callBackground,
                                body: (callState.currentRoomDetails.currentCall
                                            .status !=
                                        CallStatus.answered)
                                    ? _receiverDetails(peerUser, callState)
                                    : InkWell(
                                        onTap: () async {
                                          context.read<CallScreenBloc>().add(
                                                const CallScreenEvent
                                                    .enableDisableToolBar(
                                                  isEnabled: true,
                                                ),
                                              );

                                          if (mounted) {
                                            timer = Timer(
                                                const Duration(seconds: 10),
                                                () {
                                              if (mounted) {
                                                context
                                                    .read<CallScreenBloc>()
                                                    .add(
                                                      const CallScreenEvent
                                                          .enableDisableToolBar(
                                                        isEnabled: false,
                                                      ),
                                                    );
                                              }
                                            });
                                          }
                                        },
                                        child: Stack(
                                          // clipBehavior: Clip.none,
                                          children: [
                                            Column(
                                              // alignment: Alignment.topCenter,
                                              children: [
                                                Container(
                                                  color: Kolors.callButton,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: BlocBuilder<
                                                            CallScreenBloc,
                                                            CallScreenState>(
                                                          builder:
                                                              (context, state) {
                                                            return Text(
                                                              StopWatchTimer
                                                                  .getDisplayTime(
                                                                StopWatchTimer
                                                                    .getMilliSecFromSecond(
                                                                  state
                                                                      .callTimer,
                                                                ),
                                                                milliSecond:
                                                                    false,
                                                              ),
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 18,
                                                                color: Kolors
                                                                    .white,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      RecordingWidget(
                                                          callId: context
                                                              .read<CallsBloc>()
                                                              .state
                                                              .currentRoomDetails
                                                              .currentCall
                                                              .callId)
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    // height: MediaQuery.of(context).size.height / 2.1,
                                                    color: Kolors.callButton,
                                                    child: Stack(
                                                      children: [
                                                        // if (_getRenderViews().length > 1 &&     !state.isRemoteVideoDisabled)
                                                        //   _getRenderViews()[1]
                                                        // else
                                                        //   const Center(
                                                        //     child: Icon(
                                                        //       Icons.person,
                                                        //       color: Kolors.white,
                                                        //       size: 80,
                                                        //     ),
                                                        //   ),
                                                        _viewRows(),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Row(
                                                              // mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                if (callScreenState
                                                                    .isRemoteUserMuted)
                                                                  const Icon(
                                                                    Icons
                                                                        .mic_off,
                                                                    color: Kolors
                                                                        .white,
                                                                  ),
                                                                // Text(
                                                                //   peerUser.name,
                                                                //   style:
                                                                //       const TextStyle(
                                                                //     fontSize:
                                                                //         20,
                                                                //     fontWeight:
                                                                //         FontWeight
                                                                //             .bold,
                                                                //     color: Kolors
                                                                //         .white,
                                                                //   ),
                                                                // ),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                              left: position.dx,
                                              top: position.dy,
                                              child: Draggable(
                                                rootOverlay: true,
                                                feedback: BlocBuilder<
                                                    CallScreenBloc,
                                                    CallScreenState>(
                                                  builder: (context, state) {
                                                    return Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              5,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2,
                                                      color: Kolors.callButton,
                                                      child: Center(
                                                        child: state.isCameraOff
                                                            ? const Icon(
                                                                Icons.person,
                                                                color: Kolors
                                                                    .white,
                                                                size: 80,
                                                              )
                                                            : _getRenderViews()[
                                                                0],
                                                      ),
                                                    );
                                                  },
                                                ),
                                                onDragEnd: (details) {
                                                  setState(() {
                                                    position = details.offset -
                                                        const Offset(0, 50);
                                                  });
                                                },
                                                childWhenDragging:
                                                    const SizedBox(),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      5,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  color: Kolors.callButton,
                                                  child: Center(
                                                    child: callScreenState
                                                            .isCameraOff
                                                        ? const Icon(
                                                            Icons.person,
                                                            color: Kolors.white,
                                                            size: 80,
                                                          )
                                                        : _getRenderViews()[0],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (callScreenState.isToolBarEnable)
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      _toolbar(context),
                                                      // if (_getRenderViews().length != 2)
                                                      //   const SizedBox(
                                                      //     height: 40,
                                                      //   )
                                                      // else
                                                      InkWell(
                                                        onTap: () {
                                                          showMaterialModalBottomSheet(
                                                            useRootNavigator:
                                                                true,
                                                            expand: false,
                                                            context: context,
                                                            builder: (context) =>
                                                                MBottomSheet(
                                                              addParticipantsFunction:
                                                                  () async {
                                                                final result =
                                                                    await Navigator
                                                                        .push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            AddParticipantsPage(
                                                                      users: state
                                                                          .currentRoomDetails
                                                                          .users,
                                                                    ),
                                                                  ),
                                                                );
                                                                if (result !=
                                                                    null) {
                                                                  checkAddedUserAcceptsCall(
                                                                      addedUser:
                                                                          result
                                                                              as KahoChatUser);
                                                                }
                                                              },
                                                              showTurnOnVideo:
                                                                  false,
                                                            ),
                                                          );
                                                        },
                                                        child: const Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          size: 50,
                                                          color: Kolors.white,
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                          ],
                                        ),
                                      ),
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Column _receiverDetails(KahoChatUser peerUser, CallsState state) {
    String displayNameOrNumber;
    final String phoneContactNumberOrName = Getters.checkLocalContact(
      phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
      phoneNumber: peerUser.phoneNumber,
    );
    if (phoneContactNumberOrName == '') {
      displayNameOrNumber = peerUser.name;
    } else {
      displayNameOrNumber = phoneContactNumberOrName;
    }
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (!context.read<CallScreenBloc>().state.isCameraOff)
                SizedBox(child: _getRenderViews()[0]),
              Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleAvatar(
                    radius: 60,
                    nameFontSize: 40,
                    profilePictureUrl: peerUser.profilePictureUrl,
                    name: displayNameOrNumber.contains("+")
                        ? peerUser.name
                        : displayNameOrNumber,
                    color: peerUser.userColor,
                  ),
                  const SizedBoxH20(),
                  Text(
                    context.read<SettingsBloc>().state.languageData.connecting,
                    style: const TextStyle(color: Kolors.white),
                  ),
                  const SizedBoxH30(),
                  Text(
                    displayNameOrNumber,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Kolors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: _toolbar(context),
        )
      ],
    );
  }

  Widget _toolbar(BuildContext context) {
    return BlocBuilder<CallScreenBloc, CallScreenState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                callEnded = true;
                destroyCallChannel();
                print('video call end all');
                onCallEnd(
                  context,
                  true,
                );
                AppAudioPlayer.stopDialerTone();
                timer.cancel();
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
            RawMaterialButton(
              onPressed: () {
                state.engine.fold((e) => null, (engine) async {
                  if (state.isCameraOff) {
                    await engine.enableVideo();
                    await engine.muteLocalVideoStream(true);
                  } else {
                    engine.disableVideo();
                  }
                  context
                      .read<CallScreenBloc>()
                      .add(const CallScreenEvent.changeLocalCameraState());
                });
              },
              shape: const CircleBorder(),
              fillColor: Kolors.callButton,
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                state.isCameraOff
                    ? Icons.videocam_off_outlined
                    : Icons.videocam_outlined,
                color: Colors.white,
                size: 35.0,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                state.engine.fold((e) => null, (engine) async {
                  engine.switchCamera();
                });
              },
              shape: const CircleBorder(),
              fillColor: Kolors.callButton,
              padding: const EdgeInsets.all(15.0),
              child: const Icon(
                Icons.switch_camera_outlined,
                color: Colors.white,
                size: 35.0,
              ),
            )
          ],
        );
      },
    );
  }
}
