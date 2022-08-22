import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/reply_text.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_2.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_group.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../domain/user/kahochat_user.dart';

class StickerMessageWidget extends StatefulWidget {
  const StickerMessageWidget({
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
  _StickerMessageWidgetState createState() => _StickerMessageWidgetState();
}

class _StickerMessageWidgetState extends State<StickerMessageWidget> {
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
                  : Row(
                      mainAxisAlignment: isSentByMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        if (widget.message.messageModel?.sendFrom ==
                                SendFrom.group &&
                            !isSentByMe)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              widget.message.messageModel?.sender
                                      .profilePictureUrl ??
                                  "",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          children: [
                            if (widget.message.messageModel?.sendFrom ==
                                    SendFrom.group &&
                                !isSentByMe)
                              Text(
                                widget.message.messageModel?.sender.name ?? "-",
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: widget.borderRad,
                              ),
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: isSentByMe
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  if (widget.isLastMessage) ...[
                                    // if (!isSentByMe)
                                    //   Transform(
                                    //     alignment: Alignment.center,
                                    //     transform: Matrix4.rotationX(math.pi),
                                    //     child: CustomPaint(
                                    //       painter: CustomShape(Colors.black),
                                    //     ),
                                    //   )
                                    // else
                                    //   const SizedBox()
                                  ],
                                  Container(
                                    margin: EdgeInsets.zero,
                                    decoration: BoxDecoration(
                                      borderRadius: widget.borderRad,
                                      image: File(
                                        widget
                                            .message.messageModel!.fileLocation,
                                      ).existsSync()
                                          ? DecorationImage(
                                              image: FileImage(
                                                File(
                                                  widget.message.messageModel!
                                                      .fileLocation,
                                                ),
                                              ),
                                              fit: BoxFit.cover,
                                            )
                                          : DecorationImage(
                                              image: NetworkImage(
                                                widget.message.messageModel!
                                                    .fileUrl,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                    ),
                                    child: Container(
                                      height: imageHeight,
                                      width: imageWidth,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 8.0,
                                      ),
                                      margin: EdgeInsets.zero,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          end: Alignment.bottomCenter,
                                          begin: Alignment.topCenter,
                                          colors: [
                                            if (File(
                                              widget.message.messageModel!
                                                  .fileLocation,
                                            ).existsSync()) ...[
                                              Colors.transparent,
                                              Colors.transparent,
                                              Colors.transparent,
                                              Colors.transparent,
                                            ] else ...[
                                              if (File(
                                                '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                              ).existsSync()) ...[
                                                Colors.transparent,
                                                Colors.transparent,
                                                Colors.transparent,
                                                Colors.transparent,
                                              ] else ...[
                                                Colors.black87,
                                                Colors.black54,
                                                Colors.black54,
                                                Colors.black38,
                                              ]
                                            ],
                                            Colors.black38,
                                            Colors.black,
                                          ],
                                        ),
                                        borderRadius: widget.borderRad,
                                      ),
                                    ),
                                  ),
                                  if (widget.isLastMessage) ...[
                                    // if (isSentByMe)
                                    //   Transform(
                                    //     alignment: Alignment.center,
                                    //     transform: Matrix4.rotationX(math.pi),
                                    //     child: CustomPaint(
                                    //       painter: CustomShape(Colors.black),
                                    //     ),
                                    //   )
                                    // else
                                    //   const SizedBox()
                                  ],
                                ],
                              ),
                            ),
                          ],
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
