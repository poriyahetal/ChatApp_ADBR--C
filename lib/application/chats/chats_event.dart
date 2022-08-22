part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.sendTextMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String message,
  }) = SendTextMessage;
  const factory ChatsEvent.sendBlockMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String message,
  }) = _SendBlockMessage;
  const factory ChatsEvent.inviteMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String message,
    required MessageType type,
  }) = _InviteMessage;
  const factory ChatsEvent.markMessageAsSeen({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String messageId,
  }) = MarkMessageAsSeen;

  const factory ChatsEvent.forwardMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required MessageModel message,
  }) = ForwardMessage;
  const factory ChatsEvent.replayMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required MessageModel message,
    required String text,
  }) = ReplayMessage;
  const factory ChatsEvent.sendImageMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required ImageWithCaptionModel imageWithCaption,
  }) = SendImageMessage;
  const factory ChatsEvent.sendGifMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String url,
  }) = SendGifMessage;
  const factory ChatsEvent.sendStickerMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String url,
  }) = SendStickerMessage;
  const factory ChatsEvent.sendVideoMessage({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required ImageWithCaptionModel imageWithCaption,
  }) = SendVideoMessage;
  const factory ChatsEvent.sendFile({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String filePath,
  }) = SendFile;
  const factory ChatsEvent.sendAudioFile({
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
    required String filePath,
  }) = SendAudioFile;
  const factory ChatsEvent.uploadFile({
    required String fileName,
    required bool isUploading,
  }) = UploadFile;
  const factory ChatsEvent.setUploadFileFalse({
    required bool isUploading,
    required String fileName,
  }) = SetUploadFileFalse;
  const factory ChatsEvent.sendContactMessage({
    required KahoChatUser contact,
    required KahoChatUser myUser,
    required KahoChatUser peerUser,
  }) = _SendContactMessage;
  const factory ChatsEvent.deleteMessage({
    required Map<int, MessageSelectModel> messages,
    required String myUser,
    required String peerUser,
  }) = _DeleteMessage;
  const factory ChatsEvent.deleteMessageEveryone({
    required Map<int, MessageSelectModel> messages,
    required String myUser,
    required String peerUser,
  }) = _DeleteMessageEveryone;
  const factory ChatsEvent.deleteChat({
    required String myUser,
    required String peerUser,
  }) = _DeleteChat;
  const factory ChatsEvent.setReadUnread({
    required String myUser,
    required String peerUser,
  }) = _SetReadUnread;
  const factory ChatsEvent.setDesepearingMessage({
    required String myUser,
    required String peerUser,
    required double time,
  }) = _SetDesepearingMessage;
  const factory ChatsEvent.removeDesepearingMessage({
    required String myUser,
    required String peerUser,
    required int second,
    required Timestamp time,
  }) = _RemoveDesepearingMessage;
  const factory ChatsEvent.sendTextStory(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required String message,
      required String peerStoryText,
      String? imageUrl,
      String? storyVideoUrl,
      required String peerStoryImage}) = _SendTextStory;

  const factory ChatsEvent.sendImageStory(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser,
      required ImageWithCaptionModel imageWithCaption,
      required String peerStoryText,
      required String peerStoryImage}) = _SendImageStory;
  const factory ChatsEvent.fetchIsNewPeer(
      {required KahoChatUser myUser,
      required KahoChatUser peerUser}) = _FetchIsNewPeer;
  const factory ChatsEvent.setIsNewPeer({required bool isNew}) = _SetIsNewPeer;
  const factory ChatsEvent.sendInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser}) = _SendInvite;
  const factory ChatsEvent.answerInvite({
    required KahoChatUser peerUser,
    required KahoChatUser myUser,
    required String accepted,
    required String answered,
  }) = _AnswerInvite;
  const factory ChatsEvent.fetchInviteStatus(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser}) = _FetchInviteStatus;
  const factory ChatsEvent.sendNoteMessage({
    required KahoChatUser myUser,
    required String peerUser,
    required String note,
  }) = SendNoteMessage;
  const factory ChatsEvent.declineInvite(
      {required KahoChatUser peerUser,
      required KahoChatUser myUser,
      required String accepted}) = _DeclineInvite;
  const factory ChatsEvent.editMessage({
    required MessageSelectModel message,
    required String myUser,
    required String peerUser,
    required String text,
  }) = _EditMessage;
}
