import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_template/domain/core/enums.dart';

class MuteNotification {
  String uid;
  List<dynamic> muteNotification;

  MuteNotification({
    required this.uid,
    required this.muteNotification,
  });

  factory MuteNotification.empty() => MuteNotification(
        uid: "",
        muteNotification: [],
      );

  factory MuteNotification.demo() => MuteNotification(
        uid: "",
        muteNotification: [],
      );

  MuteNotification copyWith({
    String? uid,
    List<dynamic>? muteNotification,
  }) {
    return MuteNotification(
      uid: uid ?? this.uid,
      muteNotification: muteNotification ?? this.muteNotification,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'muteNotification': muteNotification.toList(),
    };
  }

  factory MuteNotification.fromMap(Map<String, dynamic> map) {
    return MuteNotification(
      uid: map['uid'] as String,
      muteNotification: map['muteNotification'] as List<dynamic>,
    );
  }

  String toJson() => json.encode(toMap());

  factory MuteNotification.fromJson(String source) =>
      MuteNotification.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Notification status( muteNotification: $muteNotification, uid: $uid,)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MuteNotification &&
        other.uid == uid &&
        other.muteNotification == muteNotification;
  }

  @override
  int get hashCode {
    return uid.hashCode ^ muteNotification.hashCode;
  }
}
