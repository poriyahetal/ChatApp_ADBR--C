import 'package:bloc/bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/notification/i_notification_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationFacade _notificationFacade;
  NotificationBloc(this._notificationFacade)
      : super(NotificationState.initial());
  @override
  Stream<NotificationState> mapEventToState(NotificationEvent event) async* {
    yield* event.map(
      started: (e) async* {
        final isChatsMute = await _notificationFacade.fetchChatsMuteStatus();
        final isGroupsMute = await _notificationFacade.fetchGroupsMuteStatus();
        final chatsToneType =
            await _notificationFacade.fetchChatsNotificationToneType();
        final groupsToneType =
            await _notificationFacade.fetchGroupsNotificationToneType();
        final callsToneType =
            await _notificationFacade.fetchCallsNotificationToneType();
        final chatsVibrationDuration =
            await _notificationFacade.fetchChatsNotificationVibrationDuration();
        final groupsVibrationDuration = await _notificationFacade
            .fetchGroupsNotificationVibrationDuration();
        final callsVibrationDuration =
            await _notificationFacade.fetchCallsNotificationVibrationDuration();

        if (isChatsMute.isRight() &&
            isGroupsMute.isRight() &&
            chatsToneType.isRight() &&
            groupsToneType.isRight() &&
            callsToneType.isRight() &&
            chatsVibrationDuration.isRight() &&
            groupsVibrationDuration.isRight() &&
            callsVibrationDuration.isRight()) {
          yield state.copyWith(
            isChatMute:
                isChatsMute.getOrElse(() => NotificationMuteStatus.disabled),
            isGroupsMute:
                isGroupsMute.getOrElse(() => NotificationMuteStatus.disabled),
            groupsNotificationToneType:
                groupsToneType.getOrElse(() => NotificationToneType.nDefault),
            chatsNotificationToneType:
                chatsToneType.getOrElse(() => NotificationToneType.nDefault),
            callsNotificationToneType:
                callsToneType.getOrElse(() => NotificationToneType.nDefault),
            chatsNotificationVibrationDuration: chatsVibrationDuration
                .getOrElse(() => NotificationVibrationDuration.normal),
            groupsNotificationVibrationDuration: groupsVibrationDuration
                .getOrElse(() => NotificationVibrationDuration.normal),
            callsNotificationVibrationDuration: callsVibrationDuration
                .getOrElse(() => NotificationVibrationDuration.normal),
          );
        }
      },
      setChatMute: (e) async* {
        final result =
            await _notificationFacade.changeChatsMuteStatus(e.status);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(isChatMute: r),
        );
      },
      setGroupMute: (e) async* {
        final result =
            await _notificationFacade.changeGroupsMuteStatus(e.status);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(isGroupsMute: r),
        );
      },
      setChatsNotificationTone: (e) async* {
        final result =
            await _notificationFacade.changeChatsNotificationTone(e.type);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
            chatsNotificationToneType: r,
          ),
        );
      },
      setGroupsNotificationTone: (e) async* {
        final result =
            await _notificationFacade.changeGroupsNotificationTone(e.type);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
            groupsNotificationToneType: r,
          ),
        );
      },
      setCallsNotificationTone: (e) async* {
        final result =
            await _notificationFacade.changeCallsNotificationTone(e.type);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
            callsNotificationToneType: r,
          ),
        );
      },
      setCallsNotificationDuration: (e) async* {
        final result = await _notificationFacade
            .setCallsNotificationVibrationDuration(e.vibrationDuration);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(callsNotificationVibrationDuration: r),
        );
      },
      setChatsNotificationDuration: (e) async* {
        final result = await _notificationFacade
            .setChatsNotificationVibrationDuration(e.vibrationDuration);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(chatsNotificationVibrationDuration: r),
        );
      },
      setGroupsNotificationDuration: (e) async* {
        final result = await _notificationFacade
            .setGroupsNotificationVibrationDuration(e.vibrationDuration);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(groupsNotificationVibrationDuration: r),
        );
      },
    );
  }
}
