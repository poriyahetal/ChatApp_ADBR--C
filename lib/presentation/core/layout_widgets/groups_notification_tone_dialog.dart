import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/notification/notification_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:get/get.dart';
class GroupsNotificationToneDialog extends StatefulWidget {
  const GroupsNotificationToneDialog({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _GroupsNotificationToneDialogState createState() =>
      _GroupsNotificationToneDialogState();
}

class _GroupsNotificationToneDialogState
    extends State<GroupsNotificationToneDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        return ListTile(
          title: Text(widget.title),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          subtitle: Text(
            state.groupsNotificationToneType == NotificationToneType.custom
                ? "${context.read<SettingsBloc>().state.languageData.custom}"
                : "${context.read<SettingsBloc>().state.languageData.Default}",
            style:  TextStyle(color: context
            .read<SettingsBloc>()
                .state
                .appThemeMode ==
                ThemeMode.dark
                ? Colors.white54
                : Kolors.primary,fontSize: MediaQuery.of(context).size.width < 360 ? 14 : null),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => BlocProvider.value(
                value: BlocProvider.of<NotificationBloc>(context),
                child: const _MyForm(),
              ),
            );
          },
        );
      },
    );
  }
}

class _MyForm extends StatefulWidget {
  const _MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<_MyForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        final int groupValue =
            state.groupsNotificationToneType == NotificationToneType.custom
                ? 2
                : 1;
        return SimpleDialog(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "${context.read<SettingsBloc>().state.languageData.notificationTone}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: MediaQuery.of(context).size.width<360?18:20.0, fontWeight: FontWeight.w600),
              ),
            ),
            RadioListTile(
              value: 1,
              groupValue: groupValue,
              onChanged: (value) {
                context.read<NotificationBloc>().add(
                      const NotificationEvent.setGroupsNotificationTone(
                        NotificationToneType.nDefault,
                      ),
                    );
                Navigator.of(context, rootNavigator: true).pop();
              },
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.Default}",style: TextStyle(fontSize: MediaQuery.of(context).size.width<360?15:null),),
            ),
            RadioListTile(
              value: 2,
              groupValue: groupValue,
              onChanged: (value) {
                context.read<NotificationBloc>().add(
                      const NotificationEvent.setGroupsNotificationTone(
                        NotificationToneType.custom,
                      ),
                    );
                Navigator.of(context, rootNavigator: true).pop();
              },
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.custom}",style: TextStyle(fontSize: MediaQuery.of(context).size.width<360?15:null),),
            ),
          ],
        );
      },
    );
  }
}
