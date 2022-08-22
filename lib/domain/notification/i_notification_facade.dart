import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/notification/notification_failure.dart';

abstract class INotificationFacade {
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      changeChatsMuteStatus(NotificationMuteStatus status);
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      changeGroupsMuteStatus(NotificationMuteStatus status);

  Future<Either<NotificationFailure, NotificationMuteStatus>>
      fetchChatsMuteStatus();
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      fetchGroupsMuteStatus();

  Future<Either<NotificationFailure, NotificationToneType>>
      changeChatsNotificationTone(NotificationToneType type);
  Future<Either<NotificationFailure, NotificationToneType>>
      changeGroupsNotificationTone(NotificationToneType type);
  Future<Either<NotificationFailure, NotificationToneType>>
      changeCallsNotificationTone(NotificationToneType type);

  Future<Either<NotificationFailure, NotificationToneType>>
      fetchChatsNotificationToneType();
  Future<Either<NotificationFailure, NotificationToneType>>
      fetchGroupsNotificationToneType();
  Future<Either<NotificationFailure, NotificationToneType>>
      fetchCallsNotificationToneType();

  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      setChatsNotificationVibrationDuration(
          NotificationVibrationDuration duration);
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      setGroupsNotificationVibrationDuration(
          NotificationVibrationDuration duration);
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      setCallsNotificationVibrationDuration(
          NotificationVibrationDuration duration);

  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      fetchChatsNotificationVibrationDuration();
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      fetchGroupsNotificationVibrationDuration();
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      fetchCallsNotificationVibrationDuration();
}
