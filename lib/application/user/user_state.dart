part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required KahoChatUser signedInUser,
    required LastActiveStatus activeStatus,
    required MuteNotification mutedUsersOrGroups,
    required Option<Either<UserFailure, Unit>> createOrUpdateUserOption,
    required Option<Either<UserFailure, Unit>> updateProfilePictureOption,
    required Option<Either<UserFailure, Unit>>
        createOrUpdateLastActiveStatusOption,
    required bool searchInitial,
    required bool isLoading,
    required bool isButtonEnable,
    required bool isUserSignedIn,
    required List<KahoChatUser> myContacts,
    required Privacy lastSeenPrivacy,
    required Privacy aboutYouPrivacy,
    required Privacy profilePhotoPrivacy,
    required int radioGroupValue,
  }) = _UserState;
  factory UserState.initial() => UserState(
        mutedUsersOrGroups:MuteNotification.empty(),
        signedInUser: KahoChatUser.empty(),
        activeStatus: LastActiveStatus.empty(),
        createOrUpdateUserOption: none(),
        updateProfilePictureOption: none(),
        searchInitial: true,
        isLoading: false,
        isButtonEnable: true,
        isUserSignedIn: false,
        myContacts: [],
        lastSeenPrivacy: Privacy.Everyone,
        aboutYouPrivacy: Privacy.Everyone,
        profilePhotoPrivacy: Privacy.Everyone,
        createOrUpdateLastActiveStatusOption: none(),
        radioGroupValue: -1,
      );
}
