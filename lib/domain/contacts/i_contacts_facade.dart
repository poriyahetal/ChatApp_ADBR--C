import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/contacts/contact_failures.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class IContactsFacade {
  Future<Either<ContactFailure, List<PhoneContact>>> fetchAllPhoneContacts(
      {required BuildContext context});
  Future<Either<ContactFailure, Unit>> inviteContact(PhoneContact contact);
  Future<Either<ContactFailure, List<KahoChatUser>>> fetchMyContacts();
  Future<Either<ContactFailure, List<KahoChatUser>>> blockedContacts();
  Future<Either<ContactFailure, List<KahoChatUser>>> searchBlockedContacts(
      String query);
  Future<Either<ContactFailure, List<KahoChatUser>>> searchUsers(String query);
  Future<Either<ContactFailure, List<KahoChatUser>>> searchBlockedUsers(
      String query, String userUid);
  Future<Either<ContactFailure, UserContacts>> createUserContacts(
      UserContacts userContacts);
  Future<Either<ContactFailure, List<StoriesModel>>> storyContacts();
  Future<Either<ContactFailure, List<StoriesModel>>> searchStories(
      String query);
  Future<Either<ContactFailure, List<StoriesModel>>> filterStories(int hour);
  Future<Either<ContactFailure, List<StoriesModel>>> muteStories(
      String currentUser);
  Future<Either<ContactFailure, List<StoriesModel>>> unmutedStories(
      String currentUser);
  Future<Either<ContactFailure,int>> unseenStoriesCount();
  // Future<Either<ContactFailure, int>> unseenStoriesCount(String currentUser);

}
