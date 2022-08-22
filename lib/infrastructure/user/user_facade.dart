import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/user/active_status_model.dart';
import 'package:flutter_template/domain/user/i_user_facade.dart';
import 'package:flutter_template/domain/user/mute_notification.dart';
import 'package:flutter_template/domain/user/user_failures.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserFacade)
class UserFacade implements IUserFacade {
  UserFacade(
    this._firestore,
    this._auth,
  );
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  // final DatabaseReference _databaseReference;
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  @override
  Future<Either<UserFailure, KahoChatUser>> createOrUpdateUser(
    KahoChatUser user,
  ) async {
    try {
      await _firestore.usersCollection
          .doc(_auth.currentUser!.uid)
          .set(user.toMap(), SetOptions(merge: true));
      await 
      FirebaseDatabase.instance.ref().child('chart_data').child(DateTime.now().year.toString()).child(DateTime.now().month.toString()).child('users').child(DateTime.now().day.toString()).set({user.uid:1});
      return right(user);
    } catch (e) {
      print(e.toString());
      return left(const UserFailure.createUserFailure());
    }
  }

  @override
  Future<Either<UserFailure, KahoChatUser>> fetchCurrentUser() async {
    try {
      final DocumentSnapshot snap = await _firestore.usersCollection
          .doc(Getters.getCurrentUserUid())
          .get();
      KahoChatUser user;
      if (snap.exists) {
        user = KahoChatUser.fromMap(snap.data() as Map<String, dynamic>);
      } else {
        user = KahoChatUser.empty();
      }
      //debugPrint("Signed In User ===> ${user.toString()}");
      return right(user);
    } catch (e) {
      return left(const UserFailure.userNotFound());
    }
  }

  @override
  Future<Either<UserFailure, List<KahoChatUser>>> searchUser({
    required String number,
  }) async {
    try {
      final List<KahoChatUser> mySearchList = [];
      KahoChatUser user;
      await _firestore
          .collection('users')
          .where('phoneNumber', isEqualTo: number)
          .get()
          .then((value) {
        value.docs.forEach((doc) {
          user = KahoChatUser.fromMap(doc.data() as Map<String, dynamic>);
          print(user.name);
          if (user.uid != Getters.getCurrentUserUid()) {
            mySearchList.add(user);
          }
        });
      });
      return right(mySearchList);
    } catch (e) {
      debugPrint(e.toString());
      return left(const UserFailure.userNotFound());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> deleteAllChat(
      {required bool alsoDeleteMedia}) async {
    try {
      final List<String> userDocRef = [];
      final collection = _firestore.chatCollection
          .doc(Getters.getCurrentUserUid())
          .chatUsersCollection;
      final snapshots = await collection.get();
      for (final doc in snapshots.docs) {
        print(doc.id);
        userDocRef.add(doc.id);
      }
      if (alsoDeleteMedia) {
        for (final String docRef in userDocRef) {
          final collection = _firestore.chatCollection
              .doc(Getters.getCurrentUserUid())
              .chatUsersCollection
              .doc(docRef)
              .messagesCollection;
          final messagSnapShot = await collection.get();
          await _firestore.invitesCollection
              .doc(Getters.getCurrentUserUid())
              .inviteUsersCollection
              .doc(docRef)
              .delete();
          messagSnapShot.docs.forEach((element) {
            element.reference.delete();
          });
        }
        for (final doc in snapshots.docs) {
          await doc.reference
              .delete()
              .then((value) {})
              .onError((error, stackTrace) {
            debugPrint(error.toString());
            Fluttertoast.showToast(
              msg: 'unable to delete chats',
              backgroundColor: Kolors.grey,
            );
          }).whenComplete(() {
            Fluttertoast.showToast(
              msg: 'Chats deleted successfully',
              backgroundColor: Kolors.grey,
            );
          });
        }

        print(userDocRef);
      } else {
        for (final String docRef in userDocRef) {
          final collection = _firestore.chatCollection
              .doc(Getters.getCurrentUserUid())
              .chatUsersCollection
              .doc(docRef)
              .messagesCollection;
          final messagSnapShot = await collection
              .where('type', isEqualTo: 'MessageType.text')
              .get();
          messagSnapShot.docs.forEach((element) {
            element.reference.delete().then((value) {
              Fluttertoast.showToast(
                msg: 'Chats deleted successfully',
                backgroundColor: Kolors.grey,
              );
            }).onError((error, stackTrace) {
              debugPrint(error.toString());
              Fluttertoast.showToast(
                msg: 'unable to delete chats',
                backgroundColor: Kolors.grey,
              );
            });
          });
        }
      }
      return right(unit);
    } catch (e) {
      return left(const UserFailure.customError());
    }
  }

  @override
  Future<Either<UserFailure, LastActiveStatus>> createOrUpdateLastActiveStatus({
    required LastActiveStatus activeStatus,
  }) async {
    try {
      final ref = _database.ref();
      ref
          .child('chatApp')
          .child('lastActive')
          .child(_auth.currentUser!.uid)
          .set(activeStatus.toJson());
      return right(activeStatus);
    } catch (e) {
      print(e.toString());
      return left(const UserFailure.createLastActive());
    }
  }

  @override
  Future<Either<UserFailure, LastActiveStatus>> fetchActiveStatus() async {
    try {
      final ref = _database.ref();
      final rf = ref
          .child('chatApp')
          .child('lastActive')
          .child(_auth.currentUser!.uid);
      final DatabaseEvent event = await rf.once();
      print(event.snapshot.value);
      LastActiveStatus lastActive;
      if (event.snapshot.exists) {
        lastActive = LastActiveStatus.fromJson(event.snapshot.value as String);
      } else {
        lastActive = LastActiveStatus.empty();
      }

      debugPrint("Activestatus ===> ${lastActive.toString()}");
      return right(lastActive);
    } catch (e) {
      return left(const UserFailure.createLastActive());
    }
  }

  @override
  Future<Either<UserFailure, MuteNotification>>
      createOrUpdateMuteUserNotification({
    required MuteNotification mutedNotification,
  }) async {
    try {
      final ref = _database.ref();
      ref
          .child('chatApp')
          .child('MutedNotification')
          .child(_auth.currentUser!.uid)
          .set(mutedNotification.toJson());
      return right(mutedNotification);
    } catch (e) {
      print(e.toString());
      return left(const UserFailure.createLastActive());
    }
  }

  @override
  Future<Either<UserFailure, MuteNotification>> fetchMutedNotification() async {
    try {
      final ref = _database.ref();
      final rf = ref
          .child('chatApp')
          .child('MutedNotification')
          .child(_auth.currentUser!.uid);
      DatabaseEvent event = await rf.once();
      print(event.snapshot.value);
      MuteNotification mutedNotification;
      if (event.snapshot.exists) {
        mutedNotification =
            MuteNotification.fromJson(event.snapshot.value as String);
      } else {
        mutedNotification = MuteNotification.empty();
      }

      //debugPrint("mutedNotification ===> ${mutedNotification.toString()}");
      return right(mutedNotification);
    } catch (e) {
      return left(const UserFailure.createLastActive());
    }
  }
}
