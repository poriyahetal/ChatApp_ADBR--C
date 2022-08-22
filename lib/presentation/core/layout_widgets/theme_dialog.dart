// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:get/get.dart';

class ThemeSimpleDialog extends StatefulWidget {
  const ThemeSimpleDialog({
    Key? key,
    required this.title,
    required this.leadingIcon,
  }) : super(key: key);
  final String title;

  final Widget? leadingIcon;

  @override
  _ThemeSimpleDialogState createState() => _ThemeSimpleDialogState();
}

class _ThemeSimpleDialogState extends State<ThemeSimpleDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leadingIcon,
      title: Text(widget.title),
      onTap: () {
        showDialog(context: context, builder: (context) => MyForm());
      },
      // Text("${context.read<SettingsBloc>().state.languageData
      subtitle: Text(
        context.read<SettingsBloc>().state.appThemeMode == ThemeMode.system
            ? "${context.read<SettingsBloc>().state.languageData.systemDefault}"
            : context.read<SettingsBloc>().state.appThemeMode == ThemeMode.light
                ? "${context.read<SettingsBloc>().state.languageData.lightMode}"
                : "${context.read<SettingsBloc>().state.languageData.darkMode}",
      ),
      // subtitle: DropdownButtonHideUnderline(
      //   child: DropdownButton<String>(
      //     value: dropdownValue,
      //     icon: const Icon(Icons.arrow_drop_down),
      //     iconSize: 26,
      //     elevation: 16,
      //     isDense: true,
      //     style: const TextStyle(color: Kolors.primary),
      //     onChanged: (String? newValue) {
      //       setState(() {
      //         dropdownValue = newValue!;
      //       });
      //       widget.onChanged(newValue);
      //     },
      //     items: widget.items.map<DropdownMenuItem<String>>((String value) {
      //       return DropdownMenuItem<String>(
      //         value: value,
      //         child: Text(value),
      //       );
      //     }).toList(),
      //   ),
      // ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 27,
              top: 8,
            ),
            child: Text(
              "${context.read<SettingsBloc>().state.languageData.theme}",
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText1!
                  .copyWith(fontSize: MediaQuery.of(context).size.width < 360 ? 20 : 22),
            ),
          ),
          ListTile(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.systemDefault}",
              style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 15 : null),),
            leading: Radio<ThemeMode>(
              value: ThemeMode.system,
              groupValue: state.appThemeMode,
              onChanged: (ThemeMode? value) {
                setState(() {
                  context
                      .read<SettingsBloc>()
                      .add(SettingsEvent.setAppThemeMode(value!));
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              "${context.read<SettingsBloc>().state.languageData.light}",
              style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 15 : null),
            ),
            leading: Radio<ThemeMode>(
              value: ThemeMode.light,
              groupValue: state.appThemeMode,
              onChanged: (ThemeMode? value) {
                setState(() {
                  context
                      .read<SettingsBloc>()
                      .add(SettingsEvent.setAppThemeMode(value!));
                });
              },
            ),
          ),
          ListTile(
            title:
                Text("${context.read<SettingsBloc>().state.languageData.dark}",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 15 : null),),
            leading: Radio<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: state.appThemeMode,
              onChanged: (ThemeMode? value) {
                setState(() {
                  context
                      .read<SettingsBloc>()
                      .add(SettingsEvent.setAppThemeMode(value!));
                  // _language = value!;
                });
              },
            ),
          ),
        ],
      );
    });
  }
}
