import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/my_contact_list_tile.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/my_contacts_tab_contents.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/phone_contacts_tab_contents.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  bool isSearching = false;
  bool showCloseIcon = false;
  String _searchKey = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        return isSearching
            ? SafeScaffold(
                appBar: AppBar(
                  backgroundColor:
                      isDarkMode ? Kolors.appBarDarkThemeColor : Kolors.white,
                  iconTheme: Theme.of(context).iconTheme,
                  titleSpacing: 0,
                  // leading:
                  title: TextField(
                    decoration: InputDecoration(
                      hintText:
                          "${context.read<SettingsBloc>().state.languageData.SearchContacts}...",
                      border: InputBorder.none,
                    ),
                    onChanged: (v) {
                      setState(() {
                        showCloseIcon = true;
                        _searchKey = v;
                      });
                    },
                  ),
                  actions: [
                    if (showCloseIcon)
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          // color: Theme.of(context).iconTheme.color,
                        ),
                        onPressed: () {
                          setState(() {
                            showCloseIcon = false;
                            isSearching = false;
                          });
                        },
                      ),
                    const SizedBoxW10()
                  ],
                ),
                body: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    if (state.myContacts
                            .where(
                              (element) =>
                                  element.name.toLowerCase().startsWith(
                                        _searchKey.toLowerCase(),
                                      ),
                            )
                            .toList()
                            .length >
                        0)
                      ListView.builder(
                        padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                        itemCount: state.myContacts
                            .where((element) => element.name
                                .toLowerCase()
                                .startsWith(_searchKey.toLowerCase()))
                            .toList()
                            .length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          String displayNameOrNumber;
                          final String phoneContactNumberOrName =
                              Getters.checkLocalContact(
                            phoneContacts: context
                                .read<ContactsBloc>()
                                .state
                                .phoneContacts,
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
                      )
                    else
                      const NewChatTile(),
                  ],
                ),
              )
            : SafeScaffold(
                appBar: AppBarTitle(
                  title:
                      context.read<SettingsBloc>().state.languageData.contacts,
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        isSearching = true;
                      });
                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  heroTag: null,
                  backgroundColor:
                  context.read<SettingsBloc>().state.appThemeMode ==
                      ThemeMode.dark
                      ? Colors.white30
                      : Kolors.primary,
                  onPressed: () async {
                    await ContactsService.openContactForm();
                  },
                  child:  Icon(Icons.person_add_outlined, color: context
                      .read<SettingsBloc>()
                      .state
                      .appThemeMode ==
                      ThemeMode.dark
                      ? Colors.white
                      : null),
                ),
                body: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: context.read<SettingsBloc>()
                            .state
                            .appThemeMode ==
                            ThemeMode.dark
                            ? Colors.white54
                            : Kolors.primary,
                        indicatorWeight: 4,
                        tabs: [
                          Tab(
                              text: context
                                  .read<SettingsBloc>()
                                  .state
                                  .languageData
                                  .myContacts),
                          Tab(
                            text: context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .phoneContacts,
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            MyContactsTabContents(),
                            const PhoneContactsTabContents(),
                          ],
                        ),
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
        profilePictureUrl: AppConstants.dummyProfilePictureUrl,
      ),
      title: Text(
          "${context.read<SettingsBloc>().state.languageData.userNotFound}"),
    );
  }
}
