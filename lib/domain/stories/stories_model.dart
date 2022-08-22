import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/story_model.dart';

class StoriesModel {
  String uid;
  String phoneNumber;
  String name;
  String profilePictureUrl;
  List<StoryModel> stories;
  Map? mute;
  StoryPrivacy storiesPrivacy;
  int unseenStories;

  StoriesModel(
      {required this.uid,
      required this.name,
      required this.profilePictureUrl,
      required this.phoneNumber,
      required this.stories,
      required this.mute,
      required this.storiesPrivacy,
      required this.unseenStories});

  factory StoriesModel.empty() => StoriesModel(
      uid: "",
      name: "",
      profilePictureUrl: "",
      phoneNumber: '',
      stories: [],
      mute: {},
      storiesPrivacy: StoryPrivacy.myContacts,
      unseenStories: 0);

  factory StoriesModel.demo() => StoriesModel(
      uid: "uF5dxGLwJLAMeRnX7AFoNR64JHvk2id",
      name: "Kshitiz Kamal",
      profilePictureUrl: AppConstants.dummyProfilePictureUrl,
      // activeStatus: ActiveStatus.Online,
      phoneNumber: "phoneNumber",
      stories: [
        StoryModel.textDemo(),
        StoryModel.imageDemo(),
        StoryModel.videoDemo(),
      ],
      mute: {},
      storiesPrivacy: StoryPrivacy.myContacts,
      unseenStories: 0);

  StoriesModel copyWith({
    String? uid,
    String? name,
    String? profilePictureUrl,
    String? phoneNumber,
    List<StoryModel>? stories,
    Map? mute,
    StoryPrivacy? storiesPrivacy,
    int? unseenStories,
  }) {
    return StoriesModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      stories: stories ?? this.stories,
      mute: mute ?? this.mute,
      storiesPrivacy: storiesPrivacy ?? this.storiesPrivacy,
      unseenStories: unseenStories ?? this.unseenStories,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'phoneNumber': phoneNumber,
      'name': name,
      'profilePictureUrl':
          HelperFunctions.getValidProfilePictureUrl(profilePictureUrl),
      // 'activeStatus': activeStatus.toString(),
      'stories': stories.map((story) => story.toMap()).toList(),
      'mute': mute,
      'storiesPrivacy': storiesPrivacy.toString(),
      'unseenStories': unseenStories
    };
  }

  factory StoriesModel.fromMap(Map<String, dynamic> map) {
    return StoriesModel(
      uid: map['uid'] as String,
      phoneNumber: map['phoneNumber'] as String,
      name: map['name'] as String,
      profilePictureUrl: HelperFunctions.getValidProfilePictureUrl(
        map['profilePictureUrl'] as String,
      ),
      stories: (map['stories'] as List<dynamic>)
          .map((story) => StoryModel.fromMap(story as Map<String, dynamic>))
          .toList(),
      mute: (map['mute'] ?? {}) as Map<dynamic, dynamic>,
      storiesPrivacy: map['storiesPrivacy'] == "StoryPrivacy.myContacts"
          ? StoryPrivacy.myContacts
          : map['storiesPrivacy'] == "StoryPrivacy.myContactsExcept"
              ? StoryPrivacy.myContactsExcept
              : StoryPrivacy.onlyShareWith,
      unseenStories: map['unseenStories'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoriesModel.fromJson(String source) =>
      StoriesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StoriesModel(uid: $uid, phoneNumber: $phoneNumber, name: $name, profilePictureUrl: $profilePictureUrl, stories: $stories,mute: $mute, storiesPrivacy: $storiesPrivacy, unseenStories: $unseenStories)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoriesModel &&
        other.uid == uid &&
        other.phoneNumber == phoneNumber &&
        other.name == name &&
        other.profilePictureUrl == profilePictureUrl &&
        other.mute == mute &&
        other.storiesPrivacy == storiesPrivacy &&
        other.unseenStories == unseenStories &&
        listEquals(other.stories, stories);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        phoneNumber.hashCode ^
        name.hashCode ^
        profilePictureUrl.hashCode ^
        stories.hashCode ^
        mute.hashCode ^
        unseenStories.hashCode ^
        storiesPrivacy.hashCode;
  }
}
