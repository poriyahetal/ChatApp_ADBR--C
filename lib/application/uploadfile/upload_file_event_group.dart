import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

class UploadFileToFireStorageGroup extends UploadFileEvent {
  final MessageSelectModel message;
  final String docRef;
  final String groupUid;
  final KahoChatUser myUser;
  UploadTask? uploadTask;
  bool cancelTask;

  UploadFileToFireStorageGroup({required this.message,required this.groupUid,this.uploadTask, required this.myUser,required this.docRef, this.cancelTask = false});
}
