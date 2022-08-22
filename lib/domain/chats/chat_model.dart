import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class ChatModel {
  MessageModel lastMessage;
  KahoChatUser user1;
  KahoChatUser user2;
  List? pinnedUser;
  List<String> users;
  String? isBlock;
  Timestamp? lastRead;
  Timestamp? deletedAt;
  Timestamp lastMessageTime;
  num? desepeaearingTime;
  ChatModel({
    required this.lastMessage,
    required this.user1,
    required this.user2,
    this.pinnedUser,
    required this.users,
    this.isBlock,
    required this.lastRead,
    required this.deletedAt,
    required this.lastMessageTime,
    this.desepeaearingTime,
  });

  ChatModel copyWith({
    MessageModel? lastMessage,
    KahoChatUser? user1,
    KahoChatUser? user2,
    List? pinnedUser,
    List<String>? users,
    String? isBlock,
    Timestamp? lastRead,
    Timestamp? deletedAt,
    Timestamp? lastMessageTime,
    num? desepeaearingTime,
  }) {
    return ChatModel(
      lastMessage: lastMessage ?? this.lastMessage,
      user1: user1 ?? this.user1,
      user2: user2 ?? this.user2,
      pinnedUser: pinnedUser ?? this.pinnedUser,
      users: users ?? this.users,
      isBlock: isBlock ?? this.isBlock,
      lastRead: lastRead ?? this.lastRead,
      deletedAt: deletedAt ?? this.deletedAt,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime, 
      desepeaearingTime: desepeaearingTime ?? this.desepeaearingTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lastMessage': lastMessage.toMap(),
      'user1': user1.toMap(),
      'user2': user2.toMap(),
      'pinned_user' : pinnedUser,
      'users': users,
      'isBlock': isBlock,
      'lastRead': lastRead,
      'deletedAt': deletedAt,
      'lastMessageTime': lastMessageTime,
      'desepeaearingTime': desepeaearingTime,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      lastMessage: MessageModel.fromMap(map['lastMessage'] as Map<String, dynamic>),
      user1: KahoChatUser.fromMap(map['user1'] as Map<String, dynamic>),
      user2: KahoChatUser.fromMap(map['user2'] as Map<String, dynamic>),
      pinnedUser: map['pinned_user']!=null?List<String>.from(map['users'] as List):[],
      users: List<String>.from(map['users'] as List<dynamic>),
      isBlock: map['isBlock'] as String?,
      lastRead: map['lastRead'] as Timestamp?,
      deletedAt: map['deletedAt'] as Timestamp?,
      lastMessageTime: Timestamp.now(),//map['lastMessageTime'] as Timestamp,
      desepeaearingTime: map['desepeaearingTime'] !=null ? map['desepeaearingTime'] as num:0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChatModel(lastMessage: $lastMessage, user1: $user1, user2: $user2, users: $users, pinned_user: $pinnedUser)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatModel &&
        other.lastMessage == lastMessage &&
        other.user1 == user1 &&
        other.user2 == user2 &&
        listEquals(other.users, users);
  }

  @override
  int get hashCode {
    return lastMessage.hashCode ^
        user1.hashCode ^
        user2.hashCode ^
        users.hashCode;
  }
}
