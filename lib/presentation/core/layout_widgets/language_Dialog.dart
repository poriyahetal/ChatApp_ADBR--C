// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:provider/src/provider.dart';
import 'package:get/get.dart';
class LanguageSimpleDialog extends StatefulWidget {
  const LanguageSimpleDialog({
    Key? key,
    // required this.items,
    // required this.onChanged,
    required this.title,
    required this.leadingIcon,
    // this.defaultValue,
    // required this.listItem,
  }) : super(key: key);
  final String title;
  // final String? defaultValue;
  // final List<String> items;
  final Widget? leadingIcon;
  // final Widget listItem;
  // final Function(String?) onChanged;

  @override
  _LanguageSimpleDialogState createState() => _LanguageSimpleDialogState();
}

class _LanguageSimpleDialogState extends State<LanguageSimpleDialog> {
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
          subtitle: Text(Getters.getLanguageFromCode(state.azureLang)),
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
  Language _language = Language.english;

  @override
  void initState() {
    super.initState();
    setLanguage();
  }

  setLanguage() {
    context.read<SettingsBloc>().add(
          const SettingsEvent.fetchAzureLanguage(),
        );
    final String lang = context.read<SettingsBloc>().state.azureLang;
    setState(() {
      switch (lang) {
        case "en":
          _language = Language.english;
          break;
        case "hi":
          _language = Language.hindi;
          break;
        case "ta":
          _language = Language.tamil;
          break;
        case "bn":
          _language = Language.bangla;
          break;
        case "mr":
          _language = Language.marathi;
          break;
        case "te":
          _language = Language.telugu;
          break;
        case "gu":
          _language = Language.gujarati;
          break;
        case "pa":
          _language = Language.punjabi;
          break;
        case "ml":
          _language = Language.malayalam;
          break;
        case "kn":
          _language = Language.kannada;
          break;
        case "as":
          _language = Language.assamese;
          break;
        case "ur":
          _language = Language.urdu;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 27,
            top: 8,
          ),
          child: Text(
            "${context.read<SettingsBloc>().state.languageData.language}",
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText1!
                .copyWith(fontSize: MediaQuery.of(context).size.width<360?20:22),
          ),
        ),
        // ListTile(
        //   title: const Text('Default'),
        //   leading: Radio<Language>(
        //     value: Language.Default,
        //     groupValue: _language,
        //     onChanged: (Language? value) {
        // setState(() {
        //   _language = value!;
        // });
        //     },
        //   ),
        // ),
        ListTile(
          title: const Text('English'),
          leading: Radio<Language>(
            value: Language.english,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["English"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["English"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('हिन्दी'),
          leading: Radio<Language>(
            value: Language.hindi,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(SettingsEvent.setLanguageData(
                    language: AzureTranslationConstants.languages["Hindi"]!,
                  ));
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Hindi"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('தமிழ்'),
          leading: Radio<Language>(
            value: Language.tamil,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Tamil"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Tamil"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('বাংলা'),
          leading: Radio<Language>(
            value: Language.bangla,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Bangla"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Bangla"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('मराठी'),
          leading: Radio<Language>(
            value: Language.marathi,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Marathi"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Marathi"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('తెలుగు'),
          leading: Radio<Language>(
            value: Language.telugu,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Telugu"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Telugu"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('ગુજરાતી'),
          leading: Radio<Language>(
            value: Language.gujarati,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language:
                          AzureTranslationConstants.languages["Gujarati"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Gujarati"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('ਪੰਜਾਬੀ'),
          leading: Radio<Language>(
            value: Language.punjabi,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Punjabi"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Punjabi"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('മലയാളം'),
          leading: Radio<Language>(
            value: Language.malayalam,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language:
                          AzureTranslationConstants.languages["Malayalam"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Malayalam"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('ಕನ್ನಡ'),
          leading: Radio<Language>(
            value: Language.kannada,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Kannada"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Kannada"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('অসমীয়া'),
          leading: Radio<Language>(
            value: Language.assamese,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language:
                          AzureTranslationConstants.languages["Assamese"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Assamese"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('اُردُو'),
          leading: Radio<Language>(
            value: Language.urdu,
            groupValue: _language,
            onChanged: (Language? value) {
              context.read<SettingsBloc>().add(
                    SettingsEvent.setLanguageData(
                      language: AzureTranslationConstants.languages["Urdu"]!,
                    ),
                  );
              context.read<SettingsBloc>().add(
                    SettingsEvent.setAzureLanguage(
                      AzureTranslationConstants.languages["Urdu"]!,
                    ),
                  );
              setState(() {
                _language = value!;
              });
            },
          ),
        ),

        // ListTile(
        //   title: const Text('Hindi'),
        //   leading: Radio<Language>(
        //     value: Language.Hindi,
        //     groupValue: _language,
        //     onChanged: (Language? value) {
        //       setState(() {
        //         _language = value!;
        //       });
        //     },
        //   ),
        // ),
      ],
    );
  }
}
