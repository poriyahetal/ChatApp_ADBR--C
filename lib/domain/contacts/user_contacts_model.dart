import 'dart:convert';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/contacts/story_contact.dart';
import 'package:flutter_template/domain/core/enums.dart';

class UserContacts {
  final String? userName;
  final String? uid;
  final String? phoneNumber;
  // final List<PhoneContact>? phoneContact;
  final List<StoryContact>? storyContact;
  final Map? contactsExcept;
  final Map? shareWith;

  UserContacts({
    this.userName,
    this.uid,
    this.phoneNumber,
    // this.phoneContact,
    this.storyContact,
    this.contactsExcept,
    this.shareWith,
  });

  factory UserContacts.empty() =>
      UserContacts(
        uid: "",
        userName: "",
        phoneNumber: '',
        // phoneContact: [],
        storyContact: [],
        shareWith: {},
        contactsExcept: {},
      );

  UserContacts copyWith({
    String? userName,
    String? uid,
    String? phoneNumber,
    Color? color,
    Timestamp? created,
    StoryType? type,
    Map? react,
    // List<PhoneContact>? phoneContact,
    List<StoryContact>? storyContact,
    Map? shareWith,
    Map? contactsExcept,
  }) {
    return UserContacts(
      userName: userName ?? this.userName,
      uid: uid ?? this.uid,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      // phoneContact: phoneContact ?? this.phoneContact,
      storyContact: storyContact ?? this.storyContact,
      shareWith: shareWith ?? this.shareWith,
      contactsExcept: contactsExcept ?? this.contactsExcept,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'uid': uid,
      'phoneNumber': phoneNumber,
      // 'phoneContact': phoneContact!.map((e) => e.toMap()).toList(),
      'storyContact': storyContact!.map((e) => e.toMap()).toList(),
      'shareWith': shareWith,
      'contactsExcept': contactsExcept,
    };
  }

  factory UserContacts.fromMap(Map<String, dynamic> map) {
    return UserContacts(
      userName: (map['userName'] ?? "") as String,
      uid: (map['uid'] ?? "") as String,
      phoneNumber: (map['phoneNumber'] ?? "") as String,
      // phoneContact: ((map['phoneContact'] ?? []) as List<dynamic>)
      //     .map((phoneContact) =>
      //     PhoneContact.fromMap(phoneContact as Map<String, dynamic>))
      //     .toList(),
      storyContact: ((map['storyContact'] ?? []) as List<dynamic>)
          .map((storyContact) =>
          StoryContact.fromMap(storyContact as Map<String, dynamic>))
          .toList(),
      contactsExcept: (map['contactsExcept'] ?? {}) as Map<dynamic, dynamic>,
      shareWith: (map['shareWith'] ?? {}) as Map<dynamic, dynamic>,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserContacts.fromJson(String source) =>
      UserContacts.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Story(userName: $userName, uid: $uid, phoneNumber: $phoneNumber, storyContact : $storyContact, shareWith: $shareWith, contactsExcept: $contactsExcept)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserContacts &&
        other.userName == userName &&
        other.uid == uid &&
        other.phoneNumber == phoneNumber &&
        // other.phoneContact == phoneContact &&
        other.storyContact == storyContact &&
        other.shareWith == shareWith &&
        other.contactsExcept == contactsExcept;
  }

  @override
  int get hashCode {
    return userName.hashCode ^
    uid.hashCode ^
    phoneNumber.hashCode ^
    // phoneContact.hashCode ^
    storyContact.hashCode ^
    shareWith.hashCode ^
    contactsExcept.hashCode;
  }
}
