part of 'call_screen_bloc.dart';

@freezed
class CallScreenEvent with _$CallScreenEvent {
  const factory CallScreenEvent.callStarted(
      RtcEngine engine, CallType callType) = _Started;
  const factory CallScreenEvent.remoteAudioStateChanged(bool muted) =
      _RemoteAudioStateChanged;
  const factory CallScreenEvent.remoteVideoStateChanged(bool videoDisabled) =
      _RemoteVideoStateChanged;
  const factory CallScreenEvent.setEnableSpeakerPhone() =
      _SetEnableSpeakerPhone;
  const factory CallScreenEvent.muteLocalAudioStream() = _MuteLocalAudioStream;
  const factory CallScreenEvent.joinChannelSuccess() = _JoinChannelSuccess;
  const factory CallScreenEvent.callStopped() = _Stopped;
  const factory CallScreenEvent.minimize() = _Minimize;
  const factory CallScreenEvent.maximize() = _Maximize;
  const factory CallScreenEvent.addUser(int uid) = _AddUser;
  const factory CallScreenEvent.removeUser(int uid) = _RemoveUser;
  const factory CallScreenEvent.changeLocalCameraState() =
      _ChangeLocalCameraState;
  const factory CallScreenEvent.startTimer(StopWatchTimer stopWatchTimer) =
      _StartTimer;
  const factory CallScreenEvent.stopTimer() = _StopTimer;
  const factory CallScreenEvent.startDialeTone({required bool isDialerTonePlaying}) = _StartDialeTone;
  const factory CallScreenEvent.updateTimeByASecond() = _UpdateTimeByASecond;
  const factory CallScreenEvent.enableDisableToolBar({required bool isEnabled}) = _EnableDisableToolBar;
}
