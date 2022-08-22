import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/chatting_page.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

import '../../../../../domain/core/enums.dart';

class ContactMessageWidget extends StatelessWidget {
  const ContactMessageWidget({
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
  Widget build(BuildContext context) {
    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;
    final bool isSeen = message.messageModel!.isSeen;
    final DateTime myDateTime = message.messageModel!.timeOfSending.toDate();
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, uState) {
        return BlocBuilder<MessageSelectBloc, MessageSelectState>(
          builder: (context, mState) {
            return BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: isSentByMe
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    if (message.messageModel?.sendFrom == SendFrom.group &&
                        !isSentByMe)
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (message.messageModel?.sendFrom == SendFrom.group &&
                            !isSentByMe)
                          Text(
                            message.messageModel?.sender.name ?? "-",
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        Card(
                          elevation: 0,
                          shape:
                              RoundedRectangleBorder(borderRadius: borderRad),
                          color: Colors.transparent,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: isSentByMe
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (isLastMessage) ...[
                                if (!isSentByMe)
                                  Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationX(math.pi),
                                    child: CustomPaint(
                                      painter: CustomShape(
                                        isSentByMe
                                            ? Colors.blue.shade100
                                            : Colors.grey.shade200,
                                      ),
                                    ),
                                  )
                                else
                                  const SizedBox()
                              ],
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 8.0,
                                ),
                                margin: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: message.messageModel!
                                              .deletedForEveryone !=
                                          true
                                      ? isSentByMe
                                          ? const Color(0xffc5e3f0)
                                          : Colors.grey.shade200
                                      : Colors.white,
                                  borderRadius: borderRad,
                                  border: Border.all(
                                    color: message.messageModel!
                                                .deletedForEveryone !=
                                            true
                                        ? Colors.transparent
                                        : Colors.black,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: isSentByMe
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              CustomCircleAvatar(
                                                radius: 20,
                                                name: message.messageModel!
                                                    .contact!.name,
                                                profilePictureUrl: message
                                                    .messageModel!
                                                    .contact!
                                                    .profilePictureUrl,
                                                color: message.messageModel!
                                                    .contact!.userColor,
                                              ),
                                              const SizedBoxW10(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 150,
                                                    child: Text(
                                                      message.messageModel!
                                                          .contact!.name,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    message.messageModel!
                                                        .contact!.phoneNumber,
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      height: 0.9,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 3),
                                          Container(
                                            height: 1.5,
                                            color: Colors.grey[500],
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 4),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () => Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChattingPage(
                                                      peerUser: message
                                                          .messageModel!
                                                          .contact!,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  context
                                                      .read<SettingsBloc>()
                                                      .state
                                                      .languageData
                                                      .message,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          TimeWidget(
                                            time: myDateTime,
                                            isSentByMe: isSentByMe,
                                            isSeen: isSeen,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (isLastMessage) ...[
                                if (isSentByMe)
                                  Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationX(math.pi),
                                    child: CustomPaint(
                                      painter: CustomShape(isSentByMe
                                          ? Colors.blue.shade100
                                          : Colors.grey.shade200),
                                    ),
                                  )
                                else
                                  const SizedBox()
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
