part of 'broadcast_bloc.dart';

@freezed
class BroadcastEvent with _$BroadcastEvent {
  const factory BroadcastEvent.createBroadcast({required KahoChatUser sender}) =
      _CreateBroadcast;
  const factory BroadcastEvent.sendMessage() = _SendMessage;
  const factory BroadcastEvent.setBroadcastName(String name) =
      _SetBroadcastName;
  const factory BroadcastEvent.setBroadcastRecipients(
    List<KahoChatUser> recipients,
  ) = _SetBroadcastRecipients;
}
