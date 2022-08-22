// ignore_for_file: avoid_classes_with_only_static_members

import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/circle_avatar_with_icon.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/group_tile.dart';
import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile_checked.dart';

class ForwardFunction {
  // ignore: always_declare_return_types, type_annotate_public_apis
  static showForwardSheet(
      BuildContext context, Map<int, MessageSelectModel> messages) {
    

    
    showFlexibleBottomSheet<void>(
      bottomSheetColor: Colors.transparent,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.all( Radius.circular(20))),
      isCollapsible: true,
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: (context, controller, offset) {

        return _BottomSheet(
          scrollController: controller,
          bottomSheetOffset: offset,
          messages: messages,
        );
      },
      anchors: [0, 0.5, 0.975],
    );
  }
}

class _BottomSheet extends StatefulWidget {
  final ScrollController scrollController;
  final double bottomSheetOffset;
  final Map<int, MessageSelectModel> messages;

  const _BottomSheet({
    required this.scrollController,
    required this.bottomSheetOffset,
    required this.messages,
    Key? key,
  }) : super(key: key);

  @override
  __BottomSheetState createState() => __BottomSheetState();
}

class __BottomSheetState extends State<_BottomSheet> {
  Map<int, KahoChatUser> addedGroupMembers = {};
  Map<String, GroupChatRoomModel> addedGroups = {};

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return ClipRRect(
          // clipBehavior: Clip.hardEdge,
          // margin: const EdgeInsets.only(top: 40),
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),

          child: SafeArea(
            child: Scaffold(
              // backgroundColor: Colors.blue,
              floatingActionButton: FloatingActionButton(
                backgroundColor: Kolors.primary,
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                onPressed: () {
                  addedGroupMembers.forEach((key, peerUser) async {
                    widget.messages.forEach((key, message) async {
                      if (message.messageModel != null) {
                        context.read<ChatsBloc>().add(
                              ChatsEvent.forwardMessage(
                                myUser: state.signedInUser,
                                peerUser: peerUser,
                                message: message.messageModel!,
                              ),
                            );
                      }
                    });
                  });
                  addedGroups.forEach((id, peerUser) async {
                    widget.messages.forEach((key, message) async {
                      if (message.messageModel != null) {
                        context.read<GroupsBloc>().add(
                              GroupsEvent.forwardMessage(
                                myUser: state.signedInUser,
                                groupUid: id,
                                message: message.messageModel!,
                              ),
                            );
                      }
                    });
                  });
                  context.read<MessageSelectBloc>().add(
                        MessageSelectEvent.enableSelectionBar(
                          isSelectionBar: false,
                        ),
                      );
                  context.read<MessageSelectBloc>().add(
                        MessageSelectEvent.enableSearchBar(
                          isSearch: false,
                        ),
                      );
                  context.read<MessageSelectBloc>().add(
                        MessageSelectEvent.changeSearchTextVal(
                          searchText: "",
                        ),
                      );
                  Navigator.pop(context);
                },
              ),
              body: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  controller: widget.scrollController,
                  children: [
                    // Text(
                    //   'position $bottomSheetOffset',
                    //   style: Theme.of(context).textTheme.headline6,
                    // ),
                    SizedBox(
                      height: widget.bottomSheetOffset > 0.50
                          ? MediaQuery.of(context).size.height * 0.975
                          : MediaQuery.of(context).size.height * 0.70,
                      child: ForwardMessagePage(
                        showFloatingButton: false,
                        onSelectChange: (v) {
                          setState(() {
                            addedGroupMembers = v;
                          });
                        },
                        onSelectChangeGroup: (v) {
                          setState(() {
                            addedGroups = v;
                          });
                        },
                        messages: widget.messages,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ForwardMessagePage extends StatefulWidget {
  final Map<int, MessageSelectModel> messages;
  final bool showFloatingButton;
  final ValueChanged<Map<int, KahoChatUser>>? onSelectChange;
  final ValueChanged<Map<String, GroupChatRoomModel>>? onSelectChangeGroup;

  const ForwardMessagePage(
      {Key? key,
      required this.messages,
      this.showFloatingButton = true,
      this.onSelectChange,
      this.onSelectChangeGroup})
      : super(key: key);

  @override
  _ForwardMessagePageState createState() => _ForwardMessagePageState();
}

class _ForwardMessagePageState extends State<ForwardMessagePage> {
  Map<int, KahoChatUser> addedGroupMembers = {};
  Map<String, GroupChatRoomModel> addedGroups = {};
  String _searchKey = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, user) {
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            return SafeScaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                iconTheme: const IconThemeData(
                  color: Colors.black,
                ),
                title: Text(
                  context
                      .read<SettingsBloc>()
                      .state
                      .languageData
                      .selectParticipantsOrGroups,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              floatingActionButton: widget.showFloatingButton
                  ? FloatingActionButton.extended(
                      heroTag: null,
                      onPressed: () async {
                        addedGroupMembers.forEach((key, peerUser) async {
                          widget.messages.forEach((key, message) async {
                            if (message.messageModel != null) {
                              context.read<ChatsBloc>().add(
                                    ChatsEvent.forwardMessage(
                                      myUser: user.signedInUser,
                                      peerUser: peerUser,
                                      message: message.messageModel!,
                                    ),
                                  );
                            }
                          });
                        });
                        addedGroups.forEach((id, peerUser) async {
                          widget.messages.forEach((key, message) async {
                            if (message.messageModel != null) {
                              context.read<GroupsBloc>().add(
                                    GroupsEvent.forwardMessage(
                                      myUser: user.signedInUser,
                                      groupUid: id,
                                      message: message.messageModel!,
                                    ),
                                  );
                            }
                          });
                        });
                        context.read<MessageSelectBloc>().add(
                              MessageSelectEvent.enableSelectionBar(
                                isSelectionBar: false,
                              ),
                            );
                        context.read<MessageSelectBloc>().add(
                              MessageSelectEvent.enableSearchBar(
                                isSearch: false,
                              ),
                            );
                        context.read<MessageSelectBloc>().add(
                              MessageSelectEvent.changeSearchTextVal(
                                searchText: "",
                              ),
                            );
                        Navigator.pop(context);
                      },
                      backgroundColor: Kolors.primary,
                      label: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          context
                              .read<SettingsBloc>()
                              .state
                              .languageData
                              .forwarded,
                        ),
                      ),
                    )
                  : null,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              body: RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<ContactsBloc>()
                      .add(const ContactsEvent.fetchMyContacts());
                },
                child: ListView(
                  shrinkWrap: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10,
                      ),
                      child: FutureBuilder(
                        future: Getters.getTranslation(
                          languageCode: 'en',
                          text: "Search Contacts",
                        ),
                        builder: (context, gSnapshot) {
                          return CupertinoSearchTextField(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 8.0,
                            ),
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
                        },
                      ),
                    ),
                    if (addedGroupMembers.isNotEmpty)
                      Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
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
                                          name: addedGroupMembers[index]!.name,
                                          iconData: Icons.close,
                                          onTap: () {
                                            addedGroupMembers.removeWhere(
                                              (key, value) =>
                                                  value.uid ==
                                                  addedGroupMembers[index]!.uid,
                                            );
                                            setState(() {});
                                          },
                                          profilePictureUrl:
                                              addedGroupMembers[index]!
                                                  .profilePictureUrl,
                                          color: addedGroupMembers[index]!
                                              .userColor,
                                        ),
                                      ),
                                      Text(
                                        addedGroupMembers[index]!.name,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 12,
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
                    StreamBuilder<QuerySnapshot<Object?>>(
                      stream: FirebaseFirestore.instance.groupCollection
                          .where(
                            'users',
                            arrayContains: Getters.getCurrentUserUid(),
                          )
                          .snapshots(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasData) {
                          // ignore: cast_nullable_to_non_nullable
                          var data = snapshot.data!.docs;
                          return ListView.builder(
                            itemCount: data.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              // ignore: cast_nullable_to_non_nullable
                              final member = GroupChatRoomModel.fromMap(
                                data[index].data() as Map<String, dynamic>,
                              );
                              final String uid = data[index].id;
                              return GestureDetector(
                                onTap: () {
                                  if (addedGroups[uid] == null) {
                                    addedGroups[uid] = member;
                                  } else {
                                    addedGroups.remove(uid);
                                  }

                                  setState(() {});
                                  if (widget.onSelectChangeGroup != null) {
                                    widget.onSelectChangeGroup!(addedGroups);
                                  }
                                },
                                child: GroupTile(
                                  member: member,
                                  isChecked: addedGroups[uid] != null,
                                  onChanged: (added) {
                                    if (added) {
                                      addedGroups[uid] = member;
                                    } else {
                                      addedGroups.remove(uid);
                                    }
                                    setState(() {});
                                    if (widget.onSelectChangeGroup != null) {
                                      widget.onSelectChangeGroup!(addedGroups);
                                    }
                                  },
                                ),
                              );
                            },
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                      itemCount: state.myContacts
                          .where(
                            (element) => element.name
                                .toLowerCase()
                                .startsWith(_searchKey.toLowerCase()),
                          )
                          .toList()
                          .length,
                      shrinkWrap: true,
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
                        return GestureDetector(
                          onTap: () {
                            if (addedGroupMembers[index] == null) {
                              addedGroupMembers[index] = member;
                            } else {
                              addedGroupMembers.remove(index);
                            }
                            setState(() {});
                            if (widget.onSelectChange != null) {
                              widget.onSelectChange!(addedGroupMembers);
                            }
                          },
                          child: MemberTileCheckBox(
                            title: displayNameOrNumber,
                            member: member,
                            isChecked: addedGroupMembers[index] != null,
                            onChanged: (added) {
                              if (added) {
                                addedGroupMembers[index] = member;
                              } else {
                                addedGroupMembers.remove(index);
                              }
                              setState(() {});
                              if (widget.onSelectChange != null) {
                                widget.onSelectChange!(addedGroupMembers);
                              }
                            },
                          ),
                        );
                      },
                    ),
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
