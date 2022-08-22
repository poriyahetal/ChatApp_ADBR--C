import 'dart:convert';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_template/application/calls/call_screen/call_screen_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/calls/token_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:http/http.dart' as http;
import 'package:provider/src/provider.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

late BuildContext contextt;
void initContext(BuildContext context) {
  contextt = context;
}

Stream<QuerySnapshot> inCallStream(BuildContext context) {
  return FirebaseFirestore.instance.callsCollection
      .where("id",
          isEqualTo: contextt
              .read<CallsBloc>()
              .state
              .currentRoomDetails
              .currentCall
              .callId)
      .snapshots();
}

void inCallSteamListenerStart(BuildContext context) {
  inCallStream(contextt).listen((snapshot) {
    if (snapshot.size != 0) {
      final CallRoomModel incomingCallRoomDetails = CallRoomModel.fromMap(
          snapshot.docs.first.data() as Map<String, dynamic>);
      contextt.read<CallsBloc>().add(
            CallsEvent.updateCurrentRoomDetails(
              incomingCallRoomDetails,
            ),
          );
    }
  });
}

Future<void> initializeAgoraSDK(BuildContext context, CallType calltype) async {
  if (contextt.read<CallScreenBloc>().state.engine.isLeft()) {
    final engine = await RtcEngine.create(ApiConstants.agoraAppId);
    if (calltype == CallType.video) {
      await engine.enableVideo();
      await engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
      await engine.setClientRole(ClientRole.Broadcaster);
    }
    engine.setEventHandler(
      RtcEngineEventHandler(
        remoteVideoStateChanged: (
          int uid,
          VideoRemoteState state,
          VideoRemoteStateReason reason,
          int elapsed,
        ) {
          if (VideoRemoteStateReason.RemoteMuted == reason) {
            contextt
                .read<CallScreenBloc>()
                .add(const CallScreenEvent.remoteVideoStateChanged(true));
          } else if (VideoRemoteStateReason.RemoteUnmuted == reason) {
            contextt
                .read<CallScreenBloc>()
                .add(const CallScreenEvent.remoteVideoStateChanged(false));
          }
        },
        remoteAudioStateChanged: (
          int uid,
          AudioRemoteState audioRemoteState,
          AudioRemoteStateReason reason,
          int elapsed,
        ) {
          if (AudioRemoteStateReason.RemoteMuted == reason) {
            contextt
                .read<CallScreenBloc>()
                .add(const CallScreenEvent.remoteAudioStateChanged(true));
          } else if (AudioRemoteStateReason.RemoteUnmuted == reason) {
            contextt
                .read<CallScreenBloc>()
                .add(const CallScreenEvent.remoteAudioStateChanged(false));
          }
        },
        rtcStats: (RtcStats stats) {
          // print(stats.userCount);
          // if (stats.userCount > 2) {
          //   _showParticipantsButton = true;
          // }
          // if (stats.userCount < 2 && _showParticipantsButton) {
          //   _showParticipantsButton = false;
          // }
        },
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          contextt.read<CallScreenBloc>().add(CallScreenEvent.addUser(uid));

          print("JOIN CHANNEL SUCCESS CALLED");
          showCallRoomNotification(context: contextt);
          print("joined user id $uid");
          contextt
              .read<CallScreenBloc>()
              .add(const CallScreenEvent.joinChannelSuccess());
          inCallSteamListenerStart(contextt);

          contextt.read<CallsBloc>().add(
                CallsEvent.setParticipantUID(
                  uid: uid,
                ),
              );
        },
        userJoined: (int uid, int elapsed) {
          _startTimer(contextt);
          print("joined user id $uid");
          contextt.read<CallScreenBloc>().add(CallScreenEvent.addUser(uid));
        },
        userOffline: (int uid, UserOfflineReason reason) async {
          contextt.read<CallScreenBloc>().add(CallScreenEvent.removeUser(uid));
          if (contextt.read<CallScreenBloc>().state.users.length < 2) {
            contextt.read<CallsBloc>().add(
                  CallsEvent.endCurrentCall(
                    context.read<CallScreenBloc>().state.callTimer,
                  ),
                );
          }
        },
        error: (ErrorCode error) {
          print("ERROR: $error");
        },
      ),
    );
    if (calltype == CallType.video) {
      final VideoEncoderConfiguration configuration =
          VideoEncoderConfiguration();
      configuration.dimensions = VideoDimensions(height: 1920, width: 1080);
      await engine.setVideoEncoderConfiguration(configuration);
    }
    String token = await getToken(contextt);

    await engine.joinChannel(
      token,
      // widget.callDetails.currentCall.callId,
      'temp',
      null,
      0,
    );

    contextt
        .read<CallScreenBloc>()
        .add(CallScreenEvent.callStarted(engine, CallType.audio));
  }
}

void _startTimer(BuildContext context) {
  final stopWatchTimer = StopWatchTimer(
    onChangeRawSecond: (value) {
      // print("second ${context.read<CallScreenBloc>().state.callTimer}");
      contextt
          .read<CallScreenBloc>()
          .add(const CallScreenEvent.updateTimeByASecond());
    },
  );
  stopWatchTimer.onExecute.add(StopWatchExecute.start);

  contextt
      .read<CallScreenBloc>()
      .add(CallScreenEvent.startTimer(stopWatchTimer));
}

void destroyCallChannel() {
  final state = contextt.read<CallScreenBloc>().state;
  state.engine.fold(
    (e) => null,
    (engine) async {
      await engine.leaveChannel();
      await engine.destroy();
    },
  );
}

void onCallEnd(
  BuildContext context,
  bool endCurrentCall,
) async {
  print(
      "dispose called ${contextt.read<CallsBloc>().state.currentRoomDetails.currentCall.participants.length}");
  contextt.read<UserBloc>().add(
        UserEvent.createOrUpdateUser(
          contextt
              .read<UserBloc>()
              .state
              .signedInUser
              .copyWith(isOnCall: false),
        ),
      );
  int k = 0;
  for (final participant in contextt
      .read<CallsBloc>()
      .state
      .currentRoomDetails
      .currentCall
      .participants) {
    if (participant.isActive) {
      k = k + 1;
    }
  }
  if (contextt.read<CallsBloc>().state.isRecording) {
    contextt.read<CallsBloc>().add(CallsEvent.stopRecording(
        currentRoom: contextt.read<CallsBloc>().state.currentRoomDetails));
  }
  final state = contextt.read<CallScreenBloc>().state;
  // try {
  //   state.engine.fold((e) => null, (engine) async {

  //     await engine.leaveChannel();
  //     await engine.destroy();
  //   });
  // } on PlatformException catch (e) {
  //   print(e.toString());
  // }
  contextt.read<CallScreenBloc>().add(const CallScreenEvent.callStopped());

  // if (context.read<RecordingsBloc>().state.isRecording) {
  //   context.read<RecordingsBloc>().add(RecordingsEvent.stopRecording(
  //       currentRoom: context.read<CallsBloc>().state.currentRoomDetails));
  // }
  if (endCurrentCall && k <= 2) {
    print("dispose called  ${k}");
    contextt.read<CallsBloc>().add(CallsEvent.endCurrentCall(state.callTimer));
    // to stop calling listener
    inCallStream(context).drain();
  } else {
    contextt.read<CallsBloc>().add(
          CallsEvent.leaveCall(contextt.read<UserBloc>().state.signedInUser),
        );
    inCallStream(context).drain();
  }

  contextt.read<CallScreenBloc>().add(const CallScreenEvent.stopTimer());
  contextt.read<CallScreenBloc>().state.stopWatchTimer.fold(() => null,
      (timer) {
    timer.onExecute.add(StopWatchExecute.stop);
    timer.dispose();
  });
  // AutoRouter.of(context).pop();
}

String baseUrl =
    'https://us-central1-noble-kingdom-318209.cloudfunctions.net/generate_token';

Future<String> getToken(BuildContext context) async {
  try {
    String token = '';
    final FirebaseDatabase _database = FirebaseDatabase.instance;

    //read method
    final ref = _database.ref();
    final read = ref.child('chatApp').child('agoraToken');
    final DatabaseEvent event = await read.once();
    AgoraToken agoraToken;
    if (event.snapshot.exists) {
      agoraToken = AgoraToken.fromJson(event.snapshot.value as String);
      final DateTime date = DateTime.fromMillisecondsSinceEpoch(
        agoraToken.tokenGeneratedTimeMillisecondsSinceEpoch,
      );

      if (DateTime.now().difference(date).inDays >= 1) {
        final response = await http.get(
          Uri.parse(
            'https://us-central1-noble-kingdom-318209.cloudfunctions.net/generate_token?channelName=temp&uid=0&role=publisher',
          ),
        );
        if (response.statusCode == 200) {
          token = response.body;
          Println(token);
          token = jsonDecode(token)['token'] as String;
          Println(token);
          //write method
          agoraToken = AgoraToken(
            token: token,
            tokenGeneratedTimeMillisecondsSinceEpoch:
                DateTime.now().millisecondsSinceEpoch,
          );
          final write = _database.ref();
          write.child('chatApp').child('agoraToken').set(agoraToken.toJson());
        } else {
          Println('Failed to fetch the token');
        }
        return token;
      } else {
        token = agoraToken.token;
        return token;
      }
    } else {
      final response = await http.get(
        Uri.parse(
          'https://us-central1-noble-kingdom-318209.cloudfunctions.net/generate_token?channelName=temp&uid=0&role=publisher',
        ),
      );

      if (response.statusCode == 200) {
        token = response.body;
        Println(token);
        token = jsonDecode(token)['token'] as String;
        Println(token);
        //write method
        agoraToken = AgoraToken(
          token: token,
          tokenGeneratedTimeMillisecondsSinceEpoch:
              DateTime.now().millisecondsSinceEpoch,
        );
        final write = _database.ref();
        write.child('chatApp').child('agoraToken').set(agoraToken.toJson());
      } else {
        Println('Failed to fetch the token');
      }
      return token;
    }
  } on Exception catch (e) {
    Println(e.toString());
    return '';
  }
}

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> showCallRoomNotification({required BuildContext context}) async {
  // while (context.read<CallsBloc>().state.currentRoomDetails.isCallActive) {
  // const int maxProgress = 100;
  String title;
  String bodyText;
  await Future<void>.delayed(const Duration(seconds: 2));

  while (true) {
    if (!contextt.read<CallsBloc>().state.currentRoomDetails.isCallActive) {
      flutterLocalNotificationsPlugin.cancel(0);
      break;
    } else {
      title = contextt
                  .read<CallsBloc>()
                  .state
                  .currentRoomDetails
                  .currentCall
                  .participants
                  .length >
              2
          ? 'Group call'
          : contextt
              .read<CallsBloc>()
              .state
              .currentRoomDetails
              .currentCall
              .participants[1]
              .participant
              .name;
    }
    if (contextt.read<CallScreenBloc>().state.callTimer > 0) {
      bodyText = StopWatchTimer.getDisplayTime(
        StopWatchTimer.getMilliSecFromSecond(
          contextt.read<CallScreenBloc>().state.callTimer,
        ),
        milliSecond: false,
      );
    } else if (contextt.read<CallScreenBloc>().state.isRinging) {
      bodyText = 'Ringing...';
    } else {
      bodyText = 'Dialing...';
    }
    // await Future<void>.delayed(const Duration(milliseconds: 1), () async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'call channel', 'call channel',
      channelDescription: 'ongoing call',

      // 'progress channel description',
      enableVibration: false,
      channelShowBadge: false,
      ongoing: true,
      importance: Importance.min,
      priority: Priority.min,
      onlyAlertOnce: true,
      playSound: false,
      // showProgress: true,
      // maxProgress: maxProgress,
      // progress: i
    );
    final NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      '$title',
      '$bodyText',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }
}
