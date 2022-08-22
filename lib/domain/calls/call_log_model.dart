import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/calls/participant_model.dart';

import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class CallLogModel {
  final KahoChatUser sender;
  final List<ParticipantModel> participants;
  final CallStatus status;
  final CallType type;
  final String timeOfCalling;
  final int durationInSeconds;
  final String callId;
  CallLogModel({
    required this.sender,
    required this.participants,
    required this.status,
    required this.type,
    required this.timeOfCalling,
    required this.durationInSeconds,
    required this.callId,
  });

  factory CallLogModel.demo() => CallLogModel(
        sender: KahoChatUser.demo(),
        participants: [],
        status: CallStatus.notAnswered,
        type: CallType.audio,
        timeOfCalling: "22:40",
        durationInSeconds: 0,
        callId: "callId",
      );

  factory CallLogModel.empty() => CallLogModel(
        sender: KahoChatUser.empty(),
        participants: [],
        status: CallStatus.notAnswered,
        type: CallType.audio,
        timeOfCalling: "",
        durationInSeconds: 0,
        callId: "",
      );

  CallLogModel copyWith({
    KahoChatUser? sender,
    List<ParticipantModel>? participants,
    CallStatus? status,
    CallType? type,
    String? timeOfCalling,
    int? durationInSeconds,
    String? callId,
  }) {
    return CallLogModel(
      sender: sender ?? this.sender,
      participants: participants ?? this.participants,
      status: status ?? this.status,
      type: type ?? this.type,
      timeOfCalling: timeOfCalling ?? this.timeOfCalling,
      durationInSeconds: durationInSeconds ?? this.durationInSeconds,
      callId: callId ?? this.callId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender.toMap(),
      'participants': participants.map((x) => x.toMap()).toList(),
      'status': status.toString(),
      'type': type.toString(),
      'timeOfCalling': timeOfCalling,
      'durationInSeconds': durationInSeconds,
      'callId': callId,
    };
  }

  factory CallLogModel.fromMap(Map<String, dynamic> map) {
    return CallLogModel(
      sender: KahoChatUser.fromMap(map['sender'] as Map<String, dynamic>),
      participants: map['participants'].map(
            (x) => ParticipantModel.fromMap(x as Map<String, dynamic>),
          )
          .toList()
          .cast<ParticipantModel>() as List<ParticipantModel>,
      status: HelperFunctions.stringToCallStatus(map['status'] as String),
      type: HelperFunctions.stringToCallType(map['type'] as String),
      timeOfCalling: map['timeOfCalling'] as String,
      durationInSeconds: map['durationInSeconds'] as int,
      callId: map['callId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CallLogModel.fromJson(String source) =>
      CallLogModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CallLogModel(sender: $sender, participants: $participants, status: $status, type: $type, timeOfCalling: $timeOfCalling, durationInSeconds: $durationInSeconds, callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallLogModel &&
        other.sender == sender &&
        listEquals(other.participants, participants) &&
        other.status == status &&
        other.type == type &&
        other.timeOfCalling == timeOfCalling &&
        other.durationInSeconds == durationInSeconds &&
        other.callId == callId;
  }

  @override
  int get hashCode {
    return sender.hashCode ^
        participants.hashCode ^
        status.hashCode ^
        type.hashCode ^
        timeOfCalling.hashCode ^
        durationInSeconds.hashCode ^
        callId.hashCode;
  }
}
