import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/chatting_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class GroupTextMessageWidget extends StatelessWidget {
  const GroupTextMessageWidget(
      {Key? key, required this.message, required this.borderRadius})
      : super(key: key);
  final MessageModel message;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    final bool isSentByMe = Getters.getCurrentUserUid() == message.sender.uid;
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, uState) {
        return Row(
          mainAxisAlignment:
              isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isSentByMe) ...[
              CustomCircleAvatar(
                radius: 16,
                profilePictureUrl: message.sender.profilePictureUrl,
                name: message.sender.name,
                color: message.sender.userColor,
              ),
              const SizedBoxW10(),
            ],
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: isSentByMe
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    if (!isSentByMe)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            message.sender.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    Container(
                      constraints: const BoxConstraints(
                        minWidth: 100,
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: isSentByMe
                              ? const Color(0xffc5e3f0)
                              : Colors.grey.withOpacity(.3),
                          borderRadius: borderRadius,
                          image: message.type == MessageType.image
                              ? DecorationImage(
                                  image: NetworkImage(message.imageUrl),
                                  fit: BoxFit.cover)
                              : null),
                      child: GestureDetector(
                        onTap: message.type == MessageType.image
                            ? () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ImageViewPage(
                                        imageUrl: message.imageUrl)));
                              }
                            : null,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: message.type == MessageType.image
                              ? BoxDecoration(
                                  borderRadius: borderRadius,
                                  gradient: const LinearGradient(
                                      end: Alignment.bottomCenter,
                                      begin: Alignment.topCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                        Colors.transparent,
                                        Colors.transparent,
                                        Colors.black38,
                                        Colors.black,
                                      ]),
                                )
                              : null,
                          child: Column(
                            crossAxisAlignment: isSentByMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  if (message.type == MessageType.image) ...[
                                    const SizedBox(height: 200, width: 250),
                                  ],
                                  if (message.type == MessageType.contact)
                                    SizedBox(
                                      width: 150,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomCircleAvatar(
                                                radius: 16,
                                                profilePictureUrl: message
                                                    .contact!.profilePictureUrl,
                                                name: message.contact!.name,
                                                color:
                                                    message.contact!.userColor,
                                              ),
                                              const SizedBoxW10(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(message.contact!.name,
                                                      style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text(
                                                      message
                                                          .contact!.phoneNumber,
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          height: 0.9)),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 3),
                                          Container(
                                              height: 1.5,
                                              color: Colors.grey[500],
                                              width: 150,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4)),
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
                                                                    .contact!))),
                                                child: Text(
                                                    context
                                                        .read<SettingsBloc>()
                                                        .state
                                                        .languageData
                                                        .message,
                                                    style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  else
                                    Container(
                                      constraints:
                                          const BoxConstraints(maxWidth: 240),
                                      child: Text(
                                        message.text,
                                        style: TextStyle(
                                          fontSize: state.fontSize.toDouble(),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: isSentByMe
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                children: [
                                  Text(
                                    message.timeOfSending.toTime(),
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: message.type == MessageType.image
                                            ? Colors.white
                                            : Colors.black87),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBoxH10(),
                  ],
                );
              },
            ),
            if (isSentByMe) ...[
              const SizedBoxW10(),
              CustomCircleAvatar(
                radius: 16,
                profilePictureUrl: message.sender.profilePictureUrl,
                name: message.sender.name,
                color: message.sender.userColor,
              ),
            ]
          ],
        );
      },
    );
  }
}
