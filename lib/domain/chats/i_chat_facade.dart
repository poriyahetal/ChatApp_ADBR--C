import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/chats/chat_failures.dart';
import 'package:flutter_template/domain/chats/invite_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class IChatFacade {
  Future<Either<ChatFailure, Unit>> sendTextMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageText,
  );
  Future<Either<ChatFailure, Unit>> sendForwardMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    MessageModel message,
  );
  Future<Either<ChatFailure, Unit>> sendReplayMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    MessageModel message,
    String text,
  );
  Future<Either<ChatFailure, Unit>> sendImageMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ImageWithCaptionModel imageWithCaption,
  );
  void markMessageAsSeen(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageId,
  );
  Future<Either<ChatFailure, Unit>> sendGifMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String url,
  );
  Future<Either<ChatFailure, Unit>> sendStickerMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String url,
  );
  Future<Either<ChatFailure, Unit>> sendVideoMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ImageWithCaptionModel imageWithCaption,
  );
  Future<Either<ChatFailure, Unit>> sendFile(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String filePath,
  );
  Future<Either<ChatFailure, Unit>> removeDesaperingMessages(
    String peerUser,
    String myUser,
    num second,
    Timestamp time,
  );
  Future<Either<ChatFailure, Unit>> sendAudioFile(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String filePath,
  );
  Future<Either<ChatFailure, Unit>> sendContactMessage(
    KahoChatUser peerUser,
    KahoChatUser contact,
    KahoChatUser sender,
  );
  Future<Either<ChatFailure, Unit>> deleteMessage(
    Map<int, MessageSelectModel> messages,
    String myUser,
    String peerUser,
  );
  Future<Either<ChatFailure, Unit>> editMessage(
    MessageSelectModel messages,
    String myUser,
    String peerUser,
    String text,
  );
  Future<Either<ChatFailure, Unit>> deleteMessageEveryone(
    Map<int, MessageSelectModel> messages,
    String myUser,
    String peerUser,
  );
  Future<Either<ChatFailure, Unit>> deleteChat(
    String myUser,
    String peerUser,
  );
  Future<Either<ChatFailure, Unit>> setDesepearingMessage(
    String myUser,
    String peerUser,
    double time,
  );
  Future<Either<ChatFailure, Unit>> setReadUnread(
    String myUser,
    String peerUser,
  );
  Future<Either<ChatFailure, Unit>> sendTextStory(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String storyText,
    String peerStoryText,
    String? imageUrl,
    String? storyVideoUrl,
    String peerStoryImage,
  );
  Future<Either<ChatFailure, Unit>> sendImageStory(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ImageWithCaptionModel imageWithCaption,
    String peerStoryText,
    String peerStoryImage,
  );
  Future<Either<ChatFailure, Unit>> getIsNewPeer(
    KahoChatUser peerUser,
    KahoChatUser myUser,
  );

  Future<Either<ChatFailure, Unit>> sendInvite(
    KahoChatUser peerUser,
    KahoChatUser myUser,
  );

  Future<Either<ChatFailure, Unit>> answerInvite(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String accepted,
    String answered,
  );
  Future<Either<ChatFailure, Unit>> declineInvite(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String accepted,
  );

  Future<Either<ChatFailure, InviteModel>> fetchInviteStatus(
    KahoChatUser peerUser,
    KahoChatUser myUser,
  );

  Future<Either<ChatFailure, Unit>> sendNoteMessage(
    String peerUser,
    KahoChatUser myUser,
    String note,
  );
  Future<Either<ChatFailure, Unit>> sendBlockMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageText,
  );
  Future<Either<ChatFailure, Unit>> inviteMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageText,
    MessageType type,
  );
}
