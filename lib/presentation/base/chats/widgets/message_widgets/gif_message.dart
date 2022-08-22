import 'dart:developer';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/reply_text.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_2.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_group.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../domain/user/kahochat_user.dart';

class GifMessageWidget extends StatefulWidget {
  const GifMessageWidget({
    Key? key,
    required this.message,
    required this.myUser,
    required this.peerUser,
    required this.docRef,
    required this.borderRad,
    required this.chatID,
    required this.groupId,
    required this.isLastMessage,
  }) : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;
  final bool isLastMessage;

  @override
  _GifMessageWidgetState createState() => _GifMessageWidgetState();
}

class _GifMessageWidgetState extends State<GifMessageWidget> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
  }

  String defaultPathGroup = "";
  Future<void> getDirect() async {
    if (widget.message.messageModel!.sendFrom == SendFrom.chat) {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup = LocalStorageConstant.appFolder +
            widget.peerUser!.name +
            LocalStorageConstant.images;
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/${widget.peerUser!.name}${LocalStorageConstant.images}';
      }
    } else {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup =
            '${LocalStorageConstant.appFolder}groups/${widget.groupId}/${LocalStorageConstant.images}';
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/groups/${widget.groupId}${LocalStorageConstant.images}';
      }
      print(defaultPathGroup);
    }
  }

  @override
  Widget build(BuildContext context) {
    double imageHeight = 100;
    double imageWidth = 250;
    print("GIF message-->${widget.message.messageModel}");

    final bool isSentByMe =
        Getters.getCurrentUserUid() == widget.message.messageModel!.sender.uid;
    final bool isSeen = widget.message.messageModel!.isSeen;
    final DateTime myDateTime =
        widget.message.messageModel!.timeOfSending.toDate();
    log(defaultPathGroup);
    final file = File(widget.message.messageModel!.fileLocation);

    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, mState) {
        return BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: !mState.isAppSelectionbarEnable
                  ? () {
                      if (File(widget.message.messageModel!.fileLocation)
                          .existsSync()) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageView2Page(
                              imageUrl: widget.message.messageModel!.fileUrl,
                              messageModel: widget.message,
                              chatId: widget.chatID,
                              peerUser: widget.peerUser!,
                            ),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageViewPageGroup(
                              imageUrl: widget.message.messageModel!.fileUrl,
                              messageModel: widget.message,
                              groupUid: widget.groupId,
                              //peerUser: widget.peerUser!,
                            ),
                          ),
                        );
                      }
                    }
                  : null,
              child: widget.message.messageModel!.type == MessageType.storyText
                  ? ReplyText(
                      message: widget.message.messageModel!,
                      myUser: widget.myUser,
                      peerUser: widget.peerUser!,
                    )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: widget.borderRad,
                          ),
                          color: Colors.transparent,
                          child: Container(
                            margin: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: widget.borderRad,
                            ),
                            child: Container(
                              height: 200,
                              width: 250,
                              margin: EdgeInsets.zero,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: CachedNetworkImage(
                                      imageUrl: widget.message.messageModel?.imageUrl??"",
                                      height: 200,
                                      fit: BoxFit.fill,
                                      width: 250,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.gif_outlined,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20.0),
                                          child: TimeWidget(
                                            time: myDateTime,
                                            isSentByMe: isSentByMe,
                                            isSeen: isSeen,
                                            color: Colors.black87,),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
            );
          },
        );
      },
    );
  }
}
