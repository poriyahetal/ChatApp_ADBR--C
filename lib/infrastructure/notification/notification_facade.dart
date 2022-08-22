import 'package:file_picker/file_picker.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/domain/notification/i_notification_facade.dart';
import 'package:flutter_template/domain/notification/notification_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INotificationFacade)
class NotificationFacade implements INotificationFacade {
  @override
  Future<Either<NotificationFailure, NotificationToneType>>
      changeCallsNotificationTone(NotificationToneType type) async {
    const failure = NotificationFailure.setCallsNotificationToneFailure();
    if (type == NotificationToneType.nDefault) {
      try {
        Storage().secureStorage.write(
              key: NotificationConstants.callsNotificationToneType,
              value: type.toString(),
            );
        return right(type);
      } catch (e) {
        return left(failure);
      }
    } else {
      try {
        final FilePickerResult? result =
            await FilePicker.platform.pickFiles(type: FileType.audio);
        if (result != null) {
          final String? path = result.files.single.path;
          if (path != null) {
            try {
              // this stores the notification type as custom
              Storage().secureStorage.write(
                    key: NotificationConstants.callsNotificationToneType,
                    value: type.toString(),
                  );
              // this stores the customNotification file path
              Storage().secureStorage.write(
                    key: NotificationConstants.callsCustomNotificationPath,
                    value: path,
                  );
              return right(type);
            } catch (e) {
              return left(failure);
            }
          } else {
            return left(failure);
          }
        }
        return left(failure);
      } catch (e) {
        return left(failure);
      }
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      changeChatsMuteStatus(NotificationMuteStatus status) async {
    try {
      Storage().secureStorage.write(
            key: NotificationConstants.chatsMute,
            value: status.toString(),
          );

      return right(status);
    } catch (e) {
      return left(const NotificationFailure.setChatsMuteFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationToneType>>
      changeChatsNotificationTone(NotificationToneType type) async {
    const failure = NotificationFailure.setChatsNotificationToneFailure();

    if (type == NotificationToneType.nDefault) {
      try {
        Storage().secureStorage.write(
              key: NotificationConstants.chatsNotificationToneType,
              value: type.toString(),
            );
        return right(type);
      } catch (e) {
        return left(failure);
      }
    } else if (type == NotificationToneType.custom) {
      try {
        final result = await FilePicker.platform.pickFiles(
            type: FileType.audio, dialogTitle: "Pick a notification sound");
        if (result != null) {
          final String? path = result.files.single.path;
          print(path);
          if (path != null) {
            try {
              // this stores the chat notification type as custom
              Storage().secureStorage.write(
                    key: NotificationConstants.chatsNotificationToneType,
                    value: type.toString(),
                  );
              // this stores the chat custom notification file path
              Storage().secureStorage.write(
                    key: NotificationConstants.chatsCustomNotificationPath,
                    value: path,
                  );
              return right(type);
            } catch (e) {
              return left(failure);
            }
          } else {
            return left(failure);
          }
        }
        return left(failure);
      } catch (e) {
        return left(failure);
      }
    }
    return left(failure);
  }

  @override
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      changeGroupsMuteStatus(NotificationMuteStatus status) async {
    try {
      Storage().secureStorage.write(
          key: NotificationConstants.groupsMute, value: status.toString());
      print(status);
      return right(status);
    } catch (e) {
      return left(const NotificationFailure.setGroupsMuteFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationToneType>>
      changeGroupsNotificationTone(NotificationToneType type) async {
    const failure = NotificationFailure.setGroupsNotificationToneFailure();

    if (type == NotificationToneType.nDefault) {
      try {
        Storage().secureStorage.write(
              key: NotificationConstants.groupsNotificationToneType,
              value: type.toString(),
            );
        return right(type);
      } catch (e) {
        return left(failure);
      }
    } else {
      try {
        final FilePickerResult? result =
            await FilePicker.platform.pickFiles(type: FileType.audio);
        if (result != null) {
          final String? path = result.files.single.path;
          if (path != null) {
            try {
              // this stores the groups notification type as custom
              Storage().secureStorage.write(
                    key: NotificationConstants.groupsNotificationToneType,
                    value: type.toString(),
                  );
              // this stores the groups custom notificaiton file path
              Storage().secureStorage.write(
                    key: NotificationConstants.groupsCustomNotificationPath,
                    value: path,
                  );
              return right(type);
            } catch (e) {
              return left(failure);
            }
          } else {
            return left(failure);
          }
        }
        return left(failure);
      } catch (e) {
        return left(failure);
      }
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationToneType>>
      fetchCallsNotificationToneType() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.callsNotificationToneType);
      if (result == NotificationToneType.custom.toString()) {
        return right(NotificationToneType.custom);
      } else {
        return right(NotificationToneType.nDefault);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      fetchChatsMuteStatus() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.chatsMute);
      if (result == NotificationMuteStatus.enabled.toString()) {
        return right(NotificationMuteStatus.enabled);
      } else {
        return right(NotificationMuteStatus.disabled);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationToneType>>
      fetchChatsNotificationToneType() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.chatsNotificationToneType);
      if (result == NotificationToneType.custom.toString()) {
        return right(NotificationToneType.custom);
      } else {
        return right(NotificationToneType.nDefault);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationMuteStatus>>
      fetchGroupsMuteStatus() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.groupsMute);
      if (result == NotificationMuteStatus.enabled.toString()) {
        return right(NotificationMuteStatus.enabled);
      } else {
        return right(NotificationMuteStatus.disabled);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationToneType>>
      fetchGroupsNotificationToneType() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.callsNotificationToneType);
      if (result == NotificationToneType.custom.toString()) {
        return right(NotificationToneType.custom);
      } else {
        return right(NotificationToneType.nDefault);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      fetchCallsNotificationVibrationDuration() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.callsVibrationDuration);
      if (result == NotificationVibrationDuration.normal.toString()) {
        return right(NotificationVibrationDuration.normal);
      } else if (result == NotificationVibrationDuration.medium.toString()) {
        return right(NotificationVibrationDuration.medium);
      } else {
        return right(NotificationVibrationDuration.long);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      fetchChatsNotificationVibrationDuration() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.chatsVibrationDuration);
      if (result == NotificationVibrationDuration.normal.toString()) {
        return right(NotificationVibrationDuration.normal);
      } else if (result == NotificationVibrationDuration.medium.toString()) {
        return right(NotificationVibrationDuration.medium);
      } else {
        return right(NotificationVibrationDuration.long);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      fetchGroupsNotificationVibrationDuration() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: NotificationConstants.groupsVibrationDuration);
      if (result == NotificationVibrationDuration.normal.toString()) {
        return right(NotificationVibrationDuration.normal);
      } else if (result == NotificationVibrationDuration.medium.toString()) {
        return right(NotificationVibrationDuration.medium);
      } else {
        return right(NotificationVibrationDuration.long);
      }
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      setCallsNotificationVibrationDuration(
          NotificationVibrationDuration duration) async {
    try {
      Storage().secureStorage.write(
          key: NotificationConstants.callsVibrationDuration,
          value: duration.toString());
      return right(duration);
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      setChatsNotificationVibrationDuration(
          NotificationVibrationDuration duration) async {
    try {
      Storage().secureStorage.write(
          key: NotificationConstants.chatsVibrationDuration,
          value: duration.toString());
      return right(duration);
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }

  @override
  Future<Either<NotificationFailure, NotificationVibrationDuration>>
      setGroupsNotificationVibrationDuration(
          NotificationVibrationDuration duration) async {
    try {
      Storage().secureStorage.write(
          key: NotificationConstants.groupsVibrationDuration,
          value: duration.toString());
      return right(duration);
    } catch (e) {
      return left(const NotificationFailure.fetchNotificationFailure());
    }
  }
}
