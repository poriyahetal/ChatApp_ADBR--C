import 'dart:convert';

import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class ParticipantModel {
  int? id;
  KahoChatUser participant;
  bool isActive;
  ParticipantType type;
  CallStatus status;
  KahoChatUser? callerInfo;
  bool? isMuted;
  ParticipantModel({
    required this.id,
    required this.participant,
    required this.isMuted,
    required this.isActive,
    required this.type,
    required this.status,
    required this.callerInfo,
  });

  ParticipantModel copyWith({
    KahoChatUser? participant,
    bool? isActive,
    ParticipantType? type,
    CallStatus? status,
    bool? isMuted,
    KahoChatUser? callerInfo,
    int? id,
  }) {
    return ParticipantModel(
      id: id ?? this.id,
      participant: participant ?? this.participant,
      isActive: isActive ?? this.isActive,
      type: type ?? this.type,
      status: status ?? this.status,
      callerInfo: callerInfo ?? this.callerInfo,
      isMuted: isMuted ?? this.isMuted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'participant': participant.toMap(),
      'isActive': isActive,
      'type': type.toString(),
      'status': status.toString(),
      'callerInfo': callerInfo != null ? callerInfo!.toMap() : null,
      'isMuted': isMuted,
      'id': id,
    };
  }

  factory ParticipantModel.empty() => ParticipantModel(
        participant: KahoChatUser.empty(),
        isMuted: false,
        isActive: false,
        type: ParticipantType.caller,
        status: CallStatus.ended,
        callerInfo: KahoChatUser.empty(),
        id: 0,
      );
  factory ParticipantModel.fromMap(Map<String, dynamic> map) {
    return ParticipantModel(
      participant:
          KahoChatUser.fromMap(map['participant'] as Map<String, dynamic>),
      isActive: map['isActive'] as bool,
      type: HelperFunctions.stringToParticipantType(map['type'] as String),
      status: HelperFunctions.stringToCallStatus(map['status'] as String),
      callerInfo: map["callerInfo"] != null
          ? KahoChatUser.fromMap(map["callerInfo"] as Map<String, dynamic>)
          : null,
      isMuted: map["isMuted"] != null ? map["isMuted"] as bool : null,
      id: map["id"] != null ? map["id"] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ParticipantModel.fromJson(String source) =>
      ParticipantModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ParticipantModel(id:$id, isMuted: $isMuted, callerInfo:$callerInfo, participant: $participant, isActive: $isActive, type: $type, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParticipantModel &&
        other.participant == participant &&
        other.isActive == isActive &&
        other.type == type &&
        other.status == status &&
        other.callerInfo == callerInfo &&
        other.isMuted == isMuted;
  }

  @override
  int get hashCode {
    return participant.hashCode ^
        isActive.hashCode ^
        type.hashCode ^
        callerInfo.hashCode ^
        isMuted.hashCode ^
        status.hashCode;
  }
}
