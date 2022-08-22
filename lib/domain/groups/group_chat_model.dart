import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class GroupChatRoomModel {
  final String name;
  final String description;
  final Timestamp created;
  late final String groupImageUrl;
  final KahoChatUser adminUser;
  final List<KahoChatUser> otherAdmins;
  final List<KahoChatUser> userDetails;
  final MessageModel? lastMessage;
  final bool? addParticipantsOnlyAdmin;
  final bool? editGroupInfoOnlyAdmin;
  final bool? sendMessageOnlyAdmin;
  final List<String> users;
  final String groupColor;
  final String groupLink;
  GroupChatRoomModel({
    required this.name,
    required this.description,
    required this.created,
    required this.groupImageUrl,
    required this.adminUser,
    required this.otherAdmins,
    required this.userDetails,
    this.lastMessage,
    required this.users,
    required this.addParticipantsOnlyAdmin,
    required this.editGroupInfoOnlyAdmin,
    required this.sendMessageOnlyAdmin,
    required this.groupColor,
    required this.groupLink,
  });

  factory GroupChatRoomModel.demo() => GroupChatRoomModel(
        name: 'Friends',
        description: "for college friends",
        created: Timestamp.now(),
        groupImageUrl: AppConstants.dummyProfilePictureUrl,
        adminUser: KahoChatUser.empty(),
        userDetails: [KahoChatUser.empty()],
        otherAdmins: [KahoChatUser.demo()],
        lastMessage: MessageModel.mockTextMessage(),
        users: [],
        addParticipantsOnlyAdmin: false,
        editGroupInfoOnlyAdmin: false,
        sendMessageOnlyAdmin: false,
        groupColor: 'Colors.black',
        groupLink: '',
      );

  GroupChatRoomModel copyWith({
    String? name,
    String? description,
    Timestamp? created,
    String? groupImageUrl,
    KahoChatUser? adminUser,
    List<KahoChatUser>? otherAdmins,
    List<KahoChatUser>? userDetails,
    MessageModel? lastMessage,
    List<String>? users,
    bool? addParticipantsOnlyAdmin,
    bool? editGroupInfoOnlyAdmin,
    bool? sendMessageOnlyAdmin,
    String? groupColor,
    String? groupLink,
  }) {
    return GroupChatRoomModel(
      name: name ?? this.name,
      description: description ?? this.description,
      created: created ?? this.created,
      groupImageUrl: groupImageUrl ?? this.groupImageUrl,
      adminUser: adminUser ?? this.adminUser,
      otherAdmins: otherAdmins ?? this.otherAdmins,
      userDetails: userDetails ?? this.userDetails,
      lastMessage: lastMessage ?? this.lastMessage,
      users: users ?? this.users,
      addParticipantsOnlyAdmin:
          addParticipantsOnlyAdmin ?? this.addParticipantsOnlyAdmin,
      editGroupInfoOnlyAdmin:
          editGroupInfoOnlyAdmin ?? this.editGroupInfoOnlyAdmin,
      sendMessageOnlyAdmin: sendMessageOnlyAdmin ?? this.sendMessageOnlyAdmin,
      groupColor: groupColor ?? this.groupColor,
      groupLink: groupLink ?? this.groupLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'created': created.toString(),
      'groupImageUrl': groupImageUrl,
      'adminUser': adminUser.toMap(),
      'userDetails': userDetails.map((x) => x.toMap()).toList(),
      'otherAdmins': otherAdmins.map((x) => x.toMap()).toList(),
      'lastMessage': lastMessage?.toMap(),
      'users': users,
      'addParticipantsOnlyAdmin': addParticipantsOnlyAdmin,
      'editGroupInfoOnlyAdmin': editGroupInfoOnlyAdmin,
      'sendMessageOnlyAdmin': sendMessageOnlyAdmin,
      'groupColor': groupColor,
      'groupLink': groupLink,
    };
  }

  factory GroupChatRoomModel.fromMap(Map<String, dynamic> map) {
    return GroupChatRoomModel(
      name: map['name'] as String,
      description: map['description'] as String,
      groupColor: map['groupColor'].toString(),
      groupLink: map['groupLink'].toString(),
      created: Timestamp.now(),
      //created: map['created'] as Timestamp,
      groupImageUrl: map['groupImageUrl'] as String,
      adminUser: KahoChatUser.fromMap(map['adminUser'] as Map<String, dynamic>),
      userDetails: List<KahoChatUser>.from(
        (map['userDetails'] as List<dynamic>)
            .map((x) => KahoChatUser.fromMap(x as Map<String, dynamic>)),
      ),
      lastMessage:
      map['lastMessage']!=null?MessageModel.fromMap(map['lastMessage'] as Map<String, dynamic>):null,
      users: List<String>.from(map['users'] as List<dynamic>),
      addParticipantsOnlyAdmin: map['addParticipantsOnlyAdmin'] as bool?,
      sendMessageOnlyAdmin: map['sendMessageOnlyAdmin'] as bool?,
      editGroupInfoOnlyAdmin: map['editGroupInfoOnlyAdmin'] as bool?,
      otherAdmins: map['otherAdmins'] == null
          ? []
          : List<KahoChatUser>.from(
              (map['otherAdmins'] as List<dynamic>)
                  .map((x) => KahoChatUser.fromMap(x as Map<String, dynamic>)),
            ),
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupChatRoomModel.fromJson(String source) =>
      GroupChatRoomModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GroupChatModel(name: $name, description: $description, created: $created, groupImageUrl: $groupImageUrl, adminUser: $adminUser, userDetails: $userDetails, lastMessage: $lastMessage, users: $users, groupColor: $groupColor, goupLink: $groupLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GroupChatRoomModel &&
        other.name == name &&
        other.description == description &&
        other.created == created &&
        other.groupImageUrl == groupImageUrl &&
        other.adminUser == adminUser &&
        listEquals(other.userDetails, userDetails) &&
        other.lastMessage == lastMessage &&
        listEquals(other.users, users) &&
        other.groupColor == groupColor &&
        other.groupLink == groupLink;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        created.hashCode ^
        groupImageUrl.hashCode ^
        adminUser.hashCode ^
        userDetails.hashCode ^
        lastMessage.hashCode ^
        users.hashCode ^
        groupColor.hashCode ^
        groupLink.hashCode;
  }
}
