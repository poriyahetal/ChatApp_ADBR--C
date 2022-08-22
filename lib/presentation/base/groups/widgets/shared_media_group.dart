import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_chat_page_media_list.dart';
import 'package:flutter_template/presentation/core/layout_widgets/details_page_section.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:share_plus/share_plus.dart';

class SharedMediaGroup extends StatefulWidget {
  final String groupId;
  const SharedMediaGroup({Key? key, required this.groupId}) : super(key: key);

  @override
  _SharedMediaGroupState createState() => _SharedMediaGroupState();
}

class _SharedMediaGroupState extends State<SharedMediaGroup> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            context.read<MessageSelectBloc>().add(
                  MessageSelectEvent.enableSelectionBar(isSelectionBar: false),
                );
            context
                .read<MessageSelectBloc>()
                .add(MessageSelectEvent.enableSearchBar(isSearch: false));
            context
                .read<MessageSelectBloc>()
                .add(MessageSelectEvent.changeSearchTextVal(searchText: ""));
            context.read<MessageSelectBloc>().add(
                  MessageSelectEvent.enableReplay(isReplying: false),
                );
            if (state.isAppSelectionbarEnable) {
              return false;
            } else {
              return true;
            }
          },
          child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: state.isAppSelectionbarEnable
                  ? AppBar(
                      iconTheme: Theme.of(context).iconTheme,
                      backgroundColor: Theme.of(context).backgroundColor,
                      leading: IconButton(
                        color: Theme.of(context).iconTheme.color,
                        onPressed: () {
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.enableSelectionBar(
                                  isSelectionBar: false,
                                ),
                              );
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.disableSelection(
                                  enable: false,
                                ),
                              );
                        },
                        icon: const Icon(Icons.close),
                      ),
                      centerTitle: false,
                      titleSpacing: 0,
                      title: Text(
                          "${state.selectedIndexList.length} ${context.read<SettingsBloc>().state.languageData.selected}"),
                      actions: <Widget>[
                        IconButton(
                          color: Theme.of(context).iconTheme.color,
                          onPressed: () {
                            final selectedMessages = state.selectedIndexList;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForwardMessagePage(
                                  messages: selectedMessages,
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            CupertinoIcons.arrowshape_turn_up_right,
                          ),
                        ),
                        IconButton(
                          color: Theme.of(context).iconTheme.color,
                          onPressed: () {
                            final List<String> paths = [];
                            state.selectedIndexList.forEach((key, value) {
                              if (value.messageModel!.fileLocation.isNotEmpty) {
                                paths.add(value.messageModel!.fileLocation);
                              }
                            });
                            Share.shareFiles(paths);
                          },
                          icon: const Icon(Icons.share),
                        ),
                        IconButton(
                          color: Theme.of(context).iconTheme.color,
                          onPressed: () {
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.hideSelectionBar(
                                      isSelectionBar: false),
                                );
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SizedBox(
                                    height: 110,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${context.read<SettingsBloc>().state.languageData.deleteSelectedFiles} ?",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBoxH20(),
                                        GestureDetector(
                                            onTap: () {
                                              context.read<GroupsBloc>().add(
                                                    GroupsEvent
                                                        .deleteMessageEveryone(
                                                      message: state
                                                          .selectedIndexList,
                                                      groupUid: widget.groupId,
                                                    ),
                                                  );
                                              context
                                                  .read<MessageSelectBloc>()
                                                  .add(
                                                    MessageSelectEvent
                                                        .enableSelectionBar(
                                                      isSelectionBar: false,
                                                    ),
                                                  );
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                "${context.read<SettingsBloc>().state.languageData.delete}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Kolors.primary,
                                                    height: 2))),
                                        const SizedBoxH10(),
                                        GestureDetector(
                                          onTap: () => Navigator.pop(context),
                                          child: Text(
                                            "${context.read<SettingsBloc>().state.languageData.cancel}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Kolors.primary,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                      bottom: TabBar(
                        indicatorColor: Kolors.primary,
                        tabs: [
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.media}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.audio}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.files}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.links}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                        ],
                      ),
                    )
                  : AppBar(
                      elevation: 0.0,
                      title: Text(
                        "${context.read<SettingsBloc>().state.languageData.groupSharedMedia}",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      backgroundColor: Theme.of(context).backgroundColor,
                      centerTitle: true,
                      titleSpacing: 0,
                      iconTheme: Theme.of(context).iconTheme,
                      bottom: TabBar(
                        indicatorColor: Kolors.primary,
                        tabs: [
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.image}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.audio}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.files}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                          Tab(
                              icon: Text(
                                  "${context.read<SettingsBloc>().state.languageData.links}",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).iconTheme.color))),
                        ],
                      ),
                    ),
              body: TabBarView(
                children: [
                  DetailsPageSection(
                    title: "",
                    body: GroupChatPageMediaList(
                      groupId: widget.groupId,
                      dataType: MessageType.image,
                      refresh: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  DetailsPageSection(
                    title: "",
                    body: GroupChatPageMediaList(
                      groupId: widget.groupId,
                      dataType: MessageType.audio,
                      refresh: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  DetailsPageSection(
                    title: "",
                    body: GroupChatPageMediaList(
                      groupId: widget.groupId,
                      dataType: MessageType.file,
                      refresh: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  DetailsPageSection(
                    title: "",
                    body: GroupChatPageMediaList(
                      groupId: widget.groupId,
                      dataType: MessageType.link,
                      refresh: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
