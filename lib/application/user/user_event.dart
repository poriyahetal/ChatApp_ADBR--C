part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getSignedInUser() = _GetSignedInUser;
  const factory UserEvent.createOrUpdateUser(KahoChatUser user) =
      _CreateOrUpdateUser;
  const factory UserEvent.updateProfilePicture(String url) =
      _UpdateProfilePicture;
  const factory UserEvent.searchUser({required String number}) = _SearchUser;
  const factory UserEvent.enableButton() = _EnableButton;
  const factory UserEvent.disableButton() = _DisableButton;
  const factory UserEvent.setSearchInitial() = _SetSearchInitial;
  const factory UserEvent.deleteAllChat({required bool alsoDeleteMedia}) =
      _DeleteAllChat;
  const factory UserEvent.createOrUpdateLastActiveStatus(
          {required LastActiveStatus activeStatus}) =
      _CreateOrUpdateLastActiveStatus;
  const factory UserEvent.createOrUpdateMuteUserGroupNotification({required MuteNotification mutedMotification}) = _CreateOrUpdateMuteUserGroupNotification;
  const factory UserEvent.getActiveStatus() = _GetActiveStatus;
  const factory UserEvent.setRadioGroupValue(int value) = _SetRadioGroupValue;
}
