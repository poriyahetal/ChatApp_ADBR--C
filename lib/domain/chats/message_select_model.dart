import 'package:flutter_template/domain/chats/message_model.dart';

class MessageSelectModel {
  String? documentId;
  int? index;
  MessageModel? messageModel;
  MessageSelectModel({required this.documentId, required this.index, required this.messageModel});

  MessageSelectModel.fromJson(Map<String, dynamic> json) {
    documentId = json['document_id'] as String;
    index = json['index'] as int;
    messageModel = json['message_model'] as MessageModel;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['document_id'] = documentId;
    data['index'] = index;
    data['message_model'] = messageModel;
    return data;
  }
}
