import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/chat_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/block_contacts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';

class BlockedContactsPage extends StatefulWidget {
  BlockedContactsPage({Key? key}) : super(key: key);

  @override
  State<BlockedContactsPage> createState() => _BlockedContactsPageState();
}

class _BlockedContactsPageState extends State<BlockedContactsPage> {
  List<KahoChatUser>? blockedUser;
  KahoChatUser? currentUser;
  bool isFetchingContacts = false;
  bool isSearch = false;
  final FocusNode _focusNode = FocusNode();
  TextEditingController _searchTextController = TextEditingController();

  Future fetchBlockedContacts() async {
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.usersCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    KahoChatUser myUser =
        KahoChatUser.fromMap(snap.data() as Map<String, dynamic>);
    currentUser = myUser;
    setState(() {
      isFetchingContacts = true;
    });
  }

  // Future selectBlockContacts(KahoChatUser user) async {
  //   // currentUser!.mute!.putIfAbsent(user.uid, () => user.name);
  //   await FirebaseFirestore.instance.usersCollection
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .set(currentUser!.toMap());
  // }

  Widget searchField(BuildContext ctx) {
    return BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, ContactsState) {
      return Container(
        height: 45,
        margin: const EdgeInsets.only(top: 10),
        child: TextField(
          controller: _searchTextController,
          focusNode: _focusNode,
          onChanged: (value) {
            _searchTextController.text.toLowerCase();
            setState(() {
              context.read<ContactsBloc>().add(
                  ContactsEvent.searchBlockedContacts(
                      _searchTextController.text));
            });
          },
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "   Search...",
            filled: true,
            fillColor: Theme.of(context).cardColor,
            prefixIcon: InkWell(
              onTap: () {
                setState(() {
                  isSearch = false;
                });
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
            ),
            suffixIcon: _searchTextController.text.isEmpty
                ? const SizedBox()
                : IconButton(
                    onPressed: _searchTextController.text.isEmpty
                        ? null
                        : () {
                            _searchTextController.clear();
                            _focusNode.unfocus();
                          },
                    icon: const Icon(
                      Icons.clear_outlined,
                      color: Colors.grey,
                    ),
                  ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _searchTextController.dispose();
  }

  @override
  void initState() {
    context.read<ContactsBloc>().add(const ContactsEvent.blockedContacts());
    // TODO: implement initState
    super.initState();
    fetchBlockedContacts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
        appBar: AppBar(
            automaticallyImplyLeading: isSearch ? false : true,
            backgroundColor: isSearch
                ? Colors.white
                : Theme.of(context).appBarTheme.backgroundColor,
            title: isSearch
                ? searchField(context)
                : Text(
                    "${context.read<SettingsBloc>().state.languageData.blockedContacts}"),
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSearch = true;
                      });
                    },
                    icon: const Icon(Icons.search),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ]),
        body: BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            List<KahoChatUser> kahoChatUser =
                isSearch ? state.searchBlockedContacts : state.blockedContacts;
            return state.blockedContacts.length < 1
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Center(
                      child: Text(
                        "${context.read<SettingsBloc>().state.languageData.noBlockedContacts}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      !isFetchingContacts ? fetchBlockedContacts() : null;
                      isFetchingContacts = true;
                      return ListTile(
                        title: Text(kahoChatUser[index].name),
                        subtitle: Text(kahoChatUser[index].about),
                        leading: CustomCircleAvatar(
                          profilePictureUrl:
                              kahoChatUser[index].profilePictureUrl,
                          name: kahoChatUser[index].name,
                          color: kahoChatUser[index].userColor,
                        ),
                        trailing: OutlinedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      title: Text(
                                          "${context.read<SettingsBloc>().state.languageData.unblock} ${kahoChatUser[index].name} ?",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      content: Text(
                                          "${context.read<SettingsBloc>().state.languageData.UnblockToSendAMessageOrMakeACall}",
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal)),
                                      actions: [
                                        FlatButton(
                                            onPressed: () {
                                              final Map blockDataMap = context
                                                  .read<UserBloc>()
                                                  .state
                                                  .signedInUser
                                                  .mute!;
                                              print(blockDataMap);
                                              blockDataMap.remove(
                                                  kahoChatUser[index].uid);

                                              final KahoChatUser updatedUser =
                                                  context
                                                      .read<UserBloc>()
                                                      .state
                                                      .signedInUser
                                                      .copyWith(
                                                          mute: blockDataMap);
                                              print(blockDataMap);
                                              // currentUser!.mute!.remove(
                                              //     (key, value) =>
                                              //         key ==
                                              //         kahoChatUser[index].uid);
                                              context.read<UserBloc>().add(
                                                    UserEvent
                                                        .createOrUpdateUser(
                                                      updatedUser,
                                                    ),
                                                  );
                                              FirebaseFirestore
                                                  .instance.chatCollection
                                                  .doc(Getters
                                                      .getCurrentUserUid())
                                                  .chatUsersCollection
                                                  .doc(kahoChatUser[index].uid)
                                                  .update({
                                                'isBlock': null
                                              }).whenComplete(() {
                                                FirebaseFirestore
                                                    .instance.chatCollection
                                                    .doc(
                                                        kahoChatUser[index].uid)
                                                    .chatUsersCollection
                                                    .doc(Getters
                                                        .getCurrentUserUid())
                                                    .update({'isBlock': null});
                                                context.read<ChatsBloc>().add(
                                                      ChatsEvent
                                                          .sendBlockMessage(
                                                        myUser: context
                                                            .read<UserBloc>()
                                                            .state
                                                            .signedInUser,
                                                        peerUser:
                                                            kahoChatUser[index],
                                                        message: "unblock",
                                                      ),
                                                    );
                                                // Navigator.pop(context);
                                              });

                                              // selectBlockContacts(
                                              //     kahoChatUser[index]);
                                              context.read<ContactsBloc>().add(
                                                  const ContactsEvent
                                                      .blockedContacts());
                                              Navigator.pop(context);
                                            },
                                            textColor: Kolors.primary,
                                            child: Text(
                                                "${context.read<SettingsBloc>().state.languageData.unblock}")),
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                "${context.read<SettingsBloc>().state.languageData.cancel}")),
                                      ],
                                    ));
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Kolors.white,
                            side: const BorderSide(
                              color: Kolors.primary,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          child: Text(
                              "${context.read<SettingsBloc>().state.languageData.unblock}"),
                        ),
                      );
                    },
                    itemCount: kahoChatUser.length,
                  );
          },
        ));
  }
}
