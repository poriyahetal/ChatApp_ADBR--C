import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/story_model.dart';


class KahoChatUser extends Equatable{
  String uid;
  String phoneNumber;
  String name;
  String about;
  String profilePictureUrl;
  String countryCode;

  // ActiveStatus activeStatus;
  // List<StoryModel> stories;
  String? pushToken;
  bool? isSelected = false;
  Privacy profilePhoto;
  Privacy aboutYou;
  Map? mute;
  String userColor;
  bool? isOnCall;
//  Timestamp lastActive;

  KahoChatUser({
    required this.uid,
    required this.name,
    required this.about,
    required this.profilePictureUrl,
    // required this.activeStatus,
    required this.phoneNumber,
    required this.countryCode,
    // required this.stories,
    this.pushToken,
    // required this.lastSeen,
    required this.profilePhoto,
    required this.aboutYou,
    // required this.lastActive,
    required this.mute,
    required this.userColor,
    required this.isOnCall,
  });

  // required this.lastActive,

  factory KahoChatUser.empty() => KahoChatUser(
        uid: "",
        name: "",
        about: "",
        profilePictureUrl: "",
        // activeStatus: ActiveStatus.Online,
        phoneNumber: '',
        countryCode: '',
        // stories: [],
        pushToken: "",
        aboutYou: Privacy.No_one,
        // lastSeen: Privacy.noOne,
        profilePhoto: Privacy.No_one,
        // lastActive: Timestamp.now(),
        mute: {},
        userColor: '', isOnCall: false,
      );

  factory KahoChatUser.demo() => KahoChatUser(
        uid: "uF5dxGLwJLAMeRnX7AFoNR64JHvk2id",
        name: "Kshitiz Kamal",
        about: "about",
        profilePictureUrl: AppConstants.dummyProfilePictureUrl,
        // activeStatus: ActiveStatus.Online,
        phoneNumber: "phoneNumber",
        countryCode: '+91',
        // stories: [
        //   StoryModel.textDemo(),
        //   StoryModel.imageDemo(),
        //   StoryModel.videoDemo(),
        // ],
        pushToken: "",
        aboutYou: Privacy.Everyone,
        profilePhoto: Privacy.Everyone,
        //     lastSeen: Privacy.everyone,
        // lastActive: Timestamp.now(),
        mute: {},
        userColor: 'Colors.black', isOnCall: false,
      );

  KahoChatUser copyWith({
    String? uid,
    String? name,
    String? profilePictureUrl,
    // ActiveStatus? activeStatus,
    String? phoneNumber,
    String? about,
    String? countryCode,
    List<StoryModel>? stories,
    String? pushToken,

    // Privacy? lastSeen,
    Privacy? profilePhoto,
    Privacy? aboutYou,
    Map? mute,
    String? userColor,
    bool? isOnCall,
    // Timestamp? lastActive,
  }) {
    return KahoChatUser(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      about: about ?? this.about,
      isOnCall: isOnCall ?? this.isOnCall,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      // activeStatus: activeStatus ?? this.activeStatus,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      countryCode: countryCode ?? this.countryCode,
      // stories: stories ?? this.stories,
      pushToken: this.pushToken,

      // lastSeen: lastSeen ?? this.lastSeen,
      aboutYou: aboutYou ?? this.aboutYou,
      profilePhoto: profilePhoto ?? this.profilePhoto,

      mute: mute ?? this.mute,
      userColor: userColor ?? this.userColor,
      // lastActive: lastActive ?? this.lastActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'phoneNumber': phoneNumber,
      'name': name,
      'about': about,
      'countryCode': countryCode,
      'profilePictureUrl':
          HelperFunctions.getValidProfilePictureUrl(profilePictureUrl),
      // 'activeStatus': activeStatus.toString(),
      // 'stories': stories.map((story) => story.toMap()).toList(),
      'pushToken': pushToken,

      // 'lastSeen': lastSeen.toString()
      'profilePhoto': profilePhoto.toString(),
      'aboutYou': aboutYou.toString(),

      'mute': mute,
      'userColor': userColor,
      'isOnCall': isOnCall,

      // 'lastActive': lastActive,
    };
  }

  factory KahoChatUser.fromMap(Map<dynamic, dynamic> map) {
    return KahoChatUser(
      uid: map['uid'] as String,
      phoneNumber: map['phoneNumber'] as String,
      name: map['name'] as String,
      countryCode: map['countryCode'] as String,
      about: map['about'] as String,
      profilePictureUrl: HelperFunctions.getValidProfilePictureUrl(
        map['profilePictureUrl'] as String,
      ),
      pushToken: map['pushToken'] as String?,
      aboutYou: map['aboutYou'] == "Privacy.Everyone"
          ? Privacy.Everyone
          : map['aboutYou'] == "Privacy.Only_my_contact"
              ? Privacy.Only_my_contact
              : Privacy.No_one,
      profilePhoto: map['profilePhoto'] == "Privacy.Everyone"
          ? Privacy.Everyone
          : map['profilePhoto'] == "Privacy.Only_my_contact"
              ? Privacy.Only_my_contact
              : Privacy.No_one,
      mute: (map['mute'] ?? {}) as Map<dynamic, dynamic>,
      userColor: map['userColor'].toString(),
      isOnCall: map['isOnCall'] != null ? map['isOnCall'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory KahoChatUser.fromJson(String source) =>
      KahoChatUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'KahoChatUser(uid: $uid, phoneNumber: $phoneNumber, countryCode:$countryCode, name: $name, about: $about, profilePictureUrl: $profilePictureUrl,  pushToken: $pushToken, aboutYou: $aboutYou, profilePhoto: $profilePhoto,mute: $mute,userColor: $userColor)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KahoChatUser &&
        other.uid == uid &&
        other.phoneNumber == phoneNumber &&
        other.countryCode == countryCode &&
        other.name == name &&
        other.about == about &&
        other.profilePictureUrl == profilePictureUrl &&
        other.pushToken == pushToken &&
        // other.lastSeen == lastSeen &&
        other.aboutYou == aboutYou &&
        other.profilePhoto == profilePhoto &&
        other.mute == mute &&
        other.isOnCall == isOnCall &&
        other.userColor == userColor;
    // other.lastActive == lastActive &&
    // listEquals(other.stories, stories);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        phoneNumber.hashCode ^
        name.hashCode ^
        about.hashCode ^
        profilePictureUrl.hashCode ^
        countryCode.hashCode ^
        pushToken.hashCode ^
        // lastSeen.hashCode ^
        aboutYou.hashCode ^
        profilePhoto.hashCode ^
        isOnCall.hashCode ^
        mute.hashCode ^
        userColor.hashCode;
  }

  @override
  List<Object> get props => [uid];
}
