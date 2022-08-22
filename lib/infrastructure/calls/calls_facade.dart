import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/calls/call_log_model.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/calls/calls_failures.dart';
import 'package:flutter_template/domain/calls/i_calls_facade.dart';
import 'package:flutter_template/domain/calls/participant_model.dart';
import 'package:flutter_template/domain/calls/token_model.dart';
import 'package:flutter_template/domain/chats/chat_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/core/permission_handlers.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_cloud_messaging.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICallsFacade)
class CallsFacade implements ICallsFacade {
  final FirebaseFirestore _firestore;

  CallsFacade(this._firestore);

  @override
  Future<Either<CallsFailure, CallRoomModel>> acceptIncomingCall(
    CallRoomModel currentRoomDetails,
  ) async {
    try {
      ParticipantModel? participant;
      final bool isCallPermissionGranted =
          await PermissionHandlers.handleCallPermissions();
      if (!isCallPermissionGranted) {
        return left(const CallsFailure.permissionNotGranted());
      }
      final doc =
          await _firestore.callsCollection.doc(currentRoomDetails.id).get();
      final CallRoomModel tempModel =
          CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);
      final List<ParticipantModel> _participants = [];
      for (final element in tempModel.currentCall.participants) {
        if (element.participant.uid == Getters.getCurrentUserUid()) {
          _participants.add(element.copyWith(status: CallStatus.answered));
          participant = element.copyWith(status: CallStatus.answered);
        } else {
          _participants.add(element);
        }
      }

      final CallModel currentCall = tempModel.currentCall.copyWith(
        status: CallStatus.answered,
        participants: _participants,
      );
      final CallRoomModel updatedRoomDetails = tempModel.copyWith(
        currentCall: currentCall,
        lastJoinedOrLeftUser: participant,
      );
      await _updateCallHistoryAndRoomDetails(
        updatedRoomDetails: updatedRoomDetails,
      );
      return right(updatedRoomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> startCall(
    KahoChatUser caller,
    KahoChatUser reciever,
    CallType callType,
  ) async {
    try {
      final bool isCallPermissionGranted =
          await PermissionHandlers.handleCallPermissions();
      if (!isCallPermissionGranted) {
        return left(const CallsFailure.permissionNotGranted());
      }

      final String callId = Getters.getChatDocumentId(caller.uid, reciever.uid);
      final CallModel currentCall = CallModel(
        callId: callId,
        durationInSeconds: 0,
        userIds: [caller.uid, reciever.uid],
        participants: [
          ParticipantModel(
            isActive: true,
            participant: caller,
            type: ParticipantType.caller,
            status: CallStatus.answered,
            callerInfo: null,
            isMuted: false,
            id: 0,
          ),
          ParticipantModel(
            isActive: true,
            participant: reciever,
            type: ParticipantType.receiver,
            status: CallStatus.notAnswered,
            callerInfo: caller,
            isMuted: false,
            id: 1,
          )
        ],
        sender: caller,
        status: CallStatus.notAnswered,
        timeOfCalling: Timestamp.now(),
        type: callType,
        recordingDirectory: '',
        isRecordingExpired: false,
      );
      final CallRoomModel callRoomDetails = CallRoomModel(
        id: callId,
        users: [
          caller.uid,
          reciever.uid,
        ],
        isCallActive: true,
        currentCall: currentCall,
        isCallRecording: false,
        recordedBy: '',
        lastJoinedOrLeftUser: ParticipantModel(
          isActive: true,
          participant: reciever,
          type: ParticipantType.receiver,
          status: CallStatus.notAnswered,
          callerInfo: caller,
          isMuted: false,
          id: 1,
        ),
      );
      await _firestore.callsCollection.doc(callId).set(
            callRoomDetails.toMap(),
            SetOptions(merge: true),
          );
      if (reciever.pushToken != null) {
        FirebaseCloudMessaging().sendCallNotification(
            reciever.pushToken!, caller.name, callType, caller);
      }

      return right(callRoomDetails);
    } catch (e) {
      debugPrint("call start failure ==>${e.toString()}");
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> addParticipants(
    KahoChatUser caller,
    KahoChatUser reciever,
    CallRoomModel currentRoom,
  ) async {
    try {
      // final bool isCallPermissionGranted =
      //     await PermissionHandlers.handleCallPermissions();
      // if (!isCallPermissionGranted) {
      //   return left(const CallsFailure.permissionNotGranted());
      // }

      // final CallModel currentCall = CallModel(
      //   callId: callId,
      //   durationInSeconds: 0,
      //   receiver: reciever,
      //   sender: caller,
      //   status: CallStatus.notAnswered,
      //   timeOfCalling: Timestamp.now(),
      //   type: callType,
      // );
      // final CallRoomModel callRoomDetails = CallRoomModel(
      //   id: callId,
      //   users: [
      //     caller.uid,
      //     reciever.uid,
      //   ],
      //   isCallActive: true,
      //   currentCall: currentCall,
      // );
      final CallRoomModel tempRoom = currentRoom.copyWith(
        lastJoinedOrLeftUser: ParticipantModel(
          isActive: true,
          participant: reciever,
          type: ParticipantType.receiver,
          status: CallStatus.notAnswered,
          callerInfo: caller,
          isMuted: false,
          id: null,
        ),
      );
      tempRoom.users.add(reciever.uid);
      tempRoom.currentCall.participants.add(
        ParticipantModel(
          isActive: true,
          participant: reciever,
          type: ParticipantType.receiver,
          status: CallStatus.notAnswered,
          callerInfo: caller,
          isMuted: false,
          id: currentRoom.currentCall.participants.length - 1,
        ),
      );

      await _firestore.callsCollection.doc(currentRoom.id).set(
            tempRoom.toMap(),
            SetOptions(merge: true),
          );
      // if (reciever.pushToken != null) {
      //   FirebaseCloudMessaging().sendCallNotification(
      //       reciever.pushToken!, caller.name, callType, caller);
      // }

      return right(tempRoom);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> endCall(
    CallRoomModel currentRoomDetails,
    int callDurationInSeconds,
    String cloudFileDirectory,
  ) async {
    try {
      final doc =
          await _firestore.callsCollection.doc(currentRoomDetails.id).get();
      final CallRoomModel tempModel =
          CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);

      final List<ParticipantModel> _participants = [];
      for (final element in tempModel.currentCall.participants) {
        _participants
            .add(element.copyWith(isActive: false, status: CallStatus.ended));
      }
      final CallModel endedCall = tempModel.currentCall.copyWith(
        durationInSeconds: callDurationInSeconds,
        status: callDurationInSeconds == 0
            ? CallStatus.notAnswered
            : CallStatus.answered,
        recordingDirectory: cloudFileDirectory,
        participants: _participants,
      );
      final CallRoomModel updatedRoomDetails = tempModel.copyWith(
        isCallActive: false,
        lastCall: endedCall,
        currentCall: endedCall,
      );
      await _updateCallHistoryAndRoomDetails(
        updatedRoomDetails: updatedRoomDetails,
        endCall: true,
      );
      sendCallLogInfo(updatedRoomDetails);
      return right(updatedRoomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> leaveCall(
    KahoChatUser reciever,
    CallRoomModel currentRoomDetails,
  ) async {
    try {
      ParticipantModel? participant;
      final doc =
          await _firestore.callsCollection.doc(currentRoomDetails.id).get();
      final CallRoomModel tempModel =
          CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);
      final List<ParticipantModel> _participants = [];
      for (final element in tempModel.currentCall.participants) {
        if (element.participant.uid == reciever.uid) {
          _participants
              .add(element.copyWith(isActive: false, status: CallStatus.ended));
          participant =
              element.copyWith(isActive: false, status: CallStatus.ended);
        } else {
          _participants.add(element);
        }
      }

      final CallModel currentCall = tempModel.currentCall.copyWith(
        participants: _participants,
      );
      final CallRoomModel updatedRoomDetails = tempModel.copyWith(
        currentCall: currentCall,
        lastJoinedOrLeftUser: participant,
      );
      await _updateCallHistoryAndRoomDetails(
        updatedRoomDetails: updatedRoomDetails,
      );
      return right(updatedRoomDetails);
      // currentRoomDetails.currentCall.participants
      //     .firstWhere((element) => element.participant.uid == reciever.uid)
      //     .isActive = false;

      // await _updateCallHistoryAndRoomDetails(
      //   updatedRoomDetails: currentRoomDetails,
      // );
      // // sendCallLogInfo(updatedRoomDetails);
      // return right(currentRoomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> rejectIncomingCall(
    CallRoomModel currentRoomDetails,
  ) async {
    try {
      final doc =
          await _firestore.callsCollection.doc(currentRoomDetails.id).get();
      final CallRoomModel tempModel =
          CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);
      final List<ParticipantModel> _participants = [];
      for (final element in tempModel.currentCall.participants) {
        if (element.participant.uid == Getters.getCurrentUserUid()) {
          _participants.add(
              element.copyWith(status: CallStatus.declined, isActive: false));
        } else {
          _participants.add(element);
        }
      }
      final CallModel currentCall = tempModel.currentCall.copyWith(
        // status: CallStatus.declined,
        participants: _participants,
      );
      final CallRoomModel roomDetails = tempModel.copyWith(
        // isCallActive: false,
        lastCall: currentCall,
        currentCall: currentCall,
      );
      await _updateCallHistoryAndRoomDetails(
        updatedRoomDetails: roomDetails,
        endCall: true,
      );
      // sendCallLogInfo(currentRoomDetails);
      return right(roomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  Future<void> _updateCallHistoryAndRoomDetails(
      {required CallRoomModel updatedRoomDetails, bool endCall = false}) async {
    if (endCall) {
      //Adding the call to call history
      await _firestore.callsHistoryCollection.doc().set(
            updatedRoomDetails.lastCall!.toMap(),
            SetOptions(merge: true),
          );
    }

    //Updating the room details
    await _firestore.callsCollection
        .doc(updatedRoomDetails.currentCall.callId)
        .set(
          updatedRoomDetails.toMap(),
          SetOptions(merge: true),
        );
  }

  Future<void> sendCallLogInfo(CallRoomModel updatedRoomDetails) async {
    print(updatedRoomDetails.currentCall.timeOfCalling.toString());
    final log = CallLogModel(
      sender: updatedRoomDetails.currentCall.sender,
      participants: updatedRoomDetails.currentCall.participants,
      status: updatedRoomDetails.currentCall.status,
      type: updatedRoomDetails.currentCall.type,
      timeOfCalling: updatedRoomDetails.currentCall.timeOfCalling.toTime(),
      durationInSeconds: updatedRoomDetails.currentCall.durationInSeconds,
      callId: updatedRoomDetails.currentCall.callId,
    );
    for (var user in updatedRoomDetails.currentCall.participants.where(
      (element) => element.participant.uid != Getters.getCurrentUserUid(),
    )) {
      final message = MessageModel(
        sender: updatedRoomDetails.currentCall.sender,
        receiverUid: user.participant.uid,
        sendFrom: SendFrom.chat,
        text: log.toJson(),
        type: MessageType.callInfo,
        timeOfSending: Timestamp.now(),
        imageUrl: "",
        isSeen: false,
        isDelivered: false,
        fileUrl: "",
        fileName: "",
        fileLocation: '',
        fileSize: 0,
        firebaseFileLocation: '',
      );
      await _firestore.chatCollection
          .doc(
            Getters.getChatDocumentId(
              Getters.getCurrentUserUid(),
              user.participant.uid,
            ),
          )
          .messagesCollection
          .doc()
          .set(message.toMap());
      final updatedChat = ChatModel(
        lastMessage: message,
        user1: updatedRoomDetails.currentCall.participants
            .firstWhere(
              (element) =>
                  element.participant.uid == Getters.getCurrentUserUid(),
            )
            .participant,
        user2: user.participant,
        users: [
          updatedRoomDetails.currentCall.participants
              .firstWhere(
                (element) =>
                    element.participant.uid == Getters.getCurrentUserUid(),
              )
              .participant
              .uid,
          user.participant.uid
        ],
        lastRead: Timestamp.now(),
        deletedAt: Timestamp.now(),
        lastMessageTime: Timestamp.now(),
      );
      await _firestore.chatCollection
          .doc(
            Getters.getChatDocumentId(
              Getters.getCurrentUserUid(),
              user.participant.uid,
            ),
          )
          .set(updatedChat.toMap(), SetOptions(merge: true));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> callNotAnswered(
      CallRoomModel currentRoomDetails) async {
    try {
      // currentRoomDetails.currentCall.participants
      //       .firstWhere(
      //         (element) => element.participant.uid == Getters.getCurrentUserUid(),
      //       )
      //       .status = CallStatus.declined;
      final CallModel currentCall = currentRoomDetails.currentCall.copyWith(
        status: CallStatus.missed,
      );
      final CallRoomModel roomDetails = currentRoomDetails.copyWith(
        isCallActive: false,
        lastCall: currentCall,
        currentCall: currentCall,
      );
      await _updateCallHistoryAndRoomDetails(
        updatedRoomDetails: roomDetails,
        endCall: true,
      );
      // sendCallLogInfo(currentRoomDetails);
      return right(roomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, String>> fetchAgoraToken() async {
    try {
      final FirebaseDatabase _database = FirebaseDatabase.instance;

      //read method
      final ref = _database.ref();
      final read = ref.child('chatApp').child('agoraToken');
      final DatabaseEvent event = await read.once();
      AgoraToken agoraToken;
      if (event.snapshot.exists) {
        agoraToken = AgoraToken.fromJson(event.snapshot.value as String);
        print("agora token ==> ${agoraToken.token}");
        return right(agoraToken.token);
      } else {
        return left(const CallsFailure.customError("data doesn't exist"));
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, KahoChatUser>> isPeerUserOnAnotherCall({
    required String uid,
  }) async {
    try {
      final DocumentSnapshot snap =
          await _firestore.usersCollection.doc(uid).get();
      KahoChatUser peerUser;
      if (snap.exists) {
        peerUser = KahoChatUser.fromMap(snap.data() as Map<String, dynamic>);
      } else {
        peerUser = KahoChatUser.empty();
      }
      //debugPrint("Signed In User ===> ${user.toString()}");
      return right(peerUser);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, KahoChatUser>> isAddCallUserAcceptedCall(
      {required KahoChatUser peerUser, required String callid}) async {
    try {
      final doc = await _firestore.callsCollection.doc(callid).get();
      final CallRoomModel tempModel =
          CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);

      for (final user in tempModel.currentCall.participants) {
        if (user.participant.uid == peerUser.uid) {
          if (user.status != CallStatus.answered) {
            // await _firestore.callsCollection.doc(callid).set(
            //       updatedRoomDetails.toMap(),
            //       SetOptions(merge: true),
            //     );
            return left(
              CallsFailure.addedUserUnableToResponse(
                user.participant,
              ),
            );
          }
        }
      }

      return left(const CallsFailure.addedUserAcceptedCall());
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> changeUserMuteState({
    required CallRoomModel currentRoomDetails,
    required bool isMuted,
  }) async {
    try {
      final List<ParticipantModel> _participants = [];
      for (final element in currentRoomDetails.currentCall.participants) {
        if (element.participant.uid == Getters.getCurrentUserUid()) {
          _participants.add(element.copyWith(isMuted: isMuted));
        } else {
          _participants.add(element);
        }
      }

      final CallModel currentCall = currentRoomDetails.currentCall.copyWith(
        participants: _participants,
      );
      final CallRoomModel updatedRoomDetails = currentRoomDetails.copyWith(
        currentCall: currentCall,
      );
      await _updateCallHistoryAndRoomDetails(
        updatedRoomDetails: updatedRoomDetails,
      );
      return right(updatedRoomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> setParticipantUID(
      {required int uid, required CallRoomModel callRoomModel}) async {
    try {
      final doc = await _firestore.callsCollection.doc(callRoomModel.id).get();
      final CallRoomModel tempModel =
          CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);
      final List<ParticipantModel> _participants = [];
      for (final element in tempModel.currentCall.participants) {
        if (element.participant.uid == Getters.getCurrentUserUid()) {
          _participants.add(element.copyWith(id: uid));
        } else {
          _participants.add(element);
        }
      }
      final CallModel currentCall = tempModel.currentCall.copyWith(
        // status: CallStatus.declined,
        participants: _participants,
      );
      final CallRoomModel roomDetails = tempModel.copyWith(
        // isCallActive: false,
        lastCall: currentCall,
        currentCall: currentCall,
      );
      await _firestore.callsCollection.doc(roomDetails.currentCall.callId).set(
            roomDetails.toMap(),
            SetOptions(merge: true),
          );
      // sendCallLogInfo(currentRoomDetails);
      return right(roomDetails);
    } catch (e) {
      debugPrint(e.toString());
      return left(CallsFailure.customError(e.toString()));
    }
  }
}
