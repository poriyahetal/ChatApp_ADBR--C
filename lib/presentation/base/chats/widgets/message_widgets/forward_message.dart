import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/get_message_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class ForwardMessageWidget extends StatelessWidget {
  const ForwardMessageWidget(
      {Key? key,
      required this.message,
      required this.myUser,
      required this.peerUser,
      required this.docRef,
      required this.borderRad,
      required this.chatID,
      required this.groupId,
      required this.isLastMessage,
      z})
      : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;
  final bool isLastMessage;

  @override
  Widget build(BuildContext context) {
    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: borderRad),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isLastMessage) ...[
            if (!isSentByMe)
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(math.pi),
                child: CustomPaint(
                  painter: CustomShape(
                      isSentByMe ? Colors.blue.shade100 : Colors.grey.shade200),
                ),
              )
            else
              const SizedBox()
          ],
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: message.messageModel!.deletedForEveryone != true
                  ? isSentByMe
                      ? Colors.blue.shade100
                      : Colors.grey.shade300
                  : Colors.white,
              borderRadius: borderRad,
              border: Border.all(
                color: message.messageModel!.deletedForEveryone != true
                    ? Colors.transparent
                    : Colors.black,
              ),
            ),
            child: Column(
              crossAxisAlignment: isSentByMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.arrow_2_squarepath, size: 12),
                    Text(
                        "${context.read<SettingsBloc>().state.languageData.forwarded}",
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
                GetMessageWidget.getMessageWidget2(
                    message,
                    BorderRadius.circular(4),
                    myUser,
                    peerUser,
                    docRef,
                    chatID,
                    groupId,
                    false,
                    isForwardedMessage: true),
                TimeWidget(
                    time: message.messageModel!.timeOfSending.toDate(),
                    isSentByMe: isSentByMe,
                    isSeen: message.messageModel!.isSeen,
                    color: Colors.black)
              ],
            ),
          ),
          if (isLastMessage) ...[
            if (isSentByMe)
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(math.pi),
                child: CustomPaint(
                  painter: CustomShape(
                      isSentByMe ? Colors.blue.shade100 : Colors.grey.shade200),
                ),
              )
            else
              const SizedBox()
          ],
        ],
      ),
    );
  }
}
