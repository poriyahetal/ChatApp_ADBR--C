import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/calls/participant_model.dart';

import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class CallModel {
  final KahoChatUser sender;
  final List<ParticipantModel> participants;
  final CallStatus status;
  final CallType type;
  final List<dynamic> userIds;
  final Timestamp timeOfCalling;
  final int durationInSeconds;
  final String callId;
  final String recordingDirectory;
  final bool? isRecordingExpired;

  CallModel({
    required this.isRecordingExpired,
    required this.sender,
    required this.participants,
    required this.status,
    required this.type,
    required this.userIds,
    required this.timeOfCalling,
    required this.durationInSeconds,
    required this.callId,
    required this.recordingDirectory,
  });

  factory CallModel.demo() => CallModel(
        sender: KahoChatUser.demo(),
        participants: [],
        userIds: [],
        status: CallStatus.notAnswered,
        type: CallType.audio,
        timeOfCalling: Timestamp.now(),
        durationInSeconds: 0,
        callId: "callId",
        recordingDirectory: '',
        isRecordingExpired: false,
      );

  factory CallModel.empty() => CallModel(
        sender: KahoChatUser.empty(),
        participants: [],
        userIds: [],
        status: CallStatus.notAnswered,
        type: CallType.audio,
        timeOfCalling: Timestamp.now(),
        durationInSeconds: 0,
        callId: "",
        recordingDirectory: '',
        isRecordingExpired: false,
      );

  CallModel copyWith({
    KahoChatUser? sender,
    List<ParticipantModel>? participants,
    CallStatus? status,
    List<dynamic>? userIds,
    CallType? type,
    Timestamp? timeOfCalling,
    int? durationInSeconds,
    String? callId,
    String? recordingDirectory,
    bool? isRecordingExpired,
  }) {
    return CallModel(
      sender: sender ?? this.sender,
      participants: participants ?? this.participants,
      status: status ?? this.status,
      type: type ?? this.type,
      userIds: userIds ?? this.userIds,
      timeOfCalling: timeOfCalling ?? this.timeOfCalling,
      durationInSeconds: durationInSeconds ?? this.durationInSeconds,
      callId: callId ?? this.callId,
      recordingDirectory: recordingDirectory ?? this.recordingDirectory,
      isRecordingExpired: isRecordingExpired ?? this.isRecordingExpired,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender.toMap(),
      'participants': participants.map((x) => x.toMap()).toList(),
      'status': status.toString(),
      'type': type.toString(),
      'userIds': userIds.toList(),
      'timeOfCalling': timeOfCalling,
      'durationInSeconds': durationInSeconds,
      'callId': callId,
      'recordingDirectory': recordingDirectory,
      'isRecordingExpired': isRecordingExpired,
    };
  }

  factory CallModel.fromMap(Map<String, dynamic> map) {
    return CallModel(
      sender: KahoChatUser.fromMap(map['sender'] as Map<String, dynamic>),
      userIds: map['userIds'] as List<dynamic>,
      participants: map['participants']
          .map(
            (x) => ParticipantModel.fromMap(x as Map<String, dynamic>),
          )
          .toList()
          .cast<ParticipantModel>() as List<ParticipantModel>,
      status: HelperFunctions.stringToCallStatus(map['status'] as String),
      type: HelperFunctions.stringToCallType(map['type'] as String),
      timeOfCalling: map['timeOfCalling'] as Timestamp,
      durationInSeconds: map['durationInSeconds'] as int,
      callId: map['callId'] as String,
      recordingDirectory: map['recordingDirectory'] as String,
      isRecordingExpired: map['isRecordingExpired'] != null
          ? map['isRecordingExpired'] as bool
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CallModel.fromJson(String source) =>
      CallModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CallModel(callId: $callId, sender: $sender, participants: $participants,userIds: $userIds , status: $status, type: $type, timeOfCalling: $timeOfCalling, durationInSeconds: $durationInSeconds, recordingDirectory: $recordingDirectory,)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallModel &&
        other.sender == sender &&
        listEquals(other.participants, participants) &&
        other.status == status &&
        other.userIds == userIds &&
        other.type == type &&
        other.timeOfCalling == timeOfCalling &&
        other.durationInSeconds == durationInSeconds &&
        other.recordingDirectory == recordingDirectory &&
        other.callId == callId &&
        other.isRecordingExpired == isRecordingExpired;
  }

  @override
  int get hashCode {
    return sender.hashCode ^
        participants.hashCode ^
        status.hashCode ^
        type.hashCode ^
        userIds.hashCode ^
        timeOfCalling.hashCode ^
        durationInSeconds.hashCode ^
        recordingDirectory.hashCode ^
        isRecordingExpired.hashCode ^
        callId.hashCode;
  }
}
