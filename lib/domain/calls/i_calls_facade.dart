import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/calls/calls_failures.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class ICallsFacade {
  Future<Either<CallsFailure, CallRoomModel>> setParticipantUID(
      {required int uid, required CallRoomModel callRoomModel});
  Future<Either<CallsFailure, CallRoomModel>> endCall(
    CallRoomModel currentRoomDetails,
    int callDurationInSeconds,
    String cloudFileDirectory,
  );
  Future<Either<CallsFailure, CallRoomModel>> startCall(
    KahoChatUser caller,
    KahoChatUser reciever,
    CallType callType,
  );
  Future<Either<CallsFailure, CallRoomModel>> rejectIncomingCall(
    CallRoomModel currentRoomDetails,
  );
  Future<Either<CallsFailure, CallRoomModel>> callNotAnswered(
    CallRoomModel currentRoomDetails,
  );
  Future<Either<CallsFailure, CallRoomModel>> acceptIncomingCall(
    CallRoomModel currentRoomDetails,
  );
  Future<Either<CallsFailure, CallRoomModel>> addParticipants(
    KahoChatUser caller,
    KahoChatUser reciever,
    CallRoomModel currentRoom,
  );
  Future<Either<CallsFailure, CallRoomModel>> leaveCall(
    KahoChatUser reciever,
    CallRoomModel currentRoomDetails,
  );
  Future<Either<CallsFailure, String>> fetchAgoraToken();
  Future<Either<CallsFailure, KahoChatUser>> isPeerUserOnAnotherCall(
      {required String uid});

  Future<Either<CallsFailure, KahoChatUser>> isAddCallUserAcceptedCall({
    required KahoChatUser peerUser,
    required String callid,
  });
  Future<Either<CallsFailure, CallRoomModel>> changeUserMuteState({
    required CallRoomModel currentRoomDetails,
    required bool isMuted,
  });
}
