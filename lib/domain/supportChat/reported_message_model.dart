import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class ReportedMessageModel {
  KahoChatUser sender;
  String receiverUid;
  List? deliveredToInGroup;
  List? seenByInGroup;
  String? messageId;
  SendFrom sendFrom;
  String text;
  String? storyText;
  MessageType type;
  int timeOfSending;
  String imageUrl;
  String? storyImageUrl;
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
  ReportedMessageModel? forwared;

  ReportedMessageModel({
    required this.sender,
    required this.receiverUid,
    this.messageId,
    this.deliveredToInGroup,
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
  });

  factory ReportedMessageModel.mockTextMessage() => ReportedMessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "321",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.chat,
        text: "This is a dummy text message",
        storyText: "this is dummy story Text",
        type: MessageType.text,
        timeOfSending: Timestamp.now().millisecondsSinceEpoch,
        imageUrl: "",
        isSeen: false,
        isDelivered: false,
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

  factory ReportedMessageModel.mockTextMessageGroup() => ReportedMessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.group,
        text: "This is a dummy text message",
        storyText: "this is dummy story Text",
        type: MessageType.text,
        timeOfSending: Timestamp.now().millisecondsSinceEpoch,
        imageUrl: "",
        isSeen: false,
        isDelivered: false,
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

  factory ReportedMessageModel.mockImageMessage() => ReportedMessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.chat,
        text: "",
        storyText: "",
        type: MessageType.image,
        timeOfSending: Timestamp.now().millisecondsSinceEpoch,
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

  factory ReportedMessageModel.mockFileMessage() => ReportedMessageModel(
        sender: KahoChatUser.demo(),
        receiverUid: "321",
        messageId: "321",
        deliveredToInGroup: [],
        seenByInGroup: [],
        sendFrom: SendFrom.chat,
        text: "",
        storyText: "",
        type: MessageType.file,
        timeOfSending: Timestamp.now().millisecondsSinceEpoch,
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

  ReportedMessageModel copyWith({
    KahoChatUser? sender,
    String? receiverUid,
    SendFrom? sendFrom,
    String? text,
    String? storyText,
    MessageType? type,
    int? timeOfSending,
    String? imageUrl,
    bool? isSeen,
    bool? isDelivered,
    List? deliveredToInGroup,
    List? seenByInGroup,
    String? fileUrl,
    String? storyImageUrl,
    String? fileName,
    String? fileLocation,
    num? fileSize,
    String? firebaseFileLocation,
    List? deleted,
    bool? deletedForEveryone,
    KahoChatUser? contact,
    ReportedMessageModel? forwared,
  }) {
    return ReportedMessageModel(
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
        deliveredToInGroup: deliveredToInGroup ?? this.deliveredToInGroup,
        seenByInGroup: seenByInGroup ?? this.seenByInGroup);
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
      'isSeen': isSeen,
      'isDelivered': isDelivered,
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
      'contact': contact != null ? contact!.toMap() : null
    };
  }

  factory ReportedMessageModel.fromMap(Map<dynamic, dynamic> map) {
    return ReportedMessageModel(
      sender: KahoChatUser.fromMap(map['sender'] as Map<dynamic, dynamic>),
      receiverUid: map['receiverUid'] as String,
      messageId: (map['messageId'] ?? "") as String,
      sendFrom:
          map['sendFrom'] == "SendFrom.group" ? SendFrom.group : SendFrom.chat,
      text: map['text'] as String,
      storyText: map['storyText'] as String?,
      type: map['type'] == "MessageType.image"
          ? MessageType.image
          : map['type'] == "MessageType.file"
              ? MessageType.file
              : map['type'] == "MessageType.audio"
                  ? MessageType.audio
                  : map['type'] == "MessageType.contact"
                      ? MessageType.contact
                      : map['type'] == "MessageType.video"
                          ? MessageType.video
                          : map['type'] == "MessageType.deletedEveryone"
                              ? MessageType.deletedEveryone
                              : map['type'] == "MessageType.forwarded"
                                  ? MessageType.forwarded
                                  : map['type'] == "MessageType.replay"
                                      ? MessageType.replay
                                      : map['type'] == "MessageType.link"
                                          ? MessageType.link
                                          : map['type'] == "MessageType.note"
                                              ? MessageType.note
                                              : map['type'] ==
                                                      "MessageType.edited"
                                                  ? MessageType.edited
                                                  : map['type'] ==
                                                          "MessageType.groupNotification"
                                                      ? MessageType
                                                          .groupNotification
                                                      : map['type'] ==
                                                              "MessageType.gif"
                                                          ? MessageType.gif
                                                          : map['type'] ==
                                                                  "MessageType.sticker"
                                                              ? MessageType
                                                                  .sticker
                                                              : map['type'] ==
                                                                      "MessageType.storyText"
                                                                  ? MessageType
                                                                      .storyText
                                                                  : MessageType
                                                                      .text,
      timeOfSending: map['timeOfSending'] as int,
      imageUrl: map['imageUrl'] as String,
      storyImageUrl: map['storyImageUrl'] as String?,
      isSeen: map['isSeen'] as bool,
      isDelivered: (map['isDelivered'] ?? false) as bool,
      deliveredToInGroup: (map['deliveredToInGroup'] ?? []) as List,
      seenByInGroup: (map['seenByInGroup'] ?? []) as List,
      fileUrl: map['fileUrl'] as String,
      fileName: map['fileName'] as String,
      fileLocation: map['fileLocation'] as String,
      fileSize: map['fileSize'] as num,
      firebaseFileLocation: map['firebaseFileLocation'] as String,
      deleted: map['deleted'] as List?,
      deletedForEveryone: map['deletedForEveryone'] as bool?,
      forwared: map['forwared'] != null
          ? ReportedMessageModel.fromMap(
              map['forwared'] as Map<String, dynamic>)
          : null,
      contact: map['contact'] is Map<String, dynamic>?KahoChatUser.fromJson(json.encode(map['contact'])):null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReportedMessageModel.fromJson(String source) =>
      ReportedMessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MessageModel(sender: ${sender.toString()}, receiverUid: $receiverUid, text: $text, storyText: $storyText, type: $type, timeOfSending: $timeOfSending, imageUrl: $imageUrl, storyImageUrl:$storyImageUrl, isSeen: $isSeen, fileUrl: $fileUrl, fileName:$fileName, fileLocation: $fileLocation, fileSize:$fileSize, firebaseFileLocation:$firebaseFileLocation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReportedMessageModel &&
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
