import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_template/domain/user/kahochat_user.dart';

class InviteModel {
  KahoChatUser sender;
  String receiverUid;
  bool? accepted;
  bool? answered;
  Timestamp timeOfSending;

  InviteModel({
    required this.sender,
    required this.receiverUid,
    this.accepted,
    required this.timeOfSending,
    this.answered,
  });

  InviteModel copyWith({
    KahoChatUser? sender,
    String? receiverUid,
    bool? accepted,
    Timestamp? timeOfSending,
    bool? answered,
  }) {
    return InviteModel(
      sender: sender ?? this.sender,
      receiverUid: receiverUid ?? this.receiverUid,
      accepted: accepted ?? this.accepted,
      timeOfSending: timeOfSending ?? this.timeOfSending,
      answered: answered ?? this.answered,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender.toMap(),
      'receiverUid': receiverUid,
      'accepted': accepted,
      'timeOfSending': timeOfSending,
      'answered': answered,
    };
  }

  factory InviteModel.fromMap(Map<String, dynamic> map) {
    return InviteModel(
      sender: KahoChatUser.fromMap(map['sender'] as Map<String, dynamic>),
      receiverUid: map['receiverUid'] as String,
      accepted: map['accepted'] as bool,
      timeOfSending: map['timeOfSending'] as Timestamp,
      answered: map['answered'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory InviteModel.fromJson(String source) =>
      InviteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'InviteModel(sender: ${sender.toString()}, receiverUid: $receiverUid, accepted: $accepted, timeOfSending: $timeOfSending, answered: $answered)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InviteModel &&
        other.sender == sender &&
        other.receiverUid == receiverUid &&
        other.accepted == accepted &&
        other.timeOfSending == timeOfSending &&
        other.answered == answered;
  }

  @override
  int get hashCode {
    return sender.hashCode ^
        receiverUid.hashCode ^
        accepted.hashCode ^
        timeOfSending.hashCode ^
        answered.hashCode;
  }
}
