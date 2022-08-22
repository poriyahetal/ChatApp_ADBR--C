import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/groups/group_failures.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class IGroupFacade {
  Future<Either<GroupFailure, Unit>> addGroupMembers(
      List<KahoChatUser> members, String groupId);
  Future<Either<GroupFailure, Unit>> createGroup(GroupChatRoomModel group);
  Future<Either<GroupFailure, Unit>> leaveGroup(
    String groupId,
    GroupChatRoomModel oldGroupDetails,
  );
  Future<Either<GroupFailure, Unit>> removeMember(
    String groupId,
    String userId,
    GroupChatRoomModel oldGroupDetails,
  );
  Future<Either<GroupFailure, Unit>> setGroupName(
    String groupId,
    String name,
  );
  Future<Either<GroupFailure, Unit>> setGroupDescription(
    String groupId,
    String description,
  );
  Future<Either<GroupFailure, Unit>> setGroupImage(
    String groupId,
    String url,
  );
  Future<Either<GroupFailure, Unit>> sendTextMessage(
    String groupUid,
    String groupName,
    KahoChatUser sender,
    String message,
  );
  void markMessageAsSeen(
      KahoChatUser myUser,
    String groupUid,
    String messageId,
  );

  Future<Either<GroupFailure, Unit>> sendGroupNotification(
      String groupUid,
      String groupName,
      KahoChatUser sender,
      String message,
      );

  Future<Either<GroupFailure, Unit>> sendImageMessage(
    String groupUid,
    KahoChatUser sender,
    ImageWithCaptionModel imageWithCaption,
  );

  Future<Either<GroupFailure, Unit>> sendGifMessage(
    String groupUid,
    KahoChatUser sender,
    String url,
  );

  Future<Either<GroupFailure, Unit>> sendVideoMessage(
    String groupUid,
    KahoChatUser sender,
    ImageWithCaptionModel imageWithCaption,
  );
  Future<Either<GroupFailure, Unit>> sendContactMessage(
    String groupUid,
    KahoChatUser sender,
    KahoChatUser contact,
  );
  Future<Either<GroupFailure, Unit>> sendFile(
    String groupId,
    KahoChatUser sender,
    String filePath,
  );
  Future<Either<GroupFailure, Unit>> sendAudioFile(
    String groupId,
    KahoChatUser sender,
    String filePath,
  );
  Future<Either<GroupFailure, Unit>> sendAudioMessage(
    String groupId,
    KahoChatUser sender,
    String filePath,
  );
  Future<Either<GroupFailure, Unit>> setReadUnread(
    String groupId,
    KahoChatUser sender,
    String messageID,
  );
  Future<Either<GroupFailure, Unit>> deleteMessageEveryone(
    Map<int, MessageSelectModel> messages,
    String groupUid,
  );
  Future<Either<GroupFailure, Unit>> deleteMessage(
    String groupUid,
    Map<int, MessageSelectModel> messages,
  );
  Future<Either<GroupFailure, Unit>> updateAdmins(
    String groupId,
    List<KahoChatUser> adminUsers,
    List<KahoChatUser> userDetails,
  );
  Future<Either<GroupFailure, Unit>> addParticipantsOnlyAdmin(
    String groupId,
    dynamic value,
  );
  Future<Either<GroupFailure, Unit>> editGroupInfoOnlyAdmin(
    String groupId,
    dynamic value,
  );
  Future<Either<GroupFailure, Unit>> sendMessageOnlyAdmin(
    String groupId,
    dynamic value,
  );
  Future<Either<GroupFailure, Unit>> sendForwardMessage(
    KahoChatUser myUser,
    String groupUid,
    MessageModel message,
  );
  Future<Either<GroupFailure, Unit>> sendReplayMessage(
    KahoChatUser myUser,
    String groupUid,
    MessageModel message,
    String text,
  );
  Future<Either<GroupFailure, Unit>> clearChat(String groupUid);
  Future<Either<GroupFailure, Unit>> readMessages(String groupUid);
  Future<Either<GroupFailure, Unit>> deliverMessagesListner(String groupUid);
}
