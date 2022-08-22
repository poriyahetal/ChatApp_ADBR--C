import 'package:flutter/material.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:provider/provider.dart';

class AcceptDeclineImviteWidget extends StatelessWidget {
  final MessageSelectModel message;
  const AcceptDeclineImviteWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;
    final bool inviteAccepted;
    if (message.messageModel!.type == MessageType.inviteAccepted) {
      inviteAccepted = true;
    } else {
      inviteAccepted = false;
    }
    return Align(
      // alignment: Alignment
      //     .center,
      child: Container(
        // height: 40,
        width: !inviteAccepted
            ? isSentByMe
                ? MediaQuery.of(context).size.width * .65
                : MediaQuery.of(context).size.width * .8
            : isSentByMe
                ? MediaQuery.of(context).size.width * .6
                : MediaQuery.of(context).size.width * .75,
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 8,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        decoration: const BoxDecoration(
          color: Kolors.grey350,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!inviteAccepted) ...[
              const Icon(
                Icons.block,
                color: Kolors.red,
              ),
              const SizedBox(
                width: 5,
              ),
            ],
            if (isSentByMe)
              Expanded(
                child: Text(
                  inviteAccepted
                      ? "${context.read<SettingsBloc>().state.languageData.YouHaveAcceptedThisChatInvitation}."
                      : '${context.read<SettingsBloc>().state.languageData.YouHaveDeclinedThisChatInvitation}.',
                  style: TextStyle(color: inviteAccepted ? null : Kolors.red),
                  textAlign: TextAlign.center,
                ),
              )
            else
              Expanded(
                child: Text(
                  inviteAccepted
                      ? "${message.messageModel!.sender.countryCode} ${message.messageModel!.sender.phoneNumber} ${context.read<SettingsBloc>().state.languageData.hasAcceptedYourChatInvitation}."
                      : "${message.messageModel!.sender.countryCode} ${message.messageModel!.sender.phoneNumber} ${context.read<SettingsBloc>().state.languageData.hasDeclinedYourChatInvitation}.",
                  style: TextStyle(color: inviteAccepted ? null : Kolors.red),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
