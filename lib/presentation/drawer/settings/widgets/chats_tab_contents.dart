import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/fontsize_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/language_Dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/layout_widgets/theme_dialog.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/chat_wallpaper_view_page.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';
class ChatsTabContents extends StatefulWidget {
  const ChatsTabContents({Key? key}) : super(key: key);

  @override
  State<ChatsTabContents> createState() => _ChatsTabContentsState();
}

class _ChatsTabContentsState extends State<ChatsTabContents> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListView(
          children: [
            MediaQuery.of(context).size.width<360?const SizedBoxH5():const SizedBoxH20(),
            LanguageSimpleDialog(
              title:
                  context.read<SettingsBloc>().state.languageData.appLanguage,
              leadingIcon: Icon(Icons.language_outlined),
            ),
            ThemeSimpleDialog(
              title: context.read<SettingsBloc>().state.languageData.Appearance,
              leadingIcon: Icon(Icons.style_outlined),
            ),
            FontSizeSimpleDialog(
              title: context.read<SettingsBloc>().state.languageData.fontSize,
              leadingIcon: Icon(Icons.text_fields_outlined),
            ),
            // const SizedBox(
            //   height: 7,
            // ),
            // const TileDivider(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChatWallpaperViewPage()));
                //AutoRouter.of(context).push(const ChangeWallPaperRoute());
              },
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.wallpaper}"),
              leading: const Icon(Icons.photo_outlined),
            ),
            ListTile(
              onTap: () {
                AutoRouter.of(context).push(const ChatHistoryRoute());
              },
              leading: const Icon(Icons.history),
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.chatHistory}"),
            ),
          ],
        );
      },
    );
  }
}
