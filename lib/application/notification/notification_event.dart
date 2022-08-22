part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = _Started;
  const factory NotificationEvent.setChatMute(NotificationMuteStatus status) =
      _setChatMute;
  const factory NotificationEvent.setGroupMute(NotificationMuteStatus status) =
      _setGroupMute;
  const factory NotificationEvent.setChatsNotificationTone(
      NotificationToneType type) = _setChatNotificationTone;
  const factory NotificationEvent.setGroupsNotificationTone(
      NotificationToneType type) = _setGroupsNotificationTone;
  const factory NotificationEvent.setCallsNotificationTone(
      NotificationToneType type) = _setCallsNotificationTone;
  const factory NotificationEvent.setChatsNotificationDuration(
          NotificationVibrationDuration vibrationDuration) =
      _SetChatsNotificationVibrationDuration;
  const factory NotificationEvent.setGroupsNotificationDuration(
          NotificationVibrationDuration vibrationDuration) =
      _SetGroupsNotificationVibrationDuration;
  const factory NotificationEvent.setCallsNotificationDuration(
          NotificationVibrationDuration vibrationDuration) =
      _SetCallsNotificationVibrationDuration;
}
