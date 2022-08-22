import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/my_contact_list_tile.dart';

class NewChatPage2 extends StatefulWidget {
  const NewChatPage2({Key? key}) : super(key: key);

  @override
  _NewChatPage2State createState() => _NewChatPage2State();
}

class _NewChatPage2State extends State<NewChatPage2> {
  late String number;
  String _searchKey = "";

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<UserBloc>().add(const UserEvent.setSearchInitial());
    return BlocConsumer<ContactsBloc, ContactsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).backgroundColor,
            // iconTheme: const IconThemeData(color: Colors.black),
            title: Text(
              context.read<SettingsBloc>().state.languageData.newMessage,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              context
                  .read<ContactsBloc>()
                  .add(const ContactsEvent.fetchMyContacts());
            },
            child: ListView(
              // physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: CupertinoSearchTextField(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 12.0),
                    placeholder: context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .SearchContacts,
                    onChanged: (v) {
                      setState(() {
                        _searchKey = v;
                      });
                    },
                    onSubmitted: (v) {
                      setState(() {
                        _searchKey = v;
                      });
                    },
                  ),
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                  itemCount: state.myContacts
                      .where((element) => element.name
                          .toLowerCase()
                          .startsWith(_searchKey.toLowerCase()))
                      .toList()
                      .length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    String displayNameOrNumber;
                    final String phoneContactNumberOrName =
                        Getters.checkLocalContact(
                      phoneContacts:
                          context.read<ContactsBloc>().state.phoneContacts,
                      phoneNumber: state.myContacts
                          .where((element) => element.name
                              .toLowerCase()
                              .startsWith(_searchKey.toLowerCase()))
                          .toList()[index]
                          .phoneNumber,
                    );
                    if (phoneContactNumberOrName == '') {
                      displayNameOrNumber = state.myContacts
                          .where((element) => element.name
                              .toLowerCase()
                              .startsWith(_searchKey.toLowerCase()))
                          .toList()[index]
                          .name;
                    } else {
                      displayNameOrNumber = phoneContactNumberOrName;
                    }

                    final KahoChatUser member = state.myContacts
                        .where((element) => element.name
                            .toLowerCase()
                            .startsWith(_searchKey.toLowerCase()))
                        .toList()[index];
                    return MyContactListTile(
                      user: member,
                      phoneContactNumberOrName: displayNameOrNumber,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class NewChatTile extends StatelessWidget {
  const NewChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CustomCircleAvatar(
        name: 'N O',
        color: '',
      ),
      title: Text(context.read<SettingsBloc>().state.languageData.userNotFound),
    );
  }
}
