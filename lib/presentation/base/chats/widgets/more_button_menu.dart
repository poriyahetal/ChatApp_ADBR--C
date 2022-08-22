// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contact/contacts.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/pages/shared_media.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class MoreButtonMenu extends StatelessWidget {
  final KahoChatUser peerUser;
  final String isBlock;
  const MoreButtonMenu(
      {Key? key, required this.peerUser, required this.isBlock})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, contacts) {
        final iconBackColor = Colors.grey.shade300;
        const iconColor = Colors.black;
        const iconSize = 22.0;
        const iconPadding = 10.0;

        final inContact = contacts.phoneContacts
            .where(
                (element) => element.phoneNumber.contains(peerUser.phoneNumber))
            .isNotEmpty;

        print(inContact);
        return BlocBuilder<MessageSelectBloc, MessageSelectState>(
          builder: (context, state) {
            return Container(
              height: 298 + MediaQuery.of(context).padding.bottom,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                children: <Widget>[
                  /*Container(
            height: 12,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),*/
                  const SizedBox(height: 8),
                  ListTile(
                    leading: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: iconBackColor,
                      child: Padding(
                        padding: EdgeInsets.all(iconPadding),
                        child: Icon(
                          Icons.contact_page_outlined,
                          color: iconColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                    title: inContact
                        ? Text(context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .viewContact)
                        : Text(context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .addToContact),
                    onTap: () async {
                      if (!inContact) {
                        try {
                          if (await Permission.contacts.isGranted) {
                            // AutoRouter.of(context).push(ContactPermissionRoute(
                            //   onPressed: () async {
                            //     Navigator.pop(context);
                            //     if (await Getters.requestPermission(
                            //         Permission.contacts)) {
                            //       final Contact newContact = Contact();
                            //       newContact.givenName = peerUser.name;
                            //       newContact.phones = [
                            //         Item(
                            //           label: "mobile",
                            //           value: peerUser.phoneNumber,
                            //         )
                            //       ];
                            //       await Contacts.openContactInsertForm(
                            //           newContact);
                            //     }
                            //   },
                            // ));
                            final Contact newContact = Contact();
                            newContact.givenName = peerUser.name;
                            newContact.phones = [
                              Item(label: "mobile", value: peerUser.phoneNumber)
                            ];
                            await Contacts.openContactInsertForm(newContact);
                          } else {
                            Fluttertoast.showToast(
                              msg:
                                  'Allow contact permission from app drawer then my contact tab to use this functionality',
                              backgroundColor: Kolors.grey,
                            );
                          }
                        } catch (e) {
                          log(e.toString());
                        }
                      } else {
                        final cont = await HelperFunctions.getContactId(
                            peerUser.phoneNumber);
                        Contacts.openContactEditForm(cont);
                      }
                    },
                  ),
                  ListTile(
                    leading: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: iconBackColor,
                      child: Padding(
                        padding: EdgeInsets.all(iconPadding),
                        child: Icon(
                          IconlyLight.image,
                          color: iconColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                    title: Text(context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .sharedMedia),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SharedMedia(peerUser: peerUser))),
                  ),
                  ListTile(
                    leading: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: iconBackColor,
                      child: Padding(
                        padding: EdgeInsets.all(iconPadding),
                        child: Icon(
                          CupertinoIcons.search,
                          color: iconColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                    title: Text(
                        context.read<SettingsBloc>().state.languageData.search),
                    onTap: () {
                      context.read<MessageSelectBloc>().add(
                          MessageSelectEvent.enableSearchBar(isSearch: true));
                      Navigator.pop(context);
                    },
                  ),
                  /*ListTile(
            leading: const Icon(
              Icons.warning,
              size: 35,
            ),
            title: const Text("Report"),
            onTap: () {},
          ),*/
                  ListTile(
                    leading: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: iconBackColor,
                      child: Padding(
                        padding: EdgeInsets.all(iconPadding),
                        child: Icon(
                          Icons.block,
                          color: iconColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                    title: !HelperFunctions.checkBlock(isBlock)
                        ? Text(context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .Block)
                        : Text(context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .unblock),
                    onTap: () {
                      if (!HelperFunctions.checkBlock(isBlock)) {
                        //Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  title: Text(
                                      "${context.read<SettingsBloc>().state.languageData.Block} ${peerUser.name} ?",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  content: Text(
                                      context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .blockedPeopleDonTAbleToCallOrSendMessageToYou,
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
                                          blockDataMap.putIfAbsent(
                                              peerUser.uid, () => 'blocked');
                                          // blockDataMap.addAll('': 'blocked');
                                          // blockDataMap.addAll(
                                          //     {'${peerUser.uid}': 'blocked'});
                                          final KahoChatUser updatedUser =
                                              context
                                                  .read<UserBloc>()
                                                  .state
                                                  .signedInUser
                                                  .copyWith(mute: blockDataMap);
                                          context.read<UserBloc>().add(
                                              UserEvent.createOrUpdateUser(
                                                  updatedUser));
                                          FirebaseFirestore
                                              .instance.chatCollection
                                              .doc(Getters.getCurrentUserUid())
                                              .chatUsersCollection
                                              .doc(peerUser.uid)
                                              .set(
                                                  {
                                                'isBlock':
                                                    Getters.getCurrentUserUid(),
                                              },
                                                  SetOptions(
                                                      merge:
                                                          true)).whenComplete(
                                                  () {
                                            FirebaseFirestore
                                                .instance.chatCollection
                                                .doc(peerUser.uid)
                                                .chatUsersCollection
                                                .doc(
                                                    Getters.getCurrentUserUid())
                                                .set({
                                              'isBlock':
                                                  Getters.getCurrentUserUid()
                                            }, SetOptions(merge: true));
                                            context.read<ContactsBloc>().add(
                                                const ContactsEvent
                                                    .blockedContacts());
                                            context.read<ChatsBloc>().add(
                                                  ChatsEvent.sendBlockMessage(
                                                    myUser: context
                                                        .read<UserBloc>()
                                                        .state
                                                        .signedInUser,
                                                    peerUser: peerUser,
                                                    message: "blocked",
                                                  ),
                                                );
                                            Navigator.pop(context);
                                            Navigator.pop(context);
                                          });
                                        },
                                        textColor: Kolors.primary,
                                        child: Text(context
                                            .read<SettingsBloc>()
                                            .state
                                            .languageData
                                            .Block)),
                                    FlatButton(
                                        onPressed: () => Navigator.pop(context),
                                        textColor: Kolors.primary,
                                        child: Text(context
                                            .read<SettingsBloc>()
                                            .state
                                            .languageData
                                            .cancel)),
                                  ],
                                ));
                      } else {
                        //Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  title: Text(
                                      "${context.read<SettingsBloc>().state.languageData.unblock} ${peerUser.name} ?",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  content: Text(
                                      context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .UnblockToSendAMessageOrMakeACall,
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
                                          blockDataMap.remove(peerUser.uid);
                                          final KahoChatUser updatedUser =
                                              context
                                                  .read<UserBloc>()
                                                  .state
                                                  .signedInUser
                                                  .copyWith(mute: blockDataMap);

                                          context.read<UserBloc>().add(
                                              UserEvent.createOrUpdateUser(
                                                  updatedUser));
                                          // FirebaseFirestore
                                          //     .instance.usersCollection
                                          //     .doc(Getters.getCurrentUserUid())
                                          //     .set(updatedUser.toMap(),
                                          //         SetOptions(merge: true));
                                          // .doc(Getters.getCurrentUserUid())
                                          // .update({'mute.${''}': ''});
                                          FirebaseFirestore
                                              .instance.chatCollection
                                              .doc(Getters.getCurrentUserUid())
                                              .chatUsersCollection
                                              .doc(peerUser.uid)
                                              .update({
                                            'isBlock': null
                                          }).whenComplete(() {
                                            FirebaseFirestore
                                                .instance.chatCollection
                                                .doc(peerUser.uid)
                                                .chatUsersCollection
                                                .doc(
                                                    Getters.getCurrentUserUid())
                                                .update({'isBlock': null});
                                            context.read<ContactsBloc>().add(
                                                const ContactsEvent
                                                    .blockedContacts());
                                            context.read<ChatsBloc>().add(
                                                  ChatsEvent.sendBlockMessage(
                                                    myUser: context
                                                        .read<UserBloc>()
                                                        .state
                                                        .signedInUser,
                                                    peerUser: peerUser,
                                                    message: "unblock",
                                                  ),
                                                );
                                            Navigator.pop(context);
                                            Navigator.pop(context);
                                          });
                                        },
                                        textColor: Kolors.primary,
                                        child: Text(context
                                            .read<SettingsBloc>()
                                            .state
                                            .languageData
                                            .unblock)),
                                    FlatButton(
                                        onPressed: () => Navigator.pop(context),
                                        textColor: Kolors.primary,
                                        child: Text(context
                                            .read<SettingsBloc>()
                                            .state
                                            .languageData
                                            .cancel)),
                                  ],
                                ));
                      }
                    },
                  ),
                  ListTile(
                    leading: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: iconBackColor,
                      child: Padding(
                        padding: EdgeInsets.all(iconPadding),
                        child: Icon(
                          CupertinoIcons.delete,
                          color: iconColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                    title: Text(context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .deleteChat),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          title: Text(
                              "${context.read<SettingsBloc>().state.languageData.deleteSelectedConversations} ?",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          content: Text(
                              context
                                  .read<SettingsBloc>()
                                  .state
                                  .languageData
                                  .thisWillDeleteSelectedConversationsPermanently,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                          actions: [
                            FlatButton(
                              onPressed: () {
                                context.read<ChatsBloc>().add(
                                      ChatsEvent.deleteChat(
                                        myUser: Getters.getCurrentUserUid(),
                                        peerUser: peerUser.uid,
                                      ),
                                    );
                                AutoRouter.of(context)
                                    .replaceAll([BaseRoute(selectedIndex: 0)]);
                                // Future.delayed(const Duration(seconds: 2));
                                Fluttertoast.showToast(
                                  msg: "Chat Deleted !",
                                  backgroundColor: Kolors.grey,
                                );
                              },
                              textColor: Kolors.primary,
                              child: Text(
                                  "${context.read<SettingsBloc>().state.languageData.delete}"),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.pop(context),
                              textColor: Kolors.primary,
                              child: Text(
                                  "${context.read<SettingsBloc>().state.languageData.cancel}"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  /*ListTile(
            leading: const Icon(
              Icons.volume_off,
              size: 35,
            ),
            title: const Text("Mute notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.wallpaper,
              size: 35,
            ),
            title: const Text("Wallpaper"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.more_horiz,
              size: 35,
            ),
            title: const Text("More"),
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                context: context,
                builder: (builder) => Container(
                  height: 335,
                  // width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 12,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      const SizedBoxH20(),

                      /*ListTile(
                        leading: const Icon(
                          Icons.file_upload_outlined,
                          size: 35,
                        ),
                        title: const Text("Export chat"),
                        onTap: () {},
                      ),*/

                      /*ListTile(
                        leading: const Icon(
                          Icons.share,
                          size: 35,
                        ),
                        title: const Text("Share contact"),
                        onTap: () {},
                      ),*/
                    ],
                  ),
                ),
              );
            },
          ),*/
                ],
              ),
            );
          },
        );
      },
    );
  }
}
