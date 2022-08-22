import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/my_contacts_tab_contents.dart';

class NewCall extends StatefulWidget {
  const NewCall({Key? key}) : super(key: key);

  @override
  _NewCallState createState() => _NewCallState();
}

class _NewCallState extends State<NewCall> {
  TextEditingController _filter = TextEditingController();
  Color maincolor = Kolors.primary;
  Color secondarycolor = Kolors.white;
  Icon _searchIcon = Icon(Icons.search);
  bool showSearch = true;
  String labelSearch = 'Search...';

  @override
  void initState() {
    super.initState();
    translate();
  }

  Future translate() async {
    // labelSearch = await Getters.getTranslation(labelSearch);
    setState(() {
      labelSearch = labelSearch;
    });
  }

  void _searchPressed() {
    setState(() {
      showSearch = !showSearch;
      if (_searchIcon.icon == Icons.search) {
        maincolor = Kolors.white;
        secondarycolor = Kolors.primary;
        _searchIcon = Icon(Icons.close, size: 30, color: secondarycolor);
      } else {
        maincolor = Kolors.primary;
        secondarycolor = Kolors.white;
        _searchIcon = const Icon(
          Icons.search,
          size: 30,
        );

        // filteredNames = names;
        // _filter.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        actions: [
          IconButton(
            onPressed: _searchPressed,
            icon: _searchIcon,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: secondarycolor),
        ),
        centerTitle: false,
        title: showSearch
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(context.read<SettingsBloc>().state.languageData.selectParticipant),
                  BlocBuilder<ContactsBloc, ContactsState>(
                    builder: (context, state) {
                      return Text(
                        "${state.myContacts.length} ${context.read<SettingsBloc>().state.languageData.participants}",
                        style: const TextStyle(fontSize: 15),
                      );
                    },
                  )
                ],
              )
            : TextFormField(
                style: TextStyle(color: secondarycolor),
                cursorColor: secondarycolor,
                controller: _filter,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    // prefixIcon: Icon(Icons.search, color: Kolors.white),
                    labelText: labelSearch,
                    labelStyle: const TextStyle(color: Kolors.primary)),
              ),
      ),
      body: MyContactsTabContents(
        isCalling: true,
      ),
    );
  }
}
