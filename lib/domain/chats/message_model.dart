import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class MessageModel {
  KahoChatUser sender;
  String receiverUid;
  List? deliveredToInGroup;
  List? isNotSeenByUsers;
  List? seenByInGroup;
  String? messageId;
  SendFrom sendFrom;
  String text;
  String? storyText;
  MessageType type;
  Timestamp timeOfSending;
  String imageUrl;
  String? storyImageUrl;
  String? imageBase64Thumbnail;
  bool isSeen;
  bool isDelivered;
  String fileUrl;
  String fileName;
  String fileLocation;
  List? deleted;
  bool? deletedForEveryone;
  num fileSize;
  String firebaseFileLocation;
  KahoChatUser? contact;
  bool? cancelUpload;
  MessageModel? forwared;

  MessageModel({
    required this.sender,
    required this.receiverUid,
    this.messageId,
    this.deliveredToInGroup,
    this.isNotSeenByUsers,
    this.seenByInGroup,
    required this.sendFrom,
    required this.text,
    required this.type,
    required this.timeOfSending,
    required this.imageUrl,
    required this.isSeen,
    required this.isDelivered,
    required this.fileUrl,
    required this.fileName,
    required this.fileLocation,
    required this.fileSize,
    required this.firebaseFileLocation,
    this.contact,
    this.deleted,
    this.deletedForEveryone,
    this.storyText,
    this.forwared,
    this.storyImageUrl,
    this.imageBase64Thumbnail,
    this.cancelUpload
  });

  factory MessageModel.mockTextMessage() => MessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "321",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.chat,
        text: "This is a dummy text message",
        storyText: "this is dummy story Text",
        type: MessageType.text,
        timeOfSending: Timestamp.now(),
        imageUrl: "",
        isSeen: false,
        isDelivered: false,
        cancelUpload: false,
        fileUrl: "",
        storyImageUrl: "",
        fileName: "",
        fileLocation: "",
        fileSize: 0.0,
        firebaseFileLocation: '',
        deleted: [],
        contact: KahoChatUser.empty(),
        deletedForEveryone: false,
      );

  factory MessageModel.mockTextMessageGroup() => MessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.group,
        text: "This is a dummy text message",
        storyText: "this is dummy story Text",
        type: MessageType.text,
        timeOfSending: Timestamp.now(),
        imageUrl: "",
        isSeen: false,
        isDelivered: false,
        cancelUpload: false,
        fileUrl: "",
        storyImageUrl: "",
        fileName: "",
        fileLocation: "",
        fileSize: 0.0,
        firebaseFileLocation: '',
        deleted: [],
        contact: KahoChatUser.empty(),
        deletedForEveryone: false,
      );

  factory MessageModel.mockImageMessage() => MessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.chat,
        text: "",
        storyText: "",
        type: MessageType.image,
        timeOfSending: Timestamp.now(),
        imageUrl: AppConstants.dummyImageUrl,
        storyImageUrl: AppConstants.dummyImageUrl,
        isSeen: false,
        isDelivered: false,
        fileUrl: "",
        fileName: "",
        fileLocation: "",
        fileSize: 0.0,
        firebaseFileLocation: '',
        deleted: [],
        contact: KahoChatUser.empty(),
        deletedForEveryone: false,
      );

  factory MessageModel.mockFileMessage() => MessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "321",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.chat,
        text: "",
        storyText: "",
        type: MessageType.file,
        timeOfSending: Timestamp.now(),
        imageUrl: "",
        storyImageUrl: "",
        isSeen: false,
        isDelivered: false,
        fileUrl: AppConstants.dummyImageUrl,
        fileName: "",
        fileLocation: "",
        fileSize: 0.0,
        firebaseFileLocation: '',
        deleted: [],
        contact: KahoChatUser.empty(),
        deletedForEveryone: false,
      );

  MessageModel copyWith({
    KahoChatUser? sender,
    String? receiverUid,
    SendFrom? sendFrom,
    String? text,
    String? storyText,
    MessageType? type,
    Timestamp? timeOfSending,
    String? imageUrl,
    bool? isSeen,
    bool? isDelivered,
    List? deliveredToInGroup,
    List? isNotSeenByUsers,
    List? seenByInGroup,
    String? fileUrl,
    String? storyImageUrl,
    String? storyVideoUrl,
    String? fileName,
    String? fileLocation,
    num? fileSize,
    String? firebaseFileLocation,
    List? deleted,
    bool? deletedForEveryone,
    KahoChatUser? contact,
    MessageModel? forwared,
    bool? cancelUpload,
  }) {
    return MessageModel(
        sender: sender ?? this.sender,
        receiverUid: receiverUid ?? this.receiverUid,
        messageId: messageId ?? this.receiverUid,
        sendFrom: sendFrom ?? this.sendFrom,
        text: text ?? this.text,
        storyText: storyText ?? this.storyText,
        type: type ?? this.type,
        timeOfSending: timeOfSending ?? this.timeOfSending,
        imageUrl: imageUrl ?? this.imageUrl,
        storyImageUrl: storyImageUrl ?? this.storyImageUrl,
        imageBase64Thumbnail: storyVideoUrl ?? this.imageBase64Thumbnail,
        isSeen: isSeen ?? this.isSeen,
        isDelivered: isDelivered ?? this.isDelivered,
        fileUrl: fileUrl ?? this.fileUrl,
        fileName: fileName ?? this.fileName,
        fileLocation: fileLocation ?? this.fileLocation,
        fileSize: fileSize ?? this.fileSize,
        firebaseFileLocation: firebaseFileLocation ?? this.firebaseFileLocation,
        deleted: deleted ?? this.deleted,
        deletedForEveryone: deletedForEveryone ?? this.deletedForEveryone,
        contact: contact ?? this.contact,
        forwared: forwared ?? this.forwared,
        deliveredToInGroup: deliveredToInGroup??this.deliveredToInGroup,
        isNotSeenByUsers: isNotSeenByUsers??this.isNotSeenByUsers,
        seenByInGroup: seenByInGroup??this.seenByInGroup,
        cancelUpload : cancelUpload??this.cancelUpload
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender.toMap(),
      'receiverUid': receiverUid,
      'sendFrom': sendFrom.toString(),
      'text': text,
      'storyText': storyText,
      'type': type.toString(),
      'timeOfSending': timeOfSending,
      'imageUrl': imageUrl,
      'storyImageUrl': storyImageUrl,
      'imageBase64Thumbnail': imageBase64Thumbnail,
      'isSeen': isSeen,
      'isDelivered': isDelivered,
      'isNotSeenByUsers': isNotSeenByUsers,
      'deliveredToInGroup': deliveredToInGroup,
      'seenByInGroup': seenByInGroup,
      'fileUrl': fileUrl,
      'fileName': fileName,
      'fileLocation': fileLocation,
      'fileSize': fileSize,
      'firebaseFileLocation': firebaseFileLocation,
      'deleted': deleted,
      'deletedForEveryone': deletedForEveryone,
      'forwared': forwared != null ? forwared!.toMap() : null,
      'contact': contact != null ? contact!.toMap() : null,
      'cancelUpload': cancelUpload
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      sender: KahoChatUser.fromMap(map['sender'] as Map<String, dynamic>),
      receiverUid: map['receiverUid'] as String,
      messageId: (map['messageId'] ?? "") as String,
      sendFrom:
          map['sendFrom'] == "SendFrom.group" ? SendFrom.group : SendFrom.chat,
      text: map['text'] as String,
      storyText: map['storyText'] as String?,
      type: map['type'] == "MessageType.invite"
          ? MessageType.invite
          : map['type'] == "MessageType.inviteAccepted"
              ? MessageType.inviteAccepted
              : map['type'] == "MessageType.inviteDecline"
                  ? MessageType.inviteDecline
                  : map['type'] == "MessageType.blocked"
                      ? MessageType.blocked
                      : map['type'] == "MessageType.image"
                          ? MessageType.image
                          : map['type'] == "MessageType.file"
                              ? MessageType.file
                              : map['type'] == "MessageType.audio"
                                  ? MessageType.audio
                                  : map['type'] == "MessageType.contact"
                                      ? MessageType.contact
                                      : map['type'] == "MessageType.video"
                                          ? MessageType.video
                                          : map['type'] ==
                                                  "MessageType.deletedEveryone"
                                              ? MessageType.deletedEveryone
                                              : map['type'] ==
                                                      "MessageType.forwarded"
                                                  ? MessageType.forwarded
                                                  : map['type'] ==
                                                          "MessageType.replay"
                                                      ? MessageType.replay
                                                      : map['type'] ==
                                                              "MessageType.link"
                                                          ? MessageType.link
                                                          : map['type'] ==
                                                                  "MessageType.note"
                                                              ? MessageType.note
                                                              : map['type'] ==
                                                                      "MessageType.edited"
                                                                  ? MessageType
                                                                      .edited
                                                                  : map['type'] ==
                                                                          "MessageType.groupNotification"
                                                                      ? MessageType
                                                                          .groupNotification
                                                                      : map['type'] ==
                                                                              "MessageType.gif"
                                                                          ? MessageType
                                                                              .gif
                                                                          : map['type'] == "MessageType.sticker"
                                                                              ? MessageType.sticker
                                                                              : map['type'] == "MessageType.storyText"
                                                                                  ? MessageType.storyText
                                                                                  : MessageType.text,
      timeOfSending: Timestamp.now(),
      imageUrl: map['imageUrl'] as String,
      storyImageUrl: map['storyImageUrl'] as String?,
      imageBase64Thumbnail: map['imageBase64Thumbnail'] as String?,
      isSeen: map['isSeen'] as bool,
      isDelivered: (map['isDelivered'] ?? false) as bool,
      deliveredToInGroup: (map['deliveredToInGroup'] ?? []) as List,
      seenByInGroup: (map['seenByInGroup'] ?? []) as List,
      isNotSeenByUsers: (map['isNotSeenByUsers'] ?? []) as List,
      fileUrl: map['fileUrl'] as String,
      fileName: map['fileName'] as String,
      fileLocation: map['fileLocation'] as String,
      fileSize: map['fileSize'] as num,
      firebaseFileLocation: map['firebaseFileLocation'] as String,
      deleted: map['deleted'] as List?,
      cancelUpload: map['cancelUpload'] as bool?,
      deletedForEveryone: map['deletedForEveryone'] as bool?,
      forwared: map['forwared'] != null
          ? MessageModel.fromMap(map['forwared'] as Map<String, dynamic>)
          : null,
      contact: map['contact'] != null
          ? KahoChatUser.fromMap(map['contact'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) =>
      MessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MessageModel(sender: ${sender.toString()}, receiverUid: $receiverUid, text: $text, storyText: $storyText, type: $type, timeOfSending: $timeOfSending, imageUrl: $imageUrl, storyImageUrl:$storyImageUrl, isSeen: $isSeen, fileUrl: $fileUrl, fileName:$fileName, fileLocation: $fileLocation, fileSize:$fileSize, firebaseFileLocation:$firebaseFileLocation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessageModel &&
        other.sender == sender &&
        other.receiverUid == receiverUid &&
        other.sendFrom == sendFrom &&
        other.text == text &&
        other.storyText == storyText &&
        other.type == type &&
        other.timeOfSending == timeOfSending &&
        other.imageUrl == imageUrl &&
        other.storyImageUrl == storyImageUrl &&
        other.isSeen == isSeen &&
        other.fileUrl == fileUrl &&
        other.fileName == fileName &&
        other.fileLocation == fileLocation &&
        other.fileSize == fileSize &&
        other.deleted == deleted &&
        other.deletedForEveryone == deletedForEveryone &&
        other.firebaseFileLocation == firebaseFileLocation;
  }

  @override
  int get hashCode {
    return sender.hashCode ^
        receiverUid.hashCode ^
        sendFrom.hashCode ^
        text.hashCode ^
        storyText.hashCode ^
        type.hashCode ^
        timeOfSending.hashCode ^
        imageUrl.hashCode ^
        storyImageUrl.hashCode ^
        isSeen.hashCode ^
        fileUrl.hashCode ^
        fileName.hashCode ^
        fileLocation.hashCode ^
        fileSize.hashCode ^
        deleted.hashCode ^
        deletedForEveryone.hashCode ^
        firebaseFileLocation.hashCode;
  }
}
