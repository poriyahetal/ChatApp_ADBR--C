import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/progress_dialogue.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:restart_app/restart_app.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      title: Text(
        "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToLogOut}?",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
      actions: [
        TextButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          child: Text(
            "${context.read<SettingsBloc>().state.languageData.cancel}",
            style: const TextStyle(fontSize: 15),
          ),
        ),
        TextButton(
          onPressed: () async {
            // AutoRouter.of(context).pop();
            context.read<AuthBloc>().add(const AuthEvent.logOut());
            AutoRouter.of(context).pop();
            showProgressingDialogue(
                context: context,
                text:
                    "${context.read<SettingsBloc>().state.languageData.logingOut}");
            await Future.delayed(
              const Duration(seconds: 3),
            );
            Restart.restartApp();
          },
          child: Text(
            "${context.read<SettingsBloc>().state.languageData.yes}",
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
