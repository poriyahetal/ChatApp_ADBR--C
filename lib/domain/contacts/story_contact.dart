import 'dart:convert';

import 'package:flutter/cupertino.dart';

class StoryContact {
  String name;
  // String phoneNumber;
  String uid;

  StoryContact({
    required this.name,
    // required this.phoneNumber,
    required this.uid,
  });

  factory StoryContact.empty() => StoryContact(
        name: '',
        // phoneNumber: '',
        uid: '',
      );

  StoryContact copyWith({
    String? name,
    // String? phoneNumber,
    String? uid,
  }) {
    return StoryContact(
      name: name ?? this.name,
      // phoneNumber: phoneNumber ?? this.phoneNumber,
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      // 'phoneNumber': phoneNumber,
      'uid': uid,
    };
  }

  factory StoryContact.fromMap(Map<String, dynamic> map) {
    return StoryContact(
      name: map['name'] as String,
      // phoneNumber: map['phoneNumber'] as String,
      uid: map['uid'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryContact.fromJson(String source) =>
      StoryContact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'StoryContact(name: $name, uid : $uid)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoryContact &&
        other.name == name &&
        // other.phoneNumber == phoneNumber &&
        other.uid == uid;
  }

  @override
  int get hashCode =>
      name.hashCode ^
      // phoneNumber.hashCode ^
      uid.hashCode;
}
