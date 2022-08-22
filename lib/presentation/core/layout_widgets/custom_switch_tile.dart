import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class CustomSwitchTile extends StatelessWidget {
  const CustomSwitchTile({
    Key? key,
    required this.title,
    required this.onChanged,
    this.subtitle,
    this.disabled = false,
    required this.value,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final bool value;
  final bool? disabled;

  final Function(bool) onChanged;
  //  Text("${context.read<SettingsBloc>().state.languageData))

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(activeColor: context.read<SettingsBloc>()
        .state
        .appThemeMode ==
        ThemeMode.dark
        ? Colors.white54
        : null,
      contentPadding: const EdgeInsets.only(right: 5, left: 20),
      value: value,
      onChanged: disabled! ? null : onChanged,
      title: Text(
        title,
        style: title ==
                "${context.read<SettingsBloc>().state.languageData.useTheFingerprint}"
            ? Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                )
            : null,
      ),
      subtitle: subtitle == null ? null : Text(subtitle!),
    );
  }
}
