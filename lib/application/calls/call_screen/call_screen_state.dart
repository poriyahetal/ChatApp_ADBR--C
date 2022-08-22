part of 'call_screen_bloc.dart';

@freezed
class CallScreenState with _$CallScreenState {
  const factory CallScreenState({
    required Option<StopWatchTimer> stopWatchTimer,
    required CallType calltype,
    required bool isScreenMinimized,
    required Either<int, RtcEngine> engine,
    required bool isRemoteUserMuted,
    required bool isRemoteVideoDisabled,
    required int callTimer,
    required bool showParticipantsButton,
    required bool isRinging,
    required bool isMuted,
    required bool isDialerTonePlaying,
    required bool isSpeakerOn,
    required List<int> users,
    required bool isCameraOff,
    required bool isToolBarEnable,
  }) = _CallScreensState;
  factory CallScreenState.initial() => CallScreenState(
        calltype: CallType.audio,
        callTimer: 0,
        isRemoteUserMuted: false,
        showParticipantsButton: false,
        isRinging: false,
        engine: left(1),
        isMuted: false,
        isSpeakerOn: false,
        isScreenMinimized: false,
        isDialerTonePlaying: false,
        isRemoteVideoDisabled: false,
        users: [],
        isCameraOff: false,
        isToolBarEnable: true,
        stopWatchTimer: none(),
      );
}
