import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/presentation/base/groups/widgets/list_card.dart';
import 'package:flutter_template/presentation/base/groups/widgets/text_with_bg.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class GroupTile extends StatelessWidget {
  const GroupTile({
    Key? key,
    required this.groupChat,
    required this.groupUid,
  }) : super(key: key);
  final GroupChatRoomModel groupChat;
  final String groupUid;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCircleAvatar(
          profilePictureUrl: groupChat.groupImageUrl,
          name: groupChat.name,
          color: '',
        ),
        const SizedBoxW15(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                groupChat.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
              Text(groupChat.description),
              const SizedBoxH10(),
              Text(
                groupChat.lastMessage?.timeOfSending.toTime()??"",
                style: const TextStyle(
                  color: Kolors.grey,
                ),
              ),
            ],
          ),
        ),
        const TextWithBg(text: "11 msgs"),
      ],
    );
  }
}
