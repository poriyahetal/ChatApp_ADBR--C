// ignore_for_file: camel_case_extensions

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_service/contacts_service.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

extension toJsonOk on dynamic {
  Map<String, dynamic> toJson() {
    return this as Map<String, dynamic>;
  }
}

extension messageModelExtension on MessageModel {
  bool isDeleted() {
    return type == MessageType.deleted;
  }
}

extension FirestoreDocumentExtension on DocumentReference {
  Future<DocumentSnapshot> getSavy() async {
    try {
      final DocumentSnapshot ds =
          await this.get(GetOptions(source: Source.cache));
      if (ds == null) {
        print('from server ');
        return this.get(GetOptions(source: Source.server));
      } else {
        print('from cache ');
        return ds;
      }
    } catch (_) {
      return this.get(GetOptions(source: Source.server));
    }
  }
}

extension FirestoreQueryExtension on Query {
  Future<QuerySnapshot> getSavy() async {
    try {
      final QuerySnapshot qs = await this.get(GetOptions(source: Source.cache));
      if (qs.docs.isEmpty) {
        print('from server');
        return this.get(GetOptions(source: Source.server));
      } else {
        print('from cache');
        return qs;
      }
    } catch (_) {
      return this.get(GetOptions(source: Source.server));
    }
  }
}

class HelperFunctions {
  String hello = "";
  static dynamic getContactId(String phone) async {
    print(phone);
    final List<Contact> contacts =
        await ContactsService.getContactsForPhone(phone);
    final _contact = contacts.first;
    return _contact.identifier;
  }

  static bool checkBlock(String str) {
    if (str.isNotEmpty) {
      if (str == Getters.getCurrentUserUid()) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  static BorderRadius getChatShape(
      List<DocumentSnapshot> _messages, int index) {
    return const BorderRadius.only(
      topLeft: Radius.circular(7),
      topRight: Radius.circular(7),
      bottomLeft: Radius.circular(7),
      bottomRight: Radius.circular(7),
    );
    /*if (_messages[index].data().toJson()['senderUid'] ==
        Getters.getCurrentUserUid()) {
      try {
        if (_messages[index + 1].data().toJson()['senderUid'] ==
            Getters.getCurrentUserUid()) {
          try {
            if (_messages[index - 1].data().toJson()['senderUid'] ==
                Getters.getCurrentUserUid()) {
              return const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(5));
            } else {
              return const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(5));
            }
          } catch (e) {
            return const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20));
          }
        } else {
          return const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20));
        }
      } catch (e) {
        return const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(5));
      }
    } else {
      try {
        if (_messages[index + 1].data().toJson()['senderUid'] !=
            Getters.getCurrentUserUid()) {
          try {
            if (_messages[index - 1].data().toJson()['senderUid'] !=
                Getters.getCurrentUserUid()) {
              return const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(18));
            } else {
              return const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(5));
            }
          } catch (e) {
            return const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5));
          }
        } else {
          return const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5));
        }
      } catch (e) {
        return const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(18));
      }
    }*/
  }

  static BorderRadius getChatShapeGroup(
      List<DocumentSnapshot> _messages, int index) {
    return const BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );
    /*if (_messages[index].data().toJson()['sender']['uid'] ==
        Getters.getCurrentUserUid()) {
      try {
        if (_messages[index + 1].data().toJson()['sender']['uid'] ==
            Getters.getCurrentUserUid()) {
          try {
            if (_messages[index - 1].data().toJson()['sender']['uid'] ==
                Getters.getCurrentUserUid()) {
              return const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(5));
            } else {
              return const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(5));
            }
          } catch (e) {
            return const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20));
          }
        } else {
          return const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20));
        }
      } catch (e) {
        return const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(5));
      }
    } else {
      try {
        if (_messages[index + 1].data().toJson()['sender']['uid'] !=
            Getters.getCurrentUserUid()) {
          try {
            if (_messages[index - 1].data().toJson()['sender']['uid'] !=
                Getters.getCurrentUserUid()) {
              return const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(18));
            } else {
              return const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(5));
            }
          } catch (e) {
            return const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5));
          }
        } else {
          return const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5));
        }
      } catch (e) {
        return const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(18));
      }
    }*/
  }

  static String getValidProfilePictureUrl(String? url) {
    if (url == null || url.isEmpty) {
      return AppConstants.dummyProfilePictureUrl;
    }
    return url;
  }

  static ParticipantType stringToParticipantType(String type) {
    switch (type) {
      case "ParticipantType.caller":
        return ParticipantType.caller;
      case "ParticipantType.receiver":
        return ParticipantType.receiver;
      default:
        throw Exception();
    }
  }

  static CallType stringToCallType(String type) {
    switch (type) {
      case "CallType.audio":
        return CallType.audio;
      case "CallType.video":
        return CallType.video;
      default:
        throw Exception();
    }
  }

  static String getNameInitials(String name) {
    //  String sample = 'Elijah Adegede';
    const numWords = 2;
    final buffer = StringBuffer();
    final split = name.split(' ');

    //For one word
    if (split.length == 1) {
      return name.substring(0, 1);
    }

    if (split.last.length > 0) {
      for (var i = 0; i < numWords; i++) {
        if (split[i].isNotEmpty) {
          buffer.write(split[i][0]);
        }
      }
      return buffer.toString();
    } else {
      return name.substring(0, 1);
    }
  }

  static CallStatus stringToCallStatus(String status) {
    switch (status) {
      case "CallStatus.declined":
        return CallStatus.declined;
      case "CallStatus.notAnswered":
        return CallStatus.notAnswered;
      case "CallStatus.answered":
        return CallStatus.answered;
      case "CallStatus.missed":
        return CallStatus.missed;
      case "CallStatus.ended":
        return CallStatus.ended;
      default:
        throw Exception();
    }
  }

  static String callStatusToString(CallStatus status) {
    switch (status) {
      case CallStatus.declined:
        return "Declined";
      case CallStatus.notAnswered:
        return "Not Answered";
      case CallStatus.answered:
        return "Answered";
      case CallStatus.missed:
        return "missed";
      default:
        throw Exception();
    }
  }

  static MessageType stringToMessageType(String type) {
    switch (type) {
      case "MessageType.text":
        return MessageType.text;
      case "MessageType.image":
        return MessageType.image;
      case "MessageType.callInfo":
        return MessageType.callInfo;
      default:
        throw Exception();
    }
  }

  static StoryType stringToStoryType(String type) {
    switch (type) {
      case "StoryType.text":
        return StoryType.text;
      case "StoryType.image":
        return StoryType.image;
      case "StoryType.video":
        return StoryType.video;
      default:
        throw Exception();
    }
  }

  static String secondsToTimerString(int seconds) {
    if (seconds < 0) {
      return "00:00";
    }
    final int minutes = seconds ~/ 60;
    final int secondsRemaining = seconds % 60;
    if (secondsRemaining < 10) {
      return "$minutes:0$secondsRemaining";
    } else {
      return "$minutes:$secondsRemaining";
    }
  }
}

extension ContactX on String {
  String toValidPhoneNumber() {
    final String validPhoneNumber = this
        .trim()
        .replaceAll(" ", "")
        .replaceAll(".", "")
        .replaceAll("(", "")
        .replaceAll(")", "")
        .replaceAll("-", "");
    return validPhoneNumber;
  }
}

extension TimestampX on Timestamp {
  String toTime() {
    final time = "${this.toDate().hour}:${this.toDate().minute}";
    return time;
  }
}

extension DurationX on int {
  String toDurationString() {
    final duration = "${this ~/ 60}:${this % 60}";
    return duration;
  }
}
