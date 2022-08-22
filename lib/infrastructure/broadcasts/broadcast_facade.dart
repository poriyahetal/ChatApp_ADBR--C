import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/broadcasts/broadcast_failures.dart';
import 'package:flutter_template/domain/broadcasts/broadcast_model.dart';
import 'package:flutter_template/domain/broadcasts/i_broadcast_facade.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBroadcastFacade)
class BroadcastFacade implements IBroadcastFacade {
  final FirebaseFirestore _firestore;

  BroadcastFacade(this._firestore);
  @override
  Future<Either<BroadcastFailure, Unit>> createBroadcast(
    BroadcastModel broadcast,
  ) async {
    await _firestore.broadcastCollection
        .doc(Getters.getCurrentUserUid())
        .broadcastsCollection
        .add(broadcast.toMap());
    return right(unit);
  }

  @override
  Future<Either<BroadcastFailure, Unit>> sendBroadcastMessage(
    List<KahoChatUser> recipients,
    KahoChatUser myUser,
    String messageText,
  ) async {
    final MessageModel broadcastMessage = MessageModel(
      sender: myUser,
      sendFrom: SendFrom.chat,
      receiverUid: "",
      text: messageText,
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
        storyText: "",
        storyImageUrl: ""
    );
    await _firestore.broadcastCollection
        .doc(Getters.getCurrentUserUid())
        .broadcastsCollection
        .doc()
        .set(broadcastMessage.toMap());
    recipients.forEach((recipient) async {
      final MessageModel message = MessageModel(
        sender: myUser,
        receiverUid: recipient.uid,
        sendFrom: SendFrom.chat,
        text: messageText,
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
      await _firestore.chatCollection
          .doc(Getters.getChatDocumentId(myUser.uid, recipient.uid))
          .messagesCollection
          .doc()
          .set(message.toMap());
    });
    return right(unit);
  }
}
