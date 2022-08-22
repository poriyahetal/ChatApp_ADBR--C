import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:get/get.dart';

typedef void FilterPopupCallback(String result);

class FilterPopup extends StatefulWidget {
  final FilterPopupCallback? onSubmit;

  FilterPopup({this.onSubmit});

  @override
  _FilterPopupState createState() => _FilterPopupState();
}

class _FilterPopupState extends State<FilterPopup> {
  int timeDifference = 24;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
          "${context.read<SettingsBloc>().state.languageData.filterByTime}",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width < 360 ? 18 : null)),
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              RadioListTile(
                title: Text(
                  '6 ${context.read<SettingsBloc>().state.languageData.hoursAgo}',
                  style: TextStyle(fontSize: 16),
                ),
                groupValue: timeDifference,
                onChanged: (value) => setState(() {
                  timeDifference = value as int;
                  context
                      .read<ContactsBloc>()
                      .add(ContactsEvent.filterContactStories(timeDifference));
                }),
                value: 6,
              ),
              RadioListTile(
                title: Text(
                    '12 ${context.read<SettingsBloc>().state.languageData.hoursAgo}',
                    style: TextStyle(fontSize: 16)),
                groupValue: timeDifference,
                onChanged: (value) => setState(() {
                  timeDifference = value as int;
                  context
                      .read<ContactsBloc>()
                      .add(ContactsEvent.filterContactStories(timeDifference));
                }),
                value: 12,
              ),
              RadioListTile(
                title: Text(
                    '18 ${context.read<SettingsBloc>().state.languageData.hoursAgo}',
                    style: TextStyle(fontSize: 16)),
                groupValue: timeDifference,
                onChanged: (value) => setState(() {
                  timeDifference = value as int;
                  print(timeDifference);
                  context
                      .read<ContactsBloc>()
                      .add(ContactsEvent.filterContactStories(timeDifference));
                }),
                value: 18,
              ),
              RadioListTile(
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.Default}",
                    style: TextStyle(fontSize: 16)),
                groupValue: timeDifference,
                onChanged: (value) => setState(() {
                  timeDifference = value as int;
                  print(timeDifference);
                  context
                      .read<ContactsBloc>()
                      .add(ContactsEvent.filterContactStories(timeDifference));
                }),
                value: 24,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                // widget.onSubmit!(timeDifference);
              },
              child: Text(
                "${context.read<SettingsBloc>().state.languageData.ok}",
                style: const TextStyle(
                    color: Kolors.primary, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
