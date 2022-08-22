part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState({
    required List<PhoneContact> phoneContacts,
    required List<KahoChatUser> myContacts,
    required List<KahoChatUser> blockedContacts,
    required List<KahoChatUser> searchBlockedContacts,
    required List<KahoChatUser> searchUsers,
    required List<StoriesModel> contactStories,
    required List<StoriesModel> searchedContacts,
    required List<StoriesModel> filteredStories,
    required List<StoriesModel> muteStories,
    required List<StoriesModel> unmutedStories,
    required UserContacts myUserContacts,
    required bool isLoading,
    required int unseenStoryCount,
    required Option<Either<ContactFailure, Unit>>
        fetchPhoneContactFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        fetchMyContactFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        inviteContactFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
    blockedContactsFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
    searchBlockedContactsFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        searchUsersFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        storyContactsFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        searchMyContactsFailureorSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        filterContactStoriesFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        muteStoriesFailureOrSuccessOption,
    required Option<Either<ContactFailure, Unit>>
        unmutedStoriesFailureOrSuccessOption,
  }) = _ContactsState;

  factory ContactsState.initial() => ContactsState(
      phoneContacts: [],
      myContacts: [],
      blockedContacts: [],
      searchBlockedContacts: [],
      searchUsers: [],
      contactStories: [],
      searchedContacts: [],
      filteredStories: [],
      muteStories: [],
      unmutedStories: [],
      myUserContacts: UserContacts.empty(),
      unseenStoryCount: 0,
      isLoading: false,
      fetchMyContactFailureOrSuccessOption: none(),
      fetchPhoneContactFailureOrSuccessOption: none(),
      blockedContactsFailureOrSuccessOption: none(),
      searchBlockedContactsFailureOrSuccessOption: none(),
      inviteContactFailureOrSuccessOption: none(),
      storyContactsFailureOrSuccessOption: none(),
      searchMyContactsFailureorSuccessOption: none(),
      filterContactStoriesFailureOrSuccessOption: none(),
      muteStoriesFailureOrSuccessOption: none(),
      unmutedStoriesFailureOrSuccessOption: none(),
      searchUsersFailureOrSuccessOption: none());
}
