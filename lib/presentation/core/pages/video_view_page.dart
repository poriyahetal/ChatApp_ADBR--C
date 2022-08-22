// ignore_for_file: depend_on_referenced_packages

import 'dart:math';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:line_icons/line_icons.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final KahoChatUser peerUser;
  final MessageSelectModel messageModel;

  const VideoPlayerScreen(
      {Key? key,
      required this.videoUrl,
      required this.peerUser,
      required this.messageModel})
      : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(widget.videoUrl),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kolors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForwardMessagePage(
                    messages: {0: widget.messageModel},
                  ),
                ),
              );
            },
            icon: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: const Icon(LineIcons.reply),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () async {
              double left = MediaQuery.of(context).size.width;
              double top = 0;
              await showMenu(
                color: Colors.white,
                //add your color
                context: context,
                position: RelativeRect.fromLTRB(left, top, 0, 0),
                items: [
                  PopupMenuItem(
                    value: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, right: 40),
                      child: Row(
                        children: const [
                          Icon(Icons.download_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Save to gallery",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, right: 40),
                      child: Row(
                        children: const [
                          Icon(Icons.share_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.delete),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Delete",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
                elevation: 8.0,
              ).then((value) {
                print(value);
                if (value == 1) {
                  print('download');
                  final DownloadFileBloc bloc = DownloadFileBloc();
                  bloc.filehandlingEventSink.add(DownloadFile(
                      context: context,
                      path: LocalStorageConstant.appFolder +
                          LocalStorageConstant.videos,
                      fileUrl: widget.videoUrl,
                      filename: DateTime.now().toString() + '.mp4'));
                  Fluttertoast.showToast(
                    msg: 'Download successfull',
                    backgroundColor: Kolors.grey,
                  );
                }
                if (value == 2) {
                  print('share');
                  Share.shareFiles(
                      [(widget.messageModel.messageModel!.fileLocation)],
                      text: widget.messageModel.messageModel!.text);
                }
                if (value == 3) {
                  print('delete');
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      title: Text(
                          "${context.read<SettingsBloc>().state.languageData.deleteSelectedImage} ?",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      content: Text(
                          "${context.read<SettingsBloc>().state.languageData.thisWillPermanentlyDeleteSelectedImage}",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                      actions: [
                        FlatButton(
                          onPressed: () {
                            context.read<ChatsBloc>().add(
                                    ChatsEvent.deleteMessageEveryone(
                                        messages: {
                                      widget.messageModel.index!:
                                          MessageSelectModel(
                                              documentId: widget
                                                  .messageModel.documentId,
                                              index: widget.messageModel.index,
                                              messageModel: widget
                                                  .messageModel.messageModel)
                                    },
                                        myUser: Getters.getCurrentUserUid(),
                                        peerUser: widget.peerUser.uid));
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          textColor: Kolors.primary,
                          child: Text(
                              "${context.read<SettingsBloc>().state.languageData.delete}"),
                        ),
                        FlatButton(
                            onPressed: () => Navigator.pop(context),
                            textColor: Kolors.primary,
                            child: Text(
                                "${context.read<SettingsBloc>().state.languageData.cancel}")),
                      ],
                    ),
                  );
                }
              });
            },
            icon: const Icon(Icons.more_vert),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      body: FlickVideoPlayer(
        flickManager: flickManager,
      ),
    );
  }
}
