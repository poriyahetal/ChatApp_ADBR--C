import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/get_message_widget.dart';
import 'package:flutter_template/presentation/base/groups/widgets/member_tile.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../domain/groups/group_chat_model.dart';

class MessageInfoPage extends StatefulWidget {
  final MessageSelectModel messsage;
  final String groupId;
  final GroupChatRoomModel groupChatRoomModel;
  const MessageInfoPage(
      {Key? key, required this.messsage, required this.groupId, required this.groupChatRoomModel})
      : super(key: key);

  @override
  _MessageInfoPageState createState() => _MessageInfoPageState();
}

class _MessageInfoPageState extends State<MessageInfoPage> {
  @override
  Widget build(BuildContext context) {
    final isReadAll = true;
    final isDellAll = true;
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, gState) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            final isSendByMe = true;
            return BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingState) {
                return Container(
                  decoration:
                      settingState.chatBackgroundWallpaper == Wallpaper.image
                          ? BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(
                                  File(settingState.chatBackgroundImage),
                                ),
                                fit: BoxFit.cover,
                              ),
                            )
                          : BoxDecoration(
                              color:context.read<SettingsBloc>().state.appThemeMode ==
                                  ThemeMode.dark
                                  ? Colors.grey.shade800
                                  : settingState.chatBackgroundColor,
                            ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      centerTitle: false,
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      iconTheme: IconThemeData(
                         ),
                      title: Text(
                        "Message info",

                      ),
                    ),
                    body: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18.0,
                            vertical: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: isSendByMe
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                            children: [
                              GetMessageWidget.getMessageWidget(
                                false,
                                widget.messsage,
                                BorderRadius.circular(7),
                                state.signedInUser,
                                null,
                                widget.messsage.documentId.toString(),
                                widget.groupId,
                                "",
                                true,
                              )
                            ],
                          ),
                        ),
                        Container(
                          color:context.read<SettingsBloc>().state.appThemeMode ==
                              ThemeMode.dark
                              ? Colors.grey.shade800
                              : Colors.grey.shade100,
                          constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Card(
                            elevation: 2.0,
                            child: StreamBuilder<DatabaseEvent>(
                              stream: FirebaseDatabase.instance
                                  .ref()
                                  .child('chatApp')
                                  .child('groups_chat_read')
                                  .child(widget.groupId)
                                  .child(widget.messsage.documentId.toString())
                                  .onValue,
                              builder: (context, snapshot) {
                                List<Map<String,dynamic>> seenByUsers = [];
                                List<Map<String,dynamic>> deliveredToUsers = [];
                                // if (snapshot.hasData) {
                                //   final _list = snapshot.data!.snapshot.children.where((element) => element.key!=Getters.getCurrentUserUid()).toList();
                                //   // ignore: avoid_dynamic_calls
                                //   //seenByUsers = _list.where((element) => jsonDecode(element.value.toString())['isSeen']==true).toList();
                                //   // ignore: avoid_dynamic_calls
                                //   //deliveredToUsers = _list.where((element) => jsonDecode(element.value.toString())['isSeen']==false).toList();
                                // }
                                // ignore: prefer_final_locals
                                // deliveredToUsers = widget.messsage.messageModel.deliveredToInGroup.where((element){
                                //   if(gState.group.users.contains(element))
                                // }).toList();
                                List<KahoChatUser> allGroupMembers = widget.groupChatRoomModel.userDetails+widget.groupChatRoomModel.otherAdmins+[widget.groupChatRoomModel.adminUser];

                                //check which users has received the message
                                for(final dynamic deliveredToUser in widget.messsage.messageModel?.deliveredToInGroup??[]){
                                  for(final groupUser in allGroupMembers){
                                    if(groupUser.uid == deliveredToUser['uid']){
                                      deliveredToUsers.add({"user" : groupUser, "time" : deliveredToUser['time']});
                                    }
                                  }
                                }

                                for(final dynamic seenByUser in widget.messsage.messageModel?.seenByInGroup??[]){
                                  for(final groupUser in allGroupMembers){
                                    if(groupUser.uid == seenByUser['uid']){
                                      seenByUsers.add({"user" : groupUser, "time" : seenByUser['time']});
                                    }
                                  }
                                }

                                int seenByRemaining = gState.group.users.length - seenByUsers.length -1;
                                // ignore: prefer_final_locals
                                int deliveredToRemaining = gState.group.users.length - deliveredToUsers.length -1;
                                return ListView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                           Text(
                                            "Seen by",
                                            style: TextStyle(
                                              color:context.read<SettingsBloc>().state.appThemeMode ==
                                                  ThemeMode.dark
                                                  ? Colors.grey.shade400
                                                  : Kolors.primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          if (isReadAll)
                                             Icon(MdiIcons.checkAll, color:context.read<SettingsBloc>().state.appThemeMode ==
                                                ThemeMode.dark
                                                ? Colors.white
                                                : Colors.black, size: 20)
                                          else
                                             Icon(MdiIcons.checkAll, color:context.read<SettingsBloc>().state.appThemeMode ==
                                                 ThemeMode.dark
                                                 ? Colors.white
                                                 : Colors.grey, size: 20)
                                        ],
                                      ),
                                    ),
                                    ListView.builder(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      itemCount: seenByUsers.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        // ignore: avoid_dynamic_calls
                                        //final val = jsonDecode(seenByUsers[index].value.toString());
                                        return MemberTileReadUnread(
                                          member: seenByUsers[index]['user'] as KahoChatUser,
                                          isRead: true,
                                          // ignore: avoid_dynamic_calls
                                          time: DateTime.fromMillisecondsSinceEpoch((seenByUsers[index]['time'] as Timestamp).millisecondsSinceEpoch),
                                        );
                                      },
                                    ),
                                    const Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    if(seenByRemaining != 0) 
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                        child: Text("$seenByRemaining remaining"),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                           Text(
                                            "Delivered to",
                                            style: TextStyle(
                                              color:context.read<SettingsBloc>().state.appThemeMode ==
                                                  ThemeMode.dark
                                                  ? Colors.grey.shade400
                                                  : Kolors.primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          if (isDellAll)
                                             Icon(MdiIcons.check,
                                                color:context.read<SettingsBloc>().state.appThemeMode ==
                                                    ThemeMode.dark
                                                    ? Colors.white
                                                    : Colors.black, size: 20)
                                          else
                                             Icon(MdiIcons.check,
                                                color:context.read<SettingsBloc>().state.appThemeMode ==
                                                    ThemeMode.dark
                                                    ? Colors.white
                                                    : Colors.grey, size: 20)
                                        ],
                                      ),
                                    ),
                                    ListView.builder(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      itemCount: deliveredToUsers.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                       //final val = jsonDecode(deliveredToUsers[index].value.toString());
                                        return MemberTileReadUnread(
                                          member: deliveredToUsers[index]['user'] as KahoChatUser,
                                          isRead: true,
                                          // ignore: avoid_dynamic_calls
                                          time: DateTime.fromMillisecondsSinceEpoch((deliveredToUsers[index]['time'] as Timestamp).millisecondsSinceEpoch),
                                        );
                                      },
                                    ),
                                    const Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                      child: Text("$deliveredToRemaining remaining"),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
