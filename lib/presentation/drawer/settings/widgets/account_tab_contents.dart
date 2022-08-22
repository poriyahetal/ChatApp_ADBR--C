import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class AccountTabContents extends StatelessWidget {
  const AccountTabContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            AutoRouter.of(context).push(const PrivacyRoute());
          },
          leading: const Icon(Icons.lock_outline),
          title: Text(
              "${context.read<SettingsBloc>().state.languageData.privacy}"),
        ),
        ListTile(
          onTap: () {
            AutoRouter.of(context).push(const DeleteAccountRoute());
          },
          leading: const Icon(CupertinoIcons.delete),
          title: Text(
              "${context.read<SettingsBloc>().state.languageData.deleteMyAccount}"),
        ),
        ListTile(
          onTap: () {
            AutoRouter.of(context).push(const ChangeNumberRoute());
          },
          leading: const Icon(Icons.phone_android_outlined),
          title: Text(
              "${context.read<SettingsBloc>().state.languageData.changeMyPhoneNumber}"),
        ),
        ListTile(
          onTap: () {
            AutoRouter.of(context).push(const FingerprintLockRoute());
          },
          leading: const Icon(Icons.fingerprint_outlined),
          title: Text(
              "${context.read<SettingsBloc>().state.languageData.fingerprintLock}"),
        ),
        // ListTile(
        //   onTap: () {
        //     //AutoRouter.of(context).push(const FingerprintLockRoute());
        //   },
        //   leading: const Icon(Icons.password_outlined),
        //   title: const TextTranslate("Passcode"),
        // ),
      ],
    );
  }
}
