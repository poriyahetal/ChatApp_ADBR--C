import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/settings/settings_bloc.dart';
import '../../../../../application/user/user_bloc.dart';
import '../../../../../domain/chats/message_select_model.dart';

class GroupNotificationWidget extends StatelessWidget {
  GroupNotificationWidget({required this.message});

  final MessageSelectModel message;

  @override
  Widget build(BuildContext context) {
    List<String> textMessage = message.messageModel!.text.split('||');
    print(message.messageModel!.text.length);
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      String name = userState.signedInUser.name == textMessage.first
          ? 'you'
          : textMessage.first;
      return Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            decoration: BoxDecoration(
                color: context.read<SettingsBloc>().state.appThemeMode ==
                        ThemeMode.dark
                    ? Colors.grey.shade700
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                message.messageModel!.text,
                style: TextStyle(fontSize: 13),
              ),
            ),
          ),
        ),
      );
    });
  }
}
