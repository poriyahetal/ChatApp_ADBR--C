// ignore_for_file: cast_nullable_to_non_nullable, avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/contacts/contact_failures.dart';
import 'package:flutter_template/domain/contacts/i_contacts_facade.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/contacts/story_contact.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

@LazySingleton(as: IContactsFacade)
class ContactsFacade implements IContactsFacade {
  ContactsFacade(this._firestore, this._auth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  @override
  Future<Either<ContactFailure, List<PhoneContact>>> fetchAllPhoneContacts(
      {required BuildContext context}) async {
    try {
      // if (!await Permission.contacts.isGranted) {
      //   AutoRouter.of(context).push(
      //     ContactPermissionRoute(
      //       onPressed: () async {
      //         Navigator.pop(context);
      //         if (await Getters.requestPermission(Permission.contacts)) {}
      //       },
      //     ),
      //   );
      // } else {}

      if (await Permission.contacts.isGranted) {
        final Iterable<Contact> contacts =
            await ContactsService.getContacts(withThumbnails: false);
        final List<PhoneContact> phoneContacts = [];

        contacts.forEach((contact) {
          if (contact.displayName != null &&
              contact.phones != null &&
              contact.phones!.isNotEmpty) {
            phoneContacts.add(
              PhoneContact(
                name: contact.displayName!,
                phoneNumber: contact.phones!.first.value!.toValidPhoneNumber(),
                isRegisteredOnApp: false,
              ),
            );
          }
        });
        phoneContacts.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
        print(phoneContacts);
        return right(phoneContacts);
      } else {
        return left(const ContactFailure.permisssionDenied());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const ContactFailure.fetchContactFailure());
    }
  }

  @override
  Future<Either<ContactFailure, Unit>> inviteContact(
    PhoneContact contact,
  ) async {
    try {
      final String launchUrl =
          "sms:${contact.phoneNumber}?body=${AppConstants.inviteText}";
      await canLaunch(launchUrl)
          ? await launch(launchUrl)
          : throw 'Could not launch $launchUrl';
      return right(unit);
    } catch (e) {
      return left(ContactFailure.inviteContactFailure(contact.name));
    }
  }

  List<KahoChatUser> myContactList = [];
  final List<StoriesModel> myStoryContacts = [];
  KahoChatUser? currentUser;

  // final List<PhoneContact> myUserContacts = [];

  @override
  Future<Either<ContactFailure, UserContacts>> createUserContacts(
      UserContacts userContacts) async {
    await _firestore.contactsCollection
        .doc(_auth.currentUser!.uid)
        .set(userContacts.toMap(), SetOptions(merge: true));
    return right(userContacts);
  }

  @override
  Future<Either<ContactFailure, List<KahoChatUser>>> fetchMyContacts() async {
    try {
      if (await Permission.contacts.isGranted) {
        final Iterable<Contact> contacts =
            await ContactsService.getContacts(withThumbnails: false);
        final List<PhoneContact> phoneContacts = [];
        final List<StoryContact> storyContact = [];

        contacts.forEach(
          (contact) {
            if (contact.displayName != null &&
                contact.phones != null &&
                contact.phones!.isNotEmpty) {
              phoneContacts.add(
                PhoneContact(
                  name: contact.displayName!,
                  phoneNumber:
                      contact.phones!.first.value!.toValidPhoneNumber(),
                  isRegisteredOnApp: false,
                ),
              );
            }
          },
        );

        final List<KahoChatUser> myContactListt = [];
        final QuerySnapshot snap = await _firestore.usersCollection.get();
        snap.docs.forEach((doc) {
          final KahoChatUser user =
              KahoChatUser.fromMap(doc.data() as Map<String, dynamic>);
          final StoryContact sContact =
              StoryContact.fromMap(doc.data() as Map<String, dynamic>);
          for (final x in phoneContacts) {
            if (x != null &&
                x.phoneNumber.contains(user.phoneNumber) &&
                user.uid != Getters.getCurrentUserUid()) {
              myContactListt.add(user.copyWith(name: x.name));
              storyContact.add(sContact);
              print('phone no:${x.phoneNumber}');
              print('user no: ${user.phoneNumber}');
            }
          }
          if (user.uid == Getters.getCurrentUserUid()) {
            currentUser = user;
          }
        });
        final DocumentSnapshot createdUser = await _firestore.contactsCollection
            .doc(Getters.getCurrentUserUid())
            .get();
        UserContacts UContacts;
        if (createdUser.exists) {
          print('the document exist');
          UContacts =
              UserContacts.fromMap(createdUser.data() as Map<String, dynamic>);
        } else {
          print('the document doesnt exist');
          UContacts = UserContacts.empty();
        }

        _firestore.contactsCollection.doc(_auth.currentUser!.uid).set(
            UContacts.copyWith(storyContact: storyContact).toMap(),
            SetOptions(merge: true));

        debugPrint(myContactListt.toString());
        myContactList = myContactListt;
        return right(myContactListt);
      } else {
        return left(const ContactFailure.permisssionDenied());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const ContactFailure.fetchContactFailure());
    }
    // } catch (e) {
    //   debugPrint(e.toString());
    //   return left(const ContactFailure.fetchContactFailure());
    // }
  }

  @override
  Future<Either<ContactFailure, List<KahoChatUser>>> blockedContacts() async {
    List<KahoChatUser> blockedList = [];
    KahoChatUser? cUser;
    print('blocked User:');
    final QuerySnapshot snap = await _firestore.usersCollection.get();
    snap.docs.forEach((doc) {
      final KahoChatUser user =
          KahoChatUser.fromMap(doc.data() as Map<String, dynamic>);
      if (user.uid.contains(Getters.getCurrentUserUid())) {
        cUser = user;
      }
    });

    myContactList.forEach((element) {
      if (cUser!.mute!.containsKey(element.uid)) {
        blockedList.add(element);
        print(element);
        print('blocked User:${blockedList}');
      }
    });
    return right(blockedList);
  }

  @override
  Future<Either<ContactFailure, List<KahoChatUser>>> searchBlockedContacts(
      String query) async {
    List<KahoChatUser> blockedList = [];
    KahoChatUser? cUser;
    final QuerySnapshot snap = await _firestore.usersCollection.get();
    snap.docs.forEach((doc) {
      final KahoChatUser user =
          KahoChatUser.fromMap(doc.data() as Map<String, dynamic>);
      if (user.uid.contains(_auth.currentUser!.uid)) {
        cUser = user;
      }
    });
    myContactList.forEach((element) {
      if (cUser!.mute!.containsKey(element.uid)) {
        blockedList.add(element);
      }
      else{
        
      }
    });

    return right(blockedList
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList());
  }

  @override
  Future<Either<ContactFailure, List<StoriesModel>>> storyContacts() async {
    // final List<StoriesModel> myStoryContacts = [];
    myStoryContacts.clear();
    try {
      if (await Permission.contacts.isGranted) {
        final Iterable<Contact> contacts =
            await ContactsService.getContacts(withThumbnails: false);
        final List<PhoneContact> phoneContacts = [];

        contacts.forEach((contact) {
          if (contact.displayName != null &&
              contact.phones != null &&
              contact.phones!.isNotEmpty) {
            phoneContacts.add(
              PhoneContact(
                name: contact.displayName!,
                phoneNumber: contact.phones!.first.value!.toValidPhoneNumber(),
                isRegisteredOnApp: false,
              ),
            );
          }
        });

        final QuerySnapshot myContactsSnap = await _firestore.storiesCollection
            .where('storiesPrivacy', isEqualTo: 'StoryPrivacy.myContacts')
            // .where()
            .get();
        // myContactsSnap.docs.forEach((element) {

        // });

        myContactsSnap.docs.forEach((doc) async {
          try {
            final StoriesModel contactStories =
                StoriesModel.fromMap(doc.data() as Map<String, dynamic>);
            //print("printing ${contactStories.toString()}");
            final DocumentSnapshot cont = await _firestore.contactsCollection
                .doc(contactStories.uid)
                .get();
            // cont.forEach((contacts) {
            final UserContacts userContacts =
                UserContacts.fromMap(cont.data() as Map<String, dynamic>);
            for (final x in phoneContacts) {
              if (x != null &&
                  x.phoneNumber.contains(contactStories.phoneNumber) &&
                  contactStories.uid != Getters.getCurrentUserUid()) {
                for (final phones in userContacts.storyContact!) {
                  if (phones.uid
                      .contains(FirebaseAuth.instance.currentUser!.uid)) {
                    //  if (!myStoryContacts.contains(contactStories)) {
                    myStoryContacts.add(contactStories);
                    //  }
                  }
                }
              }
            }
          } catch (e) {
            print(e.toString());
          }
        });
        final QuerySnapshot onlyShareWithSnap = await _firestore
            .storiesCollection
            .where('storiesPrivacy', isEqualTo: 'StoryPrivacy.onlyShareWith')
            .get();

        onlyShareWithSnap.docs.forEach((doc) async {
          final StoriesModel contactStories =
              StoriesModel.fromMap(doc.data() as Map<String, dynamic>);
          final DocumentSnapshot cont = await _firestore.contactsCollection
              .doc(contactStories.uid.toString())
              .get();
          // cont.forEach((contacts) {
          final UserContacts userContacts =
              UserContacts.fromMap(cont.data() as Map<String, dynamic>);
          for (final x in phoneContacts) {
            if (x != null &&
                x.phoneNumber.contains(contactStories.phoneNumber) &&
                contactStories.uid != Getters.getCurrentUserUid()) {
              for (final phones in userContacts.storyContact!) {
                if (phones.uid
                        .contains(FirebaseAuth.instance.currentUser!.uid) &&
                    userContacts.shareWith!.keys
                        .contains(FirebaseAuth.instance.currentUser!.uid)) {
                  myStoryContacts.add(contactStories);
                }
              }
            }
          }
        });
        final QuerySnapshot myContactsExceptSnap = await _firestore
            .storiesCollection
            .where('storiesPrivacy', isEqualTo: 'StoryPrivacy.myContactsExcept')
            .get();

        myContactsExceptSnap.docs.forEach((doc) async {
          final StoriesModel contactStories =
              StoriesModel.fromMap(doc.data() as Map<String, dynamic>);
          final DocumentSnapshot cont = await _firestore.contactsCollection
              .doc(contactStories.uid.toString())
              .get();
          // cont.forEach((contacts) {
          final UserContacts userContacts =
              UserContacts.fromMap(cont.data() as Map<String, dynamic>);
          for (final x in phoneContacts) {
            if (x != null &&
                x.phoneNumber.contains(contactStories.phoneNumber) &&
                contactStories.uid != Getters.getCurrentUserUid()) {
              for (final phones in userContacts.storyContact!) {
                if (phones.uid
                        .contains(FirebaseAuth.instance.currentUser!.uid) &&
                    !userContacts.contactsExcept!.keys
                        .contains(FirebaseAuth.instance.currentUser!.uid)) {
                  myStoryContacts.add(contactStories);
                }
              }
            }
          }
          // });
        });
        // myStoryContacts.forEach((element) {
        //   print(element.toString());
        // });
        //debugPrint('my contacts list ====> ${myContactList.toString()}');
        return right(myStoryContacts);
      } else {
        return left(const ContactFailure.permisssionDenied());
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(const ContactFailure.fetchContactFailure());
    }
  }

  @override
  Future<Either<ContactFailure, List<KahoChatUser>>> searchUsers(
      String query) async {
    List<KahoChatUser> searchedContacts = myContactList
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return right(searchedContacts);
  }

  @override
  Future<Either<ContactFailure, List<KahoChatUser>>> searchBlockedUsers(
      String query, String userUid) async {
    List<KahoChatUser> searchedContacts = myContactList
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()) &&
            element.mute!.containsKey(userUid))
        .toList();
    return right(searchedContacts);
  }

  @override
  Future<Either<ContactFailure, List<StoriesModel>>> searchStories(
      String query) async {
    List<StoriesModel> searchedContacts = myStoryContacts
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return right(searchedContacts);
  }

  @override
  Future<Either<ContactFailure, List<StoriesModel>>> muteStories(
      String currentUser) async {
    List<StoriesModel> MutedContacts = myStoryContacts
        .where((element) => element.mute == null
            ? element.name.isNotEmpty
            : element.mute!.keys.contains(currentUser))
        .toList();
    return right(MutedContacts);
  }

  Future<Either<ContactFailure, List<StoriesModel>>> unmutedStories(
      String currentUser) async {
    List<StoriesModel> unMutedContacts = myStoryContacts
        .where((element) => element.mute == null
            ? element.name.isNotEmpty
            : !element.mute!.keys.contains(currentUser))
        .toList();
    return right(unMutedContacts);
  }

  @override
  Future<Either<ContactFailure, int>> unseenStoriesCount() async {
    int storySeen = 0;
    List<StoriesModel> unMutedContacts = myStoryContacts
        .where((element) => element.mute == null
            ? element.name.isNotEmpty
            : !element.mute!.keys.contains(Getters.getCurrentUserUid()))
        .toList();
    for (int i = 0; i <= unMutedContacts.length - 1; i++) {
      StoriesModel personStory = unMutedContacts[i];
      for (int j = 0; j <= personStory.stories.length - 1; j++) {
        DateTime currentTime = DateTime.now();
        if (!personStory.stories[j].react!
                .containsKey(Getters.getCurrentUserUid()) &&
            currentTime
                    .difference(personStory.stories[j].created!.toDate())
                    .inHours <=
                24) {
          storySeen++;
        }
      }
    }
    final DocumentSnapshot myStoriesSnap = await _firestore.storiesCollection
        .doc(Getters.getCurrentUserUid())
        .get();
    StoriesModel myStory =
        StoriesModel.fromMap(myStoriesSnap.data() as Map<String, dynamic>);
    _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
        myStory.copyWith(unseenStories: storySeen).toMap(),
        SetOptions(merge: true));

    return right(storySeen);
  }

  @override
  Future<Either<ContactFailure, List<StoriesModel>>> filterStories(
      int hour) async {
    DateTime currentTime = DateTime.now();
    List<StoriesModel> filteredStories = [];
    void filterByTime() {
      for (int i = 0; i <= myStoryContacts.length - 1; i++) {
        if (currentTime
                .difference(myStoryContacts[i].stories.last.created!.toDate())
                .inHours <=
            hour) {
          if (!filteredStories.contains(myStoryContacts[i])) {
            filteredStories.add(myStoryContacts[i]);
          }

          print(
              'difference:${currentTime.difference(myStoryContacts[i].stories.last.created!.toDate()).inHours}');
        } else {}
      }
    }

    var filter = filterByTime();
    return right(filteredStories);
  }
}
