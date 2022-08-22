import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/circle_avatar_with_icon.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';

class SelectMembersPage extends StatefulWidget {
  const SelectMembersPage({Key? key}) : super(key: key);

  @override
  _SelectMembersPageState createState() => _SelectMembersPageState();
}

class _SelectMembersPageState extends State<SelectMembersPage> {
  Map<int, KahoChatUser> addedGroupMembers = {};
  String _searchKey = "";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        state.phoneContacts.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
        return SafeScaffold(
          appBar: AppBar(
            iconTheme: Theme.of(context).iconTheme,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0.0,
            title: Text(
              "${context.read<SettingsBloc>().state.languageData.selectParticipants}",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width<360?16:18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            actions: [
              FlatButton(
                padding: const EdgeInsets.only(right: 20),
                minWidth: 10,
                onPressed: () =>
                    AutoRouter.of(context).push(const CreateGroupRoute()),
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.skip}",
                  style:  TextStyle(color:context.read<SettingsBloc>()
                      .state
                      .appThemeMode ==
                      ThemeMode.dark
                      ? Colors.white54
                      :  Kolors.primary, fontSize: 14),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            heroTag: null,
            onPressed: () {
              context.read<GroupsBloc>().add(
                    GroupsEvent.setGroupMembers(
                      addedGroupMembers.values.toList(),
                    ),
                  );
              AutoRouter.of(context).push(const CreateGroupRoute());
            },
            backgroundColor: Kolors.primary,
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "${context.read<SettingsBloc>().state.languageData.CONTINUE}",
                style:  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width<360?13:15,
                    color: Kolors.white),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: RefreshIndicator(
            onRefresh: () async {
              context
                  .read<ContactsBloc>()
                  .add(const ContactsEvent.fetchMyContacts());
            },
            child: ListView(
              // shrinkWrap: true,
              //  physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: CupertinoSearchTextField(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 8.0,
                      ),
                      placeholder:
                          "${context.read<SettingsBloc>().state.languageData.SearchContact}",
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
                    )),
                if (addedGroupMembers.isNotEmpty)
                  Container(
                    height: 70,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: addedGroupMembers.keys
                          .map(
                            (index) => SizedBox(
                              width: 70,
                              height: 55,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 55,
                                    child: CircleAvatarWithIcon(
                                      iconData: Icons.close,
                                      onTap: () {
                                        addedGroupMembers.removeWhere(
                                          (key, value) =>
                                              value.uid ==
                                              addedGroupMembers[index]!.uid,
                                        );
                                        setState(() {});
                                      },
                                      name: addedGroupMembers[index]!.name,
                                      color:
                                          addedGroupMembers[index]!.userColor,
                                      profilePictureUrl:
                                          addedGroupMembers[index]!
                                              .profilePictureUrl,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      addedGroupMembers[index]!.name,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    /*child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: addedGroupMembers.length,
                    itemBuilder: (context,index){
                      return ;
                    },
                  ),*/
                  ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(left: 5.0),
                  itemCount: state.myContacts
                      .where(
                        (element) => element.name
                            .toLowerCase()
                            .startsWith(_searchKey.toLowerCase()),
                      )
                      .toList()
                      .length,
                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final KahoChatUser member = state.myContacts
                        .where(
                          (element) => element.name
                              .toLowerCase()
                              .startsWith(_searchKey.toLowerCase()),
                        )
                        .toList()[index];

                    String displayNameOrNumber;
                    String getPhoneContactNumberOrName =
                        Getters.checkLocalContact(
                      phoneContacts:
                          context.read<ContactsBloc>().state.phoneContacts,
                      phoneNumber: member.phoneNumber,
                    );
                    if (getPhoneContactNumberOrName == '') {
                      displayNameOrNumber = member.name;
                    } else {
                      displayNameOrNumber = getPhoneContactNumberOrName;
                    }
                    return MemberTile(
                      title: displayNameOrNumber,
                      member: member,
                      isChecked: addedGroupMembers[index] != null,
                      onChanged: (added) {
                        if (added) {
                          print(member);
                          addedGroupMembers[index] = member;
                        } else {
                          addedGroupMembers.remove(index);
                        }
                        setState(() {});
                      },
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
