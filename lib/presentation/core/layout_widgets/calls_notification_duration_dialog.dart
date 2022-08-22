import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/notification/notification_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class CallsNotificationDurationDialog extends StatefulWidget {
  const CallsNotificationDurationDialog({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _CallsNotificationDurationDialogState createState() =>
      _CallsNotificationDurationDialogState();
}

class _CallsNotificationDurationDialogState
    extends State<CallsNotificationDurationDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        return ListTile(
          title: Text(widget.title),
          subtitle: Text(
              state.callsNotificationVibrationDuration ==
                      NotificationVibrationDuration.normal
                  ? "${context.read<SettingsBloc>().state.languageData.halfSecond}"
                  : state.callsNotificationVibrationDuration ==
                          NotificationVibrationDuration.medium
                      ? "${context.read<SettingsBloc>().state.languageData.oneSecond}"
                      : "${context.read<SettingsBloc>().state.languageData.oneAndHalfSecond}",
              style: const TextStyle(color: Kolors.primary)),
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
        final int groupValue = state.callsNotificationVibrationDuration ==
                NotificationVibrationDuration.normal
            ? 1
            : state.callsNotificationVibrationDuration ==
                    NotificationVibrationDuration.medium
                ? 2
                : 3;
        return SimpleDialog(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "${context.read<SettingsBloc>().state.languageData.vibrationDuration}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
            RadioListTile(
              value: 1,
              groupValue: groupValue,
              onChanged: (value) {
                context.read<NotificationBloc>().add(
                      const NotificationEvent.setCallsNotificationDuration(
                          NotificationVibrationDuration.normal),
                    );
                Navigator.of(context, rootNavigator: true).pop();
              },
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.halfSecond}"),
            ),
            RadioListTile(
              value: 2,
              groupValue: groupValue,
              onChanged: (value) {
                context.read<NotificationBloc>().add(
                      const NotificationEvent.setCallsNotificationDuration(
                          NotificationVibrationDuration.medium),
                    );
                Navigator.of(context, rootNavigator: true).pop();
              },
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.oneSecond}"),
            ),
            RadioListTile(
              value: 3,
              groupValue: groupValue,
              onChanged: (value) {
                context.read<NotificationBloc>().add(
                      const NotificationEvent.setCallsNotificationDuration(
                          NotificationVibrationDuration.long),
                    );
                Navigator.of(context, rootNavigator: true).pop();
              },
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.oneAndHalfSecond}"),
            )
          ],
        );
      },
    );
  }
}
