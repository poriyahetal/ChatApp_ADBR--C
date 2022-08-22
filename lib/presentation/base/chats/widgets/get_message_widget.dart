// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/accept_decline_invite_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/audio_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/block_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/contact_message_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/deleted_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/file_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/forward_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/gif_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/group_notfication_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/image_message_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/link_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/note_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/replay_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/text_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/text_message_replayed.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/video_message_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/reply_text.dart';

import 'message_widgets/sticker_message.dart';

class GetMessageWidget {
  static Widget getMessageWidget(
// ignore: avoid_positional_boolean_parameters
    bool isSentByMe,
    MessageSelectModel message,
    BorderRadius radious,
    KahoChatUser mmyUser,
    KahoChatUser? peerUser,
    String docId,
    String groupId,
    String chatId,
    bool isLastMessage,
  ) {
    // print("${message.messageModel!.text}-->${message.messageModel!.type}");
    switch (message.messageModel!.type) {
      case MessageType.forwarded:
        {
          return ForwardMessageWidget(
            docRef: docId,
            message: MessageSelectModel(
              messageModel: message.messageModel!.forwared,
              index: 0,
              documentId: docId,
            ),
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.replay:
        {
          return ReplayMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            //isLastMessage: isLastMessage,
          );
        }
      case MessageType.video:
        {
          return VideoMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.contact:
        {
          return ContactMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.audio:
        {
          return AudioMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            isLastMessage: isLastMessage,
            groupId: groupId,
          );
        }
      case MessageType.image:
        {
          return ImageMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.gif:
        {
          return GifMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.sticker:
        {
          return StickerMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.deleted:
        {
          return const SizedBox();
        }
      case MessageType.deletedEveryone:
        {
          return DeletedMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.file:
        {
          return FileMessage(
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            docRef: docId,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.link:
        {
          return LinkMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.note:
        {
          return NoteMessage(
            message.messageModel!.text,
          );
        }
      case MessageType.blocked:
        {
          return BlockUnblockMessageWidget(
            message: message,
          );
        }
      case MessageType.inviteAccepted:
        {
          return AcceptDeclineImviteWidget(
            message: message,
          );
        }
      case MessageType.inviteDecline:
        {
          return AcceptDeclineImviteWidget(
            message: message,
          );
        }
      case MessageType.groupNotification:
        {
          return GroupNotificationWidget(message: message);
        }

      default:
        {
          return TextMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: peerUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isReplayMessage: false,
            isLastMessage: isLastMessage,
          );
        }
    }
  }

  static Widget getMessageWidget2(
    MessageSelectModel message,
    BorderRadius radious,
    KahoChatUser mmyUser,
    KahoChatUser? ppUser,
    String docId,
    String chatId,
    String groupId,
    bool isLastMessage, {
    bool? isForwardedMessage = false,
  }) {
    switch (message.messageModel!.type) {
      case MessageType.deleted:
        {
          return const SizedBox();
        }
      case MessageType.deletedEveryone:
        {
          return DeletedMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.image:
        {
          return ImageMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.gif:
        {
          return GifMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.video:
        {
          return VideoMessageWidget(
            docRef: docId,
            message: MessageSelectModel(
              messageModel: message.messageModel!.forwared,
              documentId: docId,
              index: 0,
            ),
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.contact:
        {
          return ContactMessageWidget(
            docRef: docId,
            message: MessageSelectModel(
              messageModel: message.messageModel!.forwared,
              documentId: docId,
              index: 0,
            ),
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      case MessageType.forwarded:
        {
          if (message.messageModel!.type == MessageType.image) {
            return ImageMessageWidget(
              docRef: docId,
              message: message,
              myUser: mmyUser,
              peerUser: ppUser,
              borderRad: radious,
              groupId: groupId,
              chatID: chatId,
              isLastMessage: isLastMessage,
            );
          } else {
            return TextMessageWidget(
              docRef: docId,
              message: message,
              myUser: mmyUser,
              peerUser: ppUser,
              borderRad: radious,
              groupId: groupId,
              chatID: chatId,
              isReplayMessage: true,
              isLastMessage: isLastMessage,
            );
          }
        }
      case MessageType.file:
        {
          return FileMessage(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
            isForwardedMessage: isForwardedMessage,
          );
        }
      case MessageType.storyText:
        {
          return ReplyText(
              peerUser: ppUser!,
              myUser: mmyUser,
              message: message.messageModel!);
        }
      case MessageType.link:
        {
          return LinkMessageWidget(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isLastMessage: isLastMessage,
          );
        }
      default:
        {
          return TextMessageWidget2(
            docRef: docId,
            message: message,
            myUser: mmyUser,
            peerUser: ppUser,
            borderRad: radious,
            chatID: chatId,
            groupId: groupId,
            isReplayMessage: true,
          );
        }
    }
  }
}
