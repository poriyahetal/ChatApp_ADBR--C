import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_icon/file_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class MessageModelNew {
  MessageModelNew({
    required this.id, // document ID 
    required this.chatType, // chat or group (ChatType.chat/ChatType.group)
    required this.parentUid, //chat or group document uid
    required this.text, // main text message
    required this.fileType, //file type .jpeg .mp4 .mp3 etc.
    required this.messageType, //MessageType.image //MessageType.video
    required this.senderUid, // sender user uid
    required this.fileSize, //file Size
    required this.fileName, //file name
    required this.localLoc, //fileLocation in user device
    required this.firebaseLoc, //firebase file location
    required this.timeOfSending, // time of sending the message Timestamp.microsecondEpoch int
    required this.childMessage, //replayed or forward message
    required this.attachedContact, // if send contect
    required this.documentDbPath, //document path "userUid/chatsCollection/reciverUid/messages/"
    required this.seenBy, // send by reciver uid/time
    required this.fileIcon, //file extension
    required this.receiverUid, // reciver uid
    required this.storyText, //story text
    required this.storyImageUrl, //story image url
    required this.deletedBy, //deleted by users array
  });
  late final String id;
  late final String chatType;
  late final String parentUid;
  late final String text;
  late final String fileType;
  late final Widget fileIcon;
  late final String messageType;
  late final String senderUid;
  late final double fileSize;
  late final String localLoc;
  late final String fileName;
  late final String firebaseLoc;
  late final Timestamp timeOfSending;
  late final MessageModel? childMessage;
  late final KahoChatUser? attachedContact;
  late final String documentDbPath;
  late final Map<String,Timestamp> seenBy;
  late final List<String> deletedBy;
  late final String receiverUid;
  late final String storyText;
  late final String storyImageUrl;
  
  MessageModelNew.chatTypeJson(Map<String, dynamic> json){
    id = json['id'] as String;
    chatType = json['chatType'] as String;
    parentUid = json['parentUid'] as String;
    text = json['text'] as String;
    fileType = json['fileType'] as String;
    messageType = json['messageType'] as String;
    senderUid = json['sender'] as String;
    fileSize = json['fileSize'] as double;
    fileName = json['fileName'] as String;
    localLoc = json['localLoc'] as String;
    firebaseLoc = json['firebaseLoc'] as String;
    timeOfSending = json['time'] as Timestamp;
    childMessage = json['childMessage']!=null ? MessageModel.fromMap(json['childMessage'] as Map<String, dynamic>):null;
    attachedContact = json['attachedContact'] != null ? KahoChatUser.fromMap(json['attachedContact'] as Map<String, dynamic>):null;
    documentDbPath = json['documentDbPath'] as String;
    fileIcon = FileIcon(json['fileIcon'].toString());
    seenBy = json['seenBy'] as Map<String, Timestamp>;
    receiverUid = json['receiverUid'] as String;
    storyText = json['storyText'] as String;
    storyImageUrl = json['storyImageUrl'] as String;
    deletedBy = json['deletedBy'] as List<String>;

  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['chatType'] = chatType;
    _data['parentUid'] = parentUid;
    _data['text'] = text;
    _data['fileType'] = fileType;
    _data['messageType'] = messageType;
    _data['sender'] = senderUid;
    _data['fileSize'] = fileSize;
    _data['fileName'] = fileName;
    _data['localLoc'] = localLoc;
    _data['firebaseLoc'] = firebaseLoc;
    _data['time'] = timeOfSending;
    _data['childMessage'] = childMessage!.toJson();
    _data['attachedContact'] = attachedContact!.toJson();
    _data['documentDbPath'] = documentDbPath;
    _data['fileIcon'] = fileType;
    _data['seenBy'] = seenBy;
    _data['reciverUid'] = receiverUid;
    _data['storyText'] = storyText;
    _data['storyImageUrl'] = storyImageUrl;
    _data['deletedBy'] = deletedBy;
    return _data;
  }
}
