// ignore_for_file: prefer_if_elements_to_conditional_expressions

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';

import '../../../../../application/settings/settings_bloc.dart';

class DeletedMessageWidget extends StatelessWidget {
  const DeletedMessageWidget({
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
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: borderRad),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isLastMessage)
            ...[
            !isSentByMe
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(math.pi),
                    child: CustomPaint(
                      painter: CustomShape(isSentByMe
                          ? Colors.blue.shade300
                          : Colors.grey.shade300),
                    ),
                  )
                : const SizedBox(),
          ],
          Container(
            constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.72),

            padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: message.messageModel!.deletedForEveryone != true
                  ? isSentByMe
                      ? context.read<SettingsBloc>().state.appThemeMode ==
                              ThemeMode.dark
                          ? Colors.blue.shade300
                          : const Color(0xffc5e3f0)
                      : context.read<SettingsBloc>().state.appThemeMode ==
                              ThemeMode.dark
                          ? Colors.grey.shade600
                          : Colors.grey.shade300
                  : Colors.white,
              borderRadius: borderRad,
              border: Border.all(
                color: message.messageModel!.deletedForEveryone != true
                    ? Colors.transparent
                    : Colors.black,
              ),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // if (isSentByMe) Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.7),

                      child: Row(
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 3, left: 5, right: 5),
                            child: Icon(Icons.not_interested_outlined,size: 20,),
                          ),
                          if (isSentByMe)
                            Expanded(
                                child:
                                    const Text("You deleted this message !"))
                          else
                            Expanded(child: const Text("This message was deleted !")),
                        ],
                      ),
                    ),
                    TimeWidget(
                      time: message.messageModel!.timeOfSending.toDate(),
                      isSentByMe: isSentByMe,
                      isSeen: message.messageModel!.isSeen,
                      color:
                          context.read<SettingsBloc>().state.appThemeMode ==
                                  ThemeMode.dark
                              ? Colors.white
                              : Colors.black,
                    ),
                  ],
                ),
                // if (!isSentByMe) Spacer(),
              ],
            ),
          ),
          if (isLastMessage)
            ...[
            isSentByMe
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(math.pi),
                    child: CustomPaint(
                      painter: CustomShape(isSentByMe
                          ? const Color(0xffc5e3f0)
                          : Colors.grey.shade600),
                    ),
                  )
                : const SizedBox()
          ],
        ],
      ),
    );
  }
}
