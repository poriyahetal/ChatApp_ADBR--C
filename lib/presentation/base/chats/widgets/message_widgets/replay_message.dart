import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';

import '../../../../../application/settings/settings_bloc.dart';
import 'custom_shape.dart';
import 'dart:math' as math;

class ReplayMessageWidget extends StatelessWidget {
  const ReplayMessageWidget({
    Key? key,
    required this.message,
    required this.myUser,
    required this.peerUser,
    required this.docRef,
    required this.borderRad,
    required this.chatID,
    required this.groupId,
  }) : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;

/*
  @override
  Widget build(BuildContext context) {
    replyWidth();
    //print('message:${message.messageModel!.text}');
    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;
    //final bool isSeen = message.messageModel!.isSeen;
    //final DateTime myDateTime = message.messageModel!.timeOfSending.toDate();
    return Row(
      children: [
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 120),
          padding: const EdgeInsets.all(8.0),
          child: ChatBubble(
            padding: const EdgeInsets.all(4.0),
            backGroundColor: message.messageModel!.deletedForEveryone != true
                ? isSentByMe
                    ? const Color(0xffc5e3f0)
                    : Colors.grey.withOpacity(.3)
                : Colors.white,
            clipper: ChatBubbleClipper6(
              type: isSentByMe
                  ? BubbleType.sendBubble
                  : BubbleType.receiverBubble,
              nipSize: 5.0,
            ),
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 120),
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: message.messageModel!.deletedForEveryone != true
                    ? isSentByMe
                        ? const Color(0xffc5e3f0)
                        : Colors.grey.shade200
                    : Colors.white,
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 120),
                    decoration: BoxDecoration(
                      color: message.messageModel!.deletedForEveryone != true
                          ? isSentByMe
                              // ? const Color(0xffc5e3f0)
                              ? const Color.fromRGBO(160, 214, 230, 0.50)
                              // : Colors.grey.shade200
                              : Colors.grey.withOpacity(.1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: isSentByMe
                                ? Kolors.primary.withOpacity(0.75)
                                : Colors.black,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(
                                8.0,
                              ),
                              topLeft: Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          width: 4.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                isSentByMe ? "You" : peerUser!.name,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: isSentByMe
                                      ? Kolors.primary
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                message.messageModel!.forwared!.text,
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: isSentByMe
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Text(message.messageModel!.text),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TimeWidget(
                            time: message.messageModel!.timeOfSending.toDate(),
                            isSentByMe: isSentByMe,
                            isSeen: message.messageModel!.isSeen,
                            color: Colors.black,
                          ),
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
    );
  }*/
  @override
  Widget build(BuildContext context) {
    print('replied message');
    final repliedMessage = MessageSelectModel(
      messageModel: message.messageModel!.forwared,
      index: 0,
      documentId: docRef,
    );

    // double replyWidth() {
    //   double replyContainerWidth = 0;
    //   if (repliedMessage.messageModel!.type == MessageType.image) {
    //     replyContainerWidth = 150.0;
    //     // if (message.messageModel!.text.length < 5) {
    //     //   replyContainerWidth = 60;
    //     // } else if (message.messageModel!.text.length > 5 &&
    //     //     message.messageModel!.text.length < 10) {
    //     //   replyContainerWidth = 120;
    //     // } else if (message.messageModel!.text.length > 10 &&
    //     //     message.messageModel!.text.length < 15) {
    //     //   replyContainerWidth = 180;
    //     // } else if (message.messageModel!.text.length > 15 &&
    //     //     message.messageModel!.text.length < 23) {
    //     //   replyContainerWidth = 200;
    //     // } else if (message.messageModel!.text.length > 23) {
    //     //   replyContainerWidth = 220;
    //     // }
    //   }else{
    //     replyContainerWidth = 250.0;
    //   }
    //   return replyContainerWidth;
    // }

    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;

    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.8),

          child: Row(
            mainAxisAlignment:
                isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (message.messageModel?.sendFrom == SendFrom.group && !isSentByMe)
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    message.messageModel?.sender.profilePictureUrl ?? "",
                    height: 30,
                    width: 30,
                  ),
                ),
              const SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: isSentByMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  if (message.messageModel?.sendFrom == SendFrom.group &&
                      !isSentByMe)
                    Text(
                      message.messageModel?.sender.name ?? "-",
                      style: const TextStyle(fontSize: 12.0),
                    ),
                  // ...[
                  //   if (isSentByMe)
                  //     Transform(
                  //       alignment: Alignment.center,
                  //       transform: Matrix4.rotationX(math.pi),
                  //       child: CustomPaint(
                  //         painter: CustomShape(
                  //           isSentByMe
                  //               ? state.appThemeMode == ThemeMode.dark
                  //               ? Colors.blue.shade700
                  //               : Colors.blue.shade100
                  //               : state.appThemeMode == ThemeMode.dark
                  //               ? Colors.grey.shade700
                  //               : Colors.grey.shade200,
                  //         ),
                  //       ),
                  //     )
                  //   // else
                  //   //   const SizedBox()
                  // ],
                  Container(
                    // width: message.messageModel!.text.length >
                    //             repliedMessage.messageModel!.text.length ||
                    //         message.messageModel!.text.length ==
                    //             repliedMessage.messageModel!.text.length
                    //     ? (getContainerwidth(
                    //             message.messageModel!.forwared?.type ==
                    //                     MessageType.audio
                    //                 ? "voice message"
                    //                 : message.messageModel!.text +
                    //                     message.messageModel!.sender.name,
                    //             context) +
                    //         MediaQuery.of(context).size.width * .3)
                    //     : 240,
                    // constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.8),

                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: message.messageModel!.deletedForEveryone != true
                          ? isSentByMe
                              ? state.appThemeMode == ThemeMode.dark
                                  ? Colors.blue.shade700
                                  : Colors.blue.shade100
                              : state.appThemeMode == ThemeMode.dark
                                  ? Colors.grey.shade700
                                  : Colors.grey.shade200
                          : Colors.white,
                      borderRadius: borderRad,
                      border: Border.all(
                        color: message.messageModel!.deletedForEveryone != true
                            ? Colors.transparent
                            : Colors.black,
                      ),
                    ),
                    child: IntrinsicWidth(
                      child: Column(
                        // crossAxisAlignment: isSentByMe
                        //     ? CrossAxisAlignment.start
                        //     : CrossAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                //textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10,),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color:state.appThemeMode == ThemeMode.dark? Colors.white:Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(
                                            8.0,
                                          ),
                                          topLeft: Radius.circular(
                                            8.0,
                                          ),
                                        ),
                                      ),
                                      width: 4.0,
                                    ),),
                                  //   VerticalDivider(
                                  //     width: 10,
                                  //     color: state.appThemeMode == ThemeMode.dark
                                  //         ? Colors.white
                                  //         : Colors.blue,
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            message.messageModel!.sender.name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: context
                                                          .read<SettingsBloc>()
                                                          .state
                                                          .appThemeMode ==
                                                      ThemeMode.dark
                                                  ? Colors.white
                                                  : Colors.blue.shade700,
                                            ),
                                          ),
                                        ),
                                        if (repliedMessage.messageModel?.type ==
                                                MessageType.image ||
                                            repliedMessage.messageModel?.type ==
                                                MessageType.gif ||
                                            repliedMessage.messageModel?.type ==
                                                MessageType.sticker)
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: SizedBox(
                                                    height: 50,
                                                    width: 50,
                                                    child: Image.memory(
                                                      base64.decode(
                                                        repliedMessage.messageModel
                                                                ?.imageBase64Thumbnail ??
                                                            "",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              Text(repliedMessage.messageModel?.type ==
                                                      MessageType.gif
                                                  ? "GIF"
                                                  : "Photo")
                                            ],
                                          ),
                                        if (repliedMessage.messageModel?.type ==
                                            MessageType.contact)
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: SizedBox(
                                                    height: 40,
                                                    width: 40,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(40.0),
                                                      child: CachedNetworkImage(
                                                        imageUrl: repliedMessage
                                                                .messageModel
                                                                ?.contact
                                                                ?.profilePictureUrl ??
                                                            "",
                                                      ),
                                                    )),
                                              ),
                                              Column(
                                                children: [
                                                  const Text("Contact"),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 5.0),
                                                    child: Text(
                                                      "${repliedMessage.messageModel?.contact?.name}",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        if (repliedMessage.messageModel?.type ==
                                                MessageType.link ||
                                            repliedMessage.messageModel?.type ==
                                                MessageType.text ||
                                            repliedMessage.messageModel?.type ==
                                                MessageType.replay ||
                                            repliedMessage.messageModel?.type ==
                                                MessageType.storyText)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Text(
                                                "${(repliedMessage.messageModel?.text.length ?? 0) > 22 ? "${repliedMessage.messageModel?.text.substring(0, 22)}..." : repliedMessage.messageModel?.text}"),
                                          ),
                                        if (repliedMessage.messageModel?.type ==
                                            MessageType.file)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${MediaQuery.of(context).size.width < 400 ? (repliedMessage.messageModel?.fileName.length ?? 0) > 15 ? "${repliedMessage.messageModel?.fileName.substring(0, 15)}..." : repliedMessage.messageModel?.fileName : repliedMessage.messageModel?.fileName}",
                                                  style: TextStyle(
                                                      overflow: TextOverflow.fade),
                                                ),
                                                const Text("File"),
                                              ],
                                            ),
                                          ),

                                        if (repliedMessage.messageModel?.type ==
                                            MessageType.audio)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(Icons.audiotrack),
                                                const Text(" Voice Message"),
                                              ],
                                            ),
                                          )
                                        // else
                                        // GetMessageWidget.getMessageWidget2(
                                        //   MessageSelectModel(
                                        //     messageModel: message.messageModel!.forwared,
                                        //     index: 0,
                                        //     documentId: docRef,
                                        //   ),
                                        //   borderRad,
                                        //   myUser,
                                        //   peerUser,
                                        //   docRef,
                                        //   chatID,
                                        //   groupId,
                                        //   false
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: isSentByMe
                            //     ? MainAxisAlignment.end
                            //     : MainAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 2.0,
                                ),
                                child: Text(message.messageModel!.text,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    )),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0,bottom: 1),
                                    child: TimeWidget(
                                      time:
                                          message.messageModel!.timeOfSending.toDate(),
                                      isSentByMe: isSentByMe,
                                      isSeen: message.messageModel!.isSeen,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                              /*if (!isSentByMe)
                                   Padding(
                                     padding: const EdgeInsets.symmetric(
                                       horizontal: 8.0,
                                       vertical: 2.0,
                                     ),
                                     child: Text(message.messageModel!.text),
                                   ),*/
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // if()
                  ...[
                    if (!isSentByMe)
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationX(math.pi),
                        child: CustomPaint(
                          painter: CustomShape(
                            isSentByMe
                                ? state.appThemeMode == ThemeMode.dark
                                ? Colors.blue.shade700
                                : Colors.blue.shade100
                                : state.appThemeMode == ThemeMode.dark
                                ? Colors.grey.shade700
                                : Colors.grey.shade200,
                          ),
                        ),
                      )
                    else
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationX(math.pi),
                        child: CustomPaint(
                          painter: CustomShape(
                            isSentByMe
                                ? state.appThemeMode == ThemeMode.dark
                                ? Colors.blue.shade700
                                : Colors.blue.shade100
                                : state.appThemeMode == ThemeMode.dark
                                ? Colors.grey.shade700
                                : Colors.grey.shade200,
                          ),
                        ),
                      )
                  ],
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  double getContainerwidth(String text, BuildContext context) {
    if (text.length > 20) {
      return 250;
    } else if (text.length > 15) {
      return MediaQuery.of(context).size.width * .15;
    } else if (text.length > 7) {
      return 120;
    } else if (text.length > 1) {
      return 60;
    } else {
      return 60;
    }
  }
}
