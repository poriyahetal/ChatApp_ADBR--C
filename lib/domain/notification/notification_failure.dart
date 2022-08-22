import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_failure.freezed.dart';

@freezed
abstract class NotificationFailure with _$NotificationFailure {
  const factory NotificationFailure.setChatsMuteFailure() =
      _SetChatsMuteFailure;
  const factory NotificationFailure.setGroupsMuteFailure() =
      _SetGroupsMuteFailure;
  const factory NotificationFailure.setCallsMuteFailure() =
      _SetCallsMuteFailure;
  const factory NotificationFailure.setChatsNotificationToneFailure() =
      _SetChatsNotificationToneFailure;
  const factory NotificationFailure.setGroupsNotificationToneFailure() =
      _SetGroupsNotificationToneFailure;
  const factory NotificationFailure.setCallsNotificationToneFailure() =
      _SetCallsNotificationToneFailure;
  const factory NotificationFailure.setChatsVibrationDurationFailure() =
      _SetChatsVibrationDurationFailure;
  const factory NotificationFailure.setGroupsVibrationDurationFailure() =
      _SetGroupsVibrationDurationFailure;
  const factory NotificationFailure.setCallsVibrationDurationFailure() =
      _SetCallsVibrationDurationFailure;
  const factory NotificationFailure.fetchNotificationFailure() =
      _FetchNotificationFailure;
}
