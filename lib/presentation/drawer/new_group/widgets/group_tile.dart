import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class GroupTile extends StatelessWidget {
  const GroupTile({
    Key? key,
    required this.member,
    required this.onChanged,
    required this.isChecked,
  }) : super(key: key);
  final GroupChatRoomModel member;
  final void Function(bool) onChanged;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(member.name),
      leading: CustomCircleAvatar(
        name: member.name,
        profilePictureUrl: member.groupImageUrl,
        color: '',
      ),
      subtitle: Text(member.description),
      trailing: isChecked
          ? const Icon(CupertinoIcons.check_mark_circled_solid,
              color: Kolors.primary)
          : const SizedBox.shrink(),
    );
  }
}
