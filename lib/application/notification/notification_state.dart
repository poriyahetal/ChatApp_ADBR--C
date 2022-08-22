part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required NotificationMuteStatus isChatMute,
    required NotificationMuteStatus isGroupsMute,
    required NotificationToneType chatsNotificationToneType,
    required NotificationToneType groupsNotificationToneType,
    required NotificationToneType callsNotificationToneType,
    required NotificationVibrationDuration chatsNotificationVibrationDuration,
    required NotificationVibrationDuration groupsNotificationVibrationDuration,
    required NotificationVibrationDuration callsNotificationVibrationDuration,
  }) = _NotificationState;
  factory NotificationState.initial() => const NotificationState(
        isChatMute: NotificationMuteStatus.disabled,
        isGroupsMute: NotificationMuteStatus.disabled,
        chatsNotificationToneType: NotificationToneType.nDefault,
        groupsNotificationToneType: NotificationToneType.nDefault,
        callsNotificationToneType: NotificationToneType.nDefault,
        chatsNotificationVibrationDuration:
            NotificationVibrationDuration.normal,
        groupsNotificationVibrationDuration:
            NotificationVibrationDuration.normal,
        callsNotificationVibrationDuration:
            NotificationVibrationDuration.normal,
      );
}
