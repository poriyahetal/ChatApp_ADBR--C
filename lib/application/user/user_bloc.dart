// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/active_status_model.dart';
import 'package:flutter_template/domain/user/i_user_facade.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/domain/user/mute_notification.dart';
import 'package:flutter_template/domain/user/user_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._userFacade) : super(UserState.initial());
  final IUserFacade _userFacade;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      getSignedInUser: (e) async* {
        yield state.copyWith(
          isUserSignedIn: false,
          signedInUser: KahoChatUser.empty(),
          createOrUpdateUserOption: none(),
          updateProfilePictureOption: none(),
          mutedUsersOrGroups: MuteNotification.empty(),
        );
        final result = await _userFacade.fetchCurrentUser();
        yield result.fold(
          (l) => state.copyWith(
            isUserSignedIn: false,
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
          (user) => state.copyWith(
            signedInUser: user,
            isUserSignedIn: true,
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
        );
        final opt = await _userFacade.fetchMutedNotification();
        yield opt.fold(
          (l) => state.copyWith(
            mutedUsersOrGroups: state.mutedUsersOrGroups,
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
          (MutedNotification) => state.copyWith(
            mutedUsersOrGroups: MutedNotification,
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
        );
      },
      createOrUpdateUser: (e) async* {
        yield state.copyWith(
          createOrUpdateUserOption: none(),
          updateProfilePictureOption: none(),
        );
        final opt = await _userFacade.createOrUpdateUser(e.user);
        yield opt.fold(
          (failure) => state.copyWith(
            createOrUpdateUserOption: some(left(failure)),
            updateProfilePictureOption: none(),
            // lastSeenPrivacy: state.lastSeenPrivacy,
            aboutYouPrivacy: state.aboutYouPrivacy,
            profilePhotoPrivacy: state.profilePhotoPrivacy,
          ),
          (updatedUser) => state.copyWith(
            signedInUser: updatedUser,
            createOrUpdateUserOption: some(right(unit)),
            updateProfilePictureOption: none(),
            // lastSeenPrivacy: updatedUser.lastSeen,
            aboutYouPrivacy: updatedUser.aboutYou,
            profilePhotoPrivacy: updatedUser.profilePhoto,
          ),
        );
      },
      updateProfilePicture: (e) async* {
        yield state.copyWith(
          updateProfilePictureOption: none(),
          createOrUpdateUserOption: none(),
        );
        final opt = await _userFacade.createOrUpdateUser(
          state.signedInUser.copyWith(profilePictureUrl: e.url),
        );
        yield opt.fold(
          (failure) => state.copyWith(
            updateProfilePictureOption: some(left(failure)),
            createOrUpdateUserOption: none(),
          ),
          (updatedUser) => state.copyWith(
            signedInUser: updatedUser,
            updateProfilePictureOption: some(right(unit)),
            createOrUpdateUserOption: none(),
          ),
        );
      },
      searchUser: (e) async* {
        yield state.copyWith(searchInitial: false, isLoading: true);
        final opt = await _userFacade.searchUser(number: e.number);
        yield opt.fold(
          (failure) => state.copyWith(
            searchInitial: false,
            isLoading: false,
          ),
          (searchlist) => state.copyWith(
            myContacts: searchlist,
            searchInitial: false,
            isLoading: false,
          ),
        );
      },
      enableButton: (_) async* {
        yield state.copyWith(isButtonEnable: false);
      },
      disableButton: (_) async* {
        yield state.copyWith(
          isButtonEnable: true,
        );
      },
      setSearchInitial: (_) async* {
        yield state.copyWith(
          searchInitial: true,
          isLoading: false,
          isButtonEnable: true,
        );
      },
      deleteAllChat: (e) async* {
        final opt =
            await _userFacade.deleteAllChat(alsoDeleteMedia: e.alsoDeleteMedia);
      },
      createOrUpdateLastActiveStatus: (e) async* {
        yield state.copyWith(
          createOrUpdateUserOption: none(),
          updateProfilePictureOption: none(),
          createOrUpdateLastActiveStatusOption: none(),
        );
        final opt = await _userFacade.createOrUpdateLastActiveStatus(
          activeStatus: e.activeStatus,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
            activeStatus: state.activeStatus,
            aboutYouPrivacy: state.aboutYouPrivacy,
            profilePhotoPrivacy: state.profilePhotoPrivacy,
          ),
          (activeStatus) => state.copyWith(
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
            createOrUpdateLastActiveStatusOption: some(right(unit)),
            activeStatus: activeStatus,
            lastSeenPrivacy: activeStatus.lastSeen,
          ),
        );
      },
      getActiveStatus: (e) async* {
        yield state.copyWith(
          activeStatus: LastActiveStatus.empty(),
          createOrUpdateUserOption: none(),
          updateProfilePictureOption: none(),
          createOrUpdateLastActiveStatusOption: none(),
        );
        final result = await _userFacade.fetchActiveStatus();
        yield result.fold(
          (l) => state.copyWith(
            createOrUpdateLastActiveStatusOption: none(),
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
          (activeStatus) => state.copyWith(
            activeStatus: activeStatus,
            createOrUpdateLastActiveStatusOption: none(),
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
        );
      },
      setRadioGroupValue: (e) async* {
        yield state.copyWith(radioGroupValue: e.value);
      },
      createOrUpdateMuteUserGroupNotification: (e) async* {
        yield state.copyWith(
          createOrUpdateUserOption: none(),
          updateProfilePictureOption: none(),
          mutedUsersOrGroups: MuteNotification.empty(),
        );

        final opt = await _userFacade.createOrUpdateMuteUserNotification(
          mutedNotification: e.mutedMotification,
        );
        yield opt.fold(
          (l) => state.copyWith(
            mutedUsersOrGroups: state.mutedUsersOrGroups,
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
          (MutedNotification) => state.copyWith(
            mutedUsersOrGroups: MutedNotification,
            createOrUpdateUserOption: none(),
            updateProfilePictureOption: none(),
          ),
        );
      },
    );
  }
}
