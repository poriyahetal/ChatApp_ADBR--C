import 'dart:math' as math;

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/reply_text.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkMessageWidget extends StatelessWidget {
  const LinkMessageWidget({
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
  String? getUrlFromText(String text) {
    final urlRegExp = RegExp(
        r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
    final urlMatches = urlRegExp.allMatches(text);
    final urls = urlMatches
        .map((urlMatch) => text.substring(urlMatch.start, urlMatch.end))
        .toList();
    return urls.isNotEmpty ? urls.first : null;
  }

  @override
  Widget build(BuildContext context) {
    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;
    final bool isSeen = message.messageModel!.isSeen;
    final DateTime myDateTime = message.messageModel!.timeOfSending.toDate();
    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, mState) {
        return BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            if (!isSentByMe) {
              if (!isSeen) {
                context.read<GroupsBloc>().add(GroupsEvent.setReadUnread(
                    groupUid: groupId,
                    myUser: myUser,
                    messageID: message.documentId.toString()));
              }
            }
            final linkUrl = getUrlFromText(message.messageModel!.text);
            if (message.messageModel!.type == MessageType.storyText) {
              return ReplyText(
                message: message.messageModel!,
                myUser: myUser,
                peerUser: message.messageModel!.forwared!.sender,
              );
            } else {
              return Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: borderRad),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if(isLastMessage)...[
                    if (!isSentByMe) Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationX(math.pi),
                      child: CustomPaint(
                        painter: CustomShape(isSentByMe
                            ? Colors.blue.shade100
                            : Colors.grey.shade200),
                      ),
                    ) else const SizedBox()],
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: borderRad,
                        color: isSentByMe
                            ? Colors.blue.shade100
                            : Colors.grey.shade200,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 300,
                            child: AnyLinkPreview(
                              link: (linkUrl?.contains("https://")??false ? linkUrl : "https://$linkUrl")??"",
                              cache: const Duration(hours: 1),
                              backgroundColor: Colors.blue.shade100,
                              titleStyle: TextStyle(fontSize: state.fontSize.toDouble()),
                              removeElevation: true,
                              errorWidget: const Offstage(),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 300,
                                child: ParsedText(
                                  regexOptions: const RegexOptions(
                                    multiLine: true,
                                    caseSensitive: false,
                                    unicode: true,
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: state.fontSize.toDouble() + 4.0,
                                  ),
                                  text: message.messageModel!.text,
                                  parse: <MatchText>[
                                    MatchText(
                                      type: ParsedType.EMAIL,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: state.fontSize.toDouble() + 4.0,
                                      ),
                                      onTap: (url) {
                                        launch("mailto:$url");
                                      },
                                    ),
                                    MatchText(
                                      type: ParsedType.URL,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: state.fontSize.toDouble(),
                                      ),
                                      onTap: (url) async {
                                        // final a = await canLaunch(url);
                                        // if (a) {
                                        //   launch(url);
                                        // }
                                      },
                                    ),
                                    MatchText(
                                      type: ParsedType.PHONE,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: state.fontSize.toDouble(),
                                      ),
                                      onTap: (url) {
                                        launch("tel:$url");
                                      },
                                    ),
                                    MatchText(
                                      pattern: mState.searchTextVal,
                                      style: TextStyle(
                                        backgroundColor: Colors.yellow,
                                        color: Colors.black,
                                        fontSize: state.fontSize.toDouble() + 4.0,
                                      ),
                                      onTap: (url) async {},
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              TimeWidget(
                                  time: myDateTime,
                                  isSentByMe: isSentByMe,
                                  isSeen: isSeen,
                                  color: Colors.black)
                            ],
                          ),
                        ],
                      ),
                    ),
                  if(isLastMessage)...[
                  if (isSentByMe) Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationX(math.pi),
                      child: CustomPaint(
                        painter: CustomShape(isSentByMe
                            ? Colors.blue.shade100
                            : Colors.grey.shade200),
                      ),
                    ) else const SizedBox()],
                  ],
                ),
              );
            }
          },
        );
      },
    );
  }
}
