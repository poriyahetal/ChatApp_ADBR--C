import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_app_bar.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

import 'more_button_menu_group.dart';

class GroupAppBar extends StatelessWidget with PreferredSizeWidget {
  const GroupAppBar({
    Key? key,
    required this.groupChat,
    required this.groupId,
  }) : super(key: key);
  final GroupChatRoomModel groupChat;
  final String groupId;
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      imageUrl: groupChat.groupImageUrl == '' ? '' : groupChat.groupImageUrl,
      title: groupChat.name,
      color: groupChat.groupColor,
      name: groupChat.name,
      subtitle: "${groupChat.users.length} participants",
      /*actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_ic_call_outlined),
        )
      ],*/
      onClick: () {
        AutoRouter.of(context).push(GroupDetailsRoute(groupId: groupId));
      },
      onClickMore: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          context: context,
          builder: (builder) =>
              MoreButtonMenuGroup(chatModel: groupChat, groupId: groupId),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
