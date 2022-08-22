// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/groups/group_failures.dart';
import 'package:flutter_template/domain/groups/i_group_facade.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_cloud_messaging.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:injectable/injectable.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

@LazySingleton(as: IGroupFacade)
class GroupFacade implements IGroupFacade {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  GroupFacade(this._firestore, this._storageReference);
  @override
  Future<Either<GroupFailure, Unit>> createGroup(
    GroupChatRoomModel group,
  ) async {
    await _firestore.groupCollection.doc().set(group.toMap());
    await FirebaseDatabase.instance.ref().child('chart_data').child(DateTime.now().year.toString()).child(DateTime.now().month.toString()).child('groups').child(DateTime.now().day.toString()).set({"${group.name.replaceAll(" ", "").toUpperCase()}-${group.adminUser.uid}":1});
    return right(unit);
  }

  String? getUrlFromText(String text) {
    final urlRegExp = RegExp(
        r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
    final urlMatches = urlRegExp.allMatches(text);
    final urls = urlMatches
        .map((urlMatch) => text.substring(urlMatch.start, urlMatch.end))
        .toList();
    return urls.isNotEmpty ? urls.first : null;
  }

  @override
  Future<Either<GroupFailure, Unit>> sendTextMessage(
    String groupUid,
    String groupName,
    KahoChatUser sender,
    String text,
  ) async {
    final linkUrl = getUrlFromText(text);
    String messageId = "";

    var data = await _firestore.groupCollection.doc(groupUid).get();
    final List users = data['users'] as List;

    users.remove(Getters.getCurrentUserUid());

    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: text,
      deliveredToInGroup: [],
      isNotSeenByUsers: users,
      seenByInGroup: [],
      type: linkUrl != null ? MessageType.link : MessageType.text,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then((value) {
      // FirebaseDatabase.instance
      //     .ref()
      //     .child('chatApp')
      //     .child('groups_chat_read')
      //     .child(groupUid)
      //     .child(value.id)
      //     .child(Getters.getCurrentUserUid())
      //     .set(jsonEncode({"time":Timestamp.now().microsecondsSinceEpoch,"isSeen":true}));
      messageId = value.id;
      // FirebaseDatabase.instance
      //     .ref()
      //     .child('chatApp')
      //     .child('groups_chat_read')
      //     .child(groupUid)
      //     .child(value.id)
      //     .set(jsonEncode([
      //       {
      //         "uid": Getters.getCurrentUserUid(),
      //         "seenOn": Timestamp.now().microsecondsSinceEpoch,
      //         "deliveredOn": Timestamp.now().microsecondsSinceEpoch
      //       }
      //     ]));
    });
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});

    users.forEach((userId) async {
      await _firestore.countsCollection
          .doc(userId.toString())
          .collection('group')
          .doc(groupUid)
          .set({});
    });
    await _firestore.countsCollection
        .doc(Getters.getCurrentUserUid())
        .collection('group')
        .doc(groupUid)
        .delete();

    users.forEach((userUid) async {
      if (userUid.toString() != Getters.getCurrentUserUid()) {
        KahoChatUser user;
        final List<KahoChatUser> mySearchList = [];
        await _firestore
            .collection('users')
            .where('uid', isEqualTo: userUid.toString())
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
        print(mySearchList[0].name);
        await _firestore.usersCollection
            .doc(userUid.toString())
            .get()
            .then((value) {
          final data = value.data()! as Map;
          if (data['pushToken'] != null) {
            FirebaseCloudMessaging()
                .sendGroupMessageNotification(
                data['pushToken'] as String,
                sender.name,
                groupName,
                message.text,
                message,
                sender,
                mySearchList[0],
                groupUid,
                messageId: messageId)
                .onError((error, stackTrace) => print("$error: $stackTrace"));
          }
        });
      }
    });

    //TODO: update the last message here
    // final updatedGroupChat=GroupChatModel(name: name, description: description, created: created, groupImageUrl: groupImageUrl, adminUser: adminUser, userDetails: userDetails, lastMessage: lastMessage, users: users)
    return right(unit);
  }

  @override
  void markMessageAsSeen(
    KahoChatUser myUser,
    String groupId,
    String messageId,
  ) {
    print("marked called-->$messageId");
    FirebaseFirestore.instance.groupCollection
        .doc(groupId)
        .messagesCollection
        .doc(messageId)
        .update({
      "deliveredToInGroup": FieldValue.arrayUnion([
        {"uid": Getters.getCurrentUserUid(), "time": DateTime.now()}
      ]),
      "seenByInGroup": FieldValue.arrayUnion([
        {"uid": Getters.getCurrentUserUid(), "time": DateTime.now()}
      ]),
      "isNotSeenByUsers": FieldValue.arrayRemove([
        Getters.getCurrentUserUid()
      ])
    });
  }

  @override
  Future<Either<GroupFailure, Unit>> sendGroupNotification(
    String groupUid,
    String groupName,
    KahoChatUser sender,
    String text,
  ) async {
    final linkUrl = getUrlFromText(text);
    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: text,
      type: linkUrl != null ? MessageType.link : MessageType.groupNotification,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();

      users.forEach((userUid) async {
        if (userUid.toString() != Getters.getCurrentUserUid()) {
          KahoChatUser user;
          final List<KahoChatUser> mySearchList = [];
          await _firestore
              .collection('users')
              .where('uid', isEqualTo: userUid.toString())
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
          print(mySearchList[0].name);
          await _firestore.usersCollection
              .doc(userUid.toString())
              .get()
              .then((value) {
            final data = value.data()! as Map;
            if (data['pushToken'] != null) {
              FirebaseCloudMessaging()
                  .sendGroupMessageNotification(
                    data['pushToken'] as String,
                    sender.name,
                    groupName,
                    message.text,
                    message,
                    sender,
                    mySearchList[0],
                    groupUid,
                  )
                  .onError((error, stackTrace) => print("$error: $stackTrace"));
            }
          });
        }
      });
    });
    //TODO: update the last message here
    // final updatedGroupChat=GroupChatModel(name: name, description: description, created: created, groupImageUrl: groupImageUrl, adminUser: adminUser, userDetails: userDetails, lastMessage: lastMessage, users: users)
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendImageMessage(
    String groupUid,
    KahoChatUser sender,
    ImageWithCaptionModel imageWithCaption,
  ) async {
    final String filePath = imageWithCaption.imagePath;
    final String fileName = filePath.split('/').last;

    var result = await FlutterImageCompress.compressWithFile(
      filePath,
      minWidth: 70,
      minHeight: 70,
      quality: 4,
    );

    String? imageBase64Thumbnail = base64.encode(result!);

    print("file location while upload-->${filePath}");
    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: imageWithCaption.caption,
      type: MessageType.image,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: '',
      fileName: fileName,
      fileLocation: filePath,
      fileSize: 0.0,
      firebaseFileLocation: '',
      imageBase64Thumbnail: imageBase64Thumbnail
    );

    print("message model is-->${message.toMap()}");
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendGifMessage(
    String groupUid,
    KahoChatUser sender,
    String url,
  ) async {
    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: "",
      type: MessageType.gif,
      timeOfSending: Timestamp.now(),
      imageUrl: url,
      isSeen: false,
      isDelivered: false,
      fileUrl: url,
      fileName: "",
      fileLocation: "",
      fileSize: 0.0,
      firebaseFileLocation: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendVideoMessage(
    String groupUid,
    KahoChatUser sender,
    ImageWithCaptionModel imageWithCaption,
  ) async {
    final String filePath = imageWithCaption.imagePath;
    final String fileName = filePath.split('/').last;

    Uint8List? uint8list = await VideoThumbnail.thumbnailData(
      video: filePath,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 200, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 30,
    );

    String? thumbnailBase64 = base64.encode(uint8list!);

    log("image base64-->${thumbnailBase64}");

    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: imageWithCaption.caption,
      type: MessageType.video,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: '',
      fileName: fileName,
      fileLocation: imageWithCaption.imagePath,
      fileSize: 0.0,
      firebaseFileLocation: '',
      imageBase64Thumbnail: thumbnailBase64
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendFile(
    String groupUid,
    KahoChatUser sender,
    String filePath,
  ) async {
    final String fileName = filePath.split('/').last;

    final String fileExtention = filePath.split('.').last;

    String? imageBase64Thumbnail;

    if(fileExtention=="png" || fileExtention == "jpg" || fileExtention=="jpeg"){
      var result = await FlutterImageCompress.compressWithFile(
        filePath,
        minWidth: 70,
        minHeight: 70,
        quality: 4,
      );

      imageBase64Thumbnail = base64.encode(result!);
    }

    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: "",
      type: MessageType.file,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: '',
      fileName: fileName,
      fileLocation: filePath,
      fileSize: 0.0,
      firebaseFileLocation: '',
      imageBase64Thumbnail: imageBase64Thumbnail
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendAudioFile(
    String groupUid,
    KahoChatUser sender,
    String filePath,
  ) async {
    final String fileName = filePath.split('/').last;
    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: "",
      type: MessageType.audio,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: '',
      fileName: fileName,
      fileLocation: filePath,
      fileSize: 0.0,
      firebaseFileLocation: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendAudioMessage(
    String groupUid,
    KahoChatUser sender,
    String filePath,
  ) async {
    final String fileName = filePath.split('/').last;
    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: "",
      type: MessageType.audio,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: '',
      fileName: fileName,
      fileLocation: filePath,
      fileSize: 0.0,
      firebaseFileLocation: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection
        .doc(groupUid)
        .update({"lastMessage": message.toMap()});
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendContactMessage(
    String groupUid,
    KahoChatUser sender,
    KahoChatUser contact,
  ) async {
    final message = MessageModel(
      sender: sender,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: "",
      type: MessageType.contact,
      timeOfSending: Timestamp.now(),
      imageUrl: "",
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
      contact: contact,
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    await _firestore.groupCollection.doc(groupUid).get().then((g) async {
      final List users = g['users'] as List;
      users.forEach((userId) async {
        await _firestore.countsCollection
            .doc(userId.toString())
            .collection('group')
            .doc(groupUid)
            .set({});
      });
      await _firestore.countsCollection
          .doc(Getters.getCurrentUserUid())
          .collection('group')
          .doc(groupUid)
          .delete();
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> deleteMessage(
    String groupUid,
    Map<int, MessageSelectModel> messages,
  ) async {
    messages.forEach((key, value) async {
      messages.forEach((key, value) async {
        final cat = value.messageModel!.deleted;
        final List list = cat ?? [];
        list.add(Getters.getCurrentUserUid());
        await _firestore.groupCollection
            .doc(groupUid)
            .messagesCollection
            .doc(value.documentId)
            .update({"deleted": list});
      });
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> deleteMessageEveryone(
    Map<int, MessageSelectModel> messages,
    String groupUid,
  ) async {
    messages.forEach((key, value) async {
      final deleted = value.messageModel!.deletedForEveryone;
      if (deleted == null) {
        await _firestore.groupCollection
            .doc(groupUid)
            .messagesCollection
            .doc(value.documentId)
            .update({"type": MessageType.deletedEveryone.toString()});
        await _firestore.groupCollection
            .doc(groupUid)
            .messagesCollection
            .doc(value.documentId)
            .update({"type": MessageType.deletedEveryone.toString()});
      }
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> leaveGroup(
    String groupUid,
    GroupChatRoomModel oldGroupChatDetails,
  ) async {
    final String currentUserUid = Getters.getCurrentUserUid();
    final List<String> users = oldGroupChatDetails.users;
    users.remove(currentUserUid);
    final List<KahoChatUser> userDetails = oldGroupChatDetails.userDetails;
    final List<KahoChatUser> adminDetails = oldGroupChatDetails.otherAdmins;
    final int indexOfCurrentUser =
        userDetails.indexWhere((element) => element.uid == currentUserUid);
    if (indexOfCurrentUser != -1) {
      userDetails.removeAt(indexOfCurrentUser);
    }
    final int indexOfCurrentUserAdmin =
        adminDetails.indexWhere((element) => element.uid == currentUserUid);
    if (indexOfCurrentUserAdmin != -1) {
      adminDetails.removeAt(indexOfCurrentUserAdmin);
    }
    final GroupChatRoomModel updatedGroupDetails = oldGroupChatDetails.copyWith(
      users: users,
      userDetails: userDetails,
      otherAdmins: adminDetails,
    );
    await _firestore.groupCollection.doc(groupUid).set(
          updatedGroupDetails.toMap(),
          SetOptions(
            merge: true,
          ),
        );
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> removeMember(
    String groupUid,
    String userId,
    GroupChatRoomModel oldGroupChatDetails,
  ) async {
    final String currentUserUid = Getters.getCurrentUserUid();
    final List<String> users = oldGroupChatDetails.users;
    users.remove(userId);
    final List<KahoChatUser> userDetails = oldGroupChatDetails.userDetails;
    final List<KahoChatUser> adminDetails = oldGroupChatDetails.otherAdmins;
    final int indexOfUser =
        userDetails.indexWhere((element) => element.uid == userId);
    if (indexOfUser != -1) {
      userDetails.removeAt(indexOfUser);
    }
    final int indexOfCurrentUserAdmin =
        adminDetails.indexWhere((element) => element.uid == userId);
    if (indexOfCurrentUserAdmin != -1) {
      adminDetails.removeAt(indexOfCurrentUserAdmin);
    }
    final GroupChatRoomModel updatedGroupDetails = oldGroupChatDetails.copyWith(
      users: users,
      userDetails: userDetails,
      otherAdmins: adminDetails,
    );
    await _firestore.groupCollection.doc(groupUid).set(
          updatedGroupDetails.toMap(),
          SetOptions(
            merge: true,
          ),
        );
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> addGroupMembers(
    List<KahoChatUser> members,
    String groupId,
  ) async {
    log("all users-->${members.map((e) => e.toMap()).toList()}");
    members.toSet().toList();
    await _firestore.groupCollection.doc(groupId).set({
      "userDetails": members.map((e) => e.toMap()).toList(),
      "users": members.map((e) => e.uid).toList(),
    },SetOptions(merge: true));
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> updateAdmins(
    String groupId,
    List<KahoChatUser> adminUsers,
    List<KahoChatUser> userDetails,
  ) async {
    await _firestore.groupCollection.doc(groupId).update({
      "otherAdmins": adminUsers.map((e) => e.toMap()).toList(),
      "userDetails": userDetails.map((e) => e.toMap()).toList(),
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> setGroupDescription(
      String groupId, String description) async {
    await _firestore.groupCollection.doc(groupId).update({
      "description": description,
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> setGroupName(
      String groupId, String name) async {
    await _firestore.groupCollection.doc(groupId).update({
      "name": name,
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> setGroupImage(
      String groupId, String url) async {
    await _firestore.groupCollection.doc(groupId).update({
      "groupImageUrl": url,
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> addParticipantsOnlyAdmin(
      String groupId, value) async {
    await _firestore.groupCollection.doc(groupId).update({
      "addParticipantsOnlyAdmin": value,
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> editGroupInfoOnlyAdmin(
      String groupId, value) async {
    await _firestore.groupCollection.doc(groupId).update({
      "editGroupInfoOnlyAdmin": value,
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendMessageOnlyAdmin(
      String groupId, value) async {
    await _firestore.groupCollection.doc(groupId).update({
      "sendMessageOnlyAdmin": value,
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendForwardMessage(
    KahoChatUser myUser,
    String groupUid,
    MessageModel _message,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: "",
      type: MessageType.forwarded,
      timeOfSending: Timestamp.now(),
      imageUrl: '',
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
      storyImageUrl: '',
      forwared: _message,
      storyText: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> sendReplayMessage(
    KahoChatUser myUser,
    String groupUid,
    MessageModel _message,
    String text,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: groupUid,
      sendFrom: SendFrom.group,
      text: text,
      type: MessageType.replay,
      timeOfSending: Timestamp.now(),
      imageUrl: '',
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
      storyImageUrl: '',
      forwared: _message,
      storyText: '',
    );
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .add(message.toMap())
        .then(
          (value) => FirebaseDatabase.instance
              .ref()
              .child('chatApp')
              .child('groups_chat_read')
              .child(groupUid)
              .child(value.id)
              .child(Getters.getCurrentUserUid())
              .set(jsonEncode({
                "time": Timestamp.now().microsecondsSinceEpoch,
                "isSeen": true
              })),
        );
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> setReadUnread(
      String groupId, KahoChatUser sender, String messageID) async {
    try {
      await _firestore.groupCollection
          .doc(groupId)
          .messagesCollection
          .doc(messageID)
          .update({"isSeen": true});
      return right(unit);
    } catch (e) {
      return left(GroupFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<GroupFailure, Unit>> clearChat(
    String groupUid,
  ) async {
    await _firestore.groupCollection
        .doc(groupUid)
        .messagesCollection
        .get()
        .then(
          (value) => value.docs.forEach((element) async {
            // ignore: cast_nullable_to_non_nullable
            final ddta = element.data() as Map<String, dynamic>;
            final value = MessageSelectModel(
              documentId: element.id,
              index: 0,
              messageModel: MessageModel.fromMap(ddta),
            );
            final cat = value.messageModel!.deleted;
            final List list = cat ?? [];
            list.add(Getters.getCurrentUserUid());
            await _firestore.groupCollection
                .doc(groupUid)
                .messagesCollection
                .doc(value.documentId)
                .update({"deleted": list});
          }),
        );
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> readMessages(String groupUid) async {
    final userUid = Getters.getCurrentUserUid();
    final allMessages = await FirebaseDatabase.instance
        .ref()
        .child('chatApp')
        .child('groups_chat_read')
        .child(groupUid)
        .get();
    allMessages.children.forEach((e) {
      // ignore: iterable_contains_unrelated_type
      if (e.children.where((element) => element.key == userUid).isEmpty) {
        FirebaseDatabase.instance
            .ref()
            .child('chatApp')
            .child('groups_chat_read')
            .child(groupUid)
            .child(e.key.toString())
            .child(userUid)
            .set(jsonEncode({
              "time": Timestamp.now().microsecondsSinceEpoch,
              "isSeen": true
            }));
      }
    });
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> deliverMessagesListner(
      String groupUid) async {
    final userUid = Getters.getCurrentUserUid();
    final allMessages = await FirebaseDatabase.instance
        .ref()
        .child('chatApp')
        .child('groups_chat_read')
        .child(groupUid)
        .get();
    allMessages.children.forEach((e) {
      // ignore: iterable_contains_unrelated_type
      if (e.children.where((element) => element.key == userUid).isEmpty) {
        FirebaseDatabase.instance
            .ref()
            .child('chatApp')
            .child('groups_chat_read')
            .child(groupUid)
            .child(e.key.toString())
            .child(userUid)
            .set(jsonEncode({
              "time": Timestamp.now().microsecondsSinceEpoch,
              "isSeen": false
            }));
      }
    });
    return right(unit);
  }
}
