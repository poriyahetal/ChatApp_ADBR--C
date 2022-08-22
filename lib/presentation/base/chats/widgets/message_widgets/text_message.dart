import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
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

class TextMessageWidget extends StatelessWidget {
  const TextMessageWidget({
    Key? key,
    required this.message,
    required this.myUser,
    required this.peerUser,
    required this.docRef,
    required this.borderRad,
    required this.chatID,
    required this.groupId,
    required this.isReplayMessage,
    required this.isLastMessage,
  }) : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;
  final bool isReplayMessage; //to change text size
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

    final bool isDelivered = message.messageModel!.isDelivered;
    print(
        "${message.messageModel?.messageId}-->${message.messageModel?.text}-->${isDelivered}");
    final DateTime myDateTime = message.messageModel!.timeOfSending.toDate();
    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, mState) {
        final textPainter = TextPainter(
          text: TextSpan(
              text: message.messageModel!.text,
              style: const TextStyle(fontSize: 20)),
          textDirection: TextDirection.ltr,
          textWidthBasis: TextWidthBasis.longestLine,
        )..layout(maxWidth: MediaQuery.of(context).size.width * 0.70);

        return BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            if (message.messageModel?.sendFrom == SendFrom.group) {
              if (!isSentByMe) {
                print(
                    "is seen in group-->${message.messageModel?.seenByInGroup}");
                bool isSeen = false;
                for (final dynamic deliveredToUser
                    in message.messageModel?.seenByInGroup ?? []) {
                  if (Getters.getCurrentUserUid() == deliveredToUser['uid']) {
                    isSeen = true;
                  }
                }
                if (!isSeen) {
                  context.read<GroupsBloc>().add(
                        GroupsEvent.markMessageAsSeen(
                          myUser: myUser,
                          groupUid: groupId,
                          messageId: message.documentId.toString(),
                        ),
                      );
                }
              }
            } else {
              if (!isSentByMe) {
                if (!isSeen) {
                  context.read<ChatsBloc>().add(
                        ChatsEvent.markMessageAsSeen(
                          myUser: myUser,
                          peerUser: message.messageModel!.sender,
                          messageId: message.documentId.toString(),
                        ),
                      );
                }
              }
            }

            //final linkUrl = getUrlFromText(message.messageModel!.text);
            if (message.messageModel!.type == MessageType.storyText) {
              return ReplyText(
                message: message.messageModel!,
                myUser: myUser,
                peerUser: peerUser ?? KahoChatUser.demo(),
              );
            } else {
              return Container(
                constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.8),

                child: Row(
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
                        Container( constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.82,minWidth: 100),

                          child: Card(
                            margin: const EdgeInsets.all(2),
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: borderRad),
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: isSentByMe
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (message.messageModel!.type ==
                                    MessageType.edited)
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.edit_outlined,
                                        size: 15,
                                        color: context
                                                    .read<SettingsBloc>()
                                                    .state
                                                    .appThemeMode ==
                                                ThemeMode.dark
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                if (isLastMessage)
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
                                    const SizedBox()
                                ],
                                Container(
                                  constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.8),

                                  // padding: const EdgeInsets.only(
                                  //     left: 10, right: 10, top: 10, bottom: 4),
                                  decoration: BoxDecoration(
                                    color: isSentByMe
                                        ? state.appThemeMode == ThemeMode.dark
                                            ? Colors.blue.shade700
                                            : Colors.blue.shade100
                                        : state.appThemeMode == ThemeMode.dark
                                            ? Colors.grey.shade700
                                            : Colors.grey.shade200,
                                    borderRadius: borderRad,
                                  ),
                                  child: IntrinsicWidth(
                                    child: Container(
                                      constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.81,minWidth: 100),

                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 5,
                                                top: 8,),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      constraints: BoxConstraints(
                                                          maxWidth:
                                                              MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.75),
                                                      child: ParsedText(
                                                        // a custom pattern to match
                                                        regexOptions:
                                                            const RegexOptions(
                                                          multiLine: true,
                                                          caseSensitive: false,
                                                          unicode: true,
                                                        ),
                                                        style: TextStyle(
                                                          color: state.appThemeMode ==
                                                                  ThemeMode.dark
                                                              ? Colors.white
                                                              : Colors.black,
                                                          // fontWeight: FontWeight.w400,
                                                          fontSize: state.fontSize
                                                                  .toDouble() +
                                                              (isReplayMessage
                                                                  ? 0.0
                                                                  : 4.0) -
                                                              4.0,
                                                        ),
                                                        text: message
                                                            .messageModel!.text,
                                                        parse: <MatchText>[
                                                          MatchText(
                                                            type: ParsedType.EMAIL,
                                                            style: TextStyle(
                                                              color: Colors.blue,
                                                              fontSize: state.fontSize
                                                                  .toDouble(),
                                                            ),
                                                            onTap: (url) {
                                                              launch("mailto:$url");
                                                            },
                                                          ),
                                                          MatchText(
                                                            type: ParsedType.URL,
                                                            style: TextStyle(
                                                              color: Colors.blue,
                                                              fontSize: state.fontSize
                                                                  .toDouble(),
                                                            ),
                                                            onTap: (url) async {
                                                              final a =
                                                                  await canLaunch(
                                                                      url);
                                                              if (a) {
                                                                launch(url);
                                                              }
                                                            },
                                                          ),
                                                          MatchText(
                                                            type: ParsedType.PHONE,
                                                            style: TextStyle(
                                                              color: Colors.blue,
                                                              fontSize: state.fontSize
                                                                  .toDouble(),
                                                            ),
                                                            onTap: (url) {
                                                              launch("tel:$url");
                                                            },
                                                          ),
                                                          MatchText(
                                                            pattern:
                                                                mState.searchTextVal,
                                                            style: TextStyle(
                                                              backgroundColor:
                                                                  Colors.yellow,
                                                              color: Colors.black,
                                                              fontSize: state.fontSize
                                                                  .toDouble(),
                                                            ),
                                                            onTap: (url) async {},
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                // if (textPainter.height >= 46)

                                                // else
                                                //   const SizedBox(),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            // crossAxisAlignment:
                                            // CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 2, right: 5),
                                                child: TimeWidget(
                                                  time: myDateTime,
                                                  isSentByMe: isSentByMe,
                                                  isSeen: isSeen,
                                                  isDelivered: isDelivered,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if (isLastMessage)
                                  ...[
                                  if (isSentByMe)
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
                                  // else
                                  //   const SizedBox()
                                ],
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
