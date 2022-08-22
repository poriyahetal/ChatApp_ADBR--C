// ignore_for_file: unused_local_variable, prefer_final_fields, unused_field, avoid_print

import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event_group.dart';
import 'package:flutter_template/domain/chats/chat_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/infrastructure/core/firebase_cloud_messaging.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../domain/core/enums.dart';

class UploadFileBloc {
  double _counter = 0.0;

  double _totalBytesTransferred = 0.0;
  // double StreamController
  final _filehandlingStreamController = StreamController<double>();

  StreamSink<double> get _inCounter => _filehandlingStreamController.sink;
// expose data from stream
  Stream<double> get counter => _filehandlingStreamController.stream;

  final _filehandlingEventController = StreamController<UploadFileEvent>();

  Sink<UploadFileEvent> get filehandlingEventSink =>
      _filehandlingEventController.sink;

  UploadFileBloc() {
    _filehandlingEventController.stream.listen(mapEventToState);
  }

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // ignore: avoid_void_async
  void mapEventToState(
    UploadFileEvent event,
  ) async {
    if (event is UploadFileToFireStorage) {
      //print('object');
      final FirebaseFirestore _firestore = FirebaseFirestore.instance;
      final Reference _storageReference = FirebaseStorage.instance.ref();
      double byteTransferred = 0.0;
      double progress = 0.0;
      double totalByte = 0.0;

      final String fileName =
          event.message.messageModel!.fileLocation.split('/').last;
      final File file = File(event.message.messageModel!.fileLocation);
      final num filesize = file.lengthSync();
      final String firebaseStoreageLocation =
          "${Getters.getCurrentUserUid()}/${DateTime.now()}";
      final Reference fileStorageRef =
          _storageReference.fileStorageCollection.child(
        "$firebaseStoreageLocation/$fileName",
      );
      String fileUrl;
      print("in Upload");
      //event.uploadTask = fileStorageRef.putFile(file);

      if (event.cancelTask) {
        print("Task cancelled");
        _inCounter.add(
          0.0,
        );
        event.uploadTask?.cancel();
        return;
      }
      event.uploadTask?.snapshotEvents.listen((uploadEvent) {
        progress = uploadEvent.bytesTransferred.toDouble() /
            uploadEvent.totalBytes.toDouble();
        byteTransferred = (uploadEvent.bytesTransferred / 1024.0) / 10000;
        if (event.message.messageModel?.type == MessageType.file ||
            event.message.messageModel?.type == MessageType.video) {
          showUploadProgressNotification((progress * 100).toInt());
        }

        totalByte = (uploadEvent.totalBytes / 1024.0) / 1000;
        _inCounter.add(
          progress,
        );
      });

      fileUrl = await (await event.uploadTask)?.ref.getDownloadURL() ?? "";

      final reciverFileMessage = MessageModel(
        sender: event.message.messageModel!.sender,
        receiverUid: event.message.messageModel!.receiverUid,
        sendFrom: event.message.messageModel!.sendFrom,
        text: event.message.messageModel!.text,
        type: event.message.messageModel!.type,
        timeOfSending: event.message.messageModel!.timeOfSending,
        imageUrl: event.message.messageModel!.imageUrl,
        isSeen: event.message.messageModel!.isSeen,
        isDelivered: event.message.messageModel!.isDelivered,
        fileUrl: fileUrl,
        fileName: fileName,
        fileLocation: '',
        fileSize: filesize,
        imageBase64Thumbnail: event.message.messageModel!.imageBase64Thumbnail,
        firebaseFileLocation: fileUrl,
      );

      await _firestore.chatCollection
          .doc(event.myUser.uid)
          .chatUsersCollection
          .doc(event.peerUser.uid)
          .messagesCollection
          .doc(event.docRef)
          .update(
        {
          'fileUrl': fileUrl,
          'fileName': fileName,
          'fileSize': filesize,
          'firebaseFileLocation': fileUrl
        },
      );
      await _firestore.chatCollection
          .doc(event.peerUser.uid)
          .chatUsersCollection
          .doc(event.myUser.uid)
          .messagesCollection
          .doc(event.docRef)
          .set(
            reciverFileMessage.toMap(),
          )
          .then((_) {
        _firestore.usersCollection.doc(event.peerUser.uid).get().then((value) {
          final data = value.data()! as Map;
          if (data['pushToken'] != null) {
            FirebaseCloudMessaging()
                .sendMessageNotification(
                  data['pushToken'] as String,
                  event.myUser.name,
                  event.message.messageModel!.type.toString().split('.').last,
                  event.message.messageModel!,
                  event.myUser,
                  event.peerUser,
                  messageID: event.docRef,
                )
                .onError(
                  (error, stackTrace) =>
                      print('printing notifcation error $error'),
                );
          }
        });
      });

      final updatedChat = ChatModel(
        lastMessage: event.message.messageModel!,
        user1: event.peerUser,
        user2: event.myUser,
        users: [event.myUser.uid, event.peerUser.uid],
        lastRead: Timestamp.now(),
        deletedAt: Timestamp.now(),
        lastMessageTime: Timestamp.now(),
      );
      await _firestore.chatCollection
          .doc(event.myUser.uid)
          .chatUsersCollection
          .doc(event.peerUser.uid)
          .set(updatedChat.toMap(), SetOptions(merge: true));
      await _firestore.chatCollection
          .doc(event.peerUser.uid)
          .chatUsersCollection
          .doc(event.myUser.uid)
          .set(updatedChat.toMap(), SetOptions(merge: true));
    }
    if (event is UploadFileToFireStorageGroup) {
      print("in group upload media");

      final FirebaseFirestore _firestore = FirebaseFirestore.instance;
      final Reference _storageReference = FirebaseStorage.instance.ref();
      double byteTransferred = 0.0;
      double progress = 0.0;
      double totalByte = 0.0;

      final String fileName =
          event.message.messageModel!.fileLocation.split('/').last;
      final File file = File(event.message.messageModel!.fileLocation);
      String fileUrl;
      int filesize = 0;
      if (file.existsSync()) {
        filesize = file.lengthSync();
        final String firebaseStoreageLocation =
            "${Getters.getCurrentUserUid()}/${DateTime.now()}";
        final Reference fileStorageRef =
            _storageReference.fileStorageCollection.child(
          "$firebaseStoreageLocation/$fileName",
        );
        if (event.cancelTask) {
          print("Task cancelled");
          _inCounter.add(
            0.0,
          );
          event.uploadTask?.cancel();
          return;
        }
        event.uploadTask?.snapshotEvents.listen((event) {
          progress =
              event.bytesTransferred.toDouble() / event.totalBytes.toDouble();
          byteTransferred = (event.bytesTransferred / 1024.0) / 10000;
          totalByte = (event.totalBytes / 1024.0) / 1000;
          _inCounter.add(
            progress,
          );
        });

        fileUrl = await (await event.uploadTask)?.ref.getDownloadURL()??"";
      } else {
        Fluttertoast.showToast(
          msg: "File Not found in file location",
          backgroundColor: Kolors.grey,
        );
        print("File Not found in file location");
        fileUrl = "";
      }
      final reciverFileMessage = MessageModel(
        sender: event.message.messageModel!.sender,
        receiverUid: event.message.messageModel!.receiverUid,
        sendFrom: event.message.messageModel!.sendFrom,
        text: event.message.messageModel!.text,
        type: event.message.messageModel!.type,
        timeOfSending: event.message.messageModel!.timeOfSending,
        imageUrl: event.message.messageModel!.imageUrl,
        isSeen: event.message.messageModel!.isSeen,
        isDelivered: event.message.messageModel!.isDelivered,
        fileUrl: fileUrl,
        fileName: fileName,
        fileLocation: event.message.messageModel!.fileLocation,
        fileSize: filesize,
        imageBase64Thumbnail: event.message.messageModel!.imageBase64Thumbnail,
        firebaseFileLocation: fileUrl,
      );
      await _firestore.groupCollection
          .doc(event.groupUid)
          .messagesCollection
          .doc(event.docRef)
          .set(reciverFileMessage.toMap());
    }
  }

  void cancelUpload(UploadTask? uploadTask) {
    uploadTask?.cancel();
    print("cancel task called");
    _inCounter.add(0);
  }

  void dispose() {
    _filehandlingEventController.close();
    _filehandlingStreamController.close();
  }

  Future<void> showUploadProgressNotification(int progress) async {
    // while (context.read<CallsBloc>().state.currentRoomDetails.isCallActive) {
    // const int maxProgress = 100;
    String title;
    String bodyText;
    await Future<void>.delayed(const Duration(seconds: 2));
    // await Future<void>.delayed(const Duration(milliseconds: 1), () async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails('upload channel', 'upload channel',
            channelDescription: 'upload in progress',
            // 'progress channel description',
            enableVibration: false,
            channelShowBadge: false,
            ongoing: true,
            importance: Importance.min,
            priority: Priority.min,
            onlyAlertOnce: true,
            playSound: false,
            showProgress: true,
            maxProgress: 100,
            progress: progress);
    final NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      "Uploading in process",
      "$progress%",
      platformChannelSpecifics,
      payload: 'item x',
    );
    // });
  }
}
