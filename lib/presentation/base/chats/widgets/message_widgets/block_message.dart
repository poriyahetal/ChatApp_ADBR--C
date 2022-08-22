import 'package:flutter/material.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:provider/provider.dart';

import '../../../../../application/settings/settings_bloc.dart';

class BlockUnblockMessageWidget extends StatelessWidget {
  final MessageSelectModel message;

  const BlockUnblockMessageWidget({
    Key? key,
    // required this.text,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.messageModel!.sender.uid;
    final bool isBLocked = message.messageModel!.text.contains('blocked');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 12,
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
          child: isSentByMe
              ? Text(
                  isBLocked
                      ? '${context.read<SettingsBloc>().state.languageData.YouHaveBlockedThisUser}.'
                      : '${context.read<SettingsBloc>().state.languageData.YouHaveUnblockedThisUser}.',
                  // textAlign: TextAlign.center,
                )
              : Text(
                  isBLocked
                      ? "${message.messageModel!.sender.countryCode} ${message.messageModel!.sender.phoneNumber} ${context.read<SettingsBloc>().state.languageData.hasBlockedYou}."
                      : "${message.messageModel!.sender.countryCode} ${message.messageModel!.sender.phoneNumber} ${context.read<SettingsBloc>().state.languageData.hasUnblockedYou}.",
                  // textAlign: TextAlign.center,
                ),
        ),
      ],
    );
  }
}
