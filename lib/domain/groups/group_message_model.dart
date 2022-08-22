import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class GroupMessageModelT {
  final KahoChatUser sender;
  final KahoChatUser? contact;
  final String groupId;
  final String text;
  final MessageType type;
  final Timestamp timeOfSending;
  final String imageUrl;
  final String fileUrl;
  final String fileName;
  final String fileLocation;
  final double fileSize;
  final String firebaseFileLocation;

  GroupMessageModelT({
    required this.sender,
    required this.groupId,
    required this.text,
    required this.type,
    required this.timeOfSending,
    required this.imageUrl,
    required this.contact,
    required this.fileUrl,
    required this.fileName,
    required this.fileLocation,
    required this.fileSize,
    required this.firebaseFileLocation,
  });

  factory GroupMessageModelT.mockImageMessage() => GroupMessageModelT(
        sender: KahoChatUser(
          uid: "1234",
          about: "hi",
          // activeStatus: ActiveStatus.Online,
          phoneNumber: "9876543210",
          name: "Dummy Name",
          profilePictureUrl: AppConstants.dummyProfilePictureUrl,
          // stories: [],
          aboutYou: Privacy.Everyone,
          // lastSeen: Privacy.everyone,
          profilePhoto: Privacy.Everyone,
          // lastActive: Timestamp.now(),

          mute: {},
          userColor: '', countryCode: '+91', isOnCall: false,
        ),
        groupId: "1234",
        text: "",
        type: MessageType.image,
        timeOfSending: Timestamp.now(),
        imageUrl: AppConstants.dummyImageUrl,
        contact: KahoChatUser(
          uid: "1234",
          about: "hi",
          // activeStatus: ActiveStatus.Online,
          phoneNumber: "9876543210",
          countryCode: '+91',
          name: "Dummy Name",
          profilePictureUrl: AppConstants.dummyProfilePictureUrl,
          // stories: [],
          aboutYou: Privacy.Everyone,
          userColor: '',
          // lastSeen: Privacy.everyone,
          profilePhoto: Privacy.Everyone,
          // lastActive: Timestamp.now(),

          mute: {}, isOnCall: false,
        ),
        firebaseFileLocation: '',
        fileName: '',
        fileUrl: '',
        fileSize: 0.0,
        fileLocation: '',
      );

  factory GroupMessageModelT.mockTextMessage() => GroupMessageModelT(
        sender: KahoChatUser(
          uid: "1234",
          about: "hi",
          // activeStatus: ActiveStatus.Online,
          phoneNumber: "9876543210",
          countryCode: '+91',
          name: "Dummy Name",
          profilePictureUrl: AppConstants.dummyProfilePictureUrl,
          // stories: [],
          aboutYou: Privacy.Everyone,
          // lastSeen: Privacy.everyone,
          profilePhoto: Privacy.Everyone,
          // lastActive: Timestamp.now(),

          mute: {},
          userColor: '', isOnCall: false,
        ),
        groupId: "1234",
        text: "Mock Text Message",
        type: MessageType.text,
        timeOfSending: Timestamp.now(),
        imageUrl: "",
        contact: KahoChatUser(
          uid: "1234",
          about: "hi",
          // activeStatus: ActiveStatus.Online,
          phoneNumber: "9876543210",
          countryCode: '+91',
          name: "Dummy Name",
          profilePictureUrl: AppConstants.dummyProfilePictureUrl,
          // stories: [],
          aboutYou: Privacy.Everyone,
          // lastSeen: Privacy.everyone,
          profilePhoto: Privacy.Everyone,
          // lastActive: Timestamp.now(),

          mute: {},
          userColor: '', isOnCall: false,
        ),
        firebaseFileLocation: '',
        fileName: '',
        fileUrl: '',
        fileSize: 0.0,
        fileLocation: '',
      );

  GroupMessageModelT copyWith({
    KahoChatUser? sender,
    KahoChatUser? contact,
    String? groupId,
    String? text,
    MessageType? type,
    Timestamp? timeOfSending,
    String? imageUrl,
    String? fileUrl,
    String? fileName,
    String? fileLocation,
    double? fileSize,
    String? firebaseFileLocation,
  }) {
    return GroupMessageModelT(
      sender: sender ?? this.sender,
      groupId: groupId ?? this.groupId,
      text: text ?? this.text,
      type: type ?? this.type,
      timeOfSending: timeOfSending ?? this.timeOfSending,
      imageUrl: imageUrl ?? this.imageUrl,
      contact: contact ?? this.contact,
      firebaseFileLocation: firebaseFileLocation ?? this.firebaseFileLocation,
      fileName: fileName ?? this.fileName,
      fileUrl: fileUrl ?? this.fileUrl,
      fileSize: fileSize ?? this.fileSize,
      fileLocation: fileLocation ?? this.fileLocation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender.toMap(),
      'groupId': groupId,
      'text': text,
      'type': type.toString(),
      'timeOfSending': timeOfSending,
      'imageUrl': imageUrl,
      'contact': contact != null ? contact!.toMap() : null,
      'firebaseFileLocation': firebaseFileLocation,
      'fileName': fileName,
      'fileUrl': fileUrl,
      'fileSize': fileSize,
      'fileLocation': fileLocation,
    };
  }

  factory GroupMessageModelT.fromMap(Map<String, dynamic> map) {
    return GroupMessageModelT(
      sender: KahoChatUser.fromMap(map['sender'] as Map<String, dynamic>),
      groupId: map['groupId'] as String,
      text: map['text'] as String,
      type: map['type'] == "MessageType.text"
          ? MessageType.text
          : map['type'] == "MessageType.file"
              ? MessageType.file
              : map['type'] == "MessageType.audio"
                  ? MessageType.audio
                  : map['type'] == "MessageType.contact"
                      ? MessageType.contact
                      : map['type'] == "MessageType.video"
                          ? MessageType.video
                          : MessageType.image,
      timeOfSending: map['timeOfSending'] as Timestamp,
      imageUrl: map['imageUrl'] as String,
      contact: map['contact'] != null
          ? KahoChatUser.fromMap(map['contact'] as Map<String, dynamic>)
          : null,
      fileUrl: map['fileUrl'] as String,
      fileName: map['fileName'] as String,
      fileLocation: map['fileLocation'] as String,
      fileSize: map['fileSize'] as double,
      firebaseFileLocation: map['firebaseFileLocation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupMessageModelT.fromJson(String source) =>
      GroupMessageModelT.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GroupMessageModelT(sender: $sender, groupId: $groupId, text: $text, type: $type, timeOfSending: $timeOfSending, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GroupMessageModelT &&
        other.sender == sender &&
        other.groupId == groupId &&
        other.text == text &&
        other.type == type &&
        other.timeOfSending == timeOfSending &&
        other.imageUrl == imageUrl &&
        other.contact == contact;
  }

  @override
  int get hashCode {
    return sender.hashCode ^
        groupId.hashCode ^
        text.hashCode ^
        type.hashCode ^
        timeOfSending.hashCode ^
        contact.hashCode ^
        imageUrl.hashCode;
  }
}
