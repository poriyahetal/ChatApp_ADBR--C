import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/circle_avatar_with_icon.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class SearchMembersPage extends StatefulWidget {
  final List<KahoChatUser> members;
  const SearchMembersPage({Key? key, required this.members}) : super(key: key);

  @override
  _SearchMembersPageState createState() => _SearchMembersPageState();
}

class _SearchMembersPageState extends State<SearchMembersPage> {
  Map<int, KahoChatUser> addedGroupMembers = {};
  String _searchKey = "";

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        titleSpacing: 0,
        title: FutureBuilder(
            future: Getters.getTranslation(languageCode: 'en', text: "Search"),
            builder: (context, snapshot) {
              return TextField(
                decoration: InputDecoration(
                  hintText:
                      !snapshot.hasData ? "Search" : snapshot.data! as String,
                  border: InputBorder.none,
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
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
              );
            }),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<ContactsBloc>()
              .add(const ContactsEvent.fetchMyContacts());
        },
        child: ListView(
          //physics: const NeverScrollableScrollPhysics(),
          children: [
            ListView.builder(
              padding: const EdgeInsets.only(left: 5.0),
              itemCount: widget.members
                  .where((element) => element.name
                      .toLowerCase()
                      .startsWith(_searchKey.toLowerCase()))
                  .toList()
                  .length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final KahoChatUser member = widget.members
                    .where((element) => element.name
                        .toLowerCase()
                        .startsWith(_searchKey.toLowerCase()))
                    .toList()[index];
                return ListTile(
                    title: Text(member.name),
                    leading: CustomCircleAvatar(
                      profilePictureUrl: member.profilePictureUrl,
                      name: member.name,
                      color: member.userColor,
                    ),
                    subtitle: Text(member.phoneNumber));
              },
            ),
          ],
        ),
      ),
    );
  }
}
