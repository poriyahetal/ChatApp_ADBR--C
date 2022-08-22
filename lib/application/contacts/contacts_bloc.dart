import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/contacts/contact_failures.dart';
import 'package:flutter_template/domain/contacts/i_contacts_facade.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contacts_bloc.freezed.dart';
part 'contacts_event.dart';
part 'contacts_state.dart';

@injectable
class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc(this._contactsFacade) : super(ContactsState.initial());
  final IContactsFacade _contactsFacade;

  @override
  Stream<ContactsState> mapEventToState(
    ContactsEvent event,
  ) async* {
    yield* event.map(
      fetchPhoneContacts: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
          phoneContacts: [],
        );
        final opt =
            await _contactsFacade.fetchAllPhoneContacts(context: e.context);
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            inviteContactFailureOrSuccessOption: none(),
            fetchPhoneContactFailureOrSuccessOption: some(left(failure)),
            fetchMyContactFailureOrSuccessOption: none(),
            searchMyContactsFailureorSuccessOption: none(),
          ),
          (contacts) => state.copyWith(
            isLoading: false,
            inviteContactFailureOrSuccessOption: none(),
            fetchPhoneContactFailureOrSuccessOption: some(right(unit)),
            fetchMyContactFailureOrSuccessOption: none(),
            phoneContacts: contacts,
            searchMyContactsFailureorSuccessOption: none(),
          ),
        );
      },
      inviteContact: (e) async* {
        yield state.copyWith(
          isLoading: false,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final opt = await _contactsFacade.inviteContact(e.contact);
        yield opt.fold(
          (l) => state.copyWith(
            isLoading: false,
            fetchPhoneContactFailureOrSuccessOption: none(),
            fetchMyContactFailureOrSuccessOption: none(),
            inviteContactFailureOrSuccessOption: some(left(l)),
            searchMyContactsFailureorSuccessOption: none(),
          ),
          (r) => state.copyWith(
            isLoading: false,
            fetchPhoneContactFailureOrSuccessOption: none(),
            fetchMyContactFailureOrSuccessOption: none(),
            inviteContactFailureOrSuccessOption: some(right(unit)),
            searchMyContactsFailureorSuccessOption: none(),
          ),
        );
      },
      fetchMyContacts: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final opt = await _contactsFacade.fetchMyContacts();
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            myContacts: [],
            fetchMyContactFailureOrSuccessOption: some(left(failure)),
            fetchPhoneContactFailureOrSuccessOption: none(),
            inviteContactFailureOrSuccessOption: none(),
            searchMyContactsFailureorSuccessOption: none(),
          ),
          (contacts) => state.copyWith(
            isLoading: false,
            myContacts: contacts,
            fetchMyContactFailureOrSuccessOption: some(right(unit)),
            fetchPhoneContactFailureOrSuccessOption: none(),
            inviteContactFailureOrSuccessOption: none(),
            searchMyContactsFailureorSuccessOption: none(),
          ),
        );
      },
      createUserContacts: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final opt = await _contactsFacade.createUserContacts(e.userContacts);
        yield opt.fold(
          (failure) => state.copyWith(
            myContacts: [],
            isLoading: false,
          ),
          (userContact) => state.copyWith(
            myUserContacts: userContact,
          ),
        );
      },
      storyContacts: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final opt = await _contactsFacade.storyContacts();
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            contactStories: [],
            storyContactsFailureOrSuccessOption: some(left(failure)),
            fetchPhoneContactFailureOrSuccessOption: none(),
            inviteContactFailureOrSuccessOption: none(),
            searchMyContactsFailureorSuccessOption: none(),
          ),
          (contacts) => state.copyWith(
            isLoading: false,
            contactStories: contacts,
            storyContactsFailureOrSuccessOption: some(right(unit)),
            fetchPhoneContactFailureOrSuccessOption: none(),
            inviteContactFailureOrSuccessOption: none(),
            searchMyContactsFailureorSuccessOption: none(),
          ),
        );
        final count = _contactsFacade.unseenStoriesCount();
        // yield state.copyWith(unseenStoryCount: count);

      },
      searchMyContacts: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final otp = await _contactsFacade.searchStories(e.query);
        yield otp.fold(
            (failure) => state.copyWith(
                isLoading: false,
                searchedContacts: [],
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                searchMyContactsFailureorSuccessOption: some(left(failure))),
            (contacts) => state.copyWith(
                isLoading: false,
                searchedContacts: contacts,
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                searchMyContactsFailureorSuccessOption: some(right(unit))));
      },
      blockedContacts: (e) async* {
        yield state.copyWith(
          isLoading: true,
          blockedContactsFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          fetchPhoneContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
        );
        final otp = await _contactsFacade.blockedContacts();
        yield otp.fold(
            (failure) => state.copyWith(
                  blockedContacts: [],
                  isLoading: false,
                  fetchMyContactFailureOrSuccessOption: none(),
                  fetchPhoneContactFailureOrSuccessOption: none(),
                  inviteContactFailureOrSuccessOption: none(),
                  blockedContactsFailureOrSuccessOption: some(left(failure)),
                ),
            (blockedContacts) => state.copyWith(
                isLoading: false,
                blockedContacts: blockedContacts,
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                blockedContactsFailureOrSuccessOption: some(right(unit))));
      },
      searchBlockedContacts: (e) async* {
        yield state.copyWith(
            isLoading: true,
            searchBlockedContactsFailureOrSuccessOption: none());
        final otp = await _contactsFacade.searchBlockedContacts(e.query);
        yield otp.fold(
            (failure) => state.copyWith(
                  searchBlockedContacts: [],
                  isLoading: false,
                  searchBlockedContactsFailureOrSuccessOption:
                      some(left(failure)),
                ),
            (contact) => state.copyWith(
                  isLoading: false,
                  searchBlockedContacts: contact,
                  searchBlockedContactsFailureOrSuccessOption:
                      some(right(unit)),
                ));
      },
      searchUsers: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final otp = await _contactsFacade.searchUsers(e.query);
        yield otp.fold(
            (failure) => state.copyWith(
                isLoading: false,
                searchUsers: [],
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                searchUsersFailureOrSuccessOption: some(left(failure))),
            (contacts) => state.copyWith(
                isLoading: false,
                searchUsers: contacts,
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                searchUsersFailureOrSuccessOption: some(right(unit))));
      },
      filterContactStories: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchPhoneContactFailureOrSuccessOption: none(),
          fetchMyContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final otp = await _contactsFacade.filterStories(e.hour);
        yield otp.fold(
            (failure) => state.copyWith(
                isLoading: false,
                filteredStories: [],
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                filterContactStoriesFailureOrSuccessOption:
                    some(left(failure))),
            (contacts) => state.copyWith(
                isLoading: false,
                filteredStories: contacts,
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                filterContactStoriesFailureOrSuccessOption: some(right(unit))));
      },
      muteStories: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchMyContactFailureOrSuccessOption: none(),
          fetchPhoneContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final otp = await _contactsFacade.muteStories(e.currentUser);
        yield otp.fold(
            (failure) => state.copyWith(
                isLoading: false,
                muteStories: [],
                fetchPhoneContactFailureOrSuccessOption: none(),
                fetchMyContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                muteStoriesFailureOrSuccessOption: some(left(failure))),
            (contacts) => state.copyWith(
                isLoading: false,
                muteStories: contacts,
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                muteStoriesFailureOrSuccessOption: some(right(unit))));
      },
      unmutedStories: (e) async* {
        yield state.copyWith(
          isLoading: true,
          fetchMyContactFailureOrSuccessOption: none(),
          fetchPhoneContactFailureOrSuccessOption: none(),
          inviteContactFailureOrSuccessOption: none(),
          searchMyContactsFailureorSuccessOption: none(),
        );
        final otp = await _contactsFacade.unmutedStories(e.currentUser);
        yield otp.fold(
            (failure) => state.copyWith(
                isLoading: false,
                unmutedStories: [],
                fetchPhoneContactFailureOrSuccessOption: none(),
                fetchMyContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                unmutedStoriesFailureOrSuccessOption: some(left(failure))),
            (contacts) => state.copyWith(
                isLoading: false,
                unmutedStories: contacts,
                fetchMyContactFailureOrSuccessOption: none(),
                fetchPhoneContactFailureOrSuccessOption: none(),
                inviteContactFailureOrSuccessOption: none(),
                unmutedStoriesFailureOrSuccessOption: some(right(unit))));
      },
      unseenStories: (e) async*{
        final count = await _contactsFacade.unseenStoriesCount();
        yield count.fold((l) => state.copyWith(), (countS) => state.copyWith(unseenStoryCount: countS));
      }
    );
  }
}
