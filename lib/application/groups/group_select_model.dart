import 'package:flutter_template/domain/groups/group_chat_model.dart';

class GroupSelectModel{
  String? documentId;
  int? index;
  GroupChatRoomModel? groupModel;
  GroupSelectModel({required this.documentId, required this.index, required this.groupModel});

  GroupSelectModel.fromJson(Map<String, dynamic> json) {
    documentId = json['document_id'] as String;
    index = json['index'] as int;
    groupModel = json['group_model'] as GroupChatRoomModel;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['document_id'] = documentId;
    data['index'] = index;
    data['group_model'] = groupModel;
    return data;
  }
}