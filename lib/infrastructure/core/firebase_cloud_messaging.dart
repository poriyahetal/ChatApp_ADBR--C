import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/audio_player.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/domain/user/mute_notification.dart';
import 'package:flutter_template/infrastructure/contacts/contacts_facade.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:http/http.dart' as http;

import '../../domain/contacts/story_contact.dart';
import '../../domain/contacts/user_contacts_model.dart';

int id = 1;

class FirebaseCloudMessaging {
  final String _baseUrl = "https://fcm.googleapis.com/fcm/send";
  final String serverKey =
      "AAAA-dOZO9g:APA91bHiL1D7WuSDZastxskX1o5MbjRBy3mkvBMuY2xOlH-PKKTQZcrwcLS47N8yP_u-WHHq6EIUDLUqxUX_J_cQ_j4YKzfMCRbcuhSUhBl57m3VZK1qtXWQ1dLDHR-MNtdmBhuQIpiZ";

  String? getUrlFromText(String text) {
    final urlRegExp = RegExp(
        r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
    final urlMatches = urlRegExp.allMatches(text);
    final urls = urlMatches
        .map((urlMatch) => text.substring(urlMatch.start, urlMatch.end))
        .toList();
    return urls.isNotEmpty ? urls.first : null;
  }

  Future<void> sendMessageNotification(
      String token,
      String name,
      String content,
      MessageModel message,
      KahoChatUser myUser,
      KahoChatUser peerUser,
      {String? messageID}) async {
    try {
      print("Message sent-->$messageID");
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization": "key=$serverKey"
        },
        body: jsonEncode({
          "data": {
            "type": "chat",
            "user": name,
            "content": content,
            "time": message.timeOfSending.toTime(),
            "messageId": messageID,
            "myUser": myUser.toMap(),
            "peerUser": peerUser.toMap(),
          },
          "to": token,
          'mutable_content': true,
          'content_available': true,
          'priority': 'high',
          "notification": {}
        }),
      );

      print("notification sent");
      print("%%%%%%%%%%%%%%%%%%76%%%%%%%%%%%%%%");
      print(response.body);
    } on Exception catch (e) {
      print("printing notifcation error=> ${e.toString()}");
      // throw Exception();
    }
  }

  Future<void> sendStoryNotification() async {
    try {
      print("send story notification started");
      final DocumentSnapshot snap = await FirebaseFirestore
          .instance.contactsCollection
          .doc(FirebaseAuth.instance.currentUser!.uid.toString())
          .getSavy();
      // snap.forEach((doc) {
      final UserContacts myuserContact =
      UserContacts.fromMap(snap.data() as Map<String, dynamic>);

      List<StoryContact> myStoryContacts = myuserContact.storyContact!;

      for(int i = 0;i<myStoryContacts.length;i++){

        print("notification sent to-->${myStoryContacts[i].uid}");

        final DocumentSnapshot snap = await FirebaseFirestore
            .instance.usersCollection
            .doc(myStoryContacts[i].uid)
            .getSavy();

        final KahoChatUser myuserContact =
        KahoChatUser.fromMap(snap.data() as Map<String, dynamic>);

        final response = await http.post(
          Uri.parse(_baseUrl),
          headers: <String, String>{
            "Content-Type": "application/json",
            "Authorization": "key=$serverKey"
          },
          body: jsonEncode({
            "data": {
              "type": "stories",
              "user": "Device 2",
              "content": "Device 2 has uploaded story",
              "time": DateTime.now().toString(),
              "messageId": "messageID",
              "myUser": myuserContact.toMap(),
              "peerUser": myuserContact.toMap(),
            },
            "to": myuserContact.pushToken,
            'mutable_content': true,
            'content_available': true,
            'priority': 'high',
            "notification": {}
          }),
        );

        print(response.body);
      }


    } on Exception catch (e) {
      print("printing notifcation error=> ${e.toString()}");
      // throw Exception();
    }
  }

  Future<void> sendGroupMessageNotification(
      String token,
      String name,
      String groupName,
      String content,
      MessageModel message,
      KahoChatUser myUser,
      KahoChatUser peerUser,
      String groupUid,
      {String? messageId}) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization":
              "key=AAAA-dOZO9g:APA91bECfHANgZoeuep0ur1gHi2U-QUpSQBmW_B6C81d2ZOQqC_Xk5xcKDkNHpm63p_J34YZEfN5s25Ljcyk9RdZ2K3coaV_04XZtJbmCvzvP-NnWTVmBoklIfPYJOXkJTv5Vs4gZpC6"
        },
        body: jsonEncode({
          "data": {
            "type": "group",
            "user": name,
            "groupName": groupName,
            "content": content,
            "time": message.timeOfSending.toTime(),
            "myUser": myUser.toMap(),
            "peerUser": peerUser,
            "groupUid": groupUid,
            "messageId": messageId,
          },
          "to": token,
          "notification": {}
        }),
      );

      print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
      print(response.body);
    } on Exception catch (e) {
      print("printing notifcation error=> ${e.toString()}");
      // throw Exception();
    }
  }

  Future<void> sendCallNotification(
    String token,
    String name,
    CallType callType,
    KahoChatUser myUser,
  ) async {
    String typeOfCall = callType == CallType.audio ? "Voice" : "Video";

    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization":
              "key=AAAA-dOZO9g:APA91bECfHANgZoeuep0ur1gHi2U-QUpSQBmW_B6C81d2ZOQqC_Xk5xcKDkNHpm63p_J34YZEfN5s25Ljcyk9RdZ2K3coaV_04XZtJbmCvzvP-NnWTVmBoklIfPYJOXkJTv5Vs4gZpC6"
        },
        body: jsonEncode({
          "data": {
            "type": "call",
            "user": name,
            "typeOfCall": typeOfCall,
            "content": 'Incoming $typeOfCall call',
            "myUser": myUser.toMap(),
          },
          "to": token,
          "notification": {}
        }),
      );
      print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
      print(response.body);
    } on Exception catch (e) {
      print(e.toString());
      throw Exception();
    }
  }

  Future<void> sendInviteNotification(
    String token,
    String name,
    String content,
    MessageModel message,
    KahoChatUser myUser,
    KahoChatUser peerUser,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization": "key=$serverKey"
        },
        body: jsonEncode({
          "data": {
            "type": "invite",
            "user": name,
            "content": content,
            "time": message.timeOfSending.toTime(),
            "myUser": myUser.toMap(),
            "peerUser": peerUser.toMap(),
          },
          "to": token,
          // 'mutable_content': true,
          // 'content_available': true,
          // 'priority': 'high',
          "notification": {}
        }),
      );
      print("invite notification sent");
      print(response.body);
    } on Exception catch (e) {
      print("printing notification error=> ${e.toString()}");
      // throw Exception();
    }
  }

  // Future<void> sendContactAvailabilityNotification(
  //     String token,
  //     String name,
  //     String content,
  //     KahoChatUser peerUser,
  //     KahoChatUser myUser,
  //     ) async {
  //   try {
  //     final response = await http.post(
  //       Uri.parse(_baseUrl),
  //       headers: <String, String>{
  //         "Content-Type": "application/json",
  //         "Authorization": "key=$serverKey"
  //       },
  //       body: jsonEncode({
  //         "data": {
  //           "type": "chat",
  //           "user": name,
  //           "content": content,
  //           "time": DateTime.now().toIso8601String(),
  //           "myUser": myUser.toMap(),
  //           "peerUser": peerUser.toMap(),
  //         },
  //         "to": token,
  //         'mutable_content': true,
  //         'content_available': true,
  //         'priority': 'high',
  //         "notification": {}
  //       }),
  //     );
  //
  //     print("notification sent");
  //     print("%%%%%%%%%%%%%%%%%%76%%%%%%%%%%%%%%");
  //     print(response.body);
  //   } on Exception catch (e) {
  //     print("printing notifcation error=> ${e.toString()}");
  //     // throw Exception();
  //   }
  // }


  Future<void> sendContactAvailabilityNotification(
      String token,
      String name,
      String content,
      MessageModel message,
      KahoChatUser myUser,
      KahoChatUser peerUser,
      {String? messageID}) async {
    try {
      print("Message sent-->$messageID");
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: <String, String>{
          "Content-Type": "application/json",
          "Authorization": "key=$serverKey"
        },
        body: jsonEncode({
          "data": {
            "type": "availability",
            "user": name,
            "content": content,
            "time": message.timeOfSending.toTime(),
            "messageId": messageID,
            "myUser": myUser.toMap(),
            "peerUser": peerUser.toMap(),
          },
          "to": token,
          'mutable_content': true,
          'content_available': true,
          'priority': 'high',
          "notification": {}
        }),
      );

      print("notification sent");
      print("%%%%%%%%%%%%%%%%%%76%%%%%%%%%%%%%%");
      print(response.body);
    } on Exception catch (e) {
      print("printing notifcation error=> ${e.toString()}");
      // throw Exception();
    }
  }

  static String _toSimpleEnum(NotificationLifeCycle lifeCycle) =>
      lifeCycle.toString().split('.').last;

  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    final Map<String, String?>? payload = receivedNotification.payload;
    final String message = payload!["messageId"]!;
    log("message id-->$message");
    log('Notification created on ${_toSimpleEnum(receivedNotification.createdLifeCycle!)}');
  }

  /// Use this method to detect every time that a new notification is displayed
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    final Map<String, String?>? payload = receivedNotification.payload;

    log("message id-->$payload");
    log('Notification displayed on ${_toSimpleEnum(receivedNotification.displayedLifeCycle!)}');
  }

  /// Use this method to detect if the user dismissed a notification
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    log('Notification dismissed on ${_toSimpleEnum(receivedAction.dismissedLifeCycle!)}');
  }

  /// Use this method to detect when the user taps on a notification or action button
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Always ensure that all plugins was initialized
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    final bool isSilentAction =
        receivedAction.actionType == ActionType.SilentAction;

    // SilentBackgroundAction runs on background thread and cannot show
    // UI/visual elements
    if (receivedAction.actionType != ActionType.SilentBackgroundAction)
      log('${isSilentAction ? 'Silent action' : 'Action'} received on ${_toSimpleEnum(receivedAction.actionLifeCycle!)}');

    if (receivedAction.actionType == ActionType.SilentBackgroundAction)
      log('${isSilentAction ? 'Silent action' : 'Action'} received on ${_toSimpleEnum(receivedAction.actionLifeCycle!)}');

    switch (receivedAction.channelKey) {
      case 'calls':
        await receiveCallNotificationAction(receivedAction);
        break;

      case 'groupMessaging':
        await receiveGroupNotificationAction(receivedAction);
        break;

      case 'invite':
        await receiveInviteNotificationAction(receivedAction);
        break;

      case 'messaging':
        await receiveChatNotificationAction(receivedAction);
        break;

      case 'availability':
        await receiveChatNotificationAction(receivedAction);
        break;

      case 'stories':
        await receiveChatNotificationAction(receivedAction);
        break;

      default:
        if (isSilentAction) {
          log("noyification defailt case");
          log("long task done");
          break;
        }
        if (!AwesomeStringUtils.isNullOrEmpty(receivedAction.buttonKeyInput))
          receiveButtonInputText(receivedAction);

        break;
    }
  }

  static Future<void> receiveButtonInputText(
      ReceivedAction receivedAction) async {
    log('Input Button Message: "${receivedAction.buttonKeyInput}"');
  }

  static Future<void> receiveInviteNotificationAction(
      ReceivedAction receivedAction) async {
    final Map<String, String?>? payload = receivedAction.payload;
    final KahoChatUser myUser = KahoChatUser.fromJson(payload!["myUser"]!);
    final KahoChatUser peerUser = KahoChatUser.fromJson(payload["peerUser"]!);
    switch (receivedAction.buttonKeyPressed) {
      case 'accept':
        await FirebaseFirestore.instance.invitesCollection
            .doc(myUser.uid)
            .inviteUsersCollection
            .doc(peerUser.uid)
            .update({"accepted": "true" == "true", "answered": true});
        // set for peer user
        await FirebaseFirestore.instance.invitesCollection
            .doc(peerUser.uid)
            .inviteUsersCollection
            .doc(myUser.uid)
            .update({"accepted": "true" == "true", "answered": true});
        String messageId = "";
        final message = MessageModel(
          sender: peerUser,
          receiverUid: myUser.uid,
          sendFrom: SendFrom.chat,
          text: "",
          type: MessageType.inviteAccepted,
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

        await FirebaseFirestore.instance.chatCollection
            .doc(myUser.uid)
            .chatUsersCollection
            .doc(peerUser.uid)
            .messagesCollection
            .add(message.toMap())
            .then((messageDoc) {
          messageId = messageDoc.id;
          FirebaseFirestore.instance.usersCollection
              .doc(peerUser.uid)
              .get()
              .then((value) {
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
        await FirebaseFirestore.instance.chatCollection
            .doc(peerUser.uid)
            .chatUsersCollection
            .doc(myUser.uid)
            .messagesCollection
            .doc(messageId)
            .set(message.toMap());
        AwesomeNotifications().dismissAllNotifications();
        break;
      case 'block':
        await FirebaseFirestore.instance.invitesCollection
            .doc(myUser.uid)
            .inviteUsersCollection
            .doc(peerUser.uid)
            .update({"accepted": false, "answered": false});
        // set for peer user
        await FirebaseFirestore.instance.invitesCollection
            .doc(peerUser.uid)
            .inviteUsersCollection
            .doc(myUser.uid)
            .update({"accepted": false, "answered": false});
        String messageId = "";
        final message = MessageModel(
          sender: peerUser,
          receiverUid: myUser.uid,
          sendFrom: SendFrom.chat,
          text: "",
          type: MessageType.inviteDecline,
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
        await FirebaseFirestore.instance.chatCollection
            .doc(myUser.uid)
            .chatUsersCollection
            .doc(peerUser.uid)
            .messagesCollection
            .add(message.toMap())
            .then((messageDoc) {
          messageId = messageDoc.id;
          FirebaseFirestore.instance.usersCollection
              .doc(peerUser.uid)
              .get()
              .then((value) {
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
        await FirebaseFirestore.instance.chatCollection
            .doc(peerUser.uid)
            .chatUsersCollection
            .doc(myUser.uid)
            .messagesCollection
            .doc(messageId)
            .set(message.toMap());
        AwesomeNotifications().dismissAllNotifications();
        log(receivedAction.toString());
        break;

      default:
        log('default block of  inviteNotification');
        break;
    }
  }

  static Future<void> receiveGroupNotificationAction(
    ReceivedAction receivedAction,
  ) async {
    await Firebase.initializeApp();
    switch (receivedAction.buttonKeyPressed) {
      case 'groupReply':
        log("groupReply");
        final Map<String, String?>? payload = receivedAction.payload;
        final KahoChatUser myUser = KahoChatUser.fromJson(payload!["myUser"]!);
        final KahoChatUser peerUser =
            KahoChatUser.fromJson(payload["peerUser"]!);
        final String groupUid = payload["groupUid"]!;
        final String groupName = payload["groupName"]!;
        final urlRegExp = RegExp(
            r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
        final urlMatches = urlRegExp.allMatches(receivedAction.buttonKeyInput);
        final urls = urlMatches
            .map((urlMatch) => receivedAction.buttonKeyInput
                .substring(urlMatch.start, urlMatch.end))
            .toList();
        final linkUrl = urls.isNotEmpty ? urls.first : null;

        final msg = MessageModel(
          sender: peerUser,
          receiverUid: groupUid,
          sendFrom: SendFrom.group,
          text: receivedAction.buttonKeyInput,
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
        await FirebaseFirestore.instance.groupCollection
            .doc(groupUid)
            .messagesCollection
            .add(msg.toMap())
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
        await FirebaseFirestore.instance.groupCollection
            .doc(groupUid)
            .update({"lastMessage": msg.toMap()});
        await FirebaseFirestore.instance.groupCollection
            .doc(groupUid)
            .getSavy()
            .then((g) async {
          final List users = g['users'] as List;
          users.forEach((userId) async {
            await FirebaseFirestore.instance.countsCollection
                .doc(userId.toString())
                .collection('group')
                .doc(groupUid)
                .set({});
          });
          await FirebaseFirestore.instance.countsCollection
              .doc(Getters.getCurrentUserUid())
              .collection('group')
              .doc(groupUid)
              .delete();

          users.forEach((userUid) async {
            if (userUid.toString() != Getters.getCurrentUserUid()) {
              KahoChatUser user;
              final List<KahoChatUser> mySearchList = [];
              await FirebaseFirestore.instance
                  .collection('users')
                  .where('uid', isEqualTo: userUid.toString())
                  .getSavy()
                  .then((value) {
                value.docs.forEach((doc) {
                  user =
                      KahoChatUser.fromMap(doc.data() as Map<String, dynamic>);
                  log(user.name);
                  if (user.uid != Getters.getCurrentUserUid()) {
                    mySearchList.add(user);
                  }
                });
              });
              print(mySearchList[0].name);
              await FirebaseFirestore.instance.usersCollection
                  .doc(userUid.toString())
                  .getSavy()
                  .then((value) {
                final data = value.data()! as Map;
                if (data['pushToken'] != null) {
                  FirebaseCloudMessaging()
                      .sendGroupMessageNotification(
                        data['pushToken'] as String,
                        peerUser.name,
                        groupName,
                        msg.text,
                        msg,
                        peerUser,
                        mySearchList[0],
                        groupUid,
                      )
                      .onError(
                          (error, stackTrace) => print("$error: $stackTrace"));
                }
              });
            }
          });
        });
        AwesomeNotifications().dismissAllNotifications();

        break;

      default:
        log('default block of  groupNotification');
        break;
    }
  }

  static Future<void> receiveChatNotificationAction(
      ReceivedAction receivedAction) async {
    await Firebase.initializeApp();
    print("receivedNotification string ${receivedAction.toMap()}");


    if (receivedAction.buttonKeyPressed == 'reply') {
      log("input field ${receivedAction.buttonKeyInput}");
      final Map<String, String?>? payload = receivedAction.payload;
      final KahoChatUser myUser = KahoChatUser.fromJson(payload!['peerUser']!);
      final KahoChatUser peerUser = KahoChatUser.fromJson(payload['myUser']!);
      final String message = payload["message"]!;

      log("receivedNotification string ${receivedAction.toMap()}");

      final urlRegExp = RegExp(
          r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
      final urlMatches = urlRegExp.allMatches(receivedAction.buttonKeyInput);
      final urls = urlMatches
          .map((urlMatch) => receivedAction.buttonKeyInput
              .substring(urlMatch.start, urlMatch.end))
          .toList();
      final linkUrl = urls.isNotEmpty ? urls.first : null;

      final msg = MessageModel(
        sender: myUser,
        receiverUid: peerUser.uid,
        sendFrom: SendFrom.chat,
        text: receivedAction.buttonKeyInput,
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
      await FirebaseFirestore.instance.chatCollection
          .doc(myUser.uid)
          .chatUsersCollection
          .doc(peerUser.uid)
          .messagesCollection
          .add(msg.toMap());
      await FirebaseFirestore.instance.chatCollection
          .doc(peerUser.uid)
          .chatUsersCollection
          .doc(myUser.uid)
          .messagesCollection
          .add(msg.toMap())
          .then((_) {
        FirebaseFirestore.instance.usersCollection
            .doc(peerUser.uid)
            .getSavy()
            .then((value) {
          final data = value.data()! as Map;
          if (data['pushToken'] != null) {
            FirebaseCloudMessaging()
                .sendMessageNotification(
                  data['pushToken'] as String,
                  myUser.name,
                  msg.text,
                  msg,
                  myUser,
                  peerUser,
                )
                .onError(
                  (error, stackTrace) =>
                      print('printing notifcation error $error'),
                );
          }
        });
      });
      await FirebaseFirestore.instance.countsCollection
          .doc(peerUser.uid)
          .collection('chats')
          .doc(myUser.uid)
          .set({});
      await FirebaseFirestore.instance.chatCollection
          .doc(myUser.uid)
          .chatUsersCollection
          .doc(peerUser.uid)
          .set(
        {
          "users": [myUser.uid, peerUser.uid],
          "user1": myUser.toMap(),
          "user2": peerUser.toMap(),
          "lastMessage": msg.toMap(),
          "lastMessageTime": Timestamp.now()
        },
        SetOptions(merge: true),
      );
      await FirebaseFirestore.instance.chatCollection
          .doc(peerUser.uid)
          .chatUsersCollection
          .doc(myUser.uid)
          .set(
        {
          "users": [myUser.uid, peerUser.uid],
          "user1": myUser.toMap(),
          "user2": peerUser.toMap(),
          "lastMessage": msg.toMap(),
          "lastMessageTime": Timestamp.now()
        },
        SetOptions(merge: true),
      );
    } else {}
    AwesomeNotifications().dismissAllNotifications();
  }

  static Future<void> receiveavailabilityNotificationAction(
      ReceivedAction receivedAction) async {
    await Firebase.initializeApp();
    print("receivedNotification string ${receivedAction.toMap()}");

    AwesomeNotifications().dismissAllNotifications();
  }

  static Future<void> receiveCallNotificationAction(
      ReceivedAction receivedAction) async {
    await Firebase.initializeApp();
    switch (receivedAction.buttonKeyPressed) {
      case 'decline':
        // Is not necessary to do anything, because the reject button is
        // already auto dismissible
        log("DECLINE CALL BUTTON PRESSED");
        final Map<String, String?>? payload = receivedAction.payload;
        var snapshot = FirebaseFirestore.instance.callsCollection
            .where('users', arrayContains: Getters.getCurrentUserUid())
            .getSavy();
        await snapshot.then((snapshot) {
          for (final doc in snapshot.docs) {
            print("DECLINE CALL BUTTON PRESSED 2");
            final CallRoomModel incomingCallRoomDetails =
                CallRoomModel.fromMap(doc.data()! as Map<String, dynamic>);
            if (incomingCallRoomDetails.isCallActive &&
                incomingCallRoomDetails.currentCall.participants
                    .where((element) =>
                        element.participant.uid == Getters.getCurrentUserUid())
                    .isNotEmpty) {
              return incomingCallRoomDetails;
            }
          }
        }).then((incomingCallRoomDetails) async {
          log("DECLINE CALL BUTTON PRESSED 3");

          if (incomingCallRoomDetails != null) {
            //TODO : you can print call id if needed
            incomingCallRoomDetails.currentCall.participants
                .firstWhere(
                  (element) =>
                      element.participant.uid == Getters.getCurrentUserUid(),
                )
                .status = CallStatus.declined;
            final CallModel currentCall =
                incomingCallRoomDetails.currentCall.copyWith(
              status: CallStatus.declined,
            );
            final CallRoomModel roomDetails = incomingCallRoomDetails.copyWith(
              isCallActive: false,
              lastCall: currentCall,
              currentCall: currentCall,
            );

            //Adding the call to call history
            await FirebaseFirestore.instance.callsHistoryCollection.doc().set(
                  roomDetails.lastCall!.toMap(),
                  SetOptions(merge: true),
                );
            await FirebaseFirestore.instance.callsCollection
                .doc(roomDetails.currentCall.callId)
                .set(
                  roomDetails.toMap(),
                  SetOptions(merge: true),
                );

            print(incomingCallRoomDetails.isCallActive);
          }
          print(incomingCallRoomDetails);
        });
        break;

      case 'answer':
        // loadSingletonPage(App.navigatorKey.currentState,
        //     targetPage: PAGE_PHONE_CALL, receivedAction: receivedAction);
        break;

      default:
        log('default block of callNotification');
        // loadSingletonPage(App.navigatorKey.currentState,
        //     targetPage: PAGE_PHONE_CALL, receivedAction: receivedAction);
        break;
    }
  }

  static Future<void> firebaseMessageHandler(RemoteMessage message) async {
    final String myUser = message.data['myUser'] as String;
    final String user = message.data['user'] as String;
    final String content = message.data['content'] as String;
    await Firebase.initializeApp();
    final FirebaseDatabase _database = FirebaseDatabase.instance;

    final ref = _database.ref();
    final rf = ref
        .child('chatApp')
        .child('MutedNotification')
        .child(Getters.getCurrentUserUid());
    final DatabaseEvent event = await rf.once();
    // print(event.snapshot.value);
    MuteNotification mutedNotification;
    if (event.snapshot.exists) {
      mutedNotification =
          MuteNotification.fromJson(event.snapshot.value as String);
    } else {
      mutedNotification = MuteNotification.empty();
    }

    // * CHAT NOTIFICATION
    if (message.data["type"] as String == "chat") {
      final String peerUser = message.data['peerUser'] as String;

      try {
        bool documentExist;
        bool inviteAccepted = false;

        print("Message id-->${message.data['messageId']}");
        //mark message as delivered
        await FirebaseFirestore.instance.chatCollection
            .doc(KahoChatUser.fromJson(myUser).uid)
            .chatUsersCollection
            .doc(KahoChatUser.fromJson(peerUser).uid)
            .messagesCollection
            .doc(message.data['messageId'] as String)
            .set({"isDelivered": true}, SetOptions(merge: true));

        await FirebaseFirestore.instance.invitesCollection
            .doc(KahoChatUser.fromJson(peerUser).uid)
            .inviteUsersCollection
            .doc(KahoChatUser.fromJson(myUser).uid)
            .getSavy()
            .then((document) {
          documentExist = document.exists;
          inviteAccepted =
              documentExist && (document.data().toJson()["accepted"] as bool);
          print("documentExists is $documentExist");
          print("inviteAccepted is $inviteAccepted");
        });
        List<String> contactsUid = [];
        final ContactsFacade contactsFacade =
            ContactsFacade(FirebaseFirestore.instance, FirebaseAuth.instance);
        await contactsFacade.fetchMyContacts().then((value) {
          value.fold((l) {}, (r) {
            contactsUid = r.map((e) => e.uid).toList();
          });
        });

        final chatMuteResult = await Storage()
            .secureStorage
            .read(key: NotificationConstants.chatsMute);
        final notificationToneTypeString = await Storage()
            .secureStorage
            .read(key: NotificationConstants.chatsNotificationToneType);

        final isCustom = notificationToneTypeString ==
            NotificationToneType.custom.toString();
        if (inviteAccepted ||
            contactsUid.contains(KahoChatUser.fromJson(myUser).uid)) {
          print('inviteAccepted');
          if (chatMuteResult != NotificationMuteStatus.enabled.toString()) {
            if (!mutedNotification.muteNotification
                .contains(KahoChatUser.fromJson(myUser).uid)) {
              final String time = message.data['time'] as String;

              await AwesomeNotifications().createNotification(
                content: NotificationContent(
                  // showWhen: false,
                  groupKey: KahoChatUser.fromJson(myUser).phoneNumber,
                  summary: "You",
                  id: id,
                  channelKey: 'messaging',
                  title: user,
                  body: content,
                  showWhen: false,
                  displayOnBackground: true,
                  displayOnForeground: true,
                  notificationLayout: NotificationLayout.Messaging,
                  // customSound: 'resource://raw/res_ring',
                  // largeIcon: KahoChatUser.fromJson(myUser).profilePictureUrl,
                  payload: {
                    'myUser': myUser,
                    "message": content,
                    'peerUser': peerUser
                  },
                ),
                actionButtons: [
                  NotificationActionButton(
                    label: "Reply",
                    key: "reply",
                    actionType: ActionType.SilentBackgroundAction,
                    requireInputText: true,
                  ),
                ],
              );
              if (isCustom) {
                try {
                  final soundPath = await Storage().secureStorage.read(
                      key: NotificationConstants.chatsCustomNotificationPath);

                  if (soundPath != null) {
                    final File soundFile = File(soundPath);
                    if (await soundFile.exists()) {
                      await AppAudioPlayer.playCustomRingtone(
                          soundFile.uri.toString());
                      Future.delayed(
                        const Duration(seconds: 2),
                        () => AppAudioPlayer.stopRingtone(),
                      );
                    } else {
                      // if file does not exists
                      debugPrint('file does not exists');
                      print("playing default ringtone...");
                      await AppAudioPlayer.playRingtone();
                      // AppAudioPlayer.stopRingtone();
                    }
                  }
                } catch (e) {
                  print("error fetching chat custom notification path: $e");
                  print("playing default ringtone");
                  await AppAudioPlayer.playRingtone();
                  // AppAudioPlayer.stopRingtone();
                }
              } else {
                // default ring tone
                // await AppAudioPlayer.playRingtone();
                //  AppAudioPlayer.playRingtone();
              }
            }
          }
        }
      } catch (e) {
        print("error $e");
        // error here
      }

      id++;
    }

    // * GROUP NOTIFICATION
    if (message.data["type"] as String == "group") {
      final String groupUid = message.data["groupUid"] as String;
      final String groupName = message.data["groupName"] as String;
      final String peerUser = message.data['peerUser'] as String;
      final String messageId = message.data['messageId'] as String;
      try {
        final groupMuteResult = await Storage()
            .secureStorage
            .read(key: NotificationConstants.groupsMute);

        final notificationToneTypeString = await Storage()
            .secureStorage
            .read(key: NotificationConstants.groupsNotificationToneType);

        final isCustom = notificationToneTypeString ==
            NotificationToneType.custom.toString();
        print(notificationToneTypeString);
        print(isCustom);
        print(groupMuteResult != NotificationMuteStatus.enabled.toString());
        if (groupMuteResult != NotificationMuteStatus.enabled.toString()) {
          // if (isCustom) {
          //   try {
          //     final soundPath = await Storage().secureStorage.read(
          //         key: NotificationConstants.groupsCustomNotificationPath);

          //     if (soundPath != null) {
          //       final File soundFile = File(soundPath);
          //       if (await soundFile.exists()) {
          //         AppAudioPlayer.playCustomRingtone(soundFile.uri.toString());
          //         Future.delayed(
          //           const Duration(seconds: 2),
          //           () => AppAudioPlayer.stopRingtone(),
          //         );
          //       } else {
          //         // if file does not exists
          //         debugPrint('file does not exists');
          //         print("playing default ringtone...");
          //         AppAudioPlayer.playRingtone();
          //         // AppAudioPlayer.stopRingtone();
          //       }
          //     }
          //   } catch (e) {
          //     print("error fetching chat custom notification path: $e");
          //     print("playing default ringtone");
          //     AppAudioPlayer.playRingtone();
          //     // AppAudioPlayer.stopRingtone();
          //   }
          // } else {
          // default ring tone
          print("group Message id-->$messageId");
          print("my id-->${KahoChatUser.fromJson(myUser).uid}");
          print("group Message id-->$messageId");
          //mark message as delivered
          await FirebaseFirestore.instance.groupCollection
              .doc(groupUid)
              .messagesCollection
              .doc(messageId)
              .update({
            "deliveredToInGroup": FieldValue.arrayUnion([
              {"uid": Getters.getCurrentUserUid(), "time": DateTime.now()}
            ])
          });

          AppAudioPlayer.playRingtone();
          // AppAudioPlayer.stopRingtone();
          // }

          await AwesomeNotifications().createNotification(
            content: NotificationContent(
              wakeUpScreen: false,
              // showWhen: false,

              groupKey: groupUid,
              summary: groupName,
              id: id,
              channelKey: 'groupMessaging',
              title: user,
              body: content,
              showWhen: true,
              // ticker: "You are not correct",

              displayOnBackground: true,
              displayOnForeground: true,
              notificationLayout: NotificationLayout.MessagingGroup,

              // largeIcon: KahoChatUser.fromJson(myUser).profilePictureUrl,
              payload: {
                'myUser': myUser,
                'peerUser': peerUser,
                'groupUid': groupUid,
                'groupName': groupName
              },
            ),
            actionButtons: [
              NotificationActionButton(
                label: "Reply",
                key: "groupReply",
                actionType: ActionType.SilentBackgroundAction,
                requireInputText: true,
              ),
            ],
          );
        }
      } catch (e) {
        // error here
      }
      id++;
    }

    // * CALL NOTIFICATION
    if (message.data["type"] as String == "call") {
      // AppAudioPlayer.playCallertune();
      // AppAudioPlayer.stopCallertune();
      try {
        final notificationToneTypeString = await Storage()
            .secureStorage
            .read(key: NotificationConstants.callsNotificationToneType);
        final isCustom = notificationToneTypeString ==
            NotificationToneType.custom.toString();

        // if (isCustom) {
        //   try {
        //     final soundPath = await Storage()
        //         .secureStorage
        //         .read(key: NotificationConstants.callsCustomNotificationPath);

        //     if (soundPath != null) {
        //       final File soundFile = File(soundPath);
        //       if (await soundFile.exists()) {
        //         await AppAudioPlayer.playCustomCallertune(
        //           soundFile.uri.toString(),
        //         );
        //         Future.delayed(
        //           const Duration(seconds: 5),
        //           () => AppAudioPlayer.stopCallertune(),
        //         );
        //       } else {
        //         // if file does not exists
        //         debugPrint('file does not exists');
        //         print("playing default callertune...");
        //         await AppAudioPlayer.playCallertune();
        //         // this stop delayed layer
        //         // can be removed later
        //         // and caller tune should be stoped from the
        //         // accept and decline notifications buttons
        //         Future.delayed(
        //           const Duration(seconds: 5),
        //           () => AppAudioPlayer.stopCallertune(),
        //         );
        //       }
        //     }
        //   } catch (e) {
        //     print("error fetching chat custom notification path: $e");
        //     print("playing default ringtone");
        //     await AppAudioPlayer.playCallertune();
        //     // this stop delayed layer
        //     // can be removed later
        //     // and caller tune should be stoped from the
        //     // accept and decline notifications buttons
        //     Future.delayed(
        //       const Duration(seconds: 5),
        //       () => AppAudioPlayer.stopCallertune(),
        //     );
        //   }
        // } else {
        //   // if default
        //   await AppAudioPlayer.playCallertune();
        //   // this stop delayed layer
        //   // can be removed later
        //   // and caller tune should be stoped from the
        //   // accept and decline notifications buttons
        //   Future.delayed(
        //     const Duration(seconds: 5),
        //     () => AppAudioPlayer.stopCallertune(),
        //   );
        // }
        final String typeOfCall = message.data['typeOfCall'] as String;
        await AwesomeNotifications().createNotification(
          content: NotificationContent(
            summary: "You",
            // largeIcon: KahoChatUser.fromJson(myUser).profilePictureUrl,
            autoDismissible: false,
            locked: true,
            id: 1,
            channelKey: 'calls',
            title: user,
            body: content,
            notificationLayout: NotificationLayout.Default,
            payload: {'myUser': myUser, "typeOfCall": typeOfCall},
            ticker: "$typeOfCall Call",
          ),
          actionButtons: [
            NotificationActionButton(
              label: "Answer",
              key: "answer",
              // actionType: ActionType.SilentBackgroundAction,
            ),
            NotificationActionButton(
              label: "Decline",
              key: "decline",
              actionType: ActionType.SilentBackgroundAction,
            ),
          ],
        );
      } catch (e) {
        // error here
      }
    }

    // * INVITE NOTIFICATION
    if (message.data["type"] as String == "invite") {
      final String peerUser = message.data['peerUser'] as String;
      final String time = message.data['time'] as String;
      try {
        print(message.data["type"]);
        // bool documentExist;
        // bool? inviteAccepted = false;
        // await FirebaseFirestore.instance.invitesCollection
        //     .doc(KahoChatUser.fromJson(peerUser).uid)
        //     .inviteUsersCollection
        //     .doc(KahoChatUser.fromJson(myUser).uid)
        //     .getSavy()
        //     .then((document) {
        //   documentExist = document.exists;
        //   // inviteAccepted =
        //   //     documentExist && (document.data().toJson()["accepted"] as bool);
        //   print("documentExists is $documentExist");
        //   print("Accepted is $inviteAccepted");
        // });

        //
        // default ring tone
        // await AppAudioPlayer.playRingtone();
        // AppAudioPlayer.stopRingtone();
        await AwesomeNotifications().createNotification(
          content: NotificationContent(
            // showWhen: false,
            groupKey: KahoChatUser.fromJson(myUser).phoneNumber,
            summary: "You",
            id: id,
            channelKey: 'invite',
            title: user,
            body: content,
            showWhen: false,
            displayOnBackground: true,
            displayOnForeground: true,
            notificationLayout: NotificationLayout.Default,
            // customSound: 'resource://raw/ring',
            // largeIcon: KahoChatUser.fromJson(myUser).profilePictureUrl,
            payload: {
              'myUser': myUser,
              "message": content,
              'peerUser': peerUser
            },
          ),
          actionButtons: content.contains('declined')
              ? null
              : [
                  NotificationActionButton(
                    label: "Decline",
                    key: "block",
                  ),
                  NotificationActionButton(
                    label: "Accept",
                    key: "accept",
                    // actionType: ActionType.SilentBackgroundAction,
                  ),
                ],
        );
        print('notification created');
      } on Exception catch (e) {
        print("printing error ==> ${e.toString()}");
      }
      id++;
    }

    if (message.data["type"] as String == "availability") {
      final String peerUser = message.data['peerUser'] as String;
      final String time = message.data['time'] as String;
      try {
        print(message.data["type"]);
        // bool documentExist;
        // bool? inviteAccepted = false;
        // await FirebaseFirestore.instance.invitesCollection
        //     .doc(KahoChatUser.fromJson(peerUser).uid)
        //     .inviteUsersCollection
        //     .doc(KahoChatUser.fromJson(myUser).uid)
        //     .getSavy()
        //     .then((document) {
        //   documentExist = document.exists;
        //   // inviteAccepted =
        //   //     documentExist && (document.data().toJson()["accepted"] as bool);
        //   print("documentExists is $documentExist");
        //   print("Accepted is $inviteAccepted");
        // });

        //
        // default ring tone
        // await AppAudioPlayer.playRingtone();
        // AppAudioPlayer.stopRingtone();
        await AwesomeNotifications().createNotification(
          content: NotificationContent(
            // showWhen: false,
            groupKey: KahoChatUser.fromJson(myUser).phoneNumber,
            summary: "You",
            id: id,
            channelKey: 'availability',
            title: user,
            body: content,
            showWhen: false,
            displayOnBackground: true,
            displayOnForeground: true,
            notificationLayout: NotificationLayout.Default,
            payload: {
              'myUser': myUser,
              "message": content,
              'peerUser': peerUser
            },
          ),
        );
        print('notification created');
      } on Exception catch (e) {
        print("printing error ==> ${e.toString()}");
      }
      id++;
    }

    if (message.data["type"] as String == "stories") {
      final String peerUser = message.data['peerUser'] as String;
      final String time = message.data['time'] as String;
      try {
        print(message.data["type"]);
        // bool documentExist;
        // bool? inviteAccepted = false;
        // await FirebaseFirestore.instance.invitesCollection
        //     .doc(KahoChatUser.fromJson(peerUser).uid)
        //     .inviteUsersCollection
        //     .doc(KahoChatUser.fromJson(myUser).uid)
        //     .getSavy()
        //     .then((document) {
        //   documentExist = document.exists;
        //   // inviteAccepted =
        //   //     documentExist && (document.data().toJson()["accepted"] as bool);
        //   print("documentExists is $documentExist");
        //   print("Accepted is $inviteAccepted");
        // });

        //
        // default ring tone
        // await AppAudioPlayer.playRingtone();
        // AppAudioPlayer.stopRingtone();
        await AwesomeNotifications().createNotification(
          content: NotificationContent(
            // showWhen: false,
            groupKey: KahoChatUser.fromJson(myUser).phoneNumber,
            summary: "You",
            id: id,
            channelKey: 'stories',
            title: user,
            body: content,
            showWhen: false,
            displayOnBackground: true,
            displayOnForeground: true,
            notificationLayout: NotificationLayout.Default,
            payload: {
              'myUser': myUser,
              "message": content,
              'peerUser': peerUser
            },
          ),
        );
        print('notification created');
      } on Exception catch (e) {
        print("printing error ==> ${e.toString()}");
      }
      id++;
    }
  }

  void sendNotification(
      String data, String name, String s, KahoChatUser myUser) {}
}
