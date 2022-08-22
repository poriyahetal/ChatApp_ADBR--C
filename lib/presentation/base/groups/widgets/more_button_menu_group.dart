// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_chat_page_media_list.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

import 'shared_media_group.dart';

class MoreButtonMenuGroup extends StatelessWidget {
  final GroupChatRoomModel chatModel;
  final String groupId;
  const MoreButtonMenuGroup(
      {Key? key, required this.chatModel, required this.groupId})
      : super(key: key);

  bool checkBlock(str) {
    if (str != null) {
      if (str == Getters.getCurrentUserUid()) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, state) {
        final iconBackColor = Colors.grey.shade300;
        final iconColor = Colors.black;
        final iconSize = 22.0;
        final iconPadding = 10.0;

        return Container(
          height: 250 + MediaQuery.of(context).padding.bottom,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 8),
              ListTile(
                leading: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: iconBackColor,
                  child: Padding(
                    padding: EdgeInsets.all(iconPadding),
                    child: Icon(
                      IconlyLight.image,
                      color: iconColor,
                      size: iconSize,
                    ),
                  ),
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.groupSharedMedia}"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SharedMediaGroup(
                              groupId: groupId,
                            ))),
              ),
              ListTile(
                leading: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: iconBackColor,
                  child: Padding(
                    padding: EdgeInsets.all(iconPadding),
                    child: Icon(
                      Icons.search,
                      color: iconColor,
                      size: iconSize,
                    ),
                  ),
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.search}"),
                onTap: () {
                  context
                      .read<MessageSelectBloc>()
                      .add(MessageSelectEvent.enableSearchBar(isSearch: true));
                  Navigator.pop(context);
                },
              ),
              /*ListTile(
            leading: const Icon(
              Icons.details,
              size: 35,
            ),
            title: const TextTranslate("Report"),
            onTap: () {},
          ),*/
              ListTile(
                leading: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: iconBackColor,
                  child: Padding(
                    padding: EdgeInsets.all(iconPadding),
                    child: Icon(
                      Icons.exit_to_app,
                      color: iconColor,
                      size: iconSize,
                    ),
                  ),
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.leaveGroup}"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        title: Text(
                          "${context.read<SettingsBloc>().state.languageData.doYouReallyWantToLeaveThisGroup}?",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                                "${context.read<SettingsBloc>().state.languageData.cancel}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                          ),
                          TextButton(
                            onPressed: () async {
                              context.read<GroupsBloc>().add(
                                  GroupsEvent.leaveGroup(groupId, chatModel));
                              Navigator.pop(context);
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text(
                                "${context.read<SettingsBloc>().state.languageData.leave}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ListTile(
                leading: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: iconBackColor,
                  child: Padding(
                    padding: EdgeInsets.all(iconPadding),
                    child: Icon(
                      CupertinoIcons.delete,
                      color: iconColor,
                      size: iconSize,
                    ),
                  ),
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.clearChat}"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      title: Text(
                        "${context.read<SettingsBloc>().state.languageData.deleteSelectedConversations} ?",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      content: Text(
                        "${context.read<SettingsBloc>().state.languageData.thisWillDeleteSelectedConversationsPermanently}",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              context
                                  .read<GroupsBloc>()
                                  .add(GroupsEvent.clearChat(groupId));
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            textColor: Kolors.primary,
                            child: Text(
                                "${context.read<SettingsBloc>().state.languageData.delete}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17))),
                        FlatButton(
                            onPressed: () => Navigator.pop(context),
                            textColor: Kolors.primary,
                            child: Text(
                                "${context.read<SettingsBloc>().state.languageData.cancel}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17))),
                      ],
                    ),
                  );
                },
              ),
              /*ListTile(
            leading: const Icon(
              Icons.volume_off,
              size: 35,
            ),
            title: const TextTranslate("Mute notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.wallpaper,
              size: 35,
            ),
            title: const TextTranslate("Wallpaper"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.more_horiz,
              size: 35,
            ),
            title: const TextTranslate("More"),
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                context: context,
                builder: (builder) => Container(
                  height: 335,
                  // width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 12,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      const SizedBoxH20(),

                      /*ListTile(
                        leading: const Icon(
                          Icons.file_upload_outlined,
                          size: 35,
                        ),
                        title: const TextTranslate("Export chat"),
                        onTap: () {},
                      ),*/

                      /*ListTile(
                        leading: const Icon(
                          Icons.share,
                          size: 35,
                        ),
                        title: const TextTranslate("Share contact"),
                        onTap: () {},
                      ),*/
                    ],
                  ),
                ),
              );
            },
          ),*/
            ],
          ),
        );
      },
    );
  }
}
