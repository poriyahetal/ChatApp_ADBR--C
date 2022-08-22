part of 'calls_bloc.dart';

@freezed
class CallsState with _$CallsState {
  const factory CallsState({
    required bool isCallActive,
    required CallRoomModel currentRoomDetails,
    required int callTimer,
    required bool isCallPicked,
    required String sid,
    required String resourceId,
    required String agoraGeneratedToken,
    required String cloudRecordingDirectory,
    required Option<Either<CallsFailure, String>>
        isRecordingFailureorSuccessoption,
    required bool isRecording,
    required Option<Either<CallsFailure, Unit>> callEndFailureOrSuccessOpt,
    required Option<Either<CallsFailure, Unit>> callStartFailureOrSuccessOpt,
    required Option<Either<CallsFailure, Unit>> acceptCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, Unit>> rejectCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, Unit>> leaveCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, Unit>> acquireFailureOrSuccessOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        checkAddedUserAcceptsCallOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        isPeerUserOnAnotherCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        chatDetailPageWaitingCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        slidablePageWaitingCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        callInfoPageWaitingCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        callListPageWaitingCallFailureOrSuccessOpt,
    required Option<Either<CallsFailure, KahoChatUser>>
        startNewCallPageWaitingCallFailureOrSuccessOpt,
  }) = _CallState;
  factory CallsState.initial() => CallsState(
        sid: "",
        resourceId: "",
        isCallActive: false,
        cloudRecordingDirectory: '',
        isRecordingFailureorSuccessoption: none(),
        isRecording: false,
        agoraGeneratedToken: '',
        isPeerUserOnAnotherCallFailureOrSuccessOpt: none(),
        currentRoomDetails: CallRoomModel.empty(),
        callEndFailureOrSuccessOpt: none(),
        callTimer: 0,
        isCallPicked: false,
        callStartFailureOrSuccessOpt: none(),
        acceptCallFailureOrSuccessOpt: none(),
        rejectCallFailureOrSuccessOpt: none(),
        leaveCallFailureOrSuccessOpt: none(),
        acquireFailureOrSuccessOpt: none(),
        checkAddedUserAcceptsCallOpt: none(),
        callInfoPageWaitingCallFailureOrSuccessOpt: none(),
        callListPageWaitingCallFailureOrSuccessOpt: none(),
        slidablePageWaitingCallFailureOrSuccessOpt: none(),
        chatDetailPageWaitingCallFailureOrSuccessOpt: none(),
        startNewCallPageWaitingCallFailureOrSuccessOpt: none(),
      );
}
