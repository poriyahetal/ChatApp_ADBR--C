import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/calls/call_log_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/widgets/call_type_icon.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class ChatMessageCallInfo extends StatelessWidget {
  const ChatMessageCallInfo({Key? key, required this.message})
      : super(key: key);
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    final callLog = CallLogModel.fromJson(message.text);
    final bool isIncoming = callLog.participants
        .where(
          (element) => element.participant.uid == Getters.getCurrentUserUid(),
        )
        .isNotEmpty;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        CallTypeIcon(
          callType: callLog.type,
          callStatus: callLog.status,
          isIncoming: isIncoming,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          isIncoming
              ? "${callLog.sender.name} ${context.read<SettingsBloc>().state.languageData.called}"
              : "${context.read<SettingsBloc>().state.languageData.YouCalled}",
          style: const TextStyle(
            fontSize: 15,
            color: Kolors.black,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.circle,
          size: 4,
          color: Kolors.black,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          callLog.timeOfCalling,
          style: const TextStyle(
            fontSize: 15,
            color: Kolors.black,
          ),
        ),
      ],
    );
  }
}
