// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_template/domain/chats/i_chat_facade.dart';
import 'package:flutter_template/domain/chats/invite_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'chats_bloc.freezed.dart';
part 'chats_event.dart';
part 'chats_state.dart';

@injectable
class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc(this._chatFacade) : super(ChatsState.initial());
  final IChatFacade _chatFacade;
  @override
  Stream<ChatsState> mapEventToState(
    ChatsEvent event,
  ) async* {
    yield* event.map(
      sendTextMessage: (e) async* {
        final opt = _chatFacade.sendTextMessage(
          e.peerUser,
          e.myUser,
          e.message,
        );
      },
      sendContactMessage: (e) async* {
        final opt = await _chatFacade.sendContactMessage(
            e.peerUser, e.contact, e.myUser);
      },
      sendImageMessage: (e) async* {
        final opt = _chatFacade.sendImageMessage(
          e.peerUser,
          e.myUser,
          e.imageWithCaption,
        );
      },
      markMessageAsSeen: (e) async* {
        final opt = _chatFacade.markMessageAsSeen(
          e.peerUser,
          e.myUser,
          e.messageId,
        );
      },
      sendGifMessage: (e) async* {
        final opt = _chatFacade.sendGifMessage(
          e.peerUser,
          e.myUser,
          e.url,
        );
      },
      sendStickerMessage: (e) async* {
        final opt = _chatFacade.sendStickerMessage(
          e.peerUser,
          e.myUser,
          e.url,
        );
      },
      sendVideoMessage: (e) async* {
        final opt = _chatFacade.sendVideoMessage(
          e.peerUser,
          e.myUser,
          e.imageWithCaption,
        );
      },
      sendFile: (e) async* {
        final opt = _chatFacade.sendFile(e.peerUser, e.myUser, e.filePath);
      },
      sendAudioFile: (e) async* {
        _chatFacade.sendAudioFile(e.peerUser, e.myUser, e.filePath);
      },
      uploadFile: (e) async* {
        yield state.copyWith(
          isUploading: e.isUploading,
          fileName: e.fileName,
        );
      },
      setUploadFileFalse: (e) async* {
        yield state.copyWith(
          isUploading: e.isUploading,
          fileName: '',
        );
      },
      deleteMessage: (_DeleteMessage value) async* {
        await _chatFacade.deleteMessage(
            value.messages, value.myUser, value.peerUser);
      },
      deleteMessageEveryone: (_DeleteMessageEveryone value) async* {
        await _chatFacade.deleteMessageEveryone(
            value.messages, value.myUser, value.peerUser);
      },
      deleteChat: (_DeleteChat value) async* {
        await _chatFacade.deleteChat(value.myUser, value.peerUser);
      },
      setReadUnread: (_SetReadUnread value) async* {
        await _chatFacade.setReadUnread(value.myUser, value.peerUser);
      },
      sendTextStory: (e) async* {
        final opt = _chatFacade.sendTextStory(
            e.peerUser, e.myUser, e.message, e.peerStoryText,e.imageUrl,e.storyVideoUrl, e.peerStoryImage);
      },
      sendImageStory: (e) async* {
        final opt = _chatFacade.sendImageStory(e.peerUser, e.myUser,
            e.imageWithCaption, e.peerStoryText, e.peerStoryImage);
      },
      forwardMessage: (value) async* {
        await _chatFacade.sendForwardMessage(
            value.peerUser, value.myUser, value.message);
      },
      replayMessage: (value) async* {
        await _chatFacade.sendReplayMessage(
            value.peerUser, value.myUser, value.message, value.text);
      },
      setDesepearingMessage: (value) async* {
        final result = await _chatFacade.setDesepearingMessage(
            value.myUser, value.peerUser, value.time);
      },
      fetchIsNewPeer: (value) async* {
        final result =
            await _chatFacade.getIsNewPeer(value.peerUser, value.myUser);
        yield result.fold(
          (l) {
            print("left");
            return state.copyWith(isNewPeer: true);
          },
          (r) {
            print("right");
            return state.copyWith(isNewPeer: false);
          },
        );
      },
      setIsNewPeer: (value) async* {
        yield state.copyWith(isNewPeer: value.isNew);
      },
      answerInvite: (value) async* {
        final result = await _chatFacade.answerInvite(
            value.peerUser, value.myUser, value.accepted, value.answered);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
              // inviteModel: InviteModel(
              //   answered: true,
              //   receiverUid: value.peerUser.uid,
              //   sender: value.myUser,
              //   accepted: bool.fromEnvironment(value.accepted),
              //   timeOfSending: Timestamp.now(),
              // ),
              ),
        );
      },
      fetchInviteStatus: (value) async* {
        final result =
            await _chatFacade.fetchInviteStatus(value.peerUser, value.myUser);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(inviteModel: r),
        );
      },
      sendInvite: (value) async* {
        final result =
            await _chatFacade.sendInvite(value.peerUser, value.myUser);
      },
      removeDesepearingMessage: (_RemoveDesepearingMessage value) async* {
        final rr = await _chatFacade.removeDesaperingMessages(
            value.peerUser, value.myUser, value.second, value.time);
      },
      sendNoteMessage: (SendNoteMessage e) async* {
        final opt = _chatFacade.sendNoteMessage(
          e.peerUser,
          e.myUser,
          e.note,
        );
      },
      editMessage: (_EditMessage value) async* {
        await _chatFacade.editMessage(
            value.message, value.myUser, value.peerUser, value.text);
      },
      declineInvite: (value) async* {
        final result = await _chatFacade.declineInvite(
            value.peerUser, value.myUser, value.accepted);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
              // inviteModel: InviteModel(
              //   answered: true,
              //   receiverUid: value.peerUser.uid,
              //   sender: value.myUser,
              //   accepted: bool.fromEnvironment(value.accepted),
              //   timeOfSending: Timestamp.now(),
              // ),
              ),
        );
      },
      sendBlockMessage: (e) async* {
        final opt = _chatFacade.sendBlockMessage(
          e.peerUser,
          e.myUser,
          e.message,
        );
      },
      inviteMessage: (e) async* {
        final opt = _chatFacade.inviteMessage(
          e.peerUser,
          e.myUser,
          e.message,
          e.type,
        );
      },
    );
  }
}
