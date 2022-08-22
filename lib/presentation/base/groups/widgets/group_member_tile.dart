import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/chatting_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

import '../../../../application/user/user_bloc.dart';

class GroupMemberTile extends StatelessWidget {
  const GroupMemberTile({
    Key? key,
    required this.user,
    this.isAdmin = false,
    required this.groupId,
    this.onTapMakeAdmin,
  }) : super(key: key);
  final KahoChatUser user;
  final bool isAdmin;
  final String groupId;
  final VoidCallback? onTapMakeAdmin;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, state) {
        return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
          return InkWell(
            onTap: () {
              if (user.uid != state.group.adminUser.uid ||
                  user.uid != Getters.getCurrentUserUid()) {
                showDialog(
                  context: context,
                  builder: (contex) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                            title: Text(
                                "${context.read<SettingsBloc>().state.languageData.message} ${user.name}"),
                            onTap: () async {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ChattingPage(peerUser: user)));
                            },
                          ),
                          if (state.group.adminUser.uid ==
                                  Getters.getCurrentUserUid() ||
                              state.group.otherAdmins
                                  .where((element) =>
                                      element.uid ==
                                      Getters.getCurrentUserUid())
                                  .toList()
                                  .isNotEmpty) ...[
                            ListTile(
                              title: isAdmin
                                  ? Text(
                                      "${context.read<SettingsBloc>().state.languageData.removeAsAdmin}")
                                  : Text(
                                      "${context.read<SettingsBloc>().state.languageData.makeAsAdmin}"),
                              onTap: onTapMakeAdmin,
                            ),
                            ListTile(
                              title: Text(
                                  "${context.read<SettingsBloc>().state.languageData.remove} ${user.name}"),
                              onTap: () {
                                context.read<GroupsBloc>().add(
                                    GroupsEvent.removeMember(
                                        groupId, user.uid, state.group));
                                context.read<GroupsBloc>().add(
                                      GroupsEvent.sendGroupNotification(
                                        message:
                                            '${userState.signedInUser.name} removed ${user.name}',
                                        myUser: userState.signedInUser,
                                        groupUid: groupId,
                                        groupName: state.group.name,
                                      ),
                                    );
                              },
                            ),
                          ]
                        ],
                      ),
                    );
                  },
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  CustomCircleAvatar(
                    profilePictureUrl: user.profilePictureUrl,
                    name: user.name,
                    color: user.userColor,
                  ),
                  const SizedBoxW15(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              user.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            if (isAdmin)
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.circle_filled,
                                    color: Kolors.primary,
                                    size: 15,
                                  ),
                                  Text(
                                      "  ${context.read<SettingsBloc>().state.languageData.admin}"),
                                ],
                              ),
                          ],
                        ),
                        Text(user.about,
                            maxLines: 1,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
