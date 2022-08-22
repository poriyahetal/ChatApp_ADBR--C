import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';

class ChatHistoryPage extends StatefulWidget {
  const ChatHistoryPage({Key? key}) : super(key: key);

  @override
  State<ChatHistoryPage> createState() => _ChatHistoryPageState();
}

class _ChatHistoryPageState extends State<ChatHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBarTitle(
          title: context.read<SettingsBloc>().state.languageData.chatHistory),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              showDialog(context: context, builder: (context) => MyForm());
            },
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.deleteAllChats}"),
            leading: const Icon(Icons.delete),
          ),
          //TODO: leave for now
          // ListTile(
          //   onTap: () {},
          //   title: const TextTranslate("Archive all chats"),
          //   leading: const Icon(Icons.archive),
          // ),

          // ListTile(
          //   onTap: () {},
          //   title: const TextTranslate("Export all chats"),
          //   leading: const Icon(Icons.upload),
          // ),
        ],
      ),
    );
  }
}

// ignore_for_file: file_names

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool checkBoxValue = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToDeleteAllChat} ?",
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width < 360 ? 16 : null),
      ),
      content: CheckboxListTile(activeColor: context.read<SettingsBloc>()
          .state
          .appThemeMode ==
          ThemeMode.dark
          ? Colors.white54
          : null,
        title: Text(
            "${context.read<SettingsBloc>().state.languageData.alsoDeleteMedia}",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 360 ? 16 : null)),
        value: checkBoxValue,
        onChanged: (value) {
          setState(() {
            checkBoxValue = value!;
          });
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "${context.read<SettingsBloc>().state.languageData.cancel}",
            style: TextStyle(fontSize: 16,color: context.read<SettingsBloc>()
                .state
                .appThemeMode ==
                ThemeMode.dark
                ? Colors.white54
                : null),
          ),
        ),
        TextButton(
          onPressed: () {
            context
                .read<UserBloc>()
                .add(UserEvent.deleteAllChat(alsoDeleteMedia: checkBoxValue));
            Navigator.pop(context);
          },
          child: Text(
            "${context.read<SettingsBloc>().state.languageData.ok}",
            style: TextStyle(
                fontSize: 16,
                color: context.read<SettingsBloc>().state.appThemeMode ==
                        ThemeMode.dark
                    ? Colors.white54
                    : null),
          ),
        ),
      ],
    );
  }
}
