part of 'groups_bloc.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.setGroupName(String name, String groupId) =
      _SetGroupName;
  const factory GroupsEvent.setGroup(GroupChatRoomModel groupChatRoomModel) =
      _SetGroup;
  const factory GroupsEvent.setGroupDescription(
      String description, String groupId) = _SetGroupDescription;
  const factory GroupsEvent.setGroupMembers(List<KahoChatUser> members) =
      _SetGroupMembers;
  const factory GroupsEvent.addGroupMembers(
      List<KahoChatUser> members, String groupId) = _AddGroupMembers;
  const factory GroupsEvent.createGroup(GroupChatRoomModel group) =
      _CreateGroup;
  const factory GroupsEvent.leaveGroup(
    String groupId,
    GroupChatRoomModel group,
  ) = _LeaveGroup;
  const factory GroupsEvent.removeMember(
    String groupId,
    String userId,
    GroupChatRoomModel group,
  ) = _RemoveMember;
  const factory GroupsEvent.forwardMessage({
    required KahoChatUser myUser,
    required String groupUid,
    required MessageModel message,
  }) = ForwardMessage;
  const factory GroupsEvent.deleteMessageEveryone({
    required String groupUid,
    required Map<int, MessageSelectModel> message,
  }) = DeleteMessageEveryone;
  const factory GroupsEvent.deleteMessage({
    required String groupUid,
    required Map<int, MessageSelectModel> message,
  }) = DeleteMessage;
  const factory GroupsEvent.replayMessage({
    required KahoChatUser myUser,
    required String groupUid,
    required MessageModel message,
    required String text,
  }) = ReplayMessage;
  const factory GroupsEvent.sendTextMessage({
    required String message,
    required KahoChatUser myUser,
    required String groupUid,
    required String groupName,
  }) = _SendTextMessage;
  const factory GroupsEvent.markMessageAsSeen({
    required KahoChatUser myUser,
    required String groupUid,
    required String messageId,
  }) = MarkMessageAsSeen;
  const factory GroupsEvent.sendGroupNotification({
    required String message,
    required KahoChatUser myUser,
    required String groupUid,
    required String groupName,
  }) = _SendGroupNotification;
  const factory GroupsEvent.setReadUnread({
    required String messageID,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SetReadUnread;
  const factory GroupsEvent.sendImageMessage({
    required ImageWithCaptionModel imageWithCaption,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SendImageMessage;
  const factory GroupsEvent.sendGifMessage({
    required String url,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SendGifMessage;
  const factory GroupsEvent.sendVideoMessage({
    required ImageWithCaptionModel imageWithCaption,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SendVideoMessage;
  const factory GroupsEvent.sendAudioMessage({
    required String audioPath,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SendAudioMessage;
  const factory GroupsEvent.sendAudioFileMessage({
    required String audioPath,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SendAudioFileMessage;
  const factory GroupsEvent.sendContactMessage({
    required KahoChatUser contact,
    required KahoChatUser myUser,
    required String groupUid,
  }) = _SendContactMessage;
  const factory GroupsEvent.sendFile({
    required KahoChatUser myUser,
    required String groupId,
    required String filePath,
  }) = SendFile;
  const factory GroupsEvent.makeAdmins({
    required String groupId,
    required KahoChatUser user,
    required GroupChatRoomModel group,
  }) = MakeAdmins;
  const factory GroupsEvent.removeAdmins({
    required String groupId,
    required KahoChatUser user,
    required GroupChatRoomModel group,
  }) = RemoveAdmins;
  const factory GroupsEvent.updateProfilePicture(String url) =
      _UpdateGroupPicture;
  const factory GroupsEvent.setGroupImage(String groupId, String url) =
      _SetGroupImage;
  const factory GroupsEvent.addParticipantsOnlyAdmin(
      String groupId, dynamic setValue) = _AddParticipantsOnlyAdmin;
  const factory GroupsEvent.editGroupInfoOnlyAdmin(
      String groupId, dynamic setValue) = _EditGroupInfoOnlyAdmin;
  const factory GroupsEvent.sendMessageOnlyAdmin(
      String groupId, dynamic setValue) = _SendMessageOnlyAdmin;
  const factory GroupsEvent.clearChat(String groupId) = _ClearChat;

  const factory GroupsEvent.readMessages({
    required String groupId,
  }) = ReadMessages;
  const factory GroupsEvent.deliverMessagesListner({
    required String groupId,
  }) = DeliverMessagesListner;
}
