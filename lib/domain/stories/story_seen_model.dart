import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/story_model.dart';

class StorySeenModel {
  String uid;
  // String phoneNumber;
  String name;
  String profilePictureUrl;
  String? react;
  Timestamp seenTime;

  StorySeenModel({
    required this.uid,
    required this.name,
    required this.profilePictureUrl,
    // required this.phoneNumber,
    required this.seenTime,
    this.react

  });
  factory StorySeenModel.empty() => StorySeenModel(
    uid: "",
    name: "",
    profilePictureUrl: "",
    // phoneNumber: '',
    react: "",
    seenTime: Timestamp.now(),
  );

  factory StorySeenModel.demo() => StorySeenModel(
      uid: "ZaI0DAGK5UeTkuFiLuIfMJH1Apv2",
      name: "Jan Kb",
      profilePictureUrl: AppConstants.dummyProfilePictureUrl,
      // phoneNumber: "phoneNumber",
      seenTime: Timestamp.now(),

  );

  StorySeenModel copyWith({
    String? uid,
    String? name,
    String? profilePictureUrl,
    String? phoneNumber,
    Timestamp? seenTime,
  }) {
    return StorySeenModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      // phoneNumber: phoneNumber ?? this.phoneNumber,
      react: react ?? this.react,
      seenTime: seenTime ?? this.seenTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      // 'phoneNumber': phoneNumber,
      'name': name,
      'profilePictureUrl':
      HelperFunctions.getValidProfilePictureUrl(profilePictureUrl),
      'seenTime' : seenTime,
      "react" : react
    };
  }

  factory StorySeenModel.fromMap(Map<String, dynamic> map) {
    return StorySeenModel(
      uid: map['uid'] as String,
      // phoneNumber: map['phoneNumber'] as String,
      name: map['name'] as String,
      react: map['react'] as String?,
      profilePictureUrl: HelperFunctions.getValidProfilePictureUrl(
        map['profilePictureUrl'] as String,
      ),
      seenTime: (map['seenTime']  ?? Timestamp.now()) as Timestamp,

    );
  }

  String toJson() => json.encode(toMap());

  factory StorySeenModel.fromJson(String source) =>
      StorySeenModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {

    return 'StorySeenModel(uid: $uid, name: $name, profilePictureUrl: $profilePictureUrl, seenTime :$seenTime)';

  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StorySeenModel &&
        other.uid == uid &&
        // other.phoneNumber == phoneNumber &&
        other.name == name &&
        other.profilePictureUrl == profilePictureUrl &&
        other.seenTime == seenTime;

  }

  @override
  int get hashCode {
    return uid.hashCode ^
    // phoneNumber.hashCode ^
    name.hashCode ^
    profilePictureUrl.hashCode ^
    seenTime.hashCode;

  }
}
