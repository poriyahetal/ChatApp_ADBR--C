part of 'calls_bloc.dart';

@freezed
class CallsEvent with _$CallsEvent {
  const factory CallsEvent.endCurrentCall(int callDuration) = _EndCall;
  const factory CallsEvent.getAgoraToken(
      {required String agoraGeneratedToken}) = _GetAgoraToken;
  const factory CallsEvent.fetchAgoraToken() = _FetchAgoraToken;
  const factory CallsEvent.startVoiceCall(
    KahoChatUser caller,
    KahoChatUser receiver,
  ) = _StartVoiceCall;
  const factory CallsEvent.startVideoCall(
    KahoChatUser caller,
    KahoChatUser receiver,
  ) = _StartVideoCall;
  const factory CallsEvent.setParticipantUID({required int uid}) = _SetParticipantUID;
  const factory CallsEvent.acceptIncomingCall() = _AcceptCall;
  const factory CallsEvent.rejectIncomingCall() = _RejectCall;
  const factory CallsEvent.callNotAnswered() = _callNotAnswered;
  const factory CallsEvent.updateCallTimerBy1Second() =
      _UpdateCallTimerBy1Second;
  const factory CallsEvent.isPeerUserOnAnotherCall({
    required KahoChatUser peerUser,
    required CallingPage page,
  }) = _IsPeerUserOnAnotherCall;
  const factory CallsEvent.isAddCallUserAcceptedCall({
    required KahoChatUser peerUser,
    required String callid,
  }) = _IsAddCallUserOnAnotherCall;
  const factory CallsEvent.updateCurrentRoomDetails(CallRoomModel roomDetails) =
      _UpdateCurrentRoomDetails;
  const factory CallsEvent.addParticipants(
    KahoChatUser caller,
    KahoChatUser reciever,
    CallRoomModel currentRoom,
  ) = _AddParticipants;
  const factory CallsEvent.leaveCall(KahoChatUser receiver) = _LeaveCall;
  const factory CallsEvent.deleteSingleUserCallHistory(
      {required String callDocumentId}) = _DeleteSingleUserCallHistory;
  const factory CallsEvent.acquire() = _Acquire;
  const factory CallsEvent.startRecording(String callId, String callType) =
      _StartRecording;
  const factory CallsEvent.stopRecording({required CallRoomModel currentRoom}) =
      _StopRecording;
  const factory CallsEvent.changeUserMuteState({
    required CallRoomModel currentRoomDetails,
    required bool isMuted,
  }) = _ChangeUserMuteState;
}
