import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/two_step_verification.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/custom_radio_button_dialog.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final String numberOfBlockedUsers =
            state.signedInUser.mute!.length.toString();
        return SafeScaffold(
          appBar: AppBarTitle(
              title: context.read<SettingsBloc>().state.languageData.privacy),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.chatsAndGroups}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              CustomRadioButtonDialog(
                title: context.read<SettingsBloc>().state.languageData.lastSeen,
              ),
              CustomRadioButtonDialog(
                title: context
                    .read<SettingsBloc>()
                    .state
                    .languageData
                    .profilePhoto,
              ),
              // CustomRadioButtonDialog(
              //   items: const ['Everyone', 'Only my contacts', 'No one'],
              //   onChanged: (value) {},
              //   title: "Status",
              // ),
              CustomRadioButtonDialog(
                // items: const ['Everyone', 'Only my contacts', 'No one'],
                // onChanged: (value) {},
                title: context.read<SettingsBloc>().state.languageData.bio,
              ),
              // const SizedBox(height: 50,),
              // const TileDivider(),
              // CustomDropdownTile(
              //   items: const ['Everyone', 'Only my contacts', 'No one'],
              //   onChanged: (value) {},
              //   title: "Groups",
              // ),

              // TODO: leave for now ...wait for api
              // CustomSwitchTile(
              //   value: true,
              //   title: "Live Location",
              //   subtitle: "Do you want to share your location",
              //   onChanged: (value) {},
              // ),

              ListTile(
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.stories}"),
                // trailing: const TextTranslate("10"),
                onTap: () {
                  AutoRouter.of(context).push(
                    StatusAndGroupPrivacyRoute(
                      firstTitle: 'Everyone',
                      pageTitle: 'My Contacts',
                      OnChangedFunctions: [],
                      listTileCount: 2,
                    ),
                  );
                },
              ),
              // ListTile(
              //   title: const Text("Groups"),
              //    trailing: const Text("10"),
              //   onTap: () {
              //     AutoRouter.of(context).push(
              //       StatusAndGroupPrivacyRoute(
              //         firstTitle: 'Everyone',
              //         pageTitle: 'Groups',
              //         OnChangedFunctions: [],
              //         listTileCount: 3,
              //       ),
              //     );
              //   },
              // ),
              ListTile(
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.blockedContacts}"),
                trailing: Text(numberOfBlockedUsers),
                onTap: () {
                  AutoRouter.of(context).push(BlockedContactsRoute());
                },
              ),
              // ListTile(
              //   onTap: () {
              //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TwoStepVerificationPage()));
              //   },
              //   //leading: const Icon(Icons.password_outlined),
              //   title: const TextTranslate("Two step verification"),
              // ),
            ],
          ),
        );
      },
    );
  }
}
