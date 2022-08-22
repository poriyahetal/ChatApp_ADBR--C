import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class UploadFileEvent{}

class UploadFileToFireStorage extends UploadFileEvent {
  final MessageSelectModel message;
  final String docRef;
  final KahoChatUser peerUser;
  final KahoChatUser myUser;
  UploadTask? uploadTask;
  bool cancelTask;

  UploadFileToFireStorage({required this.message,required this.peerUser, required this.myUser,required this.docRef,this.uploadTask, this.cancelTask = false});
}
