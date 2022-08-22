// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
part 'call_screen_bloc.freezed.dart';
part 'call_screen_event.dart';
part 'call_screen_state.dart';

@injectable
class CallScreenBloc extends Bloc<CallScreenEvent, CallScreenState> {
  CallScreenBloc() : super(CallScreenState.initial());

  @override
  Stream<CallScreenState> mapEventToState(
    CallScreenEvent event,
  ) async* {
    yield* event.map(
      callStarted: (e) async* {
        final engine = await RtcEngine.create(ApiConstants.agoraAppId);
        yield state.copyWith(engine: right(engine), calltype: e.callType);
      },
      callStopped: (e) async* {
        yield CallScreenState.initial();
      },
      remoteAudioStateChanged: (e) async* {
        yield state.copyWith(isRemoteUserMuted: e.muted);
      },
      remoteVideoStateChanged: (e) async* {
        yield state.copyWith(isRemoteVideoDisabled: e.videoDisabled);
      },
      joinChannelSuccess: (e) async* {
        yield state.copyWith(isRinging: true);
      },
      setEnableSpeakerPhone: (e) async* {
        yield state.copyWith(isSpeakerOn: !state.isSpeakerOn);
      },
      muteLocalAudioStream: (e) async* {
        yield state.copyWith(isMuted: !state.isMuted);
      },
      minimize: (e) async* {
        yield state.copyWith(isScreenMinimized: true);
      },
      maximize: (e) async* {
        yield state.copyWith(isScreenMinimized: false);
      },
      addUser: (e) async* {
        state.users.add(e.uid);
        yield state.copyWith(users: state.users);
      },
      removeUser: (e) async* {
        state.users.remove(e.uid);
        yield state.copyWith(users: state.users);
      },
      changeLocalCameraState: (e) async* {
        yield state.copyWith(isCameraOff: !state.isCameraOff);
      },
      startTimer: (e) async* {
        yield state.copyWith(stopWatchTimer: some(e.stopWatchTimer));
      },
      updateTimeByASecond: (e) async* {
        yield state.copyWith(callTimer: state.callTimer + 1);
      },
      stopTimer: (e) async* {
        yield state.copyWith(stopWatchTimer: none());
      },
      enableDisableToolBar: (e) async* {
        yield state.copyWith(isToolBarEnable: e.isEnabled);
      },
      startDialeTone: (e) async* {
        yield state.copyWith(isDialerTonePlaying: e.isDialerTonePlaying);
      },
    );
  }
}
