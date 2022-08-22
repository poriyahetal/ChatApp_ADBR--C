// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:get/get.dart';

class FontSizeSimpleDialog extends StatefulWidget {
  const FontSizeSimpleDialog({
    Key? key,
    required this.title,
    required this.leadingIcon,
  }) : super(key: key);
  final String title;

  final Widget? leadingIcon;

  @override
  _FontSizeSimpleDialogState createState() => _FontSizeSimpleDialogState();
}

class _FontSizeSimpleDialogState extends State<FontSizeSimpleDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListTile(
          leading: widget.leadingIcon,
          title: Text(widget.title),
          onTap: () {
            showDialog(context: context, builder: (context) => MyForm());
          },
          subtitle: Text(
            state.fontSize == 14
                ? "${context.read<SettingsBloc>().state.languageData.small}"
                : state.fontSize == 16
                    ? "${context.read<SettingsBloc>().state.languageData.medium}"
                    : "${context.read<SettingsBloc>().state.languageData.large}",
          ),
        );
      },
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
              "${context.read<SettingsBloc>().state.languageData.fontSize}",
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText1!
                  .copyWith(fontSize: MediaQuery.of(context).size.width<360?20:22),
            ),
          ),
          ListTile(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.small}",
              style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 15 : null),),
            leading: Radio<Fontsize>(
              value: Fontsize.fourteen,
              groupValue: state.fontSizeEnum,
              onChanged: (Fontsize? value) {
                setState(() {
                  context
                      .read<SettingsBloc>()
                      .add(const SettingsEvent.setAppFontSize(14));
                  Navigator.pop(context);
                });
              },
            ),
          ),
          ListTile(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.medium}",
              style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 15 : null),),
            leading: Radio<Fontsize>(
              value: Fontsize.sixteen,
              groupValue: state.fontSizeEnum,
              onChanged: (Fontsize? value) {
                setState(() {
                  context
                      .read<SettingsBloc>()
                      .add(const SettingsEvent.setAppFontSize(16));
                  Navigator.pop(context);
                });
              },
            ),
          ),
          ListTile(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.large}",
              style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 15 : null),),
            leading: Radio<Fontsize>(
              value: Fontsize.eighteen,
              groupValue: state.fontSizeEnum,
              onChanged: (Fontsize? value) {
                setState(() {
                  context
                      .read<SettingsBloc>()
                      .add(const SettingsEvent.setAppFontSize(18));
                  Navigator.pop(context);
                });
              },
            ),
          ),
        ],
      );
    });
  }
}
