import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class BroadcastModel {
  final List<KahoChatUser> recipients;
  final Timestamp created;
  final String name;
  final KahoChatUser user;
  BroadcastModel({
    required this.recipients,
    required this.created,
    required this.name,
    required this.user,
  });

  BroadcastModel copyWith({
    List<KahoChatUser>? recipients,
    Timestamp? created,
    String? name,
    KahoChatUser? user,
  }) {
    return BroadcastModel(
      recipients: recipients ?? this.recipients,
      created: created ?? this.created,
      name: name ?? this.name,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'recipients': recipients.map((x) => x.toMap()).toList(),
      'created': created,
      'name': name,
      'user': user.toMap(),
    };
  }

  factory BroadcastModel.fromMap(Map<String, dynamic> map) {
    return BroadcastModel(
      recipients: List<KahoChatUser>.from(
        (map['recipients'] as List<dynamic>)
            .map((x) => KahoChatUser.fromMap(x as Map<String, dynamic>)),
      ),
      created: map['created'] as Timestamp,
      name: map['name'] as String,
      user: KahoChatUser.fromMap(map['user'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory BroadcastModel.fromJson(String source) =>
      BroadcastModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BroadcastModel(recipients: $recipients, created: $created, name: $name, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BroadcastModel &&
        listEquals(other.recipients, recipients) &&
        other.created == created &&
        other.name == name &&
        other.user == user;
  }

  @override
  int get hashCode {
    return recipients.hashCode ^
        created.hashCode ^
        name.hashCode ^
        user.hashCode;
  }
}
