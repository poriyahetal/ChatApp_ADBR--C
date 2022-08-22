import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/participant_model.dart';

class CallRoomModel {
  String id;
  CallModel? lastCall;
  CallModel currentCall;
  List<String> users;
  bool isCallActive;
  String recordedBy;
  bool isCallRecording;
  ParticipantModel? lastJoinedOrLeftUser;

  CallRoomModel({
    required this.id,
    this.lastCall,
    required this.users,
    required this.isCallActive,
    required this.recordedBy,
    required this.currentCall,
    required this.isCallRecording,
    required this.lastJoinedOrLeftUser,
  });

  CallRoomModel copyWith({
    CallModel? lastCall,
    List<String>? users,
    bool? isCallActive,
    CallModel? currentCall,
    String? id,
    String? recordedBy,
    bool? isCallRecording,
    ParticipantModel? lastJoinedOrLeftUser,
  }) {
    return CallRoomModel(
      lastCall: lastCall ?? this.lastCall,
      users: users ?? this.users,
      isCallActive: isCallActive ?? this.isCallActive,
      currentCall: currentCall ?? this.currentCall,
      id: id ?? this.id,
      isCallRecording: isCallRecording ?? this.isCallRecording,
      recordedBy: recordedBy ?? this.recordedBy,
      lastJoinedOrLeftUser: lastJoinedOrLeftUser ?? this.lastJoinedOrLeftUser,
    );
  }

  factory CallRoomModel.empty() => CallRoomModel(
        lastCall: CallModel.empty(),
        users: [],
        isCallActive: false,
        currentCall: CallModel.empty(),
        id: '',
        isCallRecording: false,
        recordedBy: '',
        lastJoinedOrLeftUser: ParticipantModel.empty(),
      );

  Map<String, dynamic> toMap() {
    if (lastCall == null) {
      return {
        'users': users,
        'isCallActive': isCallActive,
        'currentCall': currentCall.toMap(),
        'id': id,
        'isCallRecording': isCallRecording,
        'recordedBy': recordedBy,
        'lastJoinedOrLeftUser': lastJoinedOrLeftUser!.toMap(),
      };
    }
    return {
      'lastCall': lastCall!.toMap(),
      'users': users,
      'isCallActive': isCallActive,
      'currentCall': currentCall.toMap(),
      'id': id,
      'isCallRecording': isCallRecording,
      'recordedBy': recordedBy,
      'lastJoinedOrLeftUser': lastJoinedOrLeftUser!.toMap(),
    };
  }

  factory CallRoomModel.fromMap(Map<String, dynamic> map) {
    return CallRoomModel(
      lastCall: map['lastCall'] == null
          ? CallModel.empty()
          : CallModel.fromMap(map['lastCall'] as Map<String, dynamic>),
      users: List<String>.from(map['users'] as List<dynamic>),
      isCallActive: map['isCallActive'] as bool,
      currentCall: map['currentCall'] == null
          ? CallModel.empty()
          : CallModel.fromMap(map['currentCall'] as Map<String, dynamic>),
      id: map['id'] as String,
      lastJoinedOrLeftUser: map['lastJoinedOrLeftUser'] != null
          ? ParticipantModel.fromMap(
              map['lastJoinedOrLeftUser'] as Map<String, dynamic>,
            )
          : null,
      isCallRecording: map['isCallRecording'] as bool,
      recordedBy: map['recordedBy'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CallRoomModel.fromJson(String source) =>
      CallRoomModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CallRoomModel(isCallActive: $isCallActive, id: $id, recordedBy: $recordedBy, lastCall: $lastCall, currentCall: $currentCall, users: $users, isCallRecordin: $isCallRecording)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallRoomModel &&
        other.id == id &&
        other.lastCall == lastCall &&
        other.currentCall == currentCall &&
        listEquals(other.users, users) &&
        other.isCallActive == isCallActive &&
        other.recordedBy == recordedBy &&
        other.isCallRecording == isCallRecording;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        lastCall.hashCode ^
        currentCall.hashCode ^
        users.hashCode ^
        isCallActive.hashCode ^
        recordedBy.hashCode ^
        isCallRecording.hashCode;
  }
}
