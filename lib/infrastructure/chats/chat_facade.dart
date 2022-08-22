import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_template/domain/chats/chat_failures.dart';
import 'package:flutter_template/domain/chats/i_chat_facade.dart';
import 'package:flutter_template/domain/chats/invite_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_cloud_messaging.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:injectable/injectable.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
//import 'package:sqflite/sqflite.dart';

@LazySingleton(as: IChatFacade)
class ChatFacade implements IChatFacade {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;
  //late Database _database;

  ChatFacade(this._firestore, this._storageReference);

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
  Future<Either<ChatFailure, Unit>> sendTextMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageText,
  ) async {
    final linkUrl = getUrlFromText(messageText);
    String messageId = "";
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: messageText,
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
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap())
        .then((messageDoc) {
      messageId = messageDoc.id;
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
        final data = value.data()! as Map;
        if (data['pushToken'] != null) {
          log('printing notifcation error ');
          //FirebaseCloudMessaging.onNotificationCreatedMethod(receivedNotification);
          FirebaseCloudMessaging()
              .sendMessageNotification(data['pushToken'] as String, myUser.name,
                  message.text, message, myUser, peerUser,
                  messageID: messageId)
              .onError(
                (error, stackTrace) => log('printing notifcation error $error'),
              );
        }
      });
    });
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .doc(messageId)
        .set(message.toMap());
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );

    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendBlockMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageText,
  ) async {
    String messageId = "";
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: "$messageText by ${myUser.uid}",
      type: MessageType.blocked,
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

    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap())
        .then((messageDoc) {
      messageId = messageDoc.id;
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
        final data = value.data()! as Map;
        // if (data['pushToken'] != null) {
        //   log('printing notifcation error ');
        //   //FirebaseCloudMessaging.onNotificationCreatedMethod(receivedNotification);
        //   FirebaseCloudMessaging()
        //       .sendMessageNotification(data['pushToken'] as String, myUser.name,
        //           message.text, message, myUser, peerUser,
        //           messageID: messageId)
        //       .onError(
        //         (error, stackTrace) => log('printing notifcation error $error'),
        //       );
        // }
      });
    });
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .doc(messageId)
        .set(message.toMap());
    // await _firestore.countsCollection
    //     .doc(peerUser.uid)
    //     .collection('chats')
    //     .doc(myUser.uid)
    //     .set({});
    // await _firestore.chatCollection
    //     .doc(myUser.uid)
    //     .chatUsersCollection
    //     .doc(peerUser.uid)
    //     .set(
    //   {
    //     "users": [myUser.uid, peerUser.uid],
    //     "user1": myUser.toMap(),
    //     "user2": peerUser.toMap(),
    //     "lastMessage": message.toMap(),
    //     "lastMessageTime": Timestamp.now()
    //   },
    //   SetOptions(merge: true),
    // );
    // await _firestore.chatCollection
    //     .doc(peerUser.uid)
    //     .chatUsersCollection
    //     .doc(myUser.uid)
    //     .set(
    //   {
    //     "users": [myUser.uid, peerUser.uid],
    //     "user1": myUser.toMap(),
    //     "user2": peerUser.toMap(),
    //     "lastMessage": message.toMap(),
    //     "lastMessageTime": Timestamp.now()
    //   },
    //   SetOptions(merge: true),
    // );

    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> inviteMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageText,
    MessageType type,
  ) async {
    String messageId = "";
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: messageText,
      type: type,
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

    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap())
        .then((messageDoc) {
      messageId = messageDoc.id;
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
        final data = value.data()! as Map;
        if (data['pushToken'] != null) {
          log('printing notifcation error ');
          //FirebaseCloudMessaging.onNotificationCreatedMethod(receivedNotification);
          // FirebaseCloudMessaging()
          //     .sendMessageNotification(data['pushToken'] as String, myUser.name,
          //         message.text, message, myUser, peerUser,
          //         messageID: messageId)
          //     .onError(
          //       (error, stackTrace) => log('printing notifcation error $error'),
          //     );
        }
      });
    });
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .doc(messageId)
        .set(message.toMap());
    // await _firestore.countsCollection
    //     .doc(peerUser.uid)
    //     .collection('chats')
    //     .doc(myUser.uid)
    //     .set({});
    // await _firestore.chatCollection
    //     .doc(myUser.uid)
    //     .chatUsersCollection
    //     .doc(peerUser.uid)
    //     .set(
    //   {
    //     "users": [myUser.uid, peerUser.uid],
    //     "user1": myUser.toMap(),
    //     "user2": peerUser.toMap(),
    //     "lastMessage": message.toMap(),
    //     "lastMessageTime": Timestamp.now()
    //   },
    //   SetOptions(merge: true),
    // );
    // await _firestore.chatCollection
    //     .doc(peerUser.uid)
    //     .chatUsersCollection
    //     .doc(myUser.uid)
    //     .set(
    //   {
    //     "users": [myUser.uid, peerUser.uid],
    //     "user1": myUser.toMap(),
    //     "user2": peerUser.toMap(),
    //     "lastMessage": message.toMap(),
    //     "lastMessageTime": Timestamp.now()
    //   },
    //   SetOptions(merge: true),
    // );

    return right(unit);
  }

  @override
  void markMessageAsSeen(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String messageId,
  ) {
    print("marked called-->$messageId");
    FirebaseFirestore.instance.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .doc(messageId)
        .set({"isSeen": true, "isDelivered": true}, SetOptions(merge: true));
  }

  @override
  Future<Either<ChatFailure, Unit>> sendImageMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ImageWithCaptionModel imageWithCaption,
  ) async {
    final String filePath = imageWithCaption.imagePath;
    final String fileName = filePath.split('/').last;
    String messageId = "";

    var result = await FlutterImageCompress.compressWithFile(
      filePath,
      minWidth: 70,
      minHeight: 70,
      quality: 4,
    );

    String? imageBase64Thumbnail = base64.encode(result!);
    final message = MessageModel(
        sender: myUser,
        receiverUid: peerUser.uid,
        sendFrom: SendFrom.chat,
        text: imageWithCaption.caption,
        type: MessageType.image,
        timeOfSending: Timestamp.now(),
        imageUrl: "",
        isSeen: false,
        isDelivered: false,
        fileUrl: filePath,
        fileName: fileName,
        fileLocation: filePath,
        fileSize: 0.0,
        firebaseFileLocation: '',
        imageBase64Thumbnail: imageBase64Thumbnail,
        cancelUpload: false);

    final docRef = _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    //await docRef.set(message.toMap());
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    // _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
    //   final data = value.data()! as Map;
    //   if (data['pushToken'] != null) {
    //     FirebaseCloudMessaging()
    //         .sendMessageNotification(
    //           data['pushToken'] as String,
    //           myUser.name,
    //           'image',
    //           message,
    //           myUser,
    //           peerUser,
    //         )
    //         .onError(
    //           (error, stackTrace) => log('printing notifcation error $error'),
    //         );
    //   }
    // });
    print("send image finished");
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendGifMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String url,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
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

    final docRef = _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .doc();
    await docRef.set(message.toMap());
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );

    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
      final data = value.data()! as Map;
      if (data['pushToken'] != null) {
        FirebaseCloudMessaging()
            .sendMessageNotification(
              data['pushToken'] as String,
              myUser.name,
              'gif',
              message,
              myUser,
              peerUser,
            )
            .onError(
              (error, stackTrace) => log('printing notifcation error $error'),
            );
      }
    });
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendStickerMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String url,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: "",
      type: MessageType.sticker,
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

    final docRef = _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .doc();
    await docRef.set(message.toMap());
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
      final data = value.data()! as Map;
      if (data['pushToken'] != null) {
        FirebaseCloudMessaging()
            .sendMessageNotification(
              data['pushToken'] as String,
              myUser.name,
              'sticker',
              message,
              myUser,
              peerUser,
            )
            .onError(
              (error, stackTrace) => log('printing notifcation error $error'),
            );
      }
    });
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendVideoMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ImageWithCaptionModel imageWithCaption,
  ) async {
    // final file = File(imageWithCaption.imagePath);
    // final TaskSnapshot storageSnap = await _storageReference
    //     .imagesPicturesStorageCollection
    //     .child("${Getters.getCurrentUserUid()}/${DateTime.now()}")
    //     .putFile(file);
    // final String uploadUrl = await storageSnap.ref.getDownloadURL();
    // final String fileName = imageWithCaption.imagePath.split('/').last;
    final String filePath = imageWithCaption.imagePath;
    final String fileName = filePath.split('/').last;

    Uint8List? uint8list = await VideoThumbnail.thumbnailData(
      video: filePath,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 200, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 30,
    );

    String? thumbnailBase64 = base64.encode(uint8list!);

    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
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
      imageBase64Thumbnail : thumbnailBase64
    );
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .add(message.toMap())
        .then((_) {
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
        // final data = value.data()! as Map;   // * IMPLEMENT NOTIFICATION FOR SENDING IMAGE
        // if (data['pushToken'] != null) {
        //   FirebaseCloudMessaging().sendMessageNotification(
        //       data['pushToken'] as String,
        //       myUser.name,
        //       message,
        //       myUser,
        //       peerUser);
        // }
      });
    });
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );

    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendFile(
    KahoChatUser peerUser,
    KahoChatUser myUser,
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
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
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
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendAudioFile(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String filePath,
  ) async {
    final String fileName = filePath.split('/').last;
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
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
    _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendContactMessage(
    KahoChatUser peerUser,
    KahoChatUser contact,
    KahoChatUser myUser,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
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
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .add(message.toMap())
        .then((messageDoc) {
      String messageId = messageDoc.id;
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
        final data = value.data()! as Map;
        if (data['pushToken'] != null) {
          log('printing notifcation error ');
          //FirebaseCloudMessaging.onNotificationCreatedMethod(receivedNotification);
          FirebaseCloudMessaging()
              .sendMessageNotification(
                data['pushToken'] as String,
                myUser.name,
                'contact',
                message,
                myUser,
                peerUser,
                messageID: messageId,
              )
              .onError(
                (error, stackTrace) => log('printing notifcation error $error'),
              );
        }
      });
    });
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(myUser.uid)
        .set({});
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );

    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> deleteMessage(
    Map<int, MessageSelectModel> messages,
    String myUser,
    String peerUser,
  ) async {
    messages.forEach((key, value) async {
      await _firestore.chatCollection
          .doc(myUser)
          .chatUsersCollection
          .doc(peerUser)
          .messagesCollection
          .doc(value.documentId)
          .update({"type": MessageType.deleted.toString()});
    });
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> deleteMessageEveryone(
    Map<int, MessageSelectModel> messages,
    String myUser,
    String peerUser,
  ) async {
    messages.forEach((key, value) async {
      final deleted = value.messageModel!.deletedForEveryone;
      if (deleted == null) {
        await _firestore.chatCollection
            .doc(myUser)
            .chatUsersCollection
            .doc(peerUser)
            .messagesCollection
            .doc(value.documentId)
            .update({"type": MessageType.deletedEveryone.toString()});
        await _firestore.chatCollection
            .doc(peerUser)
            .chatUsersCollection
            .doc(myUser)
            .messagesCollection
            .doc(value.documentId)
            .update({"type": MessageType.deletedEveryone.toString()});
      }
    });
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> deleteChat(
    String myUser,
    String peerUser,
  ) async {
    await _firestore.chatCollection
        .doc(myUser)
        .chatUsersCollection
        .doc(peerUser)
        .messagesCollection
        .get()
        .then(
          // ignore: avoid_function_literals_in_foreach_calls
          (value) => value.docs.forEach(
            (element) => _firestore.chatCollection
                .doc(myUser)
                .chatUsersCollection
                .doc(peerUser)
                .messagesCollection
                .doc(element.id)
                .delete(),
          ),
        );
    await _firestore.invitesCollection
        .doc(myUser)
        .inviteUsersCollection
        .doc(peerUser)
        .delete();
    _firestore.chatCollection
        .doc(myUser)
        .chatUsersCollection
        .doc(peerUser)
        .delete();
    await FirebaseFirestore.instance
        .collection('counts')
        .doc(Getters.getCurrentUserUid())
        .collection('chats')
        .doc(peerUser)
        .delete();
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> setReadUnread(
    String myUser,
    String peerUser,
  ) async {
    try {
      _firestore.chatCollection
          .doc(peerUser)
          .chatUsersCollection
          .doc(myUser)
          .messagesCollection
          .where("isSeen", isEqualTo: false)
          .get()
          .then(
            // ignore: avoid_function_literals_in_foreach_calls
            (value) => value.docs.forEach((element) async {
              await _firestore.chatCollection
                  .doc(peerUser)
                  .chatUsersCollection
                  .doc(myUser)
                  .messagesCollection
                  .doc(element.id)
                  .update({"isSeen": true});
            }),
          );
      await _firestore.countsCollection
          .doc(peerUser)
          .collection('chats')
          .doc(Getters.getCurrentUserUid())
          .delete();
      // ignore: empty_catches
    } catch (e) {}
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendTextStory(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    String storyText,
    String peerStoryText,
    String? imageUrl,
    String? storyVideoUrl,
    String peerStoryImage,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: storyText,
      type: MessageType.storyText,
      timeOfSending: Timestamp.now(),
      imageUrl: imageUrl ?? "",
      imageBase64Thumbnail: storyVideoUrl ?? "",
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
      storyText: peerStoryText,
      storyImageUrl: peerStoryImage,
    );
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(Getters.getCurrentUserUid())
        .set({});
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendImageStory(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ImageWithCaptionModel imageWithCaption,
    String? peerStoryText,
    String? peerStoryImage,
  ) async {
    final file = File(imageWithCaption.imagePath);
    final TaskSnapshot storageSnap = await _storageReference
        .imagesPicturesStorageCollection
        .child("${Getters.getCurrentUserUid()}/${DateTime.now()}")
        .putFile(file);
    final String uploadUrl = await storageSnap.ref.getDownloadURL();
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: imageWithCaption.caption,
      type: MessageType.storyImage,
      timeOfSending: Timestamp.now(),
      imageUrl: uploadUrl,
      isSeen: false,
      isDelivered: false,
      fileUrl: "",
      fileName: "",
      fileLocation: '',
      fileSize: 0.0,
      firebaseFileLocation: '',
      storyImageUrl: peerStoryImage,
      storyText: peerStoryText,
    );
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .add(message.toMap())
        .then((_) {
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {});
    });
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(Getters.getCurrentUserUid())
        .set({});
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendForwardMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    MessageModel _message,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: '',
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
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .doc()
        .set(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .doc()
        .set(message.toMap())
        .then((_) {
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {});
    });
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.countsCollection
        .doc(peerUser.uid)
        .collection('chats')
        .doc(Getters.getCurrentUserUid())
        .set({});
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> sendReplayMessage(
    KahoChatUser peerUser,
    KahoChatUser myUser,
    MessageModel _message,
    String text,
  ) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
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
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .messagesCollection
        .doc()
        .set(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .doc()
        .set(message.toMap())
        .then((_) {
      _firestore.usersCollection.doc(peerUser.uid).get().then((value) {});
    });
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );
    await _firestore.chatCollection
        .doc(peerUser.uid)
        .chatUsersCollection
        .doc(myUser.uid)
        .set(
      {
        "users": [myUser.uid, peerUser.uid],
        "user1": myUser.toMap(),
        "user2": peerUser.toMap(),
        "lastMessage": message.toMap(),
        "lastMessageTime": Timestamp.now()
      },
      SetOptions(merge: true),
    );

    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> setDesepearingMessage(
    String myUser,
    String peerUser,
    double time,
  ) async {
    await _firestore.chatCollection
        .doc(myUser)
        .chatUsersCollection
        .doc(peerUser)
        .set({
      "desepeaearingTime": time,
      "desepeaearingStartTime": Timestamp.now()
    }, SetOptions(merge: true));
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> getIsNewPeer(
    KahoChatUser peerUser,
    KahoChatUser myUser,
  ) async {
    try {
      final doc = _firestore.chatCollection
          // .collection("users")
          .doc(myUser.uid)
          // .collection("users")
          .chatUsersCollection
          .doc(peerUser.uid);
      final data = await doc.get();
      if (data.exists) {
        return right(unit);
      } else {
        return left(const ChatFailure.customError());
      }
    } on Exception catch (e) {
      // TODO
      return left(const ChatFailure.customError());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> answerInvite(KahoChatUser peerUser,
      KahoChatUser myUser, String accepted, String answered) async {
    // final inviteModel = InviteModel(
    //   sender: myUser,
    //   receiverUid: peerUser.uid,
    //   accepted: bool.fromEnvironment(accepted),
    //   timeOfSending: Timestamp.now(),
    // );

    // set for current user
    await _firestore.invitesCollection
        .doc(myUser.uid)
        .inviteUsersCollection
        .doc(peerUser.uid)
        .update(
            {"accepted": accepted == "true", "answered": answered == "true"});
    // set for peer user
    await _firestore.invitesCollection
        .doc(peerUser.uid)
        .inviteUsersCollection
        .doc(myUser.uid)
        .update(
            {"accepted": accepted == "true", "answered": answered == "true"});
    return const Right(unit);
  }

  @override
  Future<Either<ChatFailure, InviteModel>> fetchInviteStatus(
    KahoChatUser peerUser,
    KahoChatUser myUser,
  ) async {
    try {
      final DocumentReference ref = _firestore.invitesCollection
          .doc(myUser.uid)
          .inviteUsersCollection
          .doc(peerUser.uid);
      final DocumentSnapshot snapShot = await ref.get();
      if (snapShot.exists) {
        print(snapShot.data());
        return Right(
          InviteModel(
            accepted: snapShot.get("accepted") != null
                ? snapShot.get("accepted") as bool
                : null,
            receiverUid: snapShot.get("receiverUid") as String,
            sender: KahoChatUser.fromMap(
                snapShot.get("sender") as Map<String, dynamic>),
            timeOfSending: snapShot.get("timeOfSending") as Timestamp,
            answered: snapShot.get("answered") != null
                ? snapShot.get("answered") as bool
                : null,
          ),
        );
      }
    } on Exception catch (e) {
      // TODO

      return left(const ChatFailure.customError());
    }
    print('doc not available');
    return left(const ChatFailure.customError());
  }

  @override
  Future<Either<ChatFailure, Unit>> sendInvite(
      KahoChatUser peerUser, KahoChatUser myUser) async {
    final messageModel = MessageModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      sendFrom: SendFrom.chat,
      text: "messageText",
      type: MessageType.text,
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

    final inviteModel = InviteModel(
      sender: myUser,
      receiverUid: peerUser.uid,
      accepted: null,
      timeOfSending: Timestamp.now(),
      answered: null,
    );

    // set for current user
    await _firestore.invitesCollection
        .doc(myUser.uid)
        .inviteUsersCollection
        .doc(peerUser.uid)
        .set(inviteModel.toMap());
    // set for peer user
    await _firestore.invitesCollection
        .doc(peerUser.uid)
        .inviteUsersCollection
        .doc(myUser.uid)
        .set(inviteModel.toMap());

    // send notification to peer user
    return _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
      final data = value.data()! as Map;

      if (data['pushToken'] != null) {
        FirebaseCloudMessaging()
            .sendInviteNotification(
              data['pushToken'] as String,
              myUser.name,
              "${myUser.name} is inviting you to chat",
              messageModel,
              myUser,
              peerUser,
            )
            .onError(
              // ignore: avoid_print
              (error, stackTrace) => print('printing notifcation error $error'),
            );
      }
    }).then((value) => const Right(unit));
  }

  @override
  Future<Either<ChatFailure, Unit>> removeDesaperingMessages(
      String peerUser, String myUser, num second, Timestamp time) async {
    print("deleting message !");
    await _firestore.chatCollection
        .doc(Getters.getCurrentUserUid())
        .chatUsersCollection
        .doc(peerUser)
        .messagesCollection
        .where('timeOfSending',
            isGreaterThan: Timestamp.fromDate(
                time.toDate().add(Duration(seconds: second.toInt()))))
        .get()
        .then(
          // ignore: avoid_function_literals_in_foreach_calls
          (value) => value.docs.forEach(
            (element) async {
              print("deleting message !");
              await _firestore.chatCollection
                  .doc(myUser)
                  .chatUsersCollection
                  .doc(peerUser)
                  .messagesCollection
                  .doc(element.id)
                  .update({"type": MessageType.deleted.toString()});
            },
          ),
        );
    return left(const ChatFailure.customError());
  }

  @override
  Future<Either<ChatFailure, Unit>> sendNoteMessage(
      String peerUser, KahoChatUser myUser, String note) async {
    final message = MessageModel(
      sender: myUser,
      receiverUid: peerUser,
      sendFrom: SendFrom.chat,
      text: note,
      type: MessageType.note,
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
    await _firestore.chatCollection
        .doc(myUser.uid)
        .chatUsersCollection
        .doc(peerUser)
        .messagesCollection
        .add(message.toMap());
    await _firestore.chatCollection
        .doc(peerUser)
        .chatUsersCollection
        .doc(myUser.uid)
        .messagesCollection
        .add(message.toMap());
    return left(const ChatFailure.customError());
  }

  @override
  Future<Either<ChatFailure, Unit>> editMessage(
    MessageSelectModel message,
    String myUser,
    String peerUser,
    String text,
  ) async {
    await _firestore.chatCollection
        .doc(myUser)
        .chatUsersCollection
        .doc(peerUser)
        .messagesCollection
        .doc(message.documentId)
        .update({"type": MessageType.edited.toString(), 'text': text});
    return right(unit);
  }

  @override
  Future<Either<ChatFailure, Unit>> declineInvite(
      KahoChatUser peerUser, KahoChatUser myUser, String accepted) async {
    try {
      final messageModel = MessageModel(
        sender: myUser,
        receiverUid: peerUser.uid,
        sendFrom: SendFrom.chat,
        text: "messageText",
        type: MessageType.text,
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
      await _firestore.invitesCollection
          .doc(myUser.uid)
          .inviteUsersCollection
          .doc(peerUser.uid)
          .update({"accepted": accepted == "true", "answered": false});
      // set for peer user
      await _firestore.invitesCollection
          .doc(peerUser.uid)
          .inviteUsersCollection
          .doc(myUser.uid)
          .update({"accepted": accepted == "true", "answered": false});
      return _firestore.usersCollection.doc(peerUser.uid).get().then((value) {
        final data = value.data()! as Map;

        if (data['pushToken'] != null) {
          FirebaseCloudMessaging()
              .sendInviteNotification(
                data['pushToken'] as String,
                myUser.name,
                "${myUser.name} has declined your chat invitation.",
                messageModel,
                myUser,
                peerUser,
              )
              .onError(
                // ignore: avoid_print
                (error, stackTrace) =>
                    print('printing notifcation error $error'),
              );
        }
      }).then((value) => const Right(unit));
    } catch (e) {
      return left(const ChatFailure.customError());
    }
  }
}
