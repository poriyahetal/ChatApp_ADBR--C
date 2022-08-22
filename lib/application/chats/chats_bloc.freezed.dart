// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatsEventTearOff {
  const _$ChatsEventTearOff();

  SendTextMessage sendTextMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message}) {
    return SendTextMessage(
      myUser: myUser,
      peerUser: peerUser,
      message: message,
    );
  }

  _SendBlockMessage sendBlockMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message}) {
    return _SendBlockMessage(
      myUser: myUser,
      peerUser: peerUser,
      message: message,
    );
  }

  _InviteMessage inviteMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message,
      required MessageType type}) {
    return _InviteMessage(
      myUser: myUser,
      peerUser: peerUser,
      message: message,
      type: type,
    );
  }

  MarkMessageAsSeen markMessageAsSeen(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String messageId}) {
    return MarkMessageAsSeen(
      myUser: myUser,
      peerUser: peerUser,
      messageId: messageId,
    );
  }

  ForwardMessage forwardMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required MessageModel message}) {
    return ForwardMessage(
      myUser: myUser,
      peerUser: peerUser,
      message: message,
    );
  }

  ReplayMessage replayMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required MessageModel message,
      required String text}) {
    return ReplayMessage(
      myUser: myUser,
      peerUser: peerUser,
      message: message,
      text: text,
    );
  }

  SendImageMessage sendImageMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption}) {
    return SendImageMessage(
      myUser: myUser,
      peerUser: peerUser,
      imageWithCaption: imageWithCaption,
    );
  }

  SendGifMessage sendGifMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String url}) {
    return SendGifMessage(
      myUser: myUser,
      peerUser: peerUser,
      url: url,
    );
  }

  SendStickerMessage sendStickerMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String url}) {
    return SendStickerMessage(
      myUser: myUser,
      peerUser: peerUser,
      url: url,
    );
  }

  SendVideoMessage sendVideoMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption}) {
    return SendVideoMessage(
      myUser: myUser,
      peerUser: peerUser,
      imageWithCaption: imageWithCaption,
    );
  }

  SendFile sendFile(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String filePath}) {
    return SendFile(
      myUser: myUser,
      peerUser: peerUser,
      filePath: filePath,
    );
  }

  SendAudioFile sendAudioFile(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String filePath}) {
    return SendAudioFile(
      myUser: myUser,
      peerUser: peerUser,
      filePath: filePath,
    );
  }

  UploadFile uploadFile({required String fileName, required bool isUploading}) {
    return UploadFile(
      fileName: fileName,
      isUploading: isUploading,
    );
  }

  SetUploadFileFalse setUploadFileFalse(
      {required bool isUploading, required String fileName}) {
    return SetUploadFileFalse(
      isUploading: isUploading,
      fileName: fileName,
    );
  }

  _SendContactMessage sendContactMessage(
      {required KahoChatUser contact,
      required KahoChatUser myUser,
      required KahoChatUser peerUser}) {
    return _SendContactMessage(
      contact: contact,
      myUser: myUser,
      peerUser: peerUser,
    );
  }

  _DeleteMessage deleteMessage(
      {required Map<int, MessageSelectModel> messages,
      required String myUser,
      required String peerUser}) {
    return _DeleteMessage(
      messages: messages,
      myUser: myUser,
      peerUser: peerUser,
    );
  }

  _DeleteMessageEveryone deleteMessageEveryone(
      {required Map<int, MessageSelectModel> messages,
      required String myUser,
      required String peerUser}) {
    return _DeleteMessageEveryone(
      messages: messages,
      myUser: myUser,
      peerUser: peerUser,
    );
  }

  _DeleteChat deleteChat({required String myUser, required String peerUser}) {
    return _DeleteChat(
      myUser: myUser,
      peerUser: peerUser,
    );
  }

  _SetReadUnread setReadUnread(
      {required String myUser, required String peerUser}) {
    return _SetReadUnread(
      myUser: myUser,
      peerUser: peerUser,
    );
  }

  _SetDesepearingMessage setDesepearingMessage(
      {required String myUser,
      required String peerUser,
      required double time}) {
    return _SetDesepearingMessage(
      myUser: myUser,
      peerUser: peerUser,
      time: time,
    );
  }

  _RemoveDesepearingMessage removeDesepearingMessage(
      {required String myUser,
      required String peerUser,
      required int second,
      required Timestamp time}) {
    return _RemoveDesepearingMessage(
      myUser: myUser,
      peerUser: peerUser,
      second: second,
      time: time,
    );
  }

  _SendTextStory sendTextStory(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message,
      required String peerStoryText,
      String? imageUrl,
      String? storyVideoUrl,
      required String peerStoryImage}) {
    return _SendTextStory(
      myUser: myUser,
      peerUser: peerUser,
      message: message,
      peerStoryText: peerStoryText,
      imageUrl: imageUrl,
      storyVideoUrl: storyVideoUrl,
      peerStoryImage: peerStoryImage,
    );
  }

  _SendImageStory sendImageStory(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption,
      required String peerStoryText,
      required String peerStoryImage}) {
    return _SendImageStory(
      myUser: myUser,
      peerUser: peerUser,
      imageWithCaption: imageWithCaption,
      peerStoryText: peerStoryText,
      peerStoryImage: peerStoryImage,
    );
  }

  _FetchIsNewPeer fetchIsNewPeer(
      {required KahoChatUser myUser, required KahoChatUser peerUser}) {
    return _FetchIsNewPeer(
      myUser: myUser,
      peerUser: peerUser,
    );
  }

  _SetIsNewPeer setIsNewPeer({required bool isNew}) {
    return _SetIsNewPeer(
      isNew: isNew,
    );
  }

  _SendInvite sendInvite(
      {required KahoChatUser peerUser, required KahoChatUser myUser}) {
    return _SendInvite(
      peerUser: peerUser,
      myUser: myUser,
    );
  }

  _AnswerInvite answerInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser,
      required String accepted,
      required String answered}) {
    return _AnswerInvite(
      peerUser: peerUser,
      myUser: myUser,
      accepted: accepted,
      answered: answered,
    );
  }

  _FetchInviteStatus fetchInviteStatus(
      {required KahoChatUser peerUser, required KahoChatUser myUser}) {
    return _FetchInviteStatus(
      peerUser: peerUser,
      myUser: myUser,
    );
  }

  SendNoteMessage sendNoteMessage(
      {required KahoChatUser myUser,
      required String peerUser,
      required String note}) {
    return SendNoteMessage(
      myUser: myUser,
      peerUser: peerUser,
      note: note,
    );
  }

  _DeclineInvite declineInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser,
      required String accepted}) {
    return _DeclineInvite(
      peerUser: peerUser,
      myUser: myUser,
      accepted: accepted,
    );
  }

  _EditMessage editMessage(
      {required MessageSelectModel message,
      required String myUser,
      required String peerUser,
      required String text}) {
    return _EditMessage(
      message: message,
      myUser: myUser,
      peerUser: peerUser,
      text: text,
    );
  }
}

/// @nodoc
const $ChatsEvent = _$ChatsEventTearOff();

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res> implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  final ChatsEvent _value;
  // ignore: unused_field
  final $Res Function(ChatsEvent) _then;
}

/// @nodoc
abstract class $SendTextMessageCopyWith<$Res> {
  factory $SendTextMessageCopyWith(
          SendTextMessage value, $Res Function(SendTextMessage) then) =
      _$SendTextMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String message});
}

/// @nodoc
class _$SendTextMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendTextMessageCopyWith<$Res> {
  _$SendTextMessageCopyWithImpl(
      SendTextMessage _value, $Res Function(SendTextMessage) _then)
      : super(_value, (v) => _then(v as SendTextMessage));

  @override
  SendTextMessage get _value => super._value as SendTextMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? message = freezed,
  }) {
    return _then(SendTextMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendTextMessage implements SendTextMessage {
  const _$SendTextMessage(
      {required this.myUser, required this.peerUser, required this.message});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatsEvent.sendTextMessage(myUser: $myUser, peerUser: $peerUser, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTextMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SendTextMessageCopyWith<SendTextMessage> get copyWith =>
      _$SendTextMessageCopyWithImpl<SendTextMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendTextMessage(myUser, peerUser, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendTextMessage?.call(myUser, peerUser, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(myUser, peerUser, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendTextMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendTextMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(this);
    }
    return orElse();
  }
}

abstract class SendTextMessage implements ChatsEvent {
  const factory SendTextMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message}) = _$SendTextMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get message;
  @JsonKey(ignore: true)
  $SendTextMessageCopyWith<SendTextMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendBlockMessageCopyWith<$Res> {
  factory _$SendBlockMessageCopyWith(
          _SendBlockMessage value, $Res Function(_SendBlockMessage) then) =
      __$SendBlockMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String message});
}

/// @nodoc
class __$SendBlockMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SendBlockMessageCopyWith<$Res> {
  __$SendBlockMessageCopyWithImpl(
      _SendBlockMessage _value, $Res Function(_SendBlockMessage) _then)
      : super(_value, (v) => _then(v as _SendBlockMessage));

  @override
  _SendBlockMessage get _value => super._value as _SendBlockMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? message = freezed,
  }) {
    return _then(_SendBlockMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendBlockMessage implements _SendBlockMessage {
  const _$_SendBlockMessage(
      {required this.myUser, required this.peerUser, required this.message});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatsEvent.sendBlockMessage(myUser: $myUser, peerUser: $peerUser, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendBlockMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$SendBlockMessageCopyWith<_SendBlockMessage> get copyWith =>
      __$SendBlockMessageCopyWithImpl<_SendBlockMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendBlockMessage(myUser, peerUser, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendBlockMessage?.call(myUser, peerUser, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendBlockMessage != null) {
      return sendBlockMessage(myUser, peerUser, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendBlockMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendBlockMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendBlockMessage != null) {
      return sendBlockMessage(this);
    }
    return orElse();
  }
}

abstract class _SendBlockMessage implements ChatsEvent {
  const factory _SendBlockMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message}) = _$_SendBlockMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get message;
  @JsonKey(ignore: true)
  _$SendBlockMessageCopyWith<_SendBlockMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InviteMessageCopyWith<$Res> {
  factory _$InviteMessageCopyWith(
          _InviteMessage value, $Res Function(_InviteMessage) then) =
      __$InviteMessageCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      KahoChatUser peerUser,
      String message,
      MessageType type});
}

/// @nodoc
class __$InviteMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$InviteMessageCopyWith<$Res> {
  __$InviteMessageCopyWithImpl(
      _InviteMessage _value, $Res Function(_InviteMessage) _then)
      : super(_value, (v) => _then(v as _InviteMessage));

  @override
  _InviteMessage get _value => super._value as _InviteMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? message = freezed,
    Object? type = freezed,
  }) {
    return _then(_InviteMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
    ));
  }
}

/// @nodoc

class _$_InviteMessage implements _InviteMessage {
  const _$_InviteMessage(
      {required this.myUser,
      required this.peerUser,
      required this.message,
      required this.type});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String message;
  @override
  final MessageType type;

  @override
  String toString() {
    return 'ChatsEvent.inviteMessage(myUser: $myUser, peerUser: $peerUser, message: $message, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InviteMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$InviteMessageCopyWith<_InviteMessage> get copyWith =>
      __$InviteMessageCopyWithImpl<_InviteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return inviteMessage(myUser, peerUser, message, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return inviteMessage?.call(myUser, peerUser, message, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (inviteMessage != null) {
      return inviteMessage(myUser, peerUser, message, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return inviteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return inviteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (inviteMessage != null) {
      return inviteMessage(this);
    }
    return orElse();
  }
}

abstract class _InviteMessage implements ChatsEvent {
  const factory _InviteMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message,
      required MessageType type}) = _$_InviteMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get message;
  MessageType get type;
  @JsonKey(ignore: true)
  _$InviteMessageCopyWith<_InviteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkMessageAsSeenCopyWith<$Res> {
  factory $MarkMessageAsSeenCopyWith(
          MarkMessageAsSeen value, $Res Function(MarkMessageAsSeen) then) =
      _$MarkMessageAsSeenCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String messageId});
}

/// @nodoc
class _$MarkMessageAsSeenCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements $MarkMessageAsSeenCopyWith<$Res> {
  _$MarkMessageAsSeenCopyWithImpl(
      MarkMessageAsSeen _value, $Res Function(MarkMessageAsSeen) _then)
      : super(_value, (v) => _then(v as MarkMessageAsSeen));

  @override
  MarkMessageAsSeen get _value => super._value as MarkMessageAsSeen;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? messageId = freezed,
  }) {
    return _then(MarkMessageAsSeen(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
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
      {required this.myUser, required this.peerUser, required this.messageId});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatsEvent.markMessageAsSeen(myUser: $myUser, peerUser: $peerUser, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkMessageAsSeen &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(messageId));

  @JsonKey(ignore: true)
  @override
  $MarkMessageAsSeenCopyWith<MarkMessageAsSeen> get copyWith =>
      _$MarkMessageAsSeenCopyWithImpl<MarkMessageAsSeen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return markMessageAsSeen(myUser, peerUser, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return markMessageAsSeen?.call(myUser, peerUser, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(myUser, peerUser, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return markMessageAsSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return markMessageAsSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (markMessageAsSeen != null) {
      return markMessageAsSeen(this);
    }
    return orElse();
  }
}

abstract class MarkMessageAsSeen implements ChatsEvent {
  const factory MarkMessageAsSeen(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String messageId}) = _$MarkMessageAsSeen;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get messageId;
  @JsonKey(ignore: true)
  $MarkMessageAsSeenCopyWith<MarkMessageAsSeen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardMessageCopyWith<$Res> {
  factory $ForwardMessageCopyWith(
          ForwardMessage value, $Res Function(ForwardMessage) then) =
      _$ForwardMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, MessageModel message});
}

/// @nodoc
class _$ForwardMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $ForwardMessageCopyWith<$Res> {
  _$ForwardMessageCopyWithImpl(
      ForwardMessage _value, $Res Function(ForwardMessage) _then)
      : super(_value, (v) => _then(v as ForwardMessage));

  @override
  ForwardMessage get _value => super._value as ForwardMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? message = freezed,
  }) {
    return _then(ForwardMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
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
      {required this.myUser, required this.peerUser, required this.message});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final MessageModel message;

  @override
  String toString() {
    return 'ChatsEvent.forwardMessage(myUser: $myUser, peerUser: $peerUser, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForwardMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ForwardMessageCopyWith<ForwardMessage> get copyWith =>
      _$ForwardMessageCopyWithImpl<ForwardMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return forwardMessage(myUser, peerUser, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return forwardMessage?.call(myUser, peerUser, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(myUser, peerUser, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return forwardMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return forwardMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(this);
    }
    return orElse();
  }
}

abstract class ForwardMessage implements ChatsEvent {
  const factory ForwardMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required MessageModel message}) = _$ForwardMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  MessageModel get message;
  @JsonKey(ignore: true)
  $ForwardMessageCopyWith<ForwardMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplayMessageCopyWith<$Res> {
  factory $ReplayMessageCopyWith(
          ReplayMessage value, $Res Function(ReplayMessage) then) =
      _$ReplayMessageCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      KahoChatUser peerUser,
      MessageModel message,
      String text});
}

/// @nodoc
class _$ReplayMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $ReplayMessageCopyWith<$Res> {
  _$ReplayMessageCopyWithImpl(
      ReplayMessage _value, $Res Function(ReplayMessage) _then)
      : super(_value, (v) => _then(v as ReplayMessage));

  @override
  ReplayMessage get _value => super._value as ReplayMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? message = freezed,
    Object? text = freezed,
  }) {
    return _then(ReplayMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
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
      required this.peerUser,
      required this.message,
      required this.text});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final MessageModel message;
  @override
  final String text;

  @override
  String toString() {
    return 'ChatsEvent.replayMessage(myUser: $myUser, peerUser: $peerUser, message: $message, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReplayMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $ReplayMessageCopyWith<ReplayMessage> get copyWith =>
      _$ReplayMessageCopyWithImpl<ReplayMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return replayMessage(myUser, peerUser, message, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return replayMessage?.call(myUser, peerUser, message, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (replayMessage != null) {
      return replayMessage(myUser, peerUser, message, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return replayMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return replayMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (replayMessage != null) {
      return replayMessage(this);
    }
    return orElse();
  }
}

abstract class ReplayMessage implements ChatsEvent {
  const factory ReplayMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required MessageModel message,
      required String text}) = _$ReplayMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  MessageModel get message;
  String get text;
  @JsonKey(ignore: true)
  $ReplayMessageCopyWith<ReplayMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendImageMessageCopyWith<$Res> {
  factory $SendImageMessageCopyWith(
          SendImageMessage value, $Res Function(SendImageMessage) then) =
      _$SendImageMessageCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      KahoChatUser peerUser,
      ImageWithCaptionModel imageWithCaption});
}

/// @nodoc
class _$SendImageMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendImageMessageCopyWith<$Res> {
  _$SendImageMessageCopyWithImpl(
      SendImageMessage _value, $Res Function(SendImageMessage) _then)
      : super(_value, (v) => _then(v as SendImageMessage));

  @override
  SendImageMessage get _value => super._value as SendImageMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? imageWithCaption = freezed,
  }) {
    return _then(SendImageMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
    ));
  }
}

/// @nodoc

class _$SendImageMessage implements SendImageMessage {
  const _$SendImageMessage(
      {required this.myUser,
      required this.peerUser,
      required this.imageWithCaption});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final ImageWithCaptionModel imageWithCaption;

  @override
  String toString() {
    return 'ChatsEvent.sendImageMessage(myUser: $myUser, peerUser: $peerUser, imageWithCaption: $imageWithCaption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendImageMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(imageWithCaption));

  @JsonKey(ignore: true)
  @override
  $SendImageMessageCopyWith<SendImageMessage> get copyWith =>
      _$SendImageMessageCopyWithImpl<SendImageMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendImageMessage(myUser, peerUser, imageWithCaption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendImageMessage?.call(myUser, peerUser, imageWithCaption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(myUser, peerUser, imageWithCaption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class SendImageMessage implements ChatsEvent {
  const factory SendImageMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption}) = _$SendImageMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  ImageWithCaptionModel get imageWithCaption;
  @JsonKey(ignore: true)
  $SendImageMessageCopyWith<SendImageMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendGifMessageCopyWith<$Res> {
  factory $SendGifMessageCopyWith(
          SendGifMessage value, $Res Function(SendGifMessage) then) =
      _$SendGifMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String url});
}

/// @nodoc
class _$SendGifMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendGifMessageCopyWith<$Res> {
  _$SendGifMessageCopyWithImpl(
      SendGifMessage _value, $Res Function(SendGifMessage) _then)
      : super(_value, (v) => _then(v as SendGifMessage));

  @override
  SendGifMessage get _value => super._value as SendGifMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? url = freezed,
  }) {
    return _then(SendGifMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendGifMessage implements SendGifMessage {
  const _$SendGifMessage(
      {required this.myUser, required this.peerUser, required this.url});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String url;

  @override
  String toString() {
    return 'ChatsEvent.sendGifMessage(myUser: $myUser, peerUser: $peerUser, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendGifMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $SendGifMessageCopyWith<SendGifMessage> get copyWith =>
      _$SendGifMessageCopyWithImpl<SendGifMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendGifMessage(myUser, peerUser, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendGifMessage?.call(myUser, peerUser, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendGifMessage != null) {
      return sendGifMessage(myUser, peerUser, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendGifMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendGifMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendGifMessage != null) {
      return sendGifMessage(this);
    }
    return orElse();
  }
}

abstract class SendGifMessage implements ChatsEvent {
  const factory SendGifMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String url}) = _$SendGifMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get url;
  @JsonKey(ignore: true)
  $SendGifMessageCopyWith<SendGifMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendStickerMessageCopyWith<$Res> {
  factory $SendStickerMessageCopyWith(
          SendStickerMessage value, $Res Function(SendStickerMessage) then) =
      _$SendStickerMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String url});
}

/// @nodoc
class _$SendStickerMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendStickerMessageCopyWith<$Res> {
  _$SendStickerMessageCopyWithImpl(
      SendStickerMessage _value, $Res Function(SendStickerMessage) _then)
      : super(_value, (v) => _then(v as SendStickerMessage));

  @override
  SendStickerMessage get _value => super._value as SendStickerMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? url = freezed,
  }) {
    return _then(SendStickerMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendStickerMessage implements SendStickerMessage {
  const _$SendStickerMessage(
      {required this.myUser, required this.peerUser, required this.url});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String url;

  @override
  String toString() {
    return 'ChatsEvent.sendStickerMessage(myUser: $myUser, peerUser: $peerUser, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendStickerMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $SendStickerMessageCopyWith<SendStickerMessage> get copyWith =>
      _$SendStickerMessageCopyWithImpl<SendStickerMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendStickerMessage(myUser, peerUser, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendStickerMessage?.call(myUser, peerUser, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendStickerMessage != null) {
      return sendStickerMessage(myUser, peerUser, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendStickerMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendStickerMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendStickerMessage != null) {
      return sendStickerMessage(this);
    }
    return orElse();
  }
}

abstract class SendStickerMessage implements ChatsEvent {
  const factory SendStickerMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String url}) = _$SendStickerMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get url;
  @JsonKey(ignore: true)
  $SendStickerMessageCopyWith<SendStickerMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendVideoMessageCopyWith<$Res> {
  factory $SendVideoMessageCopyWith(
          SendVideoMessage value, $Res Function(SendVideoMessage) then) =
      _$SendVideoMessageCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      KahoChatUser peerUser,
      ImageWithCaptionModel imageWithCaption});
}

/// @nodoc
class _$SendVideoMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendVideoMessageCopyWith<$Res> {
  _$SendVideoMessageCopyWithImpl(
      SendVideoMessage _value, $Res Function(SendVideoMessage) _then)
      : super(_value, (v) => _then(v as SendVideoMessage));

  @override
  SendVideoMessage get _value => super._value as SendVideoMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? imageWithCaption = freezed,
  }) {
    return _then(SendVideoMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
    ));
  }
}

/// @nodoc

class _$SendVideoMessage implements SendVideoMessage {
  const _$SendVideoMessage(
      {required this.myUser,
      required this.peerUser,
      required this.imageWithCaption});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final ImageWithCaptionModel imageWithCaption;

  @override
  String toString() {
    return 'ChatsEvent.sendVideoMessage(myUser: $myUser, peerUser: $peerUser, imageWithCaption: $imageWithCaption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendVideoMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(imageWithCaption));

  @JsonKey(ignore: true)
  @override
  $SendVideoMessageCopyWith<SendVideoMessage> get copyWith =>
      _$SendVideoMessageCopyWithImpl<SendVideoMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendVideoMessage(myUser, peerUser, imageWithCaption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendVideoMessage?.call(myUser, peerUser, imageWithCaption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendVideoMessage != null) {
      return sendVideoMessage(myUser, peerUser, imageWithCaption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendVideoMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendVideoMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendVideoMessage != null) {
      return sendVideoMessage(this);
    }
    return orElse();
  }
}

abstract class SendVideoMessage implements ChatsEvent {
  const factory SendVideoMessage(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption}) = _$SendVideoMessage;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  ImageWithCaptionModel get imageWithCaption;
  @JsonKey(ignore: true)
  $SendVideoMessageCopyWith<SendVideoMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendFileCopyWith<$Res> {
  factory $SendFileCopyWith(SendFile value, $Res Function(SendFile) then) =
      _$SendFileCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String filePath});
}

/// @nodoc
class _$SendFileCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendFileCopyWith<$Res> {
  _$SendFileCopyWithImpl(SendFile _value, $Res Function(SendFile) _then)
      : super(_value, (v) => _then(v as SendFile));

  @override
  SendFile get _value => super._value as SendFile;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? filePath = freezed,
  }) {
    return _then(SendFile(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
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
      {required this.myUser, required this.peerUser, required this.filePath});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String filePath;

  @override
  String toString() {
    return 'ChatsEvent.sendFile(myUser: $myUser, peerUser: $peerUser, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendFile &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  $SendFileCopyWith<SendFile> get copyWith =>
      _$SendFileCopyWithImpl<SendFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendFile(myUser, peerUser, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendFile?.call(myUser, peerUser, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendFile != null) {
      return sendFile(myUser, peerUser, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendFile != null) {
      return sendFile(this);
    }
    return orElse();
  }
}

abstract class SendFile implements ChatsEvent {
  const factory SendFile(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String filePath}) = _$SendFile;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get filePath;
  @JsonKey(ignore: true)
  $SendFileCopyWith<SendFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAudioFileCopyWith<$Res> {
  factory $SendAudioFileCopyWith(
          SendAudioFile value, $Res Function(SendAudioFile) then) =
      _$SendAudioFileCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser, String filePath});
}

/// @nodoc
class _$SendAudioFileCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendAudioFileCopyWith<$Res> {
  _$SendAudioFileCopyWithImpl(
      SendAudioFile _value, $Res Function(SendAudioFile) _then)
      : super(_value, (v) => _then(v as SendAudioFile));

  @override
  SendAudioFile get _value => super._value as SendAudioFile;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? filePath = freezed,
  }) {
    return _then(SendAudioFile(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendAudioFile implements SendAudioFile {
  const _$SendAudioFile(
      {required this.myUser, required this.peerUser, required this.filePath});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String filePath;

  @override
  String toString() {
    return 'ChatsEvent.sendAudioFile(myUser: $myUser, peerUser: $peerUser, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendAudioFile &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  $SendAudioFileCopyWith<SendAudioFile> get copyWith =>
      _$SendAudioFileCopyWithImpl<SendAudioFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendAudioFile(myUser, peerUser, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendAudioFile?.call(myUser, peerUser, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendAudioFile != null) {
      return sendAudioFile(myUser, peerUser, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendAudioFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendAudioFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendAudioFile != null) {
      return sendAudioFile(this);
    }
    return orElse();
  }
}

abstract class SendAudioFile implements ChatsEvent {
  const factory SendAudioFile(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String filePath}) = _$SendAudioFile;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get filePath;
  @JsonKey(ignore: true)
  $SendAudioFileCopyWith<SendAudioFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileCopyWith<$Res> {
  factory $UploadFileCopyWith(
          UploadFile value, $Res Function(UploadFile) then) =
      _$UploadFileCopyWithImpl<$Res>;
  $Res call({String fileName, bool isUploading});
}

/// @nodoc
class _$UploadFileCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $UploadFileCopyWith<$Res> {
  _$UploadFileCopyWithImpl(UploadFile _value, $Res Function(UploadFile) _then)
      : super(_value, (v) => _then(v as UploadFile));

  @override
  UploadFile get _value => super._value as UploadFile;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? isUploading = freezed,
  }) {
    return _then(UploadFile(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isUploading: isUploading == freezed
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UploadFile implements UploadFile {
  const _$UploadFile({required this.fileName, required this.isUploading});

  @override
  final String fileName;
  @override
  final bool isUploading;

  @override
  String toString() {
    return 'ChatsEvent.uploadFile(fileName: $fileName, isUploading: $isUploading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadFile &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality()
                .equals(other.isUploading, isUploading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(isUploading));

  @JsonKey(ignore: true)
  @override
  $UploadFileCopyWith<UploadFile> get copyWith =>
      _$UploadFileCopyWithImpl<UploadFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return uploadFile(fileName, isUploading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return uploadFile?.call(fileName, isUploading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(fileName, isUploading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return uploadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return uploadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(this);
    }
    return orElse();
  }
}

abstract class UploadFile implements ChatsEvent {
  const factory UploadFile(
      {required String fileName, required bool isUploading}) = _$UploadFile;

  String get fileName;
  bool get isUploading;
  @JsonKey(ignore: true)
  $UploadFileCopyWith<UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetUploadFileFalseCopyWith<$Res> {
  factory $SetUploadFileFalseCopyWith(
          SetUploadFileFalse value, $Res Function(SetUploadFileFalse) then) =
      _$SetUploadFileFalseCopyWithImpl<$Res>;
  $Res call({bool isUploading, String fileName});
}

/// @nodoc
class _$SetUploadFileFalseCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements $SetUploadFileFalseCopyWith<$Res> {
  _$SetUploadFileFalseCopyWithImpl(
      SetUploadFileFalse _value, $Res Function(SetUploadFileFalse) _then)
      : super(_value, (v) => _then(v as SetUploadFileFalse));

  @override
  SetUploadFileFalse get _value => super._value as SetUploadFileFalse;

  @override
  $Res call({
    Object? isUploading = freezed,
    Object? fileName = freezed,
  }) {
    return _then(SetUploadFileFalse(
      isUploading: isUploading == freezed
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetUploadFileFalse implements SetUploadFileFalse {
  const _$SetUploadFileFalse(
      {required this.isUploading, required this.fileName});

  @override
  final bool isUploading;
  @override
  final String fileName;

  @override
  String toString() {
    return 'ChatsEvent.setUploadFileFalse(isUploading: $isUploading, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetUploadFileFalse &&
            const DeepCollectionEquality()
                .equals(other.isUploading, isUploading) &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUploading),
      const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  $SetUploadFileFalseCopyWith<SetUploadFileFalse> get copyWith =>
      _$SetUploadFileFalseCopyWithImpl<SetUploadFileFalse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return setUploadFileFalse(isUploading, fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return setUploadFileFalse?.call(isUploading, fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (setUploadFileFalse != null) {
      return setUploadFileFalse(isUploading, fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return setUploadFileFalse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return setUploadFileFalse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (setUploadFileFalse != null) {
      return setUploadFileFalse(this);
    }
    return orElse();
  }
}

abstract class SetUploadFileFalse implements ChatsEvent {
  const factory SetUploadFileFalse(
      {required bool isUploading,
      required String fileName}) = _$SetUploadFileFalse;

  bool get isUploading;
  String get fileName;
  @JsonKey(ignore: true)
  $SetUploadFileFalseCopyWith<SetUploadFileFalse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendContactMessageCopyWith<$Res> {
  factory _$SendContactMessageCopyWith(
          _SendContactMessage value, $Res Function(_SendContactMessage) then) =
      __$SendContactMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser});
}

/// @nodoc
class __$SendContactMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
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
    Object? peerUser = freezed,
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
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_SendContactMessage implements _SendContactMessage {
  const _$_SendContactMessage(
      {required this.contact, required this.myUser, required this.peerUser});

  @override
  final KahoChatUser contact;
  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;

  @override
  String toString() {
    return 'ChatsEvent.sendContactMessage(contact: $contact, myUser: $myUser, peerUser: $peerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendContactMessage &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser));

  @JsonKey(ignore: true)
  @override
  _$SendContactMessageCopyWith<_SendContactMessage> get copyWith =>
      __$SendContactMessageCopyWithImpl<_SendContactMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendContactMessage(contact, myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendContactMessage?.call(contact, myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendContactMessage != null) {
      return sendContactMessage(contact, myUser, peerUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendContactMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendContactMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendContactMessage != null) {
      return sendContactMessage(this);
    }
    return orElse();
  }
}

abstract class _SendContactMessage implements ChatsEvent {
  const factory _SendContactMessage(
      {required KahoChatUser contact,
      required KahoChatUser myUser,
      required KahoChatUser peerUser}) = _$_SendContactMessage;

  KahoChatUser get contact;
  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  @JsonKey(ignore: true)
  _$SendContactMessageCopyWith<_SendContactMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteMessageCopyWith<$Res> {
  factory _$DeleteMessageCopyWith(
          _DeleteMessage value, $Res Function(_DeleteMessage) then) =
      __$DeleteMessageCopyWithImpl<$Res>;
  $Res call(
      {Map<int, MessageSelectModel> messages, String myUser, String peerUser});
}

/// @nodoc
class __$DeleteMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$DeleteMessageCopyWith<$Res> {
  __$DeleteMessageCopyWithImpl(
      _DeleteMessage _value, $Res Function(_DeleteMessage) _then)
      : super(_value, (v) => _then(v as _DeleteMessage));

  @override
  _DeleteMessage get _value => super._value as _DeleteMessage;

  @override
  $Res call({
    Object? messages = freezed,
    Object? myUser = freezed,
    Object? peerUser = freezed,
  }) {
    return _then(_DeleteMessage(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteMessage implements _DeleteMessage {
  const _$_DeleteMessage(
      {required this.messages, required this.myUser, required this.peerUser});

  @override
  final Map<int, MessageSelectModel> messages;
  @override
  final String myUser;
  @override
  final String peerUser;

  @override
  String toString() {
    return 'ChatsEvent.deleteMessage(messages: $messages, myUser: $myUser, peerUser: $peerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteMessage &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser));

  @JsonKey(ignore: true)
  @override
  _$DeleteMessageCopyWith<_DeleteMessage> get copyWith =>
      __$DeleteMessageCopyWithImpl<_DeleteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return deleteMessage(messages, myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return deleteMessage?.call(messages, myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messages, myUser, peerUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatsEvent {
  const factory _DeleteMessage(
      {required Map<int, MessageSelectModel> messages,
      required String myUser,
      required String peerUser}) = _$_DeleteMessage;

  Map<int, MessageSelectModel> get messages;
  String get myUser;
  String get peerUser;
  @JsonKey(ignore: true)
  _$DeleteMessageCopyWith<_DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteMessageEveryoneCopyWith<$Res> {
  factory _$DeleteMessageEveryoneCopyWith(_DeleteMessageEveryone value,
          $Res Function(_DeleteMessageEveryone) then) =
      __$DeleteMessageEveryoneCopyWithImpl<$Res>;
  $Res call(
      {Map<int, MessageSelectModel> messages, String myUser, String peerUser});
}

/// @nodoc
class __$DeleteMessageEveryoneCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements _$DeleteMessageEveryoneCopyWith<$Res> {
  __$DeleteMessageEveryoneCopyWithImpl(_DeleteMessageEveryone _value,
      $Res Function(_DeleteMessageEveryone) _then)
      : super(_value, (v) => _then(v as _DeleteMessageEveryone));

  @override
  _DeleteMessageEveryone get _value => super._value as _DeleteMessageEveryone;

  @override
  $Res call({
    Object? messages = freezed,
    Object? myUser = freezed,
    Object? peerUser = freezed,
  }) {
    return _then(_DeleteMessageEveryone(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteMessageEveryone implements _DeleteMessageEveryone {
  const _$_DeleteMessageEveryone(
      {required this.messages, required this.myUser, required this.peerUser});

  @override
  final Map<int, MessageSelectModel> messages;
  @override
  final String myUser;
  @override
  final String peerUser;

  @override
  String toString() {
    return 'ChatsEvent.deleteMessageEveryone(messages: $messages, myUser: $myUser, peerUser: $peerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteMessageEveryone &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser));

  @JsonKey(ignore: true)
  @override
  _$DeleteMessageEveryoneCopyWith<_DeleteMessageEveryone> get copyWith =>
      __$DeleteMessageEveryoneCopyWithImpl<_DeleteMessageEveryone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return deleteMessageEveryone(messages, myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return deleteMessageEveryone?.call(messages, myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (deleteMessageEveryone != null) {
      return deleteMessageEveryone(messages, myUser, peerUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return deleteMessageEveryone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return deleteMessageEveryone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (deleteMessageEveryone != null) {
      return deleteMessageEveryone(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessageEveryone implements ChatsEvent {
  const factory _DeleteMessageEveryone(
      {required Map<int, MessageSelectModel> messages,
      required String myUser,
      required String peerUser}) = _$_DeleteMessageEveryone;

  Map<int, MessageSelectModel> get messages;
  String get myUser;
  String get peerUser;
  @JsonKey(ignore: true)
  _$DeleteMessageEveryoneCopyWith<_DeleteMessageEveryone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteChatCopyWith<$Res> {
  factory _$DeleteChatCopyWith(
          _DeleteChat value, $Res Function(_DeleteChat) then) =
      __$DeleteChatCopyWithImpl<$Res>;
  $Res call({String myUser, String peerUser});
}

/// @nodoc
class __$DeleteChatCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$DeleteChatCopyWith<$Res> {
  __$DeleteChatCopyWithImpl(
      _DeleteChat _value, $Res Function(_DeleteChat) _then)
      : super(_value, (v) => _then(v as _DeleteChat));

  @override
  _DeleteChat get _value => super._value as _DeleteChat;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
  }) {
    return _then(_DeleteChat(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteChat implements _DeleteChat {
  const _$_DeleteChat({required this.myUser, required this.peerUser});

  @override
  final String myUser;
  @override
  final String peerUser;

  @override
  String toString() {
    return 'ChatsEvent.deleteChat(myUser: $myUser, peerUser: $peerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteChat &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser));

  @JsonKey(ignore: true)
  @override
  _$DeleteChatCopyWith<_DeleteChat> get copyWith =>
      __$DeleteChatCopyWithImpl<_DeleteChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return deleteChat(myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return deleteChat?.call(myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(myUser, peerUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return deleteChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return deleteChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(this);
    }
    return orElse();
  }
}

abstract class _DeleteChat implements ChatsEvent {
  const factory _DeleteChat(
      {required String myUser, required String peerUser}) = _$_DeleteChat;

  String get myUser;
  String get peerUser;
  @JsonKey(ignore: true)
  _$DeleteChatCopyWith<_DeleteChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetReadUnreadCopyWith<$Res> {
  factory _$SetReadUnreadCopyWith(
          _SetReadUnread value, $Res Function(_SetReadUnread) then) =
      __$SetReadUnreadCopyWithImpl<$Res>;
  $Res call({String myUser, String peerUser});
}

/// @nodoc
class __$SetReadUnreadCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SetReadUnreadCopyWith<$Res> {
  __$SetReadUnreadCopyWithImpl(
      _SetReadUnread _value, $Res Function(_SetReadUnread) _then)
      : super(_value, (v) => _then(v as _SetReadUnread));

  @override
  _SetReadUnread get _value => super._value as _SetReadUnread;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
  }) {
    return _then(_SetReadUnread(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetReadUnread implements _SetReadUnread {
  const _$_SetReadUnread({required this.myUser, required this.peerUser});

  @override
  final String myUser;
  @override
  final String peerUser;

  @override
  String toString() {
    return 'ChatsEvent.setReadUnread(myUser: $myUser, peerUser: $peerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetReadUnread &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser));

  @JsonKey(ignore: true)
  @override
  _$SetReadUnreadCopyWith<_SetReadUnread> get copyWith =>
      __$SetReadUnreadCopyWithImpl<_SetReadUnread>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return setReadUnread(myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return setReadUnread?.call(myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (setReadUnread != null) {
      return setReadUnread(myUser, peerUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return setReadUnread(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return setReadUnread?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (setReadUnread != null) {
      return setReadUnread(this);
    }
    return orElse();
  }
}

abstract class _SetReadUnread implements ChatsEvent {
  const factory _SetReadUnread(
      {required String myUser, required String peerUser}) = _$_SetReadUnread;

  String get myUser;
  String get peerUser;
  @JsonKey(ignore: true)
  _$SetReadUnreadCopyWith<_SetReadUnread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetDesepearingMessageCopyWith<$Res> {
  factory _$SetDesepearingMessageCopyWith(_SetDesepearingMessage value,
          $Res Function(_SetDesepearingMessage) then) =
      __$SetDesepearingMessageCopyWithImpl<$Res>;
  $Res call({String myUser, String peerUser, double time});
}

/// @nodoc
class __$SetDesepearingMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SetDesepearingMessageCopyWith<$Res> {
  __$SetDesepearingMessageCopyWithImpl(_SetDesepearingMessage _value,
      $Res Function(_SetDesepearingMessage) _then)
      : super(_value, (v) => _then(v as _SetDesepearingMessage));

  @override
  _SetDesepearingMessage get _value => super._value as _SetDesepearingMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? time = freezed,
  }) {
    return _then(_SetDesepearingMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetDesepearingMessage implements _SetDesepearingMessage {
  const _$_SetDesepearingMessage(
      {required this.myUser, required this.peerUser, required this.time});

  @override
  final String myUser;
  @override
  final String peerUser;
  @override
  final double time;

  @override
  String toString() {
    return 'ChatsEvent.setDesepearingMessage(myUser: $myUser, peerUser: $peerUser, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetDesepearingMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$SetDesepearingMessageCopyWith<_SetDesepearingMessage> get copyWith =>
      __$SetDesepearingMessageCopyWithImpl<_SetDesepearingMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return setDesepearingMessage(myUser, peerUser, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return setDesepearingMessage?.call(myUser, peerUser, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (setDesepearingMessage != null) {
      return setDesepearingMessage(myUser, peerUser, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return setDesepearingMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return setDesepearingMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (setDesepearingMessage != null) {
      return setDesepearingMessage(this);
    }
    return orElse();
  }
}

abstract class _SetDesepearingMessage implements ChatsEvent {
  const factory _SetDesepearingMessage(
      {required String myUser,
      required String peerUser,
      required double time}) = _$_SetDesepearingMessage;

  String get myUser;
  String get peerUser;
  double get time;
  @JsonKey(ignore: true)
  _$SetDesepearingMessageCopyWith<_SetDesepearingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveDesepearingMessageCopyWith<$Res> {
  factory _$RemoveDesepearingMessageCopyWith(_RemoveDesepearingMessage value,
          $Res Function(_RemoveDesepearingMessage) then) =
      __$RemoveDesepearingMessageCopyWithImpl<$Res>;
  $Res call({String myUser, String peerUser, int second, Timestamp time});
}

/// @nodoc
class __$RemoveDesepearingMessageCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements _$RemoveDesepearingMessageCopyWith<$Res> {
  __$RemoveDesepearingMessageCopyWithImpl(_RemoveDesepearingMessage _value,
      $Res Function(_RemoveDesepearingMessage) _then)
      : super(_value, (v) => _then(v as _RemoveDesepearingMessage));

  @override
  _RemoveDesepearingMessage get _value =>
      super._value as _RemoveDesepearingMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? second = freezed,
    Object? time = freezed,
  }) {
    return _then(_RemoveDesepearingMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc

class _$_RemoveDesepearingMessage implements _RemoveDesepearingMessage {
  const _$_RemoveDesepearingMessage(
      {required this.myUser,
      required this.peerUser,
      required this.second,
      required this.time});

  @override
  final String myUser;
  @override
  final String peerUser;
  @override
  final int second;
  @override
  final Timestamp time;

  @override
  String toString() {
    return 'ChatsEvent.removeDesepearingMessage(myUser: $myUser, peerUser: $peerUser, second: $second, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveDesepearingMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.second, second) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(second),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$RemoveDesepearingMessageCopyWith<_RemoveDesepearingMessage> get copyWith =>
      __$RemoveDesepearingMessageCopyWithImpl<_RemoveDesepearingMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return removeDesepearingMessage(myUser, peerUser, second, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return removeDesepearingMessage?.call(myUser, peerUser, second, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (removeDesepearingMessage != null) {
      return removeDesepearingMessage(myUser, peerUser, second, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return removeDesepearingMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return removeDesepearingMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (removeDesepearingMessage != null) {
      return removeDesepearingMessage(this);
    }
    return orElse();
  }
}

abstract class _RemoveDesepearingMessage implements ChatsEvent {
  const factory _RemoveDesepearingMessage(
      {required String myUser,
      required String peerUser,
      required int second,
      required Timestamp time}) = _$_RemoveDesepearingMessage;

  String get myUser;
  String get peerUser;
  int get second;
  Timestamp get time;
  @JsonKey(ignore: true)
  _$RemoveDesepearingMessageCopyWith<_RemoveDesepearingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendTextStoryCopyWith<$Res> {
  factory _$SendTextStoryCopyWith(
          _SendTextStory value, $Res Function(_SendTextStory) then) =
      __$SendTextStoryCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      KahoChatUser peerUser,
      String message,
      String peerStoryText,
      String? imageUrl,
      String? storyVideoUrl,
      String peerStoryImage});
}

/// @nodoc
class __$SendTextStoryCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SendTextStoryCopyWith<$Res> {
  __$SendTextStoryCopyWithImpl(
      _SendTextStory _value, $Res Function(_SendTextStory) _then)
      : super(_value, (v) => _then(v as _SendTextStory));

  @override
  _SendTextStory get _value => super._value as _SendTextStory;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? message = freezed,
    Object? peerStoryText = freezed,
    Object? imageUrl = freezed,
    Object? storyVideoUrl = freezed,
    Object? peerStoryImage = freezed,
  }) {
    return _then(_SendTextStory(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      peerStoryText: peerStoryText == freezed
          ? _value.peerStoryText
          : peerStoryText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storyVideoUrl: storyVideoUrl == freezed
          ? _value.storyVideoUrl
          : storyVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      peerStoryImage: peerStoryImage == freezed
          ? _value.peerStoryImage
          : peerStoryImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendTextStory implements _SendTextStory {
  const _$_SendTextStory(
      {required this.myUser,
      required this.peerUser,
      required this.message,
      required this.peerStoryText,
      this.imageUrl,
      this.storyVideoUrl,
      required this.peerStoryImage});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final String message;
  @override
  final String peerStoryText;
  @override
  final String? imageUrl;
  @override
  final String? storyVideoUrl;
  @override
  final String peerStoryImage;

  @override
  String toString() {
    return 'ChatsEvent.sendTextStory(myUser: $myUser, peerUser: $peerUser, message: $message, peerStoryText: $peerStoryText, imageUrl: $imageUrl, storyVideoUrl: $storyVideoUrl, peerStoryImage: $peerStoryImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTextStory &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.peerStoryText, peerStoryText) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.storyVideoUrl, storyVideoUrl) &&
            const DeepCollectionEquality()
                .equals(other.peerStoryImage, peerStoryImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(peerStoryText),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(storyVideoUrl),
      const DeepCollectionEquality().hash(peerStoryImage));

  @JsonKey(ignore: true)
  @override
  _$SendTextStoryCopyWith<_SendTextStory> get copyWith =>
      __$SendTextStoryCopyWithImpl<_SendTextStory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendTextStory(myUser, peerUser, message, peerStoryText, imageUrl,
        storyVideoUrl, peerStoryImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendTextStory?.call(myUser, peerUser, message, peerStoryText,
        imageUrl, storyVideoUrl, peerStoryImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendTextStory != null) {
      return sendTextStory(myUser, peerUser, message, peerStoryText, imageUrl,
          storyVideoUrl, peerStoryImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendTextStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendTextStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendTextStory != null) {
      return sendTextStory(this);
    }
    return orElse();
  }
}

abstract class _SendTextStory implements ChatsEvent {
  const factory _SendTextStory(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message,
      required String peerStoryText,
      String? imageUrl,
      String? storyVideoUrl,
      required String peerStoryImage}) = _$_SendTextStory;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  String get message;
  String get peerStoryText;
  String? get imageUrl;
  String? get storyVideoUrl;
  String get peerStoryImage;
  @JsonKey(ignore: true)
  _$SendTextStoryCopyWith<_SendTextStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendImageStoryCopyWith<$Res> {
  factory _$SendImageStoryCopyWith(
          _SendImageStory value, $Res Function(_SendImageStory) then) =
      __$SendImageStoryCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser myUser,
      KahoChatUser peerUser,
      ImageWithCaptionModel imageWithCaption,
      String peerStoryText,
      String peerStoryImage});
}

/// @nodoc
class __$SendImageStoryCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SendImageStoryCopyWith<$Res> {
  __$SendImageStoryCopyWithImpl(
      _SendImageStory _value, $Res Function(_SendImageStory) _then)
      : super(_value, (v) => _then(v as _SendImageStory));

  @override
  _SendImageStory get _value => super._value as _SendImageStory;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? imageWithCaption = freezed,
    Object? peerStoryText = freezed,
    Object? peerStoryImage = freezed,
  }) {
    return _then(_SendImageStory(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
      peerStoryText: peerStoryText == freezed
          ? _value.peerStoryText
          : peerStoryText // ignore: cast_nullable_to_non_nullable
              as String,
      peerStoryImage: peerStoryImage == freezed
          ? _value.peerStoryImage
          : peerStoryImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendImageStory implements _SendImageStory {
  const _$_SendImageStory(
      {required this.myUser,
      required this.peerUser,
      required this.imageWithCaption,
      required this.peerStoryText,
      required this.peerStoryImage});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;
  @override
  final ImageWithCaptionModel imageWithCaption;
  @override
  final String peerStoryText;
  @override
  final String peerStoryImage;

  @override
  String toString() {
    return 'ChatsEvent.sendImageStory(myUser: $myUser, peerUser: $peerUser, imageWithCaption: $imageWithCaption, peerStoryText: $peerStoryText, peerStoryImage: $peerStoryImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendImageStory &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption) &&
            const DeepCollectionEquality()
                .equals(other.peerStoryText, peerStoryText) &&
            const DeepCollectionEquality()
                .equals(other.peerStoryImage, peerStoryImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(imageWithCaption),
      const DeepCollectionEquality().hash(peerStoryText),
      const DeepCollectionEquality().hash(peerStoryImage));

  @JsonKey(ignore: true)
  @override
  _$SendImageStoryCopyWith<_SendImageStory> get copyWith =>
      __$SendImageStoryCopyWithImpl<_SendImageStory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendImageStory(
        myUser, peerUser, imageWithCaption, peerStoryText, peerStoryImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendImageStory?.call(
        myUser, peerUser, imageWithCaption, peerStoryText, peerStoryImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendImageStory != null) {
      return sendImageStory(
          myUser, peerUser, imageWithCaption, peerStoryText, peerStoryImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendImageStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendImageStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendImageStory != null) {
      return sendImageStory(this);
    }
    return orElse();
  }
}

abstract class _SendImageStory implements ChatsEvent {
  const factory _SendImageStory(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption,
      required String peerStoryText,
      required String peerStoryImage}) = _$_SendImageStory;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  ImageWithCaptionModel get imageWithCaption;
  String get peerStoryText;
  String get peerStoryImage;
  @JsonKey(ignore: true)
  _$SendImageStoryCopyWith<_SendImageStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchIsNewPeerCopyWith<$Res> {
  factory _$FetchIsNewPeerCopyWith(
          _FetchIsNewPeer value, $Res Function(_FetchIsNewPeer) then) =
      __$FetchIsNewPeerCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, KahoChatUser peerUser});
}

/// @nodoc
class __$FetchIsNewPeerCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$FetchIsNewPeerCopyWith<$Res> {
  __$FetchIsNewPeerCopyWithImpl(
      _FetchIsNewPeer _value, $Res Function(_FetchIsNewPeer) _then)
      : super(_value, (v) => _then(v as _FetchIsNewPeer));

  @override
  _FetchIsNewPeer get _value => super._value as _FetchIsNewPeer;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
  }) {
    return _then(_FetchIsNewPeer(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_FetchIsNewPeer implements _FetchIsNewPeer {
  const _$_FetchIsNewPeer({required this.myUser, required this.peerUser});

  @override
  final KahoChatUser myUser;
  @override
  final KahoChatUser peerUser;

  @override
  String toString() {
    return 'ChatsEvent.fetchIsNewPeer(myUser: $myUser, peerUser: $peerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchIsNewPeer &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser));

  @JsonKey(ignore: true)
  @override
  _$FetchIsNewPeerCopyWith<_FetchIsNewPeer> get copyWith =>
      __$FetchIsNewPeerCopyWithImpl<_FetchIsNewPeer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return fetchIsNewPeer(myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return fetchIsNewPeer?.call(myUser, peerUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (fetchIsNewPeer != null) {
      return fetchIsNewPeer(myUser, peerUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return fetchIsNewPeer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return fetchIsNewPeer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (fetchIsNewPeer != null) {
      return fetchIsNewPeer(this);
    }
    return orElse();
  }
}

abstract class _FetchIsNewPeer implements ChatsEvent {
  const factory _FetchIsNewPeer(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser}) = _$_FetchIsNewPeer;

  KahoChatUser get myUser;
  KahoChatUser get peerUser;
  @JsonKey(ignore: true)
  _$FetchIsNewPeerCopyWith<_FetchIsNewPeer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetIsNewPeerCopyWith<$Res> {
  factory _$SetIsNewPeerCopyWith(
          _SetIsNewPeer value, $Res Function(_SetIsNewPeer) then) =
      __$SetIsNewPeerCopyWithImpl<$Res>;
  $Res call({bool isNew});
}

/// @nodoc
class __$SetIsNewPeerCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SetIsNewPeerCopyWith<$Res> {
  __$SetIsNewPeerCopyWithImpl(
      _SetIsNewPeer _value, $Res Function(_SetIsNewPeer) _then)
      : super(_value, (v) => _then(v as _SetIsNewPeer));

  @override
  _SetIsNewPeer get _value => super._value as _SetIsNewPeer;

  @override
  $Res call({
    Object? isNew = freezed,
  }) {
    return _then(_SetIsNewPeer(
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetIsNewPeer implements _SetIsNewPeer {
  const _$_SetIsNewPeer({required this.isNew});

  @override
  final bool isNew;

  @override
  String toString() {
    return 'ChatsEvent.setIsNewPeer(isNew: $isNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetIsNewPeer &&
            const DeepCollectionEquality().equals(other.isNew, isNew));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isNew));

  @JsonKey(ignore: true)
  @override
  _$SetIsNewPeerCopyWith<_SetIsNewPeer> get copyWith =>
      __$SetIsNewPeerCopyWithImpl<_SetIsNewPeer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return setIsNewPeer(isNew);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return setIsNewPeer?.call(isNew);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (setIsNewPeer != null) {
      return setIsNewPeer(isNew);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return setIsNewPeer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return setIsNewPeer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (setIsNewPeer != null) {
      return setIsNewPeer(this);
    }
    return orElse();
  }
}

abstract class _SetIsNewPeer implements ChatsEvent {
  const factory _SetIsNewPeer({required bool isNew}) = _$_SetIsNewPeer;

  bool get isNew;
  @JsonKey(ignore: true)
  _$SetIsNewPeerCopyWith<_SetIsNewPeer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendInviteCopyWith<$Res> {
  factory _$SendInviteCopyWith(
          _SendInvite value, $Res Function(_SendInvite) then) =
      __$SendInviteCopyWithImpl<$Res>;
  $Res call({KahoChatUser peerUser, KahoChatUser myUser});
}

/// @nodoc
class __$SendInviteCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SendInviteCopyWith<$Res> {
  __$SendInviteCopyWithImpl(
      _SendInvite _value, $Res Function(_SendInvite) _then)
      : super(_value, (v) => _then(v as _SendInvite));

  @override
  _SendInvite get _value => super._value as _SendInvite;

  @override
  $Res call({
    Object? peerUser = freezed,
    Object? myUser = freezed,
  }) {
    return _then(_SendInvite(
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_SendInvite implements _SendInvite {
  const _$_SendInvite({required this.peerUser, required this.myUser});

  @override
  final KahoChatUser peerUser;
  @override
  final KahoChatUser myUser;

  @override
  String toString() {
    return 'ChatsEvent.sendInvite(peerUser: $peerUser, myUser: $myUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendInvite &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.myUser, myUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(myUser));

  @JsonKey(ignore: true)
  @override
  _$SendInviteCopyWith<_SendInvite> get copyWith =>
      __$SendInviteCopyWithImpl<_SendInvite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendInvite(peerUser, myUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendInvite?.call(peerUser, myUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(peerUser, myUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(this);
    }
    return orElse();
  }
}

abstract class _SendInvite implements ChatsEvent {
  const factory _SendInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser}) = _$_SendInvite;

  KahoChatUser get peerUser;
  KahoChatUser get myUser;
  @JsonKey(ignore: true)
  _$SendInviteCopyWith<_SendInvite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AnswerInviteCopyWith<$Res> {
  factory _$AnswerInviteCopyWith(
          _AnswerInvite value, $Res Function(_AnswerInvite) then) =
      __$AnswerInviteCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser peerUser,
      KahoChatUser myUser,
      String accepted,
      String answered});
}

/// @nodoc
class __$AnswerInviteCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$AnswerInviteCopyWith<$Res> {
  __$AnswerInviteCopyWithImpl(
      _AnswerInvite _value, $Res Function(_AnswerInvite) _then)
      : super(_value, (v) => _then(v as _AnswerInvite));

  @override
  _AnswerInvite get _value => super._value as _AnswerInvite;

  @override
  $Res call({
    Object? peerUser = freezed,
    Object? myUser = freezed,
    Object? accepted = freezed,
    Object? answered = freezed,
  }) {
    return _then(_AnswerInvite(
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as String,
      answered: answered == freezed
          ? _value.answered
          : answered // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnswerInvite implements _AnswerInvite {
  const _$_AnswerInvite(
      {required this.peerUser,
      required this.myUser,
      required this.accepted,
      required this.answered});

  @override
  final KahoChatUser peerUser;
  @override
  final KahoChatUser myUser;
  @override
  final String accepted;
  @override
  final String answered;

  @override
  String toString() {
    return 'ChatsEvent.answerInvite(peerUser: $peerUser, myUser: $myUser, accepted: $accepted, answered: $answered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerInvite &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.accepted, accepted) &&
            const DeepCollectionEquality().equals(other.answered, answered));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(accepted),
      const DeepCollectionEquality().hash(answered));

  @JsonKey(ignore: true)
  @override
  _$AnswerInviteCopyWith<_AnswerInvite> get copyWith =>
      __$AnswerInviteCopyWithImpl<_AnswerInvite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return answerInvite(peerUser, myUser, accepted, answered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return answerInvite?.call(peerUser, myUser, accepted, answered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (answerInvite != null) {
      return answerInvite(peerUser, myUser, accepted, answered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return answerInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return answerInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (answerInvite != null) {
      return answerInvite(this);
    }
    return orElse();
  }
}

abstract class _AnswerInvite implements ChatsEvent {
  const factory _AnswerInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser,
      required String accepted,
      required String answered}) = _$_AnswerInvite;

  KahoChatUser get peerUser;
  KahoChatUser get myUser;
  String get accepted;
  String get answered;
  @JsonKey(ignore: true)
  _$AnswerInviteCopyWith<_AnswerInvite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchInviteStatusCopyWith<$Res> {
  factory _$FetchInviteStatusCopyWith(
          _FetchInviteStatus value, $Res Function(_FetchInviteStatus) then) =
      __$FetchInviteStatusCopyWithImpl<$Res>;
  $Res call({KahoChatUser peerUser, KahoChatUser myUser});
}

/// @nodoc
class __$FetchInviteStatusCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements _$FetchInviteStatusCopyWith<$Res> {
  __$FetchInviteStatusCopyWithImpl(
      _FetchInviteStatus _value, $Res Function(_FetchInviteStatus) _then)
      : super(_value, (v) => _then(v as _FetchInviteStatus));

  @override
  _FetchInviteStatus get _value => super._value as _FetchInviteStatus;

  @override
  $Res call({
    Object? peerUser = freezed,
    Object? myUser = freezed,
  }) {
    return _then(_FetchInviteStatus(
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_FetchInviteStatus implements _FetchInviteStatus {
  const _$_FetchInviteStatus({required this.peerUser, required this.myUser});

  @override
  final KahoChatUser peerUser;
  @override
  final KahoChatUser myUser;

  @override
  String toString() {
    return 'ChatsEvent.fetchInviteStatus(peerUser: $peerUser, myUser: $myUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchInviteStatus &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.myUser, myUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(myUser));

  @JsonKey(ignore: true)
  @override
  _$FetchInviteStatusCopyWith<_FetchInviteStatus> get copyWith =>
      __$FetchInviteStatusCopyWithImpl<_FetchInviteStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return fetchInviteStatus(peerUser, myUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return fetchInviteStatus?.call(peerUser, myUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (fetchInviteStatus != null) {
      return fetchInviteStatus(peerUser, myUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return fetchInviteStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return fetchInviteStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (fetchInviteStatus != null) {
      return fetchInviteStatus(this);
    }
    return orElse();
  }
}

abstract class _FetchInviteStatus implements ChatsEvent {
  const factory _FetchInviteStatus(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser}) = _$_FetchInviteStatus;

  KahoChatUser get peerUser;
  KahoChatUser get myUser;
  @JsonKey(ignore: true)
  _$FetchInviteStatusCopyWith<_FetchInviteStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNoteMessageCopyWith<$Res> {
  factory $SendNoteMessageCopyWith(
          SendNoteMessage value, $Res Function(SendNoteMessage) then) =
      _$SendNoteMessageCopyWithImpl<$Res>;
  $Res call({KahoChatUser myUser, String peerUser, String note});
}

/// @nodoc
class _$SendNoteMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements $SendNoteMessageCopyWith<$Res> {
  _$SendNoteMessageCopyWithImpl(
      SendNoteMessage _value, $Res Function(SendNoteMessage) _then)
      : super(_value, (v) => _then(v as SendNoteMessage));

  @override
  SendNoteMessage get _value => super._value as SendNoteMessage;

  @override
  $Res call({
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? note = freezed,
  }) {
    return _then(SendNoteMessage(
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendNoteMessage implements SendNoteMessage {
  const _$SendNoteMessage(
      {required this.myUser, required this.peerUser, required this.note});

  @override
  final KahoChatUser myUser;
  @override
  final String peerUser;
  @override
  final String note;

  @override
  String toString() {
    return 'ChatsEvent.sendNoteMessage(myUser: $myUser, peerUser: $peerUser, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendNoteMessage &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  $SendNoteMessageCopyWith<SendNoteMessage> get copyWith =>
      _$SendNoteMessageCopyWithImpl<SendNoteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return sendNoteMessage(myUser, peerUser, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return sendNoteMessage?.call(myUser, peerUser, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (sendNoteMessage != null) {
      return sendNoteMessage(myUser, peerUser, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return sendNoteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return sendNoteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendNoteMessage != null) {
      return sendNoteMessage(this);
    }
    return orElse();
  }
}

abstract class SendNoteMessage implements ChatsEvent {
  const factory SendNoteMessage(
      {required KahoChatUser myUser,
      required String peerUser,
      required String note}) = _$SendNoteMessage;

  KahoChatUser get myUser;
  String get peerUser;
  String get note;
  @JsonKey(ignore: true)
  $SendNoteMessageCopyWith<SendNoteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeclineInviteCopyWith<$Res> {
  factory _$DeclineInviteCopyWith(
          _DeclineInvite value, $Res Function(_DeclineInvite) then) =
      __$DeclineInviteCopyWithImpl<$Res>;
  $Res call({KahoChatUser peerUser, KahoChatUser myUser, String accepted});
}

/// @nodoc
class __$DeclineInviteCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$DeclineInviteCopyWith<$Res> {
  __$DeclineInviteCopyWithImpl(
      _DeclineInvite _value, $Res Function(_DeclineInvite) _then)
      : super(_value, (v) => _then(v as _DeclineInvite));

  @override
  _DeclineInvite get _value => super._value as _DeclineInvite;

  @override
  $Res call({
    Object? peerUser = freezed,
    Object? myUser = freezed,
    Object? accepted = freezed,
  }) {
    return _then(_DeclineInvite(
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeclineInvite implements _DeclineInvite {
  const _$_DeclineInvite(
      {required this.peerUser, required this.myUser, required this.accepted});

  @override
  final KahoChatUser peerUser;
  @override
  final KahoChatUser myUser;
  @override
  final String accepted;

  @override
  String toString() {
    return 'ChatsEvent.declineInvite(peerUser: $peerUser, myUser: $myUser, accepted: $accepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeclineInvite &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.accepted, accepted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(accepted));

  @JsonKey(ignore: true)
  @override
  _$DeclineInviteCopyWith<_DeclineInvite> get copyWith =>
      __$DeclineInviteCopyWithImpl<_DeclineInvite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return declineInvite(peerUser, myUser, accepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return declineInvite?.call(peerUser, myUser, accepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (declineInvite != null) {
      return declineInvite(peerUser, myUser, accepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return declineInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return declineInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (declineInvite != null) {
      return declineInvite(this);
    }
    return orElse();
  }
}

abstract class _DeclineInvite implements ChatsEvent {
  const factory _DeclineInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser,
      required String accepted}) = _$_DeclineInvite;

  KahoChatUser get peerUser;
  KahoChatUser get myUser;
  String get accepted;
  @JsonKey(ignore: true)
  _$DeclineInviteCopyWith<_DeclineInvite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditMessageCopyWith<$Res> {
  factory _$EditMessageCopyWith(
          _EditMessage value, $Res Function(_EditMessage) then) =
      __$EditMessageCopyWithImpl<$Res>;
  $Res call(
      {MessageSelectModel message,
      String myUser,
      String peerUser,
      String text});
}

/// @nodoc
class __$EditMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$EditMessageCopyWith<$Res> {
  __$EditMessageCopyWithImpl(
      _EditMessage _value, $Res Function(_EditMessage) _then)
      : super(_value, (v) => _then(v as _EditMessage));

  @override
  _EditMessage get _value => super._value as _EditMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? myUser = freezed,
    Object? peerUser = freezed,
    Object? text = freezed,
  }) {
    return _then(_EditMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageSelectModel,
      myUser: myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as String,
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditMessage implements _EditMessage {
  const _$_EditMessage(
      {required this.message,
      required this.myUser,
      required this.peerUser,
      required this.text});

  @override
  final MessageSelectModel message;
  @override
  final String myUser;
  @override
  final String peerUser;
  @override
  final String text;

  @override
  String toString() {
    return 'ChatsEvent.editMessage(message: $message, myUser: $myUser, peerUser: $peerUser, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$EditMessageCopyWith<_EditMessage> get copyWith =>
      __$EditMessageCopyWithImpl<_EditMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendTextMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)
        sendBlockMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            String message, MessageType type)
        inviteMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)
        markMessageAsSeen,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)
        forwardMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)
        replayMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendImageMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendGifMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String url)
        sendStickerMessage,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)
        sendVideoMessage,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendFile,
    required TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)
        sendAudioFile,
    required TResult Function(String fileName, bool isUploading) uploadFile,
    required TResult Function(bool isUploading, String fileName)
        setUploadFileFalse,
    required TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)
        sendContactMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessage,
    required TResult Function(Map<int, MessageSelectModel> messages,
            String myUser, String peerUser)
        deleteMessageEveryone,
    required TResult Function(String myUser, String peerUser) deleteChat,
    required TResult Function(String myUser, String peerUser) setReadUnread,
    required TResult Function(String myUser, String peerUser, double time)
        setDesepearingMessage,
    required TResult Function(
            String myUser, String peerUser, int second, Timestamp time)
        removeDesepearingMessage,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)
        sendTextStory,
    required TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)
        sendImageStory,
    required TResult Function(KahoChatUser myUser, KahoChatUser peerUser)
        fetchIsNewPeer,
    required TResult Function(bool isNew) setIsNewPeer,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        sendInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)
        answerInvite,
    required TResult Function(KahoChatUser peerUser, KahoChatUser myUser)
        fetchInviteStatus,
    required TResult Function(KahoChatUser myUser, String peerUser, String note)
        sendNoteMessage,
    required TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)
        declineInvite,
    required TResult Function(MessageSelectModel message, String myUser,
            String peerUser, String text)
        editMessage,
  }) {
    return editMessage(message, myUser, peerUser, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
  }) {
    return editMessage?.call(message, myUser, peerUser, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendTextMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String message)?
        sendBlockMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String message,
            MessageType type)?
        inviteMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String messageId)?
        markMessageAsSeen,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, MessageModel message)?
        forwardMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            MessageModel message, String text)?
        replayMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendImageMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendGifMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser, String url)?
        sendStickerMessage,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption)?
        sendVideoMessage,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendFile,
    TResult Function(
            KahoChatUser myUser, KahoChatUser peerUser, String filePath)?
        sendAudioFile,
    TResult Function(String fileName, bool isUploading)? uploadFile,
    TResult Function(bool isUploading, String fileName)? setUploadFileFalse,
    TResult Function(
            KahoChatUser contact, KahoChatUser myUser, KahoChatUser peerUser)?
        sendContactMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessage,
    TResult Function(Map<int, MessageSelectModel> messages, String myUser,
            String peerUser)?
        deleteMessageEveryone,
    TResult Function(String myUser, String peerUser)? deleteChat,
    TResult Function(String myUser, String peerUser)? setReadUnread,
    TResult Function(String myUser, String peerUser, double time)?
        setDesepearingMessage,
    TResult Function(
            String myUser, String peerUser, int second, Timestamp time)?
        removeDesepearingMessage,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            String message,
            String peerStoryText,
            String? imageUrl,
            String? storyVideoUrl,
            String peerStoryImage)?
        sendTextStory,
    TResult Function(
            KahoChatUser myUser,
            KahoChatUser peerUser,
            ImageWithCaptionModel imageWithCaption,
            String peerStoryText,
            String peerStoryImage)?
        sendImageStory,
    TResult Function(KahoChatUser myUser, KahoChatUser peerUser)?
        fetchIsNewPeer,
    TResult Function(bool isNew)? setIsNewPeer,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)? sendInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser,
            String accepted, String answered)?
        answerInvite,
    TResult Function(KahoChatUser peerUser, KahoChatUser myUser)?
        fetchInviteStatus,
    TResult Function(KahoChatUser myUser, String peerUser, String note)?
        sendNoteMessage,
    TResult Function(
            KahoChatUser peerUser, KahoChatUser myUser, String accepted)?
        declineInvite,
    TResult Function(MessageSelectModel message, String myUser, String peerUser,
            String text)?
        editMessage,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(message, myUser, peerUser, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessage value) sendTextMessage,
    required TResult Function(_SendBlockMessage value) sendBlockMessage,
    required TResult Function(_InviteMessage value) inviteMessage,
    required TResult Function(MarkMessageAsSeen value) markMessageAsSeen,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(SendImageMessage value) sendImageMessage,
    required TResult Function(SendGifMessage value) sendGifMessage,
    required TResult Function(SendStickerMessage value) sendStickerMessage,
    required TResult Function(SendVideoMessage value) sendVideoMessage,
    required TResult Function(SendFile value) sendFile,
    required TResult Function(SendAudioFile value) sendAudioFile,
    required TResult Function(UploadFile value) uploadFile,
    required TResult Function(SetUploadFileFalse value) setUploadFileFalse,
    required TResult Function(_SendContactMessage value) sendContactMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_DeleteMessageEveryone value)
        deleteMessageEveryone,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_SetReadUnread value) setReadUnread,
    required TResult Function(_SetDesepearingMessage value)
        setDesepearingMessage,
    required TResult Function(_RemoveDesepearingMessage value)
        removeDesepearingMessage,
    required TResult Function(_SendTextStory value) sendTextStory,
    required TResult Function(_SendImageStory value) sendImageStory,
    required TResult Function(_FetchIsNewPeer value) fetchIsNewPeer,
    required TResult Function(_SetIsNewPeer value) setIsNewPeer,
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_AnswerInvite value) answerInvite,
    required TResult Function(_FetchInviteStatus value) fetchInviteStatus,
    required TResult Function(SendNoteMessage value) sendNoteMessage,
    required TResult Function(_DeclineInvite value) declineInvite,
    required TResult Function(_EditMessage value) editMessage,
  }) {
    return editMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
  }) {
    return editMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessage value)? sendTextMessage,
    TResult Function(_SendBlockMessage value)? sendBlockMessage,
    TResult Function(_InviteMessage value)? inviteMessage,
    TResult Function(MarkMessageAsSeen value)? markMessageAsSeen,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(SendImageMessage value)? sendImageMessage,
    TResult Function(SendGifMessage value)? sendGifMessage,
    TResult Function(SendStickerMessage value)? sendStickerMessage,
    TResult Function(SendVideoMessage value)? sendVideoMessage,
    TResult Function(SendFile value)? sendFile,
    TResult Function(SendAudioFile value)? sendAudioFile,
    TResult Function(UploadFile value)? uploadFile,
    TResult Function(SetUploadFileFalse value)? setUploadFileFalse,
    TResult Function(_SendContactMessage value)? sendContactMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_DeleteMessageEveryone value)? deleteMessageEveryone,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_SetReadUnread value)? setReadUnread,
    TResult Function(_SetDesepearingMessage value)? setDesepearingMessage,
    TResult Function(_RemoveDesepearingMessage value)? removeDesepearingMessage,
    TResult Function(_SendTextStory value)? sendTextStory,
    TResult Function(_SendImageStory value)? sendImageStory,
    TResult Function(_FetchIsNewPeer value)? fetchIsNewPeer,
    TResult Function(_SetIsNewPeer value)? setIsNewPeer,
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_AnswerInvite value)? answerInvite,
    TResult Function(_FetchInviteStatus value)? fetchInviteStatus,
    TResult Function(SendNoteMessage value)? sendNoteMessage,
    TResult Function(_DeclineInvite value)? declineInvite,
    TResult Function(_EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(this);
    }
    return orElse();
  }
}

abstract class _EditMessage implements ChatsEvent {
  const factory _EditMessage(
      {required MessageSelectModel message,
      required String myUser,
      required String peerUser,
      required String text}) = _$_EditMessage;

  MessageSelectModel get message;
  String get myUser;
  String get peerUser;
  String get text;
  @JsonKey(ignore: true)
  _$EditMessageCopyWith<_EditMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatsStateTearOff {
  const _$ChatsStateTearOff();

  _Chats call(
      {required bool isUploading,
      required String fileName,
      required bool isNewPeer,
      required InviteModel inviteModel}) {
    return _Chats(
      isUploading: isUploading,
      fileName: fileName,
      isNewPeer: isNewPeer,
      inviteModel: inviteModel,
    );
  }
}

/// @nodoc
const $ChatsState = _$ChatsStateTearOff();

/// @nodoc
mixin _$ChatsState {
  bool get isUploading => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  bool get isNewPeer => throw _privateConstructorUsedError;
  InviteModel get inviteModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsStateCopyWith<ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUploading,
      String fileName,
      bool isNewPeer,
      InviteModel inviteModel});
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res> implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  final ChatsState _value;
  // ignore: unused_field
  final $Res Function(ChatsState) _then;

  @override
  $Res call({
    Object? isUploading = freezed,
    Object? fileName = freezed,
    Object? isNewPeer = freezed,
    Object? inviteModel = freezed,
  }) {
    return _then(_value.copyWith(
      isUploading: isUploading == freezed
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isNewPeer: isNewPeer == freezed
          ? _value.isNewPeer
          : isNewPeer // ignore: cast_nullable_to_non_nullable
              as bool,
      inviteModel: inviteModel == freezed
          ? _value.inviteModel
          : inviteModel // ignore: cast_nullable_to_non_nullable
              as InviteModel,
    ));
  }
}

/// @nodoc
abstract class _$ChatsCopyWith<$Res> implements $ChatsStateCopyWith<$Res> {
  factory _$ChatsCopyWith(_Chats value, $Res Function(_Chats) then) =
      __$ChatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUploading,
      String fileName,
      bool isNewPeer,
      InviteModel inviteModel});
}

/// @nodoc
class __$ChatsCopyWithImpl<$Res> extends _$ChatsStateCopyWithImpl<$Res>
    implements _$ChatsCopyWith<$Res> {
  __$ChatsCopyWithImpl(_Chats _value, $Res Function(_Chats) _then)
      : super(_value, (v) => _then(v as _Chats));

  @override
  _Chats get _value => super._value as _Chats;

  @override
  $Res call({
    Object? isUploading = freezed,
    Object? fileName = freezed,
    Object? isNewPeer = freezed,
    Object? inviteModel = freezed,
  }) {
    return _then(_Chats(
      isUploading: isUploading == freezed
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isNewPeer: isNewPeer == freezed
          ? _value.isNewPeer
          : isNewPeer // ignore: cast_nullable_to_non_nullable
              as bool,
      inviteModel: inviteModel == freezed
          ? _value.inviteModel
          : inviteModel // ignore: cast_nullable_to_non_nullable
              as InviteModel,
    ));
  }
}

/// @nodoc

class _$_Chats implements _Chats {
  _$_Chats(
      {required this.isUploading,
      required this.fileName,
      required this.isNewPeer,
      required this.inviteModel});

  @override
  final bool isUploading;
  @override
  final String fileName;
  @override
  final bool isNewPeer;
  @override
  final InviteModel inviteModel;

  @override
  String toString() {
    return 'ChatsState(isUploading: $isUploading, fileName: $fileName, isNewPeer: $isNewPeer, inviteModel: $inviteModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chats &&
            const DeepCollectionEquality()
                .equals(other.isUploading, isUploading) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.isNewPeer, isNewPeer) &&
            const DeepCollectionEquality()
                .equals(other.inviteModel, inviteModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUploading),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(isNewPeer),
      const DeepCollectionEquality().hash(inviteModel));

  @JsonKey(ignore: true)
  @override
  _$ChatsCopyWith<_Chats> get copyWith =>
      __$ChatsCopyWithImpl<_Chats>(this, _$identity);
}

abstract class _Chats implements ChatsState {
  factory _Chats(
      {required bool isUploading,
      required String fileName,
      required bool isNewPeer,
      required InviteModel inviteModel}) = _$_Chats;

  @override
  bool get isUploading;
  @override
  String get fileName;
  @override
  bool get isNewPeer;
  @override
  InviteModel get inviteModel;
  @override
  @JsonKey(ignore: true)
  _$ChatsCopyWith<_Chats> get copyWith => throw _privateConstructorUsedError;
}
