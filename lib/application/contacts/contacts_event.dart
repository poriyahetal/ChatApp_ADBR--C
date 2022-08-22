part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.fetchPhoneContacts(
      {required BuildContext context}) = _FetchPhoneContacts;
  const factory ContactsEvent.fetchMyContacts() = _FetchMyContacts;
  const factory ContactsEvent.inviteContact(PhoneContact contact) =
      _InviteContact;
  const factory ContactsEvent.createUserContacts(UserContacts userContacts) =
      _CreateUserContacts;
  const factory ContactsEvent.blockedContacts() = _BlockedContacts;
  const factory ContactsEvent.searchBlockedContacts(String query) =
      _SearchBlockedContacts;
  const factory ContactsEvent.searchUsers(String query) = _SearchUsers;
  const factory ContactsEvent.storyContacts() = _StoryContacts;
  const factory ContactsEvent.searchMyContacts(String query) =
      _SearchMyContacts;
  const factory ContactsEvent.filterContactStories(int hour) =
      _filterContactStories;
  const factory ContactsEvent.muteStories(String currentUser) = _muteStories;
  const factory ContactsEvent.unmutedStories(String currentUser) =
      _unmutedStories;
  const factory ContactsEvent.unseenStories() = _UnseenStories;
}
