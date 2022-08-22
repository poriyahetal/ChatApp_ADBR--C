// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupsEventTearOff {
  const _$GroupsEventTearOff();

  _SetGroupName setGroupName(String name, String groupId) {
    return _SetGroupName(
      name,
      groupId,
    );
  }

  _SetGroup setGroup(GroupChatRoomModel groupChatRoomModel) {
    return _SetGroup(
      groupChatRoomModel,
    );
  }

  _SetGroupDescription setGroupDescription(String description, String groupId) {
    return _SetGroupDescription(
      description,
      groupId,
    );
  }

  _SetGroupMembers setGroupMembers(List<KahoChatUser> members) {
    return _SetGroupMembers(
      members,
    );
  }

  _AddGroupMembers addGroupMembers(List<KahoChatUser> members, String groupId) {
    return _AddGroupMembers(
      members,
      groupId,
    );
  }

  _CreateGroup createGroup(GroupChatRoomModel group) {
    return _CreateGroup(
      group,
    );
  }

  _LeaveGroup leaveGroup(String groupId, GroupChatRoomModel group) {
    return _LeaveGroup(
      groupId,
      group,
    );
  }

  _RemoveMember removeMember(
      String groupId, String userId, GroupChatRoomModel group) {
    return _RemoveMember(
      groupId,
      userId,
      group,
    );
  }

  ForwardMessage forwardMessage(
      {required KahoChatUser myUser,
      required String groupUid,
      required MessageModel message}) {
    return ForwardMessage(
      myUser: myUser,
      groupUid: groupUid,
      message: message,
    );
  }

  DeleteMessageEveryone deleteMessageEveryone(
      {required String groupUid,
      required Map<int, MessageSelectModel> message}) {
    return DeleteMessageEveryone(
      groupUid: groupUid,
      message: message,
    );
  }

  DeleteMessage deleteMessage(
      {required String groupUid,
      required Map<int, MessageSelectModel> message}) {
    return DeleteMessage(
      groupUid: groupUid,
      message: message,
    );
  }

  ReplayMessage replayMessage(
      {required KahoChatUser myUser,
      required String groupUid,
      required MessageModel message,
      required String text}) {
    return ReplayMessage(
      myUser: myUser,
      groupUid: groupUid,
      message: message,
      text: text,
    );
  }

  _SendTextMessage sendTextMessage(
      {required String message,
      required KahoChatUser myUser,
      required String groupUid,
      required String groupName}) {
    return _SendTextMessage(
      message: message,
      myUser: myUser,
      groupUid: groupUid,
      groupName: groupName,
    );
  }

  MarkMessageAsSeen markMessageAsSeen(
      {required KahoChatUser myUser,
      required String groupUid,
      required String messageId}) {
    return MarkMessageAsSeen(
      myUser: myUser,
      groupUid: groupUid,
      messageId: messageId,
    );
  }

  _SendGroupNotification sendGroupNotification(
      {required String message,
      required KahoChatUser myUser,
      required String groupUid,
      required String groupName}) {
    return _SendGroupNotification(
      message: message,
      myUser: myUser,
      groupUid: groupUid,
      groupName: groupName,
    );
  }

  _SetReadUnread setReadUnread(
      {required String messageID,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SetReadUnread(
      messageID: messageID,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  _SendImageMessage sendImageMessage(
      {required ImageWithCaptionModel imageWithCaption,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SendImageMessage(
      imageWithCaption: imageWithCaption,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  _SendGifMessage sendGifMessage(
      {required String url,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SendGifMessage(
      url: url,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  _SendVideoMessage sendVideoMessage(
      {required ImageWithCaptionModel imageWithCaption,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SendVideoMessage(
      imageWithCaption: imageWithCaption,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  _SendAudioMessage sendAudioMessage(
      {required String audioPath,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SendAudioMessage(
      audioPath: audioPath,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  _SendAudioFileMessage sendAudioFileMessage(
      {required String audioPath,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SendAudioFileMessage(
      audioPath: audioPath,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  _SendContactMessage sendContactMessage(
      {required KahoChatUser contact,
      required KahoChatUser myUser,
      required String groupUid}) {
    return _SendContactMessage(
      contact: contact,
      myUser: myUser,
      groupUid: groupUid,
    );
  }

  SendFile sendFile(
      {required KahoChatUser myUser,
      required String groupId,
      required String filePath}) {
    return SendFile(
      myUser: myUser,
      groupId: groupId,
      filePath: filePath,
    );
  }

  MakeAdmins makeAdmins(
      {required String groupId,
      required KahoChatUser user,
      required GroupChatRoomModel group}) {
    return MakeAdmins(
      groupId: groupId,
      user: user,
      group: group,
    );
  }

  RemoveAdmins removeAdmins(
      {required String groupId,
      required KahoChatUser user,
      required GroupChatRoomModel group}) {
    return RemoveAdmins(
      groupId: groupId,
      user: user,
      group: group,
    );
  }

  _UpdateGroupPicture updateProfilePicture(String url) {
    return _UpdateGroupPicture(
      url,
    );
  }

  _SetGroupImage setGroupImage(String groupId, String url) {
    return _SetGroupImage(
      groupId,
      url,
    );
  }

  _AddParticipantsOnlyAdmin addParticipantsOnlyAdmin(
      String groupId, dynamic setValue) {
    return _AddParticipantsOnlyAdmin(
      groupId,
      setValue,
    );
  }

  _EditGroupInfoOnlyAdmin editGroupInfoOnlyAdmin(
      String groupId, dynamic setValue) {
    return _EditGroupInfoOnlyAdmin(
      groupId,
      setValue,
    );
  }

  _SendMessageOnlyAdmin sendMessageOnlyAdmin(String groupId, dynamic setValue) {
    return _SendMessageOnlyAdmin(
      groupId,
      setValue,
    );
  }

  _ClearChat clearChat(String groupId) {
    return _ClearChat(
      groupId,
    );
  }

  ReadMessages readMessages({required String groupId}) {
    return ReadMessages(
      groupId: groupId,
    );
  }

  DeliverMessagesListner deliverMessagesListner({required String groupId}) {
    return DeliverMessagesListner(
      groupId: groupId,
    );
  }
}

/// @nodoc
const $GroupsEvent = _$GroupsEventTearOff();

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res> implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

  final GroupsEvent _value;
  // ignore: unused_field
  final $Res Function(GroupsEvent) _then;
}

/// @nodoc
abstract class _$SetGroupNameCopyWith<$Res> {
  factory _$SetGroupNameCopyWith(
          _SetGroupName value, $Res Function(_SetGroupName) then) =
      __$SetGroupNameCopyWithImpl<$Res>;
  $Res call({String name, String groupId});
}

/// @nodoc
class __$SetGroupNameCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SetGroupNameCopyWith<$Res> {
  __$SetGroupNameCopyWithImpl(
      _SetGroupName _value, $Res Function(_SetGroupName) _then)
      : super(_value, (v) => _then(v as _SetGroupName));

  @override
  _SetGroupName get _value => super._value as _SetGroupName;

  @override
  $Res call({
    Object? name = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_SetGroupName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetGroupName implements _SetGroupName {
  const _$_SetGroupName(this.name, this.groupId);

  @override
  final String name;
  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.setGroupName(name: $name, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetGroupName &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$SetGroupNameCopyWith<_SetGroupName> get copyWith =>
      __$SetGroupNameCopyWithImpl<_SetGroupName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return setGroupName(name, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return setGroupName?.call(name, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupName != null) {
      return setGroupName(name, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return setGroupName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return setGroupName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupName != null) {
      return setGroupName(this);
    }
    return orElse();
  }
}

abstract class _SetGroupName implements GroupsEvent {
  const factory _SetGroupName(String name, String groupId) = _$_SetGroupName;

  String get name;
  String get groupId;
  @JsonKey(ignore: true)
  _$SetGroupNameCopyWith<_SetGroupName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetGroupCopyWith<$Res> {
  factory _$SetGroupCopyWith(_SetGroup value, $Res Function(_SetGroup) then) =
      __$SetGroupCopyWithImpl<$Res>;
  $Res call({GroupChatRoomModel groupChatRoomModel});
}

/// @nodoc
class __$SetGroupCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SetGroupCopyWith<$Res> {
  __$SetGroupCopyWithImpl(_SetGroup _value, $Res Function(_SetGroup) _then)
      : super(_value, (v) => _then(v as _SetGroup));

  @override
  _SetGroup get _value => super._value as _SetGroup;

  @override
  $Res call({
    Object? groupChatRoomModel = freezed,
  }) {
    return _then(_SetGroup(
      groupChatRoomModel == freezed
          ? _value.groupChatRoomModel
          : groupChatRoomModel // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
    ));
  }
}

/// @nodoc

class _$_SetGroup implements _SetGroup {
  const _$_SetGroup(this.groupChatRoomModel);

  @override
  final GroupChatRoomModel groupChatRoomModel;

  @override
  String toString() {
    return 'GroupsEvent.setGroup(groupChatRoomModel: $groupChatRoomModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetGroup &&
            const DeepCollectionEquality()
                .equals(other.groupChatRoomModel, groupChatRoomModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(groupChatRoomModel));

  @JsonKey(ignore: true)
  @override
  _$SetGroupCopyWith<_SetGroup> get copyWith =>
      __$SetGroupCopyWithImpl<_SetGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return setGroup(groupChatRoomModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return setGroup?.call(groupChatRoomModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroup != null) {
      return setGroup(groupChatRoomModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return setGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return setGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroup != null) {
      return setGroup(this);
    }
    return orElse();
  }
}

abstract class _SetGroup implements GroupsEvent {
  const factory _SetGroup(GroupChatRoomModel groupChatRoomModel) = _$_SetGroup;

  GroupChatRoomModel get groupChatRoomModel;
  @JsonKey(ignore: true)
  _$SetGroupCopyWith<_SetGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetGroupDescriptionCopyWith<$Res> {
  factory _$SetGroupDescriptionCopyWith(_SetGroupDescription value,
          $Res Function(_SetGroupDescription) then) =
      __$SetGroupDescriptionCopyWithImpl<$Res>;
  $Res call({String description, String groupId});
}

/// @nodoc
class __$SetGroupDescriptionCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SetGroupDescriptionCopyWith<$Res> {
  __$SetGroupDescriptionCopyWithImpl(
      _SetGroupDescription _value, $Res Function(_SetGroupDescription) _then)
      : super(_value, (v) => _then(v as _SetGroupDescription));

  @override
  _SetGroupDescription get _value => super._value as _SetGroupDescription;

  @override
  $Res call({
    Object? description = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_SetGroupDescription(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetGroupDescription implements _SetGroupDescription {
  const _$_SetGroupDescription(this.description, this.groupId);

  @override
  final String description;
  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.setGroupDescription(description: $description, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetGroupDescription &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$SetGroupDescriptionCopyWith<_SetGroupDescription> get copyWith =>
      __$SetGroupDescriptionCopyWithImpl<_SetGroupDescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return setGroupDescription(description, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return setGroupDescription?.call(description, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupDescription != null) {
      return setGroupDescription(description, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return setGroupDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return setGroupDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupDescription != null) {
      return setGroupDescription(this);
    }
    return orElse();
  }
}

abstract class _SetGroupDescription implements GroupsEvent {
  const factory _SetGroupDescription(String description, String groupId) =
      _$_SetGroupDescription;

  String get description;
  String get groupId;
  @JsonKey(ignore: true)
  _$SetGroupDescriptionCopyWith<_SetGroupDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetGroupMembersCopyWith<$Res> {
  factory _$SetGroupMembersCopyWith(
          _SetGroupMembers value, $Res Function(_SetGroupMembers) then) =
      __$SetGroupMembersCopyWithImpl<$Res>;
  $Res call({List<KahoChatUser> members});
}

/// @nodoc
class __$SetGroupMembersCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SetGroupMembersCopyWith<$Res> {
  __$SetGroupMembersCopyWithImpl(
      _SetGroupMembers _value, $Res Function(_SetGroupMembers) _then)
      : super(_value, (v) => _then(v as _SetGroupMembers));

  @override
  _SetGroupMembers get _value => super._value as _SetGroupMembers;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_SetGroupMembers(
      members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
    ));
  }
}

/// @nodoc

class _$_SetGroupMembers implements _SetGroupMembers {
  const _$_SetGroupMembers(this.members);

  @override
  final List<KahoChatUser> members;

  @override
  String toString() {
    return 'GroupsEvent.setGroupMembers(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetGroupMembers &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(members));

  @JsonKey(ignore: true)
  @override
  _$SetGroupMembersCopyWith<_SetGroupMembers> get copyWith =>
      __$SetGroupMembersCopyWithImpl<_SetGroupMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return setGroupMembers(members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return setGroupMembers?.call(members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupMembers != null) {
      return setGroupMembers(members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return setGroupMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return setGroupMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupMembers != null) {
      return setGroupMembers(this);
    }
    return orElse();
  }
}

abstract class _SetGroupMembers implements GroupsEvent {
  const factory _SetGroupMembers(List<KahoChatUser> members) =
      _$_SetGroupMembers;

  List<KahoChatUser> get members;
  @JsonKey(ignore: true)
  _$SetGroupMembersCopyWith<_SetGroupMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddGroupMembersCopyWith<$Res> {
  factory _$AddGroupMembersCopyWith(
          _AddGroupMembers value, $Res Function(_AddGroupMembers) then) =
      __$AddGroupMembersCopyWithImpl<$Res>;
  $Res call({List<KahoChatUser> members, String groupId});
}

/// @nodoc
class __$AddGroupMembersCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$AddGroupMembersCopyWith<$Res> {
  __$AddGroupMembersCopyWithImpl(
      _AddGroupMembers _value, $Res Function(_AddGroupMembers) _then)
      : super(_value, (v) => _then(v as _AddGroupMembers));

  @override
  _AddGroupMembers get _value => super._value as _AddGroupMembers;

  @override
  $Res call({
    Object? members = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_AddGroupMembers(
      members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddGroupMembers implements _AddGroupMembers {
  const _$_AddGroupMembers(this.members, this.groupId);

  @override
  final List<KahoChatUser> members;
  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.addGroupMembers(members: $members, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddGroupMembers &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$AddGroupMembersCopyWith<_AddGroupMembers> get copyWith =>
      __$AddGroupMembersCopyWithImpl<_AddGroupMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return addGroupMembers(members, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return addGroupMembers?.call(members, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (addGroupMembers != null) {
      return addGroupMembers(members, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return addGroupMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return addGroupMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (addGroupMembers != null) {
      return addGroupMembers(this);
    }
    return orElse();
  }
}

abstract class _AddGroupMembers implements GroupsEvent {
  const factory _AddGroupMembers(List<KahoChatUser> members, String groupId) =
      _$_AddGroupMembers;

  List<KahoChatUser> get members;
  String get groupId;
  @JsonKey(ignore: true)
  _$AddGroupMembersCopyWith<_AddGroupMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateGroupCopyWith<$Res> {
  factory _$CreateGroupCopyWith(
          _CreateGroup value, $Res Function(_CreateGroup) then) =
      __$CreateGroupCopyWithImpl<$Res>;
  $Res call({GroupChatRoomModel group});
}

/// @nodoc
class __$CreateGroupCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$CreateGroupCopyWith<$Res> {
  __$CreateGroupCopyWithImpl(
      _CreateGroup _value, $Res Function(_CreateGroup) _then)
      : super(_value, (v) => _then(v as _CreateGroup));

  @override
  _CreateGroup get _value => super._value as _CreateGroup;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_CreateGroup(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
    ));
  }
}

/// @nodoc

class _$_CreateGroup implements _CreateGroup {
  const _$_CreateGroup(this.group);

  @override
  final GroupChatRoomModel group;

  @override
  String toString() {
    return 'GroupsEvent.createGroup(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGroup &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$CreateGroupCopyWith<_CreateGroup> get copyWith =>
      __$CreateGroupCopyWithImpl<_CreateGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return createGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return createGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroup implements GroupsEvent {
  const factory _CreateGroup(GroupChatRoomModel group) = _$_CreateGroup;

  GroupChatRoomModel get group;
  @JsonKey(ignore: true)
  _$CreateGroupCopyWith<_CreateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeaveGroupCopyWith<$Res> {
  factory _$LeaveGroupCopyWith(
          _LeaveGroup value, $Res Function(_LeaveGroup) then) =
      __$LeaveGroupCopyWithImpl<$Res>;
  $Res call({String groupId, GroupChatRoomModel group});
}

/// @nodoc
class __$LeaveGroupCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$LeaveGroupCopyWith<$Res> {
  __$LeaveGroupCopyWithImpl(
      _LeaveGroup _value, $Res Function(_LeaveGroup) _then)
      : super(_value, (v) => _then(v as _LeaveGroup));

  @override
  _LeaveGroup get _value => super._value as _LeaveGroup;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? group = freezed,
  }) {
    return _then(_LeaveGroup(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
    ));
  }
}

/// @nodoc

class _$_LeaveGroup implements _LeaveGroup {
  const _$_LeaveGroup(this.groupId, this.group);

  @override
  final String groupId;
  @override
  final GroupChatRoomModel group;

  @override
  String toString() {
    return 'GroupsEvent.leaveGroup(groupId: $groupId, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeaveGroup &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$LeaveGroupCopyWith<_LeaveGroup> get copyWith =>
      __$LeaveGroupCopyWithImpl<_LeaveGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return leaveGroup(groupId, group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return leaveGroup?.call(groupId, group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (leaveGroup != null) {
      return leaveGroup(groupId, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return leaveGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return leaveGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (leaveGroup != null) {
      return leaveGroup(this);
    }
    return orElse();
  }
}

abstract class _LeaveGroup implements GroupsEvent {
  const factory _LeaveGroup(String groupId, GroupChatRoomModel group) =
      _$_LeaveGroup;

  String get groupId;
  GroupChatRoomModel get group;
  @JsonKey(ignore: true)
  _$LeaveGroupCopyWith<_LeaveGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveMemberCopyWith<$Res> {
  factory _$RemoveMemberCopyWith(
          _RemoveMember value, $Res Function(_RemoveMember) then) =
      __$RemoveMemberCopyWithImpl<$Res>;
  $Res call({String groupId, String userId, GroupChatRoomModel group});
}

/// @nodoc
class __$RemoveMemberCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$RemoveMemberCopyWith<$Res> {
  __$RemoveMemberCopyWithImpl(
      _RemoveMember _value, $Res Function(_RemoveMember) _then)
      : super(_value, (v) => _then(v as _RemoveMember));

  @override
  _RemoveMember get _value => super._value as _RemoveMember;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? group = freezed,
  }) {
    return _then(_RemoveMember(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
    ));
  }
}

/// @nodoc

class _$_RemoveMember implements _RemoveMember {
  const _$_RemoveMember(this.groupId, this.userId, this.group);

  @override
  final String groupId;
  @override
  final String userId;
  @override
  final GroupChatRoomModel group;

  @override
  String toString() {
    return 'GroupsEvent.removeMember(groupId: $groupId, userId: $userId, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveMember &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$RemoveMemberCopyWith<_RemoveMember> get copyWith =>
      __$RemoveMemberCopyWithImpl<_RemoveMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return removeMember(groupId, userId, group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return removeMember?.call(groupId, userId, group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (removeMember != null) {
      return removeMember(groupId, userId, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return removeMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return removeMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (removeMember != null) {
      return removeMember(this);
    }
    return orElse();
  }
}

abstract class _RemoveMember implements GroupsEvent {
  const factory _RemoveMember(
          String groupId, String userId, GroupChatRoomModel group) =
      _$_RemoveMember;

  String get groupId;
  String get userId;
  GroupChatRoomModel get group;
  @JsonKey(ignore: true)
  _$RemoveMemberCopyWith<_RemoveMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardMessageCopyWith<$Res> {
  factory $ForwardMessageCopyWith(
          ForwardMessage value, $Res Function(ForwardMessage) then) =
      _$ForwardMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, String groupUid, MessageModel message});
}

/// @nodoc
class _$ForwardMessageCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $ForwardMessageCopyWith<$Res> {
  _$ForwardMessageCopyWithImpl(
      ForwardMessage _value, $Res Function(ForwardMessage) _then)
      : super(_value, (v) => _then(v as ForwardMessage));

  @override
  ForwardMessage get _value => super._value as ForwardMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? groupUid = freezed,
    Object? message = freezed,
  }) {
    return _then(ForwardMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }
}

/// @nodoc

class _$ForwardMessage implements ForwardMessage {
  const _$ForwardMessage(
      {required this.myUser, required this.groupUid, required this.message});

  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;
  @override
  final MessageModel message;

  @override
  String toString() {
    return 'GroupsEvent.forwardMessage(myUser: $myUser, groupUid: $groupUid, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForwardMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ForwardMessageCopyWith<ForwardMessage> get copyWith =>
      _$ForwardMessageCopyWithImpl<ForwardMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return forwardMessage(myUser, groupUid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return forwardMessage?.call(myUser, groupUid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(myUser, groupUid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return forwardMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return forwardMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(this);
    }
    return orElse();
  }
}

abstract class ForwardMessage implements GroupsEvent {
  const factory ForwardMessage(
      {required KahoChatUser myUser,
      required String groupUid,
      required MessageModel message}) = _$ForwardMessage;

  KahoChatUser get myUser;
  String get groupUid;
  MessageModel get message;
  @JsonKey(ignore: true)
  $ForwardMessageCopyWith<ForwardMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMessageEveryoneCopyWith<$Res> {
  factory $DeleteMessageEveryoneCopyWith(DeleteMessageEveryone value,
          $Res Function(DeleteMessageEveryone) then) =
      _$DeleteMessageEveryoneCopyWithImpl<$Res>;
  $Res call({String groupUid, Map<int, MessageSelectModel> message});
}

/// @nodoc
class _$DeleteMessageEveryoneCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements $DeleteMessageEveryoneCopyWith<$Res> {
  _$DeleteMessageEveryoneCopyWithImpl(
      DeleteMessageEveryone _value, $Res Function(DeleteMessageEveryone) _then)
      : super(_value, (v) => _then(v as DeleteMessageEveryone));

  @override
  DeleteMessageEveryone get _value => super._value as DeleteMessageEveryone;

  @override
  $Res call({
    Object? groupUid = freezed,
    Object? message = freezed,
  }) {
    return _then(DeleteMessageEveryone(
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
    ));
  }
}

/// @nodoc

class _$DeleteMessageEveryone implements DeleteMessageEveryone {
  const _$DeleteMessageEveryone(
      {required this.groupUid, required this.message});

  @override
  final String groupUid;
  @override
  final Map<int, MessageSelectModel> message;

  @override
  String toString() {
    return 'GroupsEvent.deleteMessageEveryone(groupUid: $groupUid, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteMessageEveryone &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $DeleteMessageEveryoneCopyWith<DeleteMessageEveryone> get copyWith =>
      _$DeleteMessageEveryoneCopyWithImpl<DeleteMessageEveryone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return deleteMessageEveryone(groupUid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return deleteMessageEveryone?.call(groupUid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (deleteMessageEveryone != null) {
      return deleteMessageEveryone(groupUid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return deleteMessageEveryone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return deleteMessageEveryone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (deleteMessageEveryone != null) {
      return deleteMessageEveryone(this);
    }
    return orElse();
  }
}

abstract class DeleteMessageEveryone implements GroupsEvent {
  const factory DeleteMessageEveryone(
      {required String groupUid,
      required Map<int, MessageSelectModel> message}) = _$DeleteMessageEveryone;

  String get groupUid;
  Map<int, MessageSelectModel> get message;
  @JsonKey(ignore: true)
  $DeleteMessageEveryoneCopyWith<DeleteMessageEveryone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMessageCopyWith<$Res> {
  factory $DeleteMessageCopyWith(
          DeleteMessage value, $Res Function(DeleteMessage) then) =
      _$DeleteMessageCopyWithImpl<$Res>;
  $Res call({String groupUid, Map<int, MessageSelectModel> message});
}

/// @nodoc
class _$DeleteMessageCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $DeleteMessageCopyWith<$Res> {
  _$DeleteMessageCopyWithImpl(
      DeleteMessage _value, $Res Function(DeleteMessage) _then)
      : super(_value, (v) => _then(v as DeleteMessage));

  @override
  DeleteMessage get _value => super._value as DeleteMessage;

  @override
  $Res call({
    Object? groupUid = freezed,
    Object? message = freezed,
  }) {
    return _then(DeleteMessage(
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
    ));
  }
}

/// @nodoc

class _$DeleteMessage implements DeleteMessage {
  const _$DeleteMessage({required this.groupUid, required this.message});

  @override
  final String groupUid;
  @override
  final Map<int, MessageSelectModel> message;

  @override
  String toString() {
    return 'GroupsEvent.deleteMessage(groupUid: $groupUid, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteMessage &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $DeleteMessageCopyWith<DeleteMessage> get copyWith =>
      _$DeleteMessageCopyWithImpl<DeleteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return deleteMessage(groupUid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return deleteMessage?.call(groupUid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(groupUid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class DeleteMessage implements GroupsEvent {
  const factory DeleteMessage(
      {required String groupUid,
      required Map<int, MessageSelectModel> message}) = _$DeleteMessage;

  String get groupUid;
  Map<int, MessageSelectModel> get message;
  @JsonKey(ignore: true)
  $DeleteMessageCopyWith<DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplayMessageCopyWith<$Res> {
  factory $ReplayMessageCopyWith(
          ReplayMessage value, $Res Function(ReplayMessage) then) =
      _$ReplayMessageCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      String groupUid,
      MessageModel message,
      String text});
}

/// @nodoc
class _$ReplayMessageCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $ReplayMessageCopyWith<$Res> {
  _$ReplayMessageCopyWithImpl(
      ReplayMessage _value, $Res Function(ReplayMessage) _then)
      : super(_value, (v) => _then(v as ReplayMessage));

  @override
  ReplayMessage get _value => super._value as ReplayMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? groupUid = freezed,
    Object? message = freezed,
    Object? text = freezed,
  }) {
    return _then(ReplayMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReplayMessage implements ReplayMessage {
  const _$ReplayMessage(
      {required this.myUser,
      required this.groupUid,
      required this.message,
      required this.text});

  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;
  @override
  final MessageModel message;
  @override
  final String text;

  @override
  String toString() {
    return 'GroupsEvent.replayMessage(myUser: $myUser, groupUid: $groupUid, message: $message, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReplayMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $ReplayMessageCopyWith<ReplayMessage> get copyWith =>
      _$ReplayMessageCopyWithImpl<ReplayMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return replayMessage(myUser, groupUid, message, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return replayMessage?.call(myUser, groupUid, message, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (replayMessage != null) {
      return replayMessage(myUser, groupUid, message, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return replayMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return replayMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (replayMessage != null) {
      return replayMessage(this);
    }
    return orElse();
  }
}

abstract class ReplayMessage implements GroupsEvent {
  const factory ReplayMessage(
      {required KahoChatUser myUser,
      required String groupUid,
      required MessageModel message,
      required String text}) = _$ReplayMessage;

  KahoChatUser get myUser;
  String get groupUid;
  MessageModel get message;
  String get text;
  @JsonKey(ignore: true)
  $ReplayMessageCopyWith<ReplayMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendTextMessageCopyWith<$Res> {
  factory _$SendTextMessageCopyWith(
          _SendTextMessage value, $Res Function(_SendTextMessage) then) =
      __$SendTextMessageCopyWithImpl<$Res>;
  $Res call(
      {String message, KahoChatUser myUser, String groupUid, String groupName});
}

/// @nodoc
class __$SendTextMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendTextMessageCopyWith<$Res> {
  __$SendTextMessageCopyWithImpl(
      _SendTextMessage _value, $Res Function(_SendTextMessage) _then)
      : super(_value, (v) => _then(v as _SendTextMessage));

  @override
  _SendTextMessage get _value => super._value as _SendTextMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_SendTextMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendTextMessage implements _SendTextMessage {
  const _$_SendTextMessage(
      {required this.message,
      required this.myUser,
      required this.groupUid,
      required this.groupName});

  @override
  final String message;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;
  @override
  final String groupName;

  @override
  String toString() {
    return 'GroupsEvent.sendTextMessage(message: $message, myUser: $myUser, groupUid: $groupUid, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTextMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.groupName, groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(groupName));

  @JsonKey(ignore: true)
  @override
  _$SendTextMessageCopyWith<_SendTextMessage> get copyWith =>
      __$SendTextMessageCopyWithImpl<_SendTextMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendTextMessage(message, myUser, groupUid, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendTextMessage?.call(message, myUser, groupUid, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(message, myUser, groupUid, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendTextMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendTextMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(this);
    }
    return orElse();
  }
}

abstract class _SendTextMessage implements GroupsEvent {
  const factory _SendTextMessage(
      {required String message,
      required KahoChatUser myUser,
      required String groupUid,
      required String groupName}) = _$_SendTextMessage;

  String get message;
  KahoChatUser get myUser;
  String get groupUid;
  String get groupName;
  @JsonKey(ignore: true)
  _$SendTextMessageCopyWith<_SendTextMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkMessageAsSeenCopyWith<$Res> {
  factory $MarkMessageAsSeenCopyWith(
          MarkMessageAsSeen value, $Res Function(MarkMessageAsSeen) then) =
      _$MarkMessageAsSeenCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, String groupUid, String messageId});
}

/// @nodoc
class _$MarkMessageAsSeenCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements $MarkMessageAsSeenCopyWith<$Res> {
  _$MarkMessageAsSeenCopyWithImpl(
      MarkMessageAsSeen _value, $Res Function(MarkMessageAsSeen) _then)
      : super(_value, (v) => _then(v as MarkMessageAsSeen));

  @override
  MarkMessageAsSeen get _value => super._value as MarkMessageAsSeen;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? groupUid = freezed,
    Object? messageId = freezed,
  }) {
    return _then(MarkMessageAsSeen(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkMessageAsSeen implements MarkMessageAsSeen {
  const _$MarkMessageAsSeen(
      {required this.myUser, required this.groupUid, required this.messageId});

  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;
  @override
  final String messageId;

  @override
  String toString() {
    return 'GroupsEvent.markMessageAsSeen(myUser: $myUser, groupUid: $groupUid, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkMessageAsSeen &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(messageId));

  @JsonKey(ignore: true)
  @override
  $MarkMessageAsSeenCopyWith<MarkMessageAsSeen> get copyWith =>
      _$MarkMessageAsSeenCopyWithImpl<MarkMessageAsSeen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return markMessageAsSeen(myUser, groupUid, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return markMessageAsSeen?.call(myUser, groupUid, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(myUser, groupUid, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return markMessageAsSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return markMessageAsSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(this);
    }
    return orElse();
  }
}

abstract class MarkMessageAsSeen implements GroupsEvent {
  const factory MarkMessageAsSeen(
      {required KahoChatUser myUser,
      required String groupUid,
      required String messageId}) = _$MarkMessageAsSeen;

  KahoChatUser get myUser;
  String get groupUid;
  String get messageId;
  @JsonKey(ignore: true)
  $MarkMessageAsSeenCopyWith<MarkMessageAsSeen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendGroupNotificationCopyWith<$Res> {
  factory _$SendGroupNotificationCopyWith(_SendGroupNotification value,
          $Res Function(_SendGroupNotification) then) =
      __$SendGroupNotificationCopyWithImpl<$Res>;
  $Res call(
      {String message, KahoChatUser myUser, String groupUid, String groupName});
}

/// @nodoc
class __$SendGroupNotificationCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendGroupNotificationCopyWith<$Res> {
  __$SendGroupNotificationCopyWithImpl(_SendGroupNotification _value,
      $Res Function(_SendGroupNotification) _then)
      : super(_value, (v) => _then(v as _SendGroupNotification));

  @override
  _SendGroupNotification get _value => super._value as _SendGroupNotification;

  @override
  $Res call({
    Object? message = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_SendGroupNotification(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendGroupNotification implements _SendGroupNotification {
  const _$_SendGroupNotification(
      {required this.message,
      required this.myUser,
      required this.groupUid,
      required this.groupName});

  @override
  final String message;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;
  @override
  final String groupName;

  @override
  String toString() {
    return 'GroupsEvent.sendGroupNotification(message: $message, myUser: $myUser, groupUid: $groupUid, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendGroupNotification &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid) &&
            const DeepCollectionEquality().equals(other.groupName, groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid),
      const DeepCollectionEquality().hash(groupName));

  @JsonKey(ignore: true)
  @override
  _$SendGroupNotificationCopyWith<_SendGroupNotification> get copyWith =>
      __$SendGroupNotificationCopyWithImpl<_SendGroupNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendGroupNotification(message, myUser, groupUid, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendGroupNotification?.call(message, myUser, groupUid, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendGroupNotification != null) {
      return sendGroupNotification(message, myUser, groupUid, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendGroupNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendGroupNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendGroupNotification != null) {
      return sendGroupNotification(this);
    }
    return orElse();
  }
}

abstract class _SendGroupNotification implements GroupsEvent {
  const factory _SendGroupNotification(
      {required String message,
      required KahoChatUser myUser,
      required String groupUid,
      required String groupName}) = _$_SendGroupNotification;

  String get message;
  KahoChatUser get myUser;
  String get groupUid;
  String get groupName;
  @JsonKey(ignore: true)
  _$SendGroupNotificationCopyWith<_SendGroupNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetReadUnreadCopyWith<$Res> {
  factory _$SetReadUnreadCopyWith(
          _SetReadUnread value, $Res Function(_SetReadUnread) then) =
      __$SetReadUnreadCopyWithImpl<$Res>;
  $Res call({String messageID, KahoChatUser myUser, String groupUid});
}

/// @nodoc
class __$SetReadUnreadCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SetReadUnreadCopyWith<$Res> {
  __$SetReadUnreadCopyWithImpl(
      _SetReadUnread _value, $Res Function(_SetReadUnread) _then)
      : super(_value, (v) => _then(v as _SetReadUnread));

  @override
  _SetReadUnread get _value => super._value as _SetReadUnread;

  @override
  $Res call({
    Object? messageID = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SetReadUnread(
      messageID: messageID == freezed
          ? _value.messageID
          : messageID // ignore: cast_nullable_to_non_nullable
              as String,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetReadUnread implements _SetReadUnread {
  const _$_SetReadUnread(
      {required this.messageID, required this.myUser, required this.groupUid});

  @override
  final String messageID;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.setReadUnread(messageID: $messageID, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetReadUnread &&
            const DeepCollectionEquality().equals(other.messageID, messageID) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messageID),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SetReadUnreadCopyWith<_SetReadUnread> get copyWith =>
      __$SetReadUnreadCopyWithImpl<_SetReadUnread>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return setReadUnread(messageID, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return setReadUnread?.call(messageID, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setReadUnread != null) {
      return setReadUnread(messageID, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return setReadUnread(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return setReadUnread?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setReadUnread != null) {
      return setReadUnread(this);
    }
    return orElse();
  }
}

abstract class _SetReadUnread implements GroupsEvent {
  const factory _SetReadUnread(
      {required String messageID,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SetReadUnread;

  String get messageID;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SetReadUnreadCopyWith<_SetReadUnread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendImageMessageCopyWith<$Res> {
  factory _$SendImageMessageCopyWith(
          _SendImageMessage value, $Res Function(_SendImageMessage) then) =
      __$SendImageMessageCopyWithImpl<$Res>;
  $Res call(
      {ImageWithCaptionModel imageWithCaption,
      KahoChatUser myUser,
      String groupUid});
}

/// @nodoc
class __$SendImageMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendImageMessageCopyWith<$Res> {
  __$SendImageMessageCopyWithImpl(
      _SendImageMessage _value, $Res Function(_SendImageMessage) _then)
      : super(_value, (v) => _then(v as _SendImageMessage));

  @override
  _SendImageMessage get _value => super._value as _SendImageMessage;

  @override
  $Res call({
    Object? imageWithCaption = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SendImageMessage(
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendImageMessage implements _SendImageMessage {
  const _$_SendImageMessage(
      {required this.imageWithCaption,
      required this.myUser,
      required this.groupUid});

  @override
  final ImageWithCaptionModel imageWithCaption;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.sendImageMessage(imageWithCaption: $imageWithCaption, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendImageMessage &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageWithCaption),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SendImageMessageCopyWith<_SendImageMessage> get copyWith =>
      __$SendImageMessageCopyWithImpl<_SendImageMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendImageMessage(imageWithCaption, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendImageMessage?.call(imageWithCaption, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(imageWithCaption, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class _SendImageMessage implements GroupsEvent {
  const factory _SendImageMessage(
      {required ImageWithCaptionModel imageWithCaption,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SendImageMessage;

  ImageWithCaptionModel get imageWithCaption;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SendImageMessageCopyWith<_SendImageMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendGifMessageCopyWith<$Res> {
  factory _$SendGifMessageCopyWith(
          _SendGifMessage value, $Res Function(_SendGifMessage) then) =
      __$SendGifMessageCopyWithImpl<$Res>;
  $Res call({String url, KahoChatUser myUser, String groupUid});
}

/// @nodoc
class __$SendGifMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendGifMessageCopyWith<$Res> {
  __$SendGifMessageCopyWithImpl(
      _SendGifMessage _value, $Res Function(_SendGifMessage) _then)
      : super(_value, (v) => _then(v as _SendGifMessage));

  @override
  _SendGifMessage get _value => super._value as _SendGifMessage;

  @override
  $Res call({
    Object? url = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SendGifMessage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendGifMessage implements _SendGifMessage {
  const _$_SendGifMessage(
      {required this.url, required this.myUser, required this.groupUid});

  @override
  final String url;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.sendGifMessage(url: $url, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendGifMessage &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SendGifMessageCopyWith<_SendGifMessage> get copyWith =>
      __$SendGifMessageCopyWithImpl<_SendGifMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendGifMessage(url, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendGifMessage?.call(url, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendGifMessage != null) {
      return sendGifMessage(url, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendGifMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendGifMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendGifMessage != null) {
      return sendGifMessage(this);
    }
    return orElse();
  }
}

abstract class _SendGifMessage implements GroupsEvent {
  const factory _SendGifMessage(
      {required String url,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SendGifMessage;

  String get url;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SendGifMessageCopyWith<_SendGifMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendVideoMessageCopyWith<$Res> {
  factory _$SendVideoMessageCopyWith(
          _SendVideoMessage value, $Res Function(_SendVideoMessage) then) =
      __$SendVideoMessageCopyWithImpl<$Res>;
  $Res call(
      {ImageWithCaptionModel imageWithCaption,
      KahoChatUser myUser,
      String groupUid});
}

/// @nodoc
class __$SendVideoMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendVideoMessageCopyWith<$Res> {
  __$SendVideoMessageCopyWithImpl(
      _SendVideoMessage _value, $Res Function(_SendVideoMessage) _then)
      : super(_value, (v) => _then(v as _SendVideoMessage));

  @override
  _SendVideoMessage get _value => super._value as _SendVideoMessage;

  @override
  $Res call({
    Object? imageWithCaption = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SendVideoMessage(
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendVideoMessage implements _SendVideoMessage {
  const _$_SendVideoMessage(
      {required this.imageWithCaption,
      required this.myUser,
      required this.groupUid});

  @override
  final ImageWithCaptionModel imageWithCaption;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.sendVideoMessage(imageWithCaption: $imageWithCaption, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendVideoMessage &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageWithCaption),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SendVideoMessageCopyWith<_SendVideoMessage> get copyWith =>
      __$SendVideoMessageCopyWithImpl<_SendVideoMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendVideoMessage(imageWithCaption, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendVideoMessage?.call(imageWithCaption, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendVideoMessage != null) {
      return sendVideoMessage(imageWithCaption, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendVideoMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendVideoMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendVideoMessage != null) {
      return sendVideoMessage(this);
    }
    return orElse();
  }
}

abstract class _SendVideoMessage implements GroupsEvent {
  const factory _SendVideoMessage(
      {required ImageWithCaptionModel imageWithCaption,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SendVideoMessage;

  ImageWithCaptionModel get imageWithCaption;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SendVideoMessageCopyWith<_SendVideoMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendAudioMessageCopyWith<$Res> {
  factory _$SendAudioMessageCopyWith(
          _SendAudioMessage value, $Res Function(_SendAudioMessage) then) =
      __$SendAudioMessageCopyWithImpl<$Res>;
  $Res call({String audioPath, KahoChatUser myUser, String groupUid});
}

/// @nodoc
class __$SendAudioMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendAudioMessageCopyWith<$Res> {
  __$SendAudioMessageCopyWithImpl(
      _SendAudioMessage _value, $Res Function(_SendAudioMessage) _then)
      : super(_value, (v) => _then(v as _SendAudioMessage));

  @override
  _SendAudioMessage get _value => super._value as _SendAudioMessage;

  @override
  $Res call({
    Object? audioPath = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SendAudioMessage(
      audioPath: audioPath == freezed
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendAudioMessage implements _SendAudioMessage {
  const _$_SendAudioMessage(
      {required this.audioPath, required this.myUser, required this.groupUid});

  @override
  final String audioPath;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.sendAudioMessage(audioPath: $audioPath, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendAudioMessage &&
            const DeepCollectionEquality().equals(other.audioPath, audioPath) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(audioPath),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SendAudioMessageCopyWith<_SendAudioMessage> get copyWith =>
      __$SendAudioMessageCopyWithImpl<_SendAudioMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendAudioMessage(audioPath, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendAudioMessage?.call(audioPath, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendAudioMessage != null) {
      return sendAudioMessage(audioPath, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendAudioMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendAudioMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendAudioMessage != null) {
      return sendAudioMessage(this);
    }
    return orElse();
  }
}

abstract class _SendAudioMessage implements GroupsEvent {
  const factory _SendAudioMessage(
      {required String audioPath,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SendAudioMessage;

  String get audioPath;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SendAudioMessageCopyWith<_SendAudioMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendAudioFileMessageCopyWith<$Res> {
  factory _$SendAudioFileMessageCopyWith(_SendAudioFileMessage value,
          $Res Function(_SendAudioFileMessage) then) =
      __$SendAudioFileMessageCopyWithImpl<$Res>;
  $Res call({String audioPath, KahoChatUser myUser, String groupUid});
}

/// @nodoc
class __$SendAudioFileMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendAudioFileMessageCopyWith<$Res> {
  __$SendAudioFileMessageCopyWithImpl(
      _SendAudioFileMessage _value, $Res Function(_SendAudioFileMessage) _then)
      : super(_value, (v) => _then(v as _SendAudioFileMessage));

  @override
  _SendAudioFileMessage get _value => super._value as _SendAudioFileMessage;

  @override
  $Res call({
    Object? audioPath = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SendAudioFileMessage(
      audioPath: audioPath == freezed
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendAudioFileMessage implements _SendAudioFileMessage {
  const _$_SendAudioFileMessage(
      {required this.audioPath, required this.myUser, required this.groupUid});

  @override
  final String audioPath;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.sendAudioFileMessage(audioPath: $audioPath, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendAudioFileMessage &&
            const DeepCollectionEquality().equals(other.audioPath, audioPath) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(audioPath),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SendAudioFileMessageCopyWith<_SendAudioFileMessage> get copyWith =>
      __$SendAudioFileMessageCopyWithImpl<_SendAudioFileMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendAudioFileMessage(audioPath, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendAudioFileMessage?.call(audioPath, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendAudioFileMessage != null) {
      return sendAudioFileMessage(audioPath, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendAudioFileMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendAudioFileMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendAudioFileMessage != null) {
      return sendAudioFileMessage(this);
    }
    return orElse();
  }
}

abstract class _SendAudioFileMessage implements GroupsEvent {
  const factory _SendAudioFileMessage(
      {required String audioPath,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SendAudioFileMessage;

  String get audioPath;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SendAudioFileMessageCopyWith<_SendAudioFileMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendContactMessageCopyWith<$Res> {
  factory _$SendContactMessageCopyWith(
          _SendContactMessage value, $Res Function(_SendContactMessage) then) =
      __$SendContactMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser contact, KahoChatUser myUser, String groupUid});
}

/// @nodoc
class __$SendContactMessageCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendContactMessageCopyWith<$Res> {
  __$SendContactMessageCopyWithImpl(
      _SendContactMessage _value, $Res Function(_SendContactMessage) _then)
      : super(_value, (v) => _then(v as _SendContactMessage));

  @override
  _SendContactMessage get _value => super._value as _SendContactMessage;

  @override
  $Res call({
    Object? contact = freezed,
    Object? myUser = freezed,
    Object? groupUid = freezed,
  }) {
    return _then(_SendContactMessage(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupUid: groupUid == freezed
          ? _value.groupUid
          : groupUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendContactMessage implements _SendContactMessage {
  const _$_SendContactMessage(
      {required this.contact, required this.myUser, required this.groupUid});

  @override
  final KahoChatUser contact;
  @override
  final KahoChatUser myUser;
  @override
  final String groupUid;

  @override
  String toString() {
    return 'GroupsEvent.sendContactMessage(contact: $contact, myUser: $myUser, groupUid: $groupUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendContactMessage &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupUid, groupUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupUid));

  @JsonKey(ignore: true)
  @override
  _$SendContactMessageCopyWith<_SendContactMessage> get copyWith =>
      __$SendContactMessageCopyWithImpl<_SendContactMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendContactMessage(contact, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendContactMessage?.call(contact, myUser, groupUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendContactMessage != null) {
      return sendContactMessage(contact, myUser, groupUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendContactMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendContactMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendContactMessage != null) {
      return sendContactMessage(this);
    }
    return orElse();
  }
}

abstract class _SendContactMessage implements GroupsEvent {
  const factory _SendContactMessage(
      {required KahoChatUser contact,
      required KahoChatUser myUser,
      required String groupUid}) = _$_SendContactMessage;

  KahoChatUser get contact;
  KahoChatUser get myUser;
  String get groupUid;
  @JsonKey(ignore: true)
  _$SendContactMessageCopyWith<_SendContactMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendFileCopyWith<$Res> {
  factory $SendFileCopyWith(SendFile value, $Res Function(SendFile) then) =
      _$SendFileCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, String groupId, String filePath});
}

/// @nodoc
class _$SendFileCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $SendFileCopyWith<$Res> {
  _$SendFileCopyWithImpl(SendFile _value, $Res Function(SendFile) _then)
      : super(_value, (v) => _then(v as SendFile));

  @override
  SendFile get _value => super._value as SendFile;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? groupId = freezed,
    Object? filePath = freezed,
  }) {
    return _then(SendFile(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendFile implements SendFile {
  const _$SendFile(
      {required this.myUser, required this.groupId, required this.filePath});

  @override
  final KahoChatUser myUser;
  @override
  final String groupId;
  @override
  final String filePath;

  @override
  String toString() {
    return 'GroupsEvent.sendFile(myUser: $myUser, groupId: $groupId, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendFile &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  $SendFileCopyWith<SendFile> get copyWith =>
      _$SendFileCopyWithImpl<SendFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendFile(myUser, groupId, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendFile?.call(myUser, groupId, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendFile != null) {
      return sendFile(myUser, groupId, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendFile != null) {
      return sendFile(this);
    }
    return orElse();
  }
}

abstract class SendFile implements GroupsEvent {
  const factory SendFile(
      {required KahoChatUser myUser,
      required String groupId,
      required String filePath}) = _$SendFile;

  KahoChatUser get myUser;
  String get groupId;
  String get filePath;
  @JsonKey(ignore: true)
  $SendFileCopyWith<SendFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeAdminsCopyWith<$Res> {
  factory $MakeAdminsCopyWith(
          MakeAdmins value, $Res Function(MakeAdmins) then) =
      _$MakeAdminsCopyWithImpl<$Res>;
  $Res call({String groupId, KahoChatUser user, GroupChatRoomModel group});
}

/// @nodoc
class _$MakeAdminsCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $MakeAdminsCopyWith<$Res> {
  _$MakeAdminsCopyWithImpl(MakeAdmins _value, $Res Function(MakeAdmins) _then)
      : super(_value, (v) => _then(v as MakeAdmins));

  @override
  MakeAdmins get _value => super._value as MakeAdmins;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? user = freezed,
    Object? group = freezed,
  }) {
    return _then(MakeAdmins(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
    ));
  }
}

/// @nodoc

class _$MakeAdmins implements MakeAdmins {
  const _$MakeAdmins(
      {required this.groupId, required this.user, required this.group});

  @override
  final String groupId;
  @override
  final KahoChatUser user;
  @override
  final GroupChatRoomModel group;

  @override
  String toString() {
    return 'GroupsEvent.makeAdmins(groupId: $groupId, user: $user, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeAdmins &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  $MakeAdminsCopyWith<MakeAdmins> get copyWith =>
      _$MakeAdminsCopyWithImpl<MakeAdmins>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return makeAdmins(groupId, user, group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return makeAdmins?.call(groupId, user, group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (makeAdmins != null) {
      return makeAdmins(groupId, user, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return makeAdmins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return makeAdmins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (makeAdmins != null) {
      return makeAdmins(this);
    }
    return orElse();
  }
}

abstract class MakeAdmins implements GroupsEvent {
  const factory MakeAdmins(
      {required String groupId,
      required KahoChatUser user,
      required GroupChatRoomModel group}) = _$MakeAdmins;

  String get groupId;
  KahoChatUser get user;
  GroupChatRoomModel get group;
  @JsonKey(ignore: true)
  $MakeAdminsCopyWith<MakeAdmins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveAdminsCopyWith<$Res> {
  factory $RemoveAdminsCopyWith(
          RemoveAdmins value, $Res Function(RemoveAdmins) then) =
      _$RemoveAdminsCopyWithImpl<$Res>;
  $Res call({String groupId, KahoChatUser user, GroupChatRoomModel group});
}

/// @nodoc
class _$RemoveAdminsCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $RemoveAdminsCopyWith<$Res> {
  _$RemoveAdminsCopyWithImpl(
      RemoveAdmins _value, $Res Function(RemoveAdmins) _then)
      : super(_value, (v) => _then(v as RemoveAdmins));

  @override
  RemoveAdmins get _value => super._value as RemoveAdmins;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? user = freezed,
    Object? group = freezed,
  }) {
    return _then(RemoveAdmins(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
    ));
  }
}

/// @nodoc

class _$RemoveAdmins implements RemoveAdmins {
  const _$RemoveAdmins(
      {required this.groupId, required this.user, required this.group});

  @override
  final String groupId;
  @override
  final KahoChatUser user;
  @override
  final GroupChatRoomModel group;

  @override
  String toString() {
    return 'GroupsEvent.removeAdmins(groupId: $groupId, user: $user, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveAdmins &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  $RemoveAdminsCopyWith<RemoveAdmins> get copyWith =>
      _$RemoveAdminsCopyWithImpl<RemoveAdmins>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return removeAdmins(groupId, user, group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return removeAdmins?.call(groupId, user, group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (removeAdmins != null) {
      return removeAdmins(groupId, user, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return removeAdmins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return removeAdmins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (removeAdmins != null) {
      return removeAdmins(this);
    }
    return orElse();
  }
}

abstract class RemoveAdmins implements GroupsEvent {
  const factory RemoveAdmins(
      {required String groupId,
      required KahoChatUser user,
      required GroupChatRoomModel group}) = _$RemoveAdmins;

  String get groupId;
  KahoChatUser get user;
  GroupChatRoomModel get group;
  @JsonKey(ignore: true)
  $RemoveAdminsCopyWith<RemoveAdmins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateGroupPictureCopyWith<$Res> {
  factory _$UpdateGroupPictureCopyWith(
          _UpdateGroupPicture value, $Res Function(_UpdateGroupPicture) then) =
      __$UpdateGroupPictureCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$UpdateGroupPictureCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$UpdateGroupPictureCopyWith<$Res> {
  __$UpdateGroupPictureCopyWithImpl(
      _UpdateGroupPicture _value, $Res Function(_UpdateGroupPicture) _then)
      : super(_value, (v) => _then(v as _UpdateGroupPicture));

  @override
  _UpdateGroupPicture get _value => super._value as _UpdateGroupPicture;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_UpdateGroupPicture(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateGroupPicture implements _UpdateGroupPicture {
  const _$_UpdateGroupPicture(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'GroupsEvent.updateProfilePicture(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateGroupPicture &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$UpdateGroupPictureCopyWith<_UpdateGroupPicture> get copyWith =>
      __$UpdateGroupPictureCopyWithImpl<_UpdateGroupPicture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return updateProfilePicture(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return updateProfilePicture?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (updateProfilePicture != null) {
      return updateProfilePicture(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return updateProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return updateProfilePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (updateProfilePicture != null) {
      return updateProfilePicture(this);
    }
    return orElse();
  }
}

abstract class _UpdateGroupPicture implements GroupsEvent {
  const factory _UpdateGroupPicture(String url) = _$_UpdateGroupPicture;

  String get url;
  @JsonKey(ignore: true)
  _$UpdateGroupPictureCopyWith<_UpdateGroupPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetGroupImageCopyWith<$Res> {
  factory _$SetGroupImageCopyWith(
          _SetGroupImage value, $Res Function(_SetGroupImage) then) =
      __$SetGroupImageCopyWithImpl<$Res>;
  $Res call({String groupId, String url});
}

/// @nodoc
class __$SetGroupImageCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SetGroupImageCopyWith<$Res> {
  __$SetGroupImageCopyWithImpl(
      _SetGroupImage _value, $Res Function(_SetGroupImage) _then)
      : super(_value, (v) => _then(v as _SetGroupImage));

  @override
  _SetGroupImage get _value => super._value as _SetGroupImage;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? url = freezed,
  }) {
    return _then(_SetGroupImage(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetGroupImage implements _SetGroupImage {
  const _$_SetGroupImage(this.groupId, this.url);

  @override
  final String groupId;
  @override
  final String url;

  @override
  String toString() {
    return 'GroupsEvent.setGroupImage(groupId: $groupId, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetGroupImage &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$SetGroupImageCopyWith<_SetGroupImage> get copyWith =>
      __$SetGroupImageCopyWithImpl<_SetGroupImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return setGroupImage(groupId, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return setGroupImage?.call(groupId, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupImage != null) {
      return setGroupImage(groupId, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return setGroupImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return setGroupImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (setGroupImage != null) {
      return setGroupImage(this);
    }
    return orElse();
  }
}

abstract class _SetGroupImage implements GroupsEvent {
  const factory _SetGroupImage(String groupId, String url) = _$_SetGroupImage;

  String get groupId;
  String get url;
  @JsonKey(ignore: true)
  _$SetGroupImageCopyWith<_SetGroupImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddParticipantsOnlyAdminCopyWith<$Res> {
  factory _$AddParticipantsOnlyAdminCopyWith(_AddParticipantsOnlyAdmin value,
          $Res Function(_AddParticipantsOnlyAdmin) then) =
      __$AddParticipantsOnlyAdminCopyWithImpl<$Res>;
  $Res call({String groupId, dynamic setValue});
}

/// @nodoc
class __$AddParticipantsOnlyAdminCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$AddParticipantsOnlyAdminCopyWith<$Res> {
  __$AddParticipantsOnlyAdminCopyWithImpl(_AddParticipantsOnlyAdmin _value,
      $Res Function(_AddParticipantsOnlyAdmin) _then)
      : super(_value, (v) => _then(v as _AddParticipantsOnlyAdmin));

  @override
  _AddParticipantsOnlyAdmin get _value =>
      super._value as _AddParticipantsOnlyAdmin;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? setValue = freezed,
  }) {
    return _then(_AddParticipantsOnlyAdmin(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      setValue == freezed
          ? _value.setValue
          : setValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_AddParticipantsOnlyAdmin implements _AddParticipantsOnlyAdmin {
  const _$_AddParticipantsOnlyAdmin(this.groupId, this.setValue);

  @override
  final String groupId;
  @override
  final dynamic setValue;

  @override
  String toString() {
    return 'GroupsEvent.addParticipantsOnlyAdmin(groupId: $groupId, setValue: $setValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddParticipantsOnlyAdmin &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.setValue, setValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(setValue));

  @JsonKey(ignore: true)
  @override
  _$AddParticipantsOnlyAdminCopyWith<_AddParticipantsOnlyAdmin> get copyWith =>
      __$AddParticipantsOnlyAdminCopyWithImpl<_AddParticipantsOnlyAdmin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return addParticipantsOnlyAdmin(groupId, setValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return addParticipantsOnlyAdmin?.call(groupId, setValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (addParticipantsOnlyAdmin != null) {
      return addParticipantsOnlyAdmin(groupId, setValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return addParticipantsOnlyAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return addParticipantsOnlyAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (addParticipantsOnlyAdmin != null) {
      return addParticipantsOnlyAdmin(this);
    }
    return orElse();
  }
}

abstract class _AddParticipantsOnlyAdmin implements GroupsEvent {
  const factory _AddParticipantsOnlyAdmin(String groupId, dynamic setValue) =
      _$_AddParticipantsOnlyAdmin;

  String get groupId;
  dynamic get setValue;
  @JsonKey(ignore: true)
  _$AddParticipantsOnlyAdminCopyWith<_AddParticipantsOnlyAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditGroupInfoOnlyAdminCopyWith<$Res> {
  factory _$EditGroupInfoOnlyAdminCopyWith(_EditGroupInfoOnlyAdmin value,
          $Res Function(_EditGroupInfoOnlyAdmin) then) =
      __$EditGroupInfoOnlyAdminCopyWithImpl<$Res>;
  $Res call({String groupId, dynamic setValue});
}

/// @nodoc
class __$EditGroupInfoOnlyAdminCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$EditGroupInfoOnlyAdminCopyWith<$Res> {
  __$EditGroupInfoOnlyAdminCopyWithImpl(_EditGroupInfoOnlyAdmin _value,
      $Res Function(_EditGroupInfoOnlyAdmin) _then)
      : super(_value, (v) => _then(v as _EditGroupInfoOnlyAdmin));

  @override
  _EditGroupInfoOnlyAdmin get _value => super._value as _EditGroupInfoOnlyAdmin;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? setValue = freezed,
  }) {
    return _then(_EditGroupInfoOnlyAdmin(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      setValue == freezed
          ? _value.setValue
          : setValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_EditGroupInfoOnlyAdmin implements _EditGroupInfoOnlyAdmin {
  const _$_EditGroupInfoOnlyAdmin(this.groupId, this.setValue);

  @override
  final String groupId;
  @override
  final dynamic setValue;

  @override
  String toString() {
    return 'GroupsEvent.editGroupInfoOnlyAdmin(groupId: $groupId, setValue: $setValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditGroupInfoOnlyAdmin &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.setValue, setValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(setValue));

  @JsonKey(ignore: true)
  @override
  _$EditGroupInfoOnlyAdminCopyWith<_EditGroupInfoOnlyAdmin> get copyWith =>
      __$EditGroupInfoOnlyAdminCopyWithImpl<_EditGroupInfoOnlyAdmin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return editGroupInfoOnlyAdmin(groupId, setValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return editGroupInfoOnlyAdmin?.call(groupId, setValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (editGroupInfoOnlyAdmin != null) {
      return editGroupInfoOnlyAdmin(groupId, setValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return editGroupInfoOnlyAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return editGroupInfoOnlyAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (editGroupInfoOnlyAdmin != null) {
      return editGroupInfoOnlyAdmin(this);
    }
    return orElse();
  }
}

abstract class _EditGroupInfoOnlyAdmin implements GroupsEvent {
  const factory _EditGroupInfoOnlyAdmin(String groupId, dynamic setValue) =
      _$_EditGroupInfoOnlyAdmin;

  String get groupId;
  dynamic get setValue;
  @JsonKey(ignore: true)
  _$EditGroupInfoOnlyAdminCopyWith<_EditGroupInfoOnlyAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageOnlyAdminCopyWith<$Res> {
  factory _$SendMessageOnlyAdminCopyWith(_SendMessageOnlyAdmin value,
          $Res Function(_SendMessageOnlyAdmin) then) =
      __$SendMessageOnlyAdminCopyWithImpl<$Res>;
  $Res call({String groupId, dynamic setValue});
}

/// @nodoc
class __$SendMessageOnlyAdminCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$SendMessageOnlyAdminCopyWith<$Res> {
  __$SendMessageOnlyAdminCopyWithImpl(
      _SendMessageOnlyAdmin _value, $Res Function(_SendMessageOnlyAdmin) _then)
      : super(_value, (v) => _then(v as _SendMessageOnlyAdmin));

  @override
  _SendMessageOnlyAdmin get _value => super._value as _SendMessageOnlyAdmin;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? setValue = freezed,
  }) {
    return _then(_SendMessageOnlyAdmin(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      setValue == freezed
          ? _value.setValue
          : setValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SendMessageOnlyAdmin implements _SendMessageOnlyAdmin {
  const _$_SendMessageOnlyAdmin(this.groupId, this.setValue);

  @override
  final String groupId;
  @override
  final dynamic setValue;

  @override
  String toString() {
    return 'GroupsEvent.sendMessageOnlyAdmin(groupId: $groupId, setValue: $setValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendMessageOnlyAdmin &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.setValue, setValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(setValue));

  @JsonKey(ignore: true)
  @override
  _$SendMessageOnlyAdminCopyWith<_SendMessageOnlyAdmin> get copyWith =>
      __$SendMessageOnlyAdminCopyWithImpl<_SendMessageOnlyAdmin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return sendMessageOnlyAdmin(groupId, setValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return sendMessageOnlyAdmin?.call(groupId, setValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendMessageOnlyAdmin != null) {
      return sendMessageOnlyAdmin(groupId, setValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return sendMessageOnlyAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return sendMessageOnlyAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (sendMessageOnlyAdmin != null) {
      return sendMessageOnlyAdmin(this);
    }
    return orElse();
  }
}

abstract class _SendMessageOnlyAdmin implements GroupsEvent {
  const factory _SendMessageOnlyAdmin(String groupId, dynamic setValue) =
      _$_SendMessageOnlyAdmin;

  String get groupId;
  dynamic get setValue;
  @JsonKey(ignore: true)
  _$SendMessageOnlyAdminCopyWith<_SendMessageOnlyAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearChatCopyWith<$Res> {
  factory _$ClearChatCopyWith(
          _ClearChat value, $Res Function(_ClearChat) then) =
      __$ClearChatCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$ClearChatCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$ClearChatCopyWith<$Res> {
  __$ClearChatCopyWithImpl(_ClearChat _value, $Res Function(_ClearChat) _then)
      : super(_value, (v) => _then(v as _ClearChat));

  @override
  _ClearChat get _value => super._value as _ClearChat;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_ClearChat(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClearChat implements _ClearChat {
  const _$_ClearChat(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.clearChat(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClearChat &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$ClearChatCopyWith<_ClearChat> get copyWith =>
      __$ClearChatCopyWithImpl<_ClearChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return clearChat(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return clearChat?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (clearChat != null) {
      return clearChat(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return clearChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return clearChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (clearChat != null) {
      return clearChat(this);
    }
    return orElse();
  }
}

abstract class _ClearChat implements GroupsEvent {
  const factory _ClearChat(String groupId) = _$_ClearChat;

  String get groupId;
  @JsonKey(ignore: true)
  _$ClearChatCopyWith<_ClearChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadMessagesCopyWith<$Res> {
  factory $ReadMessagesCopyWith(
          ReadMessages value, $Res Function(ReadMessages) then) =
      _$ReadMessagesCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class _$ReadMessagesCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements $ReadMessagesCopyWith<$Res> {
  _$ReadMessagesCopyWithImpl(
      ReadMessages _value, $Res Function(ReadMessages) _then)
      : super(_value, (v) => _then(v as ReadMessages));

  @override
  ReadMessages get _value => super._value as ReadMessages;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(ReadMessages(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadMessages implements ReadMessages {
  const _$ReadMessages({required this.groupId});

  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.readMessages(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadMessages &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  $ReadMessagesCopyWith<ReadMessages> get copyWith =>
      _$ReadMessagesCopyWithImpl<ReadMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return readMessages(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return readMessages?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (readMessages != null) {
      return readMessages(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return readMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return readMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (readMessages != null) {
      return readMessages(this);
    }
    return orElse();
  }
}

abstract class ReadMessages implements GroupsEvent {
  const factory ReadMessages({required String groupId}) = _$ReadMessages;

  String get groupId;
  @JsonKey(ignore: true)
  $ReadMessagesCopyWith<ReadMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverMessagesListnerCopyWith<$Res> {
  factory $DeliverMessagesListnerCopyWith(DeliverMessagesListner value,
          $Res Function(DeliverMessagesListner) then) =
      _$DeliverMessagesListnerCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class _$DeliverMessagesListnerCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements $DeliverMessagesListnerCopyWith<$Res> {
  _$DeliverMessagesListnerCopyWithImpl(DeliverMessagesListner _value,
      $Res Function(DeliverMessagesListner) _then)
      : super(_value, (v) => _then(v as DeliverMessagesListner));

  @override
  DeliverMessagesListner get _value => super._value as DeliverMessagesListner;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(DeliverMessagesListner(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliverMessagesListner implements DeliverMessagesListner {
  const _$DeliverMessagesListner({required this.groupId});

  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.deliverMessagesListner(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliverMessagesListner &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  $DeliverMessagesListnerCopyWith<DeliverMessagesListner> get copyWith =>
      _$DeliverMessagesListnerCopyWithImpl<DeliverMessagesListner>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String groupId) setGroupName,
    required TResult Function(GroupChatRoomModel groupChatRoomModel) setGroup,
    required TResult Function(String description, String groupId)
        setGroupDescription,
    required TResult Function(List<KahoChatUser> members) setGroupMembers,
    required TResult Function(List<KahoChatUser> members, String groupId)
        addGroupMembers,
    required TResult Function(GroupChatRoomModel group) createGroup,
    required TResult Function(String groupId, GroupChatRoomModel group)
        leaveGroup,
    required TResult Function(
            String groupId, String userId, GroupChatRoomModel group)
        removeMember,
    required TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)
        forwardMessage,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessageEveryone,
    required TResult Function(
            String groupUid, Map<int, MessageSelectModel> message)
        deleteMessage,
    required TResult Function(KahoChatUser myUser, String groupUid,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, String groupUid, String messageId)
        markMessageAsSeen,
    required TResult Function(String message, KahoChatUser myUser,
            String groupUid, String groupName)
        sendGroupNotification,
    required TResult Function(
            String messageID, KahoChatUser myUser, String groupUid)
        setReadUnread,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendImageMessage,
    required TResult Function(String url, KahoChatUser myUser, String groupUid)
        sendGifMessage,
    required TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)
        sendVideoMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioMessage,
    required TResult Function(
            String audioPath, KahoChatUser myUser, String groupUid)
        sendAudioFileMessage,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)
        sendContactMessage,
    required TResult Function(
            KahoChatUser myUser, String groupId, String filePath)
        sendFile,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        makeAdmins,
    required TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)
        removeAdmins,
    required TResult Function(String url) updateProfilePicture,
    required TResult Function(String groupId, String url) setGroupImage,
    required TResult Function(String groupId, dynamic setValue)
        addParticipantsOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        editGroupInfoOnlyAdmin,
    required TResult Function(String groupId, dynamic setValue)
        sendMessageOnlyAdmin,
    required TResult Function(String groupId) clearChat,
    required TResult Function(String groupId) readMessages,
    required TResult Function(String groupId) deliverMessagesListner,
  }) {
    return deliverMessagesListner(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
  }) {
    return deliverMessagesListner?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String groupId)? setGroupName,
    TResult Function(GroupChatRoomModel groupChatRoomModel)? setGroup,
    TResult Function(String description, String groupId)? setGroupDescription,
    TResult Function(List<KahoChatUser> members)? setGroupMembers,
    TResult Function(List<KahoChatUser> members, String groupId)?
        addGroupMembers,
    TResult Function(GroupChatRoomModel group)? createGroup,
    TResult Function(String groupId, GroupChatRoomModel group)? leaveGroup,
    TResult Function(String groupId, String userId, GroupChatRoomModel group)?
        removeMember,
    TResult Function(
            KahoChatUser myUser, String groupUid, MessageModel message)?
        forwardMessage,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessageEveryone,
    TResult Function(String groupUid, Map<int, MessageSelectModel> message)?
        deleteMessage,
    TResult Function(KahoChatUser myUser, String groupUid, MessageModel message,
            String text)?
        replayMessage,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendTextMessage,
    TResult Function(KahoChatUser myUser, String groupUid, String messageId)?
        markMessageAsSeen,
    TResult Function(String message, KahoChatUser myUser, String groupUid,
            String groupName)?
        sendGroupNotification,
    TResult Function(String messageID, KahoChatUser myUser, String groupUid)?
        setReadUnread,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendImageMessage,
    TResult Function(String url, KahoChatUser myUser, String groupUid)?
        sendGifMessage,
    TResult Function(ImageWithCaptionModel imageWithCaption,
            KahoChatUser myUser, String groupUid)?
        sendVideoMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioMessage,
    TResult Function(String audioPath, KahoChatUser myUser, String groupUid)?
        sendAudioFileMessage,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, String groupUid)?
        sendContactMessage,
    TResult Function(KahoChatUser myUser, String groupId, String filePath)?
        sendFile,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        makeAdmins,
    TResult Function(
            String groupId, KahoChatUser user, GroupChatRoomModel group)?
        removeAdmins,
    TResult Function(String url)? updateProfilePicture,
    TResult Function(String groupId, String url)? setGroupImage,
    TResult Function(String groupId, dynamic setValue)?
        addParticipantsOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? editGroupInfoOnlyAdmin,
    TResult Function(String groupId, dynamic setValue)? sendMessageOnlyAdmin,
    TResult Function(String groupId)? clearChat,
    TResult Function(String groupId)? readMessages,
    TResult Function(String groupId)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (deliverMessagesListner != null) {
      return deliverMessagesListner(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGroupName value) setGroupName,
    required TResult Function(_SetGroup value) setGroup,
    required TResult Function(_SetGroupDescription value) setGroupDescription,
    required TResult Function(_SetGroupMembers value) setGroupMembers,
    required TResult Function(_AddGroupMembers value) addGroupMembers,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_LeaveGroup value) leaveGroup,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(DeleteMessage value) deleteMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(_SendGroupNotification value)
        sendGroupNotification,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendGifMessage value) sendGifMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendAudioFileMessage value) sendAudioFileMessage,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(MakeAdmins value) makeAdmins,
    required TResult Function(RemoveAdmins value) removeAdmins,
    required TResult Function(_UpdateGroupPicture value) updateProfilePicture,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_AddParticipantsOnlyAdmin value)
        addParticipantsOnlyAdmin,
    required TResult Function(_EditGroupInfoOnlyAdmin value)
        editGroupInfoOnlyAdmin,
    required TResult Function(_SendMessageOnlyAdmin value) sendMessageOnlyAdmin,
    required TResult Function(_ClearChat value) clearChat,
    required TResult Function(ReadMessages value) readMessages,
    required TResult Function(DeliverMessagesListner value)
        deliverMessagesListner,
  }) {
    return deliverMessagesListner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
  }) {
    return deliverMessagesListner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGroupName value)? setGroupName,
    TResult Function(_SetGroup value)? setGroup,
    TResult Function(_SetGroupDescription value)? setGroupDescription,
    TResult Function(_SetGroupMembers value)? setGroupMembers,
    TResult Function(_AddGroupMembers value)? addGroupMembers,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_LeaveGroup value)? leaveGroup,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(DeleteMessage value)? deleteMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(_SendGroupNotification value)? sendGroupNotification,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendGifMessage value)? sendGifMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendAudioFileMessage value)? sendAudioFileMessage,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(MakeAdmins value)? makeAdmins,
    TResult Function(RemoveAdmins value)? removeAdmins,
    TResult Function(_UpdateGroupPicture value)? updateProfilePicture,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_AddParticipantsOnlyAdmin value)? addParticipantsOnlyAdmin,
    TResult Function(_EditGroupInfoOnlyAdmin value)? editGroupInfoOnlyAdmin,
    TResult Function(_SendMessageOnlyAdmin value)? sendMessageOnlyAdmin,
    TResult Function(_ClearChat value)? clearChat,
    TResult Function(ReadMessages value)? readMessages,
    TResult Function(DeliverMessagesListner value)? deliverMessagesListner,
    required TResult orElse(),
  }) {
    if (deliverMessagesListner != null) {
      return deliverMessagesListner(this);
    }
    return orElse();
  }
}

abstract class DeliverMessagesListner implements GroupsEvent {
  const factory DeliverMessagesListner({required String groupId}) =
      _$DeliverMessagesListner;

  String get groupId;
  @JsonKey(ignore: true)
  $DeliverMessagesListnerCopyWith<DeliverMessagesListner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GroupsStateTearOff {
  const _$GroupsStateTearOff();

  _GroupsState call(
      {required String groupName,
      required String groupDescription,
      required List<KahoChatUser> members,
      required GroupChatRoomModel group,
      required Option<Either<GroupFailure, Unit>>
          createGroupFailureOrSuccessOption,
      required Option<Either<GroupFailure, Unit>>
          sendMessageFailureOrSuccessOption,
      required Option<Either<GroupFailure, Unit>>
          leaveGroupFailureOrSuccessOption,
      required String setGroupPicture}) {
    return _GroupsState(
      groupName: groupName,
      groupDescription: groupDescription,
      members: members,
      group: group,
      createGroupFailureOrSuccessOption: createGroupFailureOrSuccessOption,
      sendMessageFailureOrSuccessOption: sendMessageFailureOrSuccessOption,
      leaveGroupFailureOrSuccessOption: leaveGroupFailureOrSuccessOption,
      setGroupPicture: setGroupPicture,
    );
  }
}

/// @nodoc
const $GroupsState = _$GroupsStateTearOff();

/// @nodoc
mixin _$GroupsState {
  String get groupName => throw _privateConstructorUsedError;
  String get groupDescription => throw _privateConstructorUsedError;
  List<KahoChatUser> get members => throw _privateConstructorUsedError;
  GroupChatRoomModel get group => throw _privateConstructorUsedError;
  Option<Either<GroupFailure, Unit>> get createGroupFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupFailure, Unit>> get sendMessageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupFailure, Unit>> get leaveGroupFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  String get setGroupPicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupsStateCopyWith<GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res>;
  $Res call(
      {String groupName,
      String groupDescription,
      List<KahoChatUser> members,
      GroupChatRoomModel group,
      Option<Either<GroupFailure, Unit>> createGroupFailureOrSuccessOption,
      Option<Either<GroupFailure, Unit>> sendMessageFailureOrSuccessOption,
      Option<Either<GroupFailure, Unit>> leaveGroupFailureOrSuccessOption,
      String setGroupPicture});
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res> implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  final GroupsState _value;
  // ignore: unused_field
  final $Res Function(GroupsState) _then;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? groupDescription = freezed,
    Object? members = freezed,
    Object? group = freezed,
    Object? createGroupFailureOrSuccessOption = freezed,
    Object? sendMessageFailureOrSuccessOption = freezed,
    Object? leaveGroupFailureOrSuccessOption = freezed,
    Object? setGroupPicture = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupDescription: groupDescription == freezed
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
      createGroupFailureOrSuccessOption: createGroupFailureOrSuccessOption ==
              freezed
          ? _value.createGroupFailureOrSuccessOption
          : createGroupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
      sendMessageFailureOrSuccessOption: sendMessageFailureOrSuccessOption ==
              freezed
          ? _value.sendMessageFailureOrSuccessOption
          : sendMessageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
      leaveGroupFailureOrSuccessOption: leaveGroupFailureOrSuccessOption ==
              freezed
          ? _value.leaveGroupFailureOrSuccessOption
          : leaveGroupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
      setGroupPicture: setGroupPicture == freezed
          ? _value.setGroupPicture
          : setGroupPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupsStateCopyWith<$Res>
    implements $GroupsStateCopyWith<$Res> {
  factory _$GroupsStateCopyWith(
          _GroupsState value, $Res Function(_GroupsState) then) =
      __$GroupsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String groupName,
      String groupDescription,
      List<KahoChatUser> members,
      GroupChatRoomModel group,
      Option<Either<GroupFailure, Unit>> createGroupFailureOrSuccessOption,
      Option<Either<GroupFailure, Unit>> sendMessageFailureOrSuccessOption,
      Option<Either<GroupFailure, Unit>> leaveGroupFailureOrSuccessOption,
      String setGroupPicture});
}

/// @nodoc
class __$GroupsStateCopyWithImpl<$Res> extends _$GroupsStateCopyWithImpl<$Res>
    implements _$GroupsStateCopyWith<$Res> {
  __$GroupsStateCopyWithImpl(
      _GroupsState _value, $Res Function(_GroupsState) _then)
      : super(_value, (v) => _then(v as _GroupsState));

  @override
  _GroupsState get _value => super._value as _GroupsState;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? groupDescription = freezed,
    Object? members = freezed,
    Object? group = freezed,
    Object? createGroupFailureOrSuccessOption = freezed,
    Object? sendMessageFailureOrSuccessOption = freezed,
    Object? leaveGroupFailureOrSuccessOption = freezed,
    Object? setGroupPicture = freezed,
  }) {
    return _then(_GroupsState(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupDescription: groupDescription == freezed
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupChatRoomModel,
      createGroupFailureOrSuccessOption: createGroupFailureOrSuccessOption ==
              freezed
          ? _value.createGroupFailureOrSuccessOption
          : createGroupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
      sendMessageFailureOrSuccessOption: sendMessageFailureOrSuccessOption ==
              freezed
          ? _value.sendMessageFailureOrSuccessOption
          : sendMessageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
      leaveGroupFailureOrSuccessOption: leaveGroupFailureOrSuccessOption ==
              freezed
          ? _value.leaveGroupFailureOrSuccessOption
          : leaveGroupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
      setGroupPicture: setGroupPicture == freezed
          ? _value.setGroupPicture
          : setGroupPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GroupsState implements _GroupsState {
  const _$_GroupsState(
      {required this.groupName,
      required this.groupDescription,
      required this.members,
      required this.group,
      required this.createGroupFailureOrSuccessOption,
      required this.sendMessageFailureOrSuccessOption,
      required this.leaveGroupFailureOrSuccessOption,
      required this.setGroupPicture});

  @override
  final String groupName;
  @override
  final String groupDescription;
  @override
  final List<KahoChatUser> members;
  @override
  final GroupChatRoomModel group;
  @override
  final Option<Either<GroupFailure, Unit>> createGroupFailureOrSuccessOption;
  @override
  final Option<Either<GroupFailure, Unit>> sendMessageFailureOrSuccessOption;
  @override
  final Option<Either<GroupFailure, Unit>> leaveGroupFailureOrSuccessOption;
  @override
  final String setGroupPicture;

  @override
  String toString() {
    return 'GroupsState(groupName: $groupName, groupDescription: $groupDescription, members: $members, group: $group, createGroupFailureOrSuccessOption: $createGroupFailureOrSuccessOption, sendMessageFailureOrSuccessOption: $sendMessageFailureOrSuccessOption, leaveGroupFailureOrSuccessOption: $leaveGroupFailureOrSuccessOption, setGroupPicture: $setGroupPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupsState &&
            const DeepCollectionEquality().equals(other.groupName, groupName) &&
            const DeepCollectionEquality()
                .equals(other.groupDescription, groupDescription) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(
                other.createGroupFailureOrSuccessOption,
                createGroupFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.sendMessageFailureOrSuccessOption,
                sendMessageFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.leaveGroupFailureOrSuccessOption,
                leaveGroupFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.setGroupPicture, setGroupPicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupName),
      const DeepCollectionEquality().hash(groupDescription),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(createGroupFailureOrSuccessOption),
      const DeepCollectionEquality().hash(sendMessageFailureOrSuccessOption),
      const DeepCollectionEquality().hash(leaveGroupFailureOrSuccessOption),
      const DeepCollectionEquality().hash(setGroupPicture));

  @JsonKey(ignore: true)
  @override
  _$GroupsStateCopyWith<_GroupsState> get copyWith =>
      __$GroupsStateCopyWithImpl<_GroupsState>(this, _$identity);
}

abstract class _GroupsState implements GroupsState {
  const factory _GroupsState(
      {required String groupName,
      required String groupDescription,
      required List<KahoChatUser> members,
      required GroupChatRoomModel group,
      required Option<Either<GroupFailure, Unit>>
          createGroupFailureOrSuccessOption,
      required Option<Either<GroupFailure, Unit>>
          sendMessageFailureOrSuccessOption,
      required Option<Either<GroupFailure, Unit>>
          leaveGroupFailureOrSuccessOption,
      required String setGroupPicture}) = _$_GroupsState;

  @override
  String get groupName;
  @override
  String get groupDescription;
  @override
  List<KahoChatUser> get members;
  @override
  GroupChatRoomModel get group;
  @override
  Option<Either<GroupFailure, Unit>> get createGroupFailureOrSuccessOption;
  @override
  Option<Either<GroupFailure, Unit>> get sendMessageFailureOrSuccessOption;
  @override
  Option<Either<GroupFailure, Unit>> get leaveGroupFailureOrSuccessOption;
  @override
  String get setGroupPicture;
  @override
  @JsonKey(ignore: true)
  _$GroupsStateCopyWith<_GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}
