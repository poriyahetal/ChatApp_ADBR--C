// ignore_for_file: noop_primitive_operations

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/base/chats/widgets/chat_page_media_image_list.dart';
import 'package:flutter_template/presentation/base/chats/widgets/chat_page_media_list.dart';
import 'package:flutter_template/presentation/core/layout_widgets/details_page_section.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/core/enums.dart';

class SharedMedia extends StatefulWidget {
  final KahoChatUser peerUser;
  const SharedMedia({Key? key, required this.peerUser}) : super(key: key);

  @override
  _SharedMediaState createState() => _SharedMediaState();
}

class _SharedMediaState extends State<SharedMedia> {
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
              appBar: AppBar(
                iconTheme: Theme.of(context).iconTheme,
                centerTitle: true,
                titleSpacing: 0,
                title: state.isAppSelectionbarEnable
                    ? Text(
                        "${state.selectedIndexList.length + state.selectedFilesIndexList.length}   ${context.read<SettingsBloc>().state.languageData.selected}",
                        style:
                            TextStyle(color: Theme.of(context).iconTheme.color),
                      )
                    : Text(
                        "${context.read<SettingsBloc>().state.languageData.sharedMedia}",
                        style:
                            TextStyle(color: Theme.of(context).iconTheme.color),
                      ),
                bottom: TabBar(
                  tabs: [
                    Tab(
                        icon: Text(
                            "${context.read<SettingsBloc>().state.languageData.media}")),
                    Tab(
                        icon: Text(
                            "${context.read<SettingsBloc>().state.languageData.files}")),
                    Tab(
                        icon: Text(
                            "${context.read<SettingsBloc>().state.languageData.audio}")),
                    Tab(
                        icon: Text(
                            "${context.read<SettingsBloc>().state.languageData.links}")),
                  ],
                ),
                backgroundColor: Theme.of(context).backgroundColor,
                leading: state.isAppSelectionbarEnable
                    ? IconButton(
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
                      )
                    : null,
                actions: state.isAppSelectionbarEnable
                    ? <Widget>[
                        IconButton(
                          color: Theme.of(context).iconTheme.color,
                          onPressed: () {
                            final selectedMessages = {
                              ...state.selectedIndexList,
                              ...state.selectedFilesIndexList,
                              ...state.selectedAudiosIndexList,
                              ...state.selectedLinksIndexList
                            };
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
                            final List<String> paths = state
                                .selectedIndexList.values
                                .where((value) {
                                  if (value.messageModel!.fileLocation
                                      .replaceAll(" ", "")
                                      .trim()
                                      .isNotEmpty) {
                                    if (File(value.messageModel!.fileLocation)
                                        .existsSync()) {
                                      return true;
                                    } else {
                                      return false;
                                    }
                                  } else {
                                    return false;
                                  }
                                })
                                .map((e) => e.messageModel!.fileLocation)
                                .toList();
                            /*state.selectedIndexList.forEach((key, value) async{
                              if(value.messageModel!.fileLocation.replaceAll(" ", "").trim().isNotEmpty){
                                final bool isExist = await File(value.messageModel!.fileLocation).exists();
                                if(isExist){
                                  paths.add(value.messageModel!.fileLocation.toString());
                                }else{
                                  Fluttertoast.showToast(msg: 'Some files are missing ! re-download to share them');

                                }
                              }
                              });*/
                            if (paths.isNotEmpty) {
                              Share.shareFiles(paths);
                            } else {
                              Fluttertoast.showToast(
                                msg:
                                    'Files not shared ! download files to share',
                                backgroundColor: Kolors.grey,
                              );
                            }
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
                                            final selectedMessages = {
                                              ...state.selectedIndexList,
                                              ...state.selectedFilesIndexList,
                                              ...state.selectedAudiosIndexList,
                                              ...state.selectedLinksIndexList
                                            };
                                            context.read<ChatsBloc>().add(
                                                  ChatsEvent.deleteMessage(
                                                    messages: selectedMessages,
                                                    myUser: Getters
                                                        .getCurrentUserUid(),
                                                    peerUser:
                                                        widget.peerUser.uid,
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
                                            "${context.read<SettingsBloc>().state.languageData.deleteForMe}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Kolors.primary,
                                              height: 2,
                                            ),
                                          ),
                                        ),
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
                          icon: const Icon(CupertinoIcons.delete),
                        ),
                      ]
                    : null,
              ),
              body: TabBarView(
                children: [
                  DetailsPageSection(
                    title: "",
                    body: ChatPageMediaImageList(
                      peerUser: widget.peerUser,
                      dataType: 'MessageType.image',
                      refresh: (v) {
                        setState(() {});
                      },
                    ),
                  ),
                  DetailsPageSection(
                    title: "",
                    body: ChatPageMediaList(
                      peerUser: widget.peerUser,
                      dataType: 'MessageType.file',
                      refresh: (v) {
                        setState(() {});
                      },
                    ),
                  ),
                  DetailsPageSection(
                    title: "",
                    // body: ChatPageMediaList(
                    //   peerUser: widget.peerUser,
                    //   dataType: 'MessageType.audio',
                    //   refresh: (v) {
                    //     setState(() {});
                    //   },
                    // ),
                    body: ChatPageMediaImageList(
                      peerUser: widget.peerUser,
                      dataType: "MessageType.audio",
                      refresh: (v) {
                        setState(() {});
                      },
                    ),
                  ),
                  DetailsPageSection(
                    title: "",
                    body: ChatPageMediaList(
                      peerUser: widget.peerUser,
                      dataType: 'MessageType.links',
                      refresh: (v) {
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
