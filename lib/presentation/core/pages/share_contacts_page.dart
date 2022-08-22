// ignore_for_file: avoid_print

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
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile_checked.dart';

class ShareContactsPage extends StatefulWidget {
  final ValueChanged<List<KahoChatUser>> onShared;
  final ValueChanged<List<KahoChatUser>>? onSelectChange;
  final bool showFloatingButton;
  final bool selectContactsOnly;
  const ShareContactsPage({
    Key? key,
    required this.onShared,
    this.showFloatingButton = true,
    this.onSelectChange,
    this.selectContactsOnly = false,
  }) : super(key: key);

  @override
  _ShareContactsPageState createState() => _ShareContactsPageState();
}

class _ShareContactsPageState extends State<ShareContactsPage> {
  Map<int, KahoChatUser> addedGroupMembers = {};
  String _searchKey = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, gstate) {
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            return SafeScaffold(
              backgroundColor: Theme.of(context).backgroundColor,
              appBar: AppBar(
                toolbarHeight: 47,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                iconTheme: Theme.of(context).iconTheme,
                centerTitle: true,
                title: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /*Container(
                        width: MediaQuery.of(context).size.width * 0.125,
                        height: 3,
                        color: Kolors.primary,
                      ),*/
                      const SizedBoxH10(),
                      Text(
                        widget.selectContactsOnly
                            ? "${context.read<SettingsBloc>().state.languageData.selectContacts}"
                            : "${context.read<SettingsBloc>().state.languageData.shareContact}",
                        style: const TextStyle(
                          color: Kolors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5)
                    ],
                  ),
                ),
              ),
              floatingActionButton: widget.showFloatingButton
                  ? FloatingActionButton(
                      heroTag: null,
                      onPressed: () {
                        final _list = addedGroupMembers.values.toList();
                        widget.onShared(_list);
                        Navigator.pop(context);
                      },
                      backgroundColor: Kolors.primary,
                      child: const Icon(
                        Icons.send,
                      ),
                      // label: const Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10),
                      //   child: TextTranslate("Share"),
                      // ),
                    )
                  : null,
              // floatingActionButtonLocation:
              //     FloatingActionButtonLocation.centerFloat,
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
                        horizontal: 20.0,
                        vertical: 0,
                      ),
                      child: CupertinoSearchTextField(
                        borderRadius: BorderRadius.circular(5),
                        backgroundColor: Colors.grey.shade300,
                        prefixIcon: const SizedBox.shrink(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 8.0,
                        ),
                        // Text("${context.read<SettingsBloc>().state.languageData
                        placeholder:
                            "${context.read<SettingsBloc>().state.languageData.shareContact}",
                        placeholderStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w300,
                        ),
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
                    const SizedBoxH10(),
                    if (addedGroupMembers.isNotEmpty)
                      Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: addedGroupMembers.keys
                              .map((index) => SizedBox(
                                    width: 56,
                                    height: 60,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          height: 50,
                                          child: CircleAvatarWithIcon(
                                            name:
                                                addedGroupMembers[index]!.name,
                                            iconData: Icons.close,
                                            onTap: () {
                                              addedGroupMembers.removeWhere(
                                                  (key, value) =>
                                                      value.uid ==
                                                      addedGroupMembers[index]!
                                                          .uid);
                                              setState(() {});
                                            },
                                            profilePictureUrl:
                                                addedGroupMembers[index]!
                                                    .profilePictureUrl,
                                            color: addedGroupMembers[index]!
                                                .userColor,
                                          ),
                                        ),
                                        Text(addedGroupMembers[index]!.name,
                                            maxLines: 1,
                                            style: const TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12))
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final KahoChatUser member = state.myContacts
                            .where(
                              (element) => element.name
                                  .toLowerCase()
                                  .startsWith(_searchKey.toLowerCase()),
                            )
                            .toList()[index];
                        String displayNameOrNumber;
                        final String getPhoneContactNumberOrName =
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
                        return MemberTileCheckBox(
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
                            if (widget.onSelectChange != null) {
                              widget.onSelectChange!(
                                  addedGroupMembers.values.toList());
                            }
                            setState(() {});
                          },
                        );
                      },
                      separatorBuilder: (_, c) => const SizedBox(
                        height: 0,
                      ),
                      itemCount: state.myContacts
                          .where(
                            (element) => element.name
                                .toLowerCase()
                                .startsWith(_searchKey.toLowerCase()),
                          )
                          .toList()
                          .length,
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
