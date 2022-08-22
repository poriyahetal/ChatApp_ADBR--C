// ignore_for_file: require_trailing_commas

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/circle_avatar_with_icon.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddMembersPage extends StatefulWidget {
  final String groupId;
  const AddMembersPage({Key? key, required this.groupId}) : super(key: key);

  @override
  _AddMembersPageState createState() => _AddMembersPageState();
}

class _AddMembersPageState extends State<AddMembersPage> {
  Map<int, KahoChatUser> addedGroupMembers = {};
  String _searchKey = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, gstate) {
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            return BlocBuilder<UserBloc, UserState>(
                builder: (context, userState) {
              return SafeScaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  iconTheme: const IconThemeData(
                    color: Colors.black,
                  ),
                  title: Text(
                      context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .addParticipants,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 18)),
                ),
                floatingActionButton: FloatingActionButton.extended(
                  heroTag: null,
                  onPressed: () {
                    final _list = addedGroupMembers.values.toList();
                    print("other admins-->${gstate.group.otherAdmins}");

                    var mem = gstate.members + [gstate.group.adminUser] +gstate.group.otherAdmins;
                    mem.addAll(_list);

                    List<String> uids = [];

                    for(int i = 0;i<mem.length;i++){
                      uids.add(mem[i].uid);
                    }
                    List uniqueUids = uids.toSet().toList();
                    List<KahoChatUser> members = [];
                    for(int i=0;i<uniqueUids.length;i++){
                      print(uniqueUids[i]);
                      members.add(mem.firstWhere((element) => element.uid == uniqueUids[i]));
                    }
                    log("unique members-->${members.map((e) => e.toJson())}");
                    context
                        .read<GroupsBloc>()
                        .add(GroupsEvent.addGroupMembers(members, widget.groupId));

                    for (int i = 0; i <= _list.length - 1; i++) {
                      if(userState.signedInUser.uid!=_list[i].uid){
                        context.read<GroupsBloc>().add(
                          GroupsEvent.sendGroupNotification(
                            message:
                            '${userState.signedInUser.name} added ${_list[i].name}',
                            myUser: userState.signedInUser,
                            groupUid: widget.groupId,
                            groupName: gstate.group.name,
                          ),
                        );
                      }
                    }

                    Navigator.pop(context);
                  },
                  backgroundColor: Kolors.primary,
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        context.read<SettingsBloc>().state.languageData.add),
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
                    //physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: FutureBuilder(
                            future: Getters.getTranslation(
                                languageCode: 'en', text: "Search Contacts"),
                            builder: (context, gSnapshot) {
                              return CupertinoSearchTextField(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 8.0),
                                placeholder: !gSnapshot.hasData
                                    ? "Search Contacts"
                                    : gSnapshot.data! as String,
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
                              );
                            }),
                      ),
                      if (addedGroupMembers.isNotEmpty)
                        Container(
                          height: 70,
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: addedGroupMembers.keys
                                    .map(
                                      (index) => SizedBox(
                                        width: 56,
                                        height: 60,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 56,
                                              height: 50,
                                              child: CircleAvatarWithIcon(
                                                iconData: Icons.close,
                                                onTap: () {
                                                  addedGroupMembers.removeWhere(
                                                      (key, value) =>
                                                          value.uid ==
                                                          addedGroupMembers[
                                                                  index]!
                                                              .uid);
                                                  setState(() {});
                                                },
                                                profilePictureUrl:
                                                    addedGroupMembers[index]!
                                                        .profilePictureUrl,
                                                name: addedGroupMembers[index]!
                                                    .name,
                                                color: addedGroupMembers[index]!
                                                    .userColor,
                                              ),
                                            ),
                                            Text(addedGroupMembers[index]!.name,
                                                maxLines: 1,
                                                style: const TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    fontSize: 12))
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ListView.builder(
                        padding: const EdgeInsets.only(left: 5.0),
                        itemCount: state.myContacts
                            .where((element) => element.name
                                .toLowerCase()
                                .startsWith(_searchKey.toLowerCase()))
                            .toList()
                            .length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final KahoChatUser member = state.myContacts
                              .where((element) => element.name
                                  .toLowerCase()
                                  .startsWith(_searchKey.toLowerCase()))
                              .toList()[index];
                          String displayNameOrNumber;
                          String getPhoneContactNumberOrName =
                              Getters.checkLocalContact(
                            phoneContacts: context
                                .read<ContactsBloc>()
                                .state
                                .phoneContacts,
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
            });
          },
        );
      },
    );
  }
}
