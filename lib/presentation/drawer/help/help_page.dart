import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/pages/support_chat_page.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBarTitle(title: "Help"),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(
              Icons.help_outline_outlined,
              size: 28,
            ),
            title: const Text(
              "Help Centre",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupportChatPage()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline_rounded,
              size: 28,
            ),
            title: const Text(
              "App info",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              AutoRouter.of(context).push(const AppInfoRoute());
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip_outlined,
              size: 28,
            ),
            title: const Text(
              "Privacy and policy",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () async {
              final a = await canLaunch('https://kahochat.com/Privacy');
              if (a) {
                launch('https://kahochat.com/Privacy');
              }
            },
          ),
          // DrawerTile(
          //   iconData: Icons.info_outline_rounded,
          //   title: "App info",
          //   onTap: () {},
          // )
        ],
      ),
    );
  }
}

