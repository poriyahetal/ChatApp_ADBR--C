import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_template/domain/supportChat/reported_message_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

import '../groups/group_chat_model.dart';

class SupportChatModel {
  String message;
  String type;
  String time;
  bool seen;
  String sender;
  List<ReportedMessageModel>? reportedMessageList;
  KahoChatUser? reportedUser;
  GroupChatRoomModel? groupChatRoomModel;

  SupportChatModel({
    required this.message,
    required this.type,
    required this.time,
    required this.seen,
    required this.sender,
    this.reportedMessageList,
    this.reportedUser,
    this.groupChatRoomModel
  });

  factory SupportChatModel.empty() => SupportChatModel(
        message: '',
        type: '',
        time: Timestamp.now().toString(),
        seen: false,
        sender: '',
        reportedMessageList: [],
        reportedUser: KahoChatUser.empty(),
      );

  factory SupportChatModel.demo() => SupportChatModel(
        message: 'hy',
        type: 'text',
        time: Timestamp.now().toString(),
        seen: false,
        sender: 'grhgdbge6546gdvbvert',
        reportedMessageList: [
          ReportedMessageModel.mockTextMessage(),
          ReportedMessageModel.mockTextMessage()
        ],
        reportedUser: KahoChatUser.demo(),
      );

  SupportChatModel copyWith({
    String? message,
    String? type,
    String? time,
    bool? seen,
    String? sender,
    List<ReportedMessageModel>? reportedMessageList,
    KahoChatUser? reportedUser,
  }) {
    return SupportChatModel(
      message: message ?? this.message,
      type: type ?? this.type,
      time: time ?? this.time,
      seen: seen ?? this.seen,
      sender: sender ?? this.sender,
      reportedMessageList: reportedMessageList ?? this.reportedMessageList,
      reportedUser: reportedUser ?? this.reportedUser,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'type': type,
      'time': time,
      'seen': seen,
      'sender': sender,
      'reportedMessageList': reportedMessageList != null
          ? reportedMessageList!.map((x) => x.toMap()).toList()
          : null,
      'reportedUser': reportedUser?.toMap(),
      'groupChatRoomModel' : groupChatRoomModel?.toMap()
    };
  }

  factory SupportChatModel.fromMap(Map<dynamic, dynamic> map) {
    return SupportChatModel(
      message: map['message'] as String,
      type: map['type'] as String,
      time: map['time'] as String,
      seen: map['seen'] as bool,
      sender: map['sender'] as String,
      reportedMessageList: map['reportedMessageList'] != null
          ? map['reportedMessageList']
              .map(
                (x) => ReportedMessageModel.fromMap(x as Map<dynamic, dynamic>),
              )
              .toList()
              .cast<ReportedMessageModel>() as List<ReportedMessageModel>
          : null,
      reportedUser: map['reportedUser'] != null
          ? KahoChatUser.fromMap(map['reportedUser'] as Map<dynamic, dynamic>)
          : null,
      groupChatRoomModel: map['groupChatRoomModel'] != null
          ? GroupChatRoomModel.fromMap(map['groupChatRoomModel'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SupportChatModel.fromJson(String source) =>
      SupportChatModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Chat support model( message: $message,type: $type, time: $time, seen: $seen, sender: $sender, reportedMessageList: $reportedMessageList)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SupportChatModel &&
        other.message == message &&
        other.time == time &&
        other.seen == seen &&
        other.sender == sender &&
        other.type == type;
  }

  @override
  int get hashCode {
    return message.hashCode ^
        time.hashCode ^
        type.hashCode ^
        seen.hashCode ^
        sender.hashCode;
  }
}
