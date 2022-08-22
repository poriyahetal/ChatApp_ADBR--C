import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get usersCollection => collection('users');
  CollectionReference get chatCollection => collection("chats");
  CollectionReference get groupCollection => collection("groups");
  CollectionReference get callsCollection => collection("calls");
  CollectionReference get callRoomParticipants =>
      collection("call room participants");
  CollectionReference get callsHistoryCollection => collection("calls history");
  CollectionReference get contactsCollection => collection("contacts");
  CollectionReference get storiesCollection => collection("stories");
  CollectionReference get countsCollection => collection("counts");
  CollectionReference get invitesCollection => collection("invites");

  CollectionReference get lastActiveCollection => collection("LastActive");
  // CollectionReference get liveCallsCollection => collection("live calls");
  CollectionReference get broadcastCollection => collection("broadcasts");
}

// extension DatabaseX on FirebaseDatabase {
//   DatabaseReference get ref => FirebaseDatabase.instance
//       .refFromURL("https://noble-kingdom-318209-default-rtdb.firebaseio.com/");
//   DatabaseReference get appChild => ref.child('chatApp');
// }

extension CollectionReferenceX on CollectionReference {
  DocumentReference get featuresDocument => doc('Features');
}

extension ReferenceX on Reference {
  Reference get storageRef => FirebaseStorage.instance.ref();
  Reference get profilePicturesStorageCollection =>
      storageRef.child('profile pictures');
  Reference get statusPicturesStorageCollection =>
      storageRef.child('status pictures');
  Reference get imagesPicturesStorageCollection =>
      storageRef.child('images pictures');
  Reference get fileStorageCollection => storageRef.child('file storage');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get chatUsersCollection => collection("chatUsers");
  CollectionReference get messagesCollection => collection("messages");
  CollectionReference get broadcastsCollection => collection("broadcasts");
  // CollectionReference get callsHistoryCollection => collection("calls history");
  CollectionReference get liveCallsCollection => collection("live calls");
  CollectionReference get inviteUsersCollection => collection("inviteUsers");
}
