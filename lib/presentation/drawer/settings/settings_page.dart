import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/account_tab_contents.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/chats_tab_contents.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/storage_tab_contents.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  String chatsString = "Chats";
  String accountString = "Account";
  String storage = "Storage";

  @override
  void initState() {
    super.initState();
    // translate();
  }

  // Future translate() async {
  //   chatsString = await Getters.getTranslation(chatsString);
  //   accountString = await Getters.getTranslation(accountString);
  //   storage = await Getters.getTranslation(storage);
  //   setState(() {
  //     chatsString = chatsString;
  //     accountString = accountString;
  //     storage = storage;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBarTitle(
        title: context.read<SettingsBloc>().state.languageData.settings,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                return TabBar(
                  indicatorColor: context.read<SettingsBloc>()
                      .state
                      .appThemeMode ==
                      ThemeMode.dark
                      ? Colors.white54
                      : Kolors.primary,
                  indicatorWeight: 4,
                  tabs: [
                    Tab(
                      text:
                          context.read<SettingsBloc>().state.languageData.chats,
                    ),
                    Tab(
                      text: context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .account,
                    ),
                    Tab(
                      text: context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .storage,
                    ),
                  ],
                );
              },
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ChatsTabContents(),
                  AccountTabContents(),
                  StorageTabContents(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
