// ignore_for_file: avoid_bool_literals_in_conditional_expressions, cast_nullable_to_non_nullable, prefer_typing_uninitialized_variables

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chat_select/chat_select_bloc.dart';
import 'package:flutter_template/application/groups/group_select_model.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:intl/intl.dart';

import 'package:flutter_template/domain/core/enums.dart';

class GroupsPage extends StatefulWidget {
  final hideNav;
  const GroupsPage({Key? key, this.hideNav}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupsPage> {
  bool isSearching = false;
  final List<dynamic> _searchResult = [];
  int _groupLimit = 15;
  int groupListLength = 0;
  ScrollController controller = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    getTotalGroupLength();
    controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _isLoading = false;
    //enableCapture();
    _groupLimit = 15;
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  Future getTotalGroupLength() async {
    final getChatList = await FirebaseFirestore.instance.groupCollection
        .where('users', arrayContains: Getters.getCurrentUserUid())
        .get();
    print(getChatList.docs.length);
    groupListLength = getChatList.docs.length;
  }

  void _scrollListener() async {
    print(controller.position.maxScrollExtent);
    if (controller.position.pixels >=
        controller.position.maxScrollExtent - 50) {
      if (_groupLimit < groupListLength) {
        setState(() {
          _isLoading = true;
          _groupLimit = _groupLimit + 20;
        });
      }
    }
  }

  // ignore: type_annotate_public_apis
  bool checkPinned(snapshot) {
    final _data = snapshot['pinned_user'];
    if (_data != null) {
      return (_data as List).contains(Getters.getCurrentUserUid());
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return BlocBuilder<ChatSelectBloc, ChatSelectState>(
      builder: (context, state) {
        return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, settingState) {
          return StreamBuilder(
            stream: FirebaseFirestore.instance.groupCollection
                .limit(_groupLimit)
                .where('users', arrayContains: Getters.getCurrentUserUid())
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (_isLoading) {
                _isLoading = false;
              }
              if (snapshot.hasData) {
                final sortedList1 = snapshot.data!.docs
                    .where(
                      (element) =>
                          (element.data() as Map)['pinned_user'] != null
                              ? ((element.data() as Map)['pinned_user'] as List)
                                  .contains(Getters.getCurrentUserUid())
                              : false,
                    )
                    .toList();
                final sortedList2 = snapshot.data!.docs
                    .where(
                      (element) => (element.data() as Map)['pinned_user'] !=
                              null
                          ? !((element.data() as Map)['pinned_user'] as List)
                              .contains(Getters.getCurrentUserUid())
                          : true,
                    )
                    .toList();
                final sortedList = sortedList1 + sortedList2;

                //print(sortedList.first.data().toJson());
                return ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Center(
                      child: Container(
                        height: 60,
                        color: Theme.of(context).backgroundColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: FutureBuilder(
                            future: Getters.getTranslation(
                                languageCode: 'en',
                                text: "Search for groups..."),
                            builder: (context, gSnapshot) {
                              return TextField(
                                onChanged: (value) {
                                  _searchResult.clear();

                                  if (value != '') {
                                    setState(() {
                                      isSearching = true;
                                    });
                                    for (final element in snapshot.data!.docs) {
                                      final groupChat =
                                          GroupChatRoomModel.fromMap(
                                        element.data() as Map<String, dynamic>,
                                      );

                                      // final chat = ChatModel.fromMap(
                                      //   element.data() as Map<String, dynamic>,
                                      // );
                                      // final peerUser =
                                      //     chat.user1.uid == Getters.getCurrentUserUid()
                                      //         ? chat.user2
                                      //         : chat.user1;
                                      // final myUser =
                                      //     chat.user1.uid == Getters.getCurrentUserUid()
                                      //         ? chat.user1
                                      //         : chat.user2;

                                      if (groupChat.name
                                          .toLowerCase()
                                          .contains(value)) {
                                        _searchResult.add(element);
                                      }
                                    }
                                  } else {
                                    setState(() {
                                      isSearching = false;
                                    });
                                  }
                                },
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 10),
                                  // fillColor:Theme.of(context).bod,
                                  hintText: !gSnapshot.hasData
                                      ? "Search for groups..."
                                      : gSnapshot.data! as String,
                                  fillColor: settingState.appThemeMode ==
                                          ThemeMode.dark
                                      ? Colors.grey.withOpacity(.3)
                                      : const Color(0xffDCDCDC),
                                  // hintText: "Search messages, people...",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: settingState.appThemeMode ==
                                            ThemeMode.dark
                                        ? Colors.grey
                                        : const Color(0xff696969),
                                  ),
                                  hintStyle: TextStyle(
                                    color: settingState.appThemeMode ==
                                            ThemeMode.dark
                                        ? Colors.grey
                                        : const Color(0xff696969),
                                  ),
                                ),
                                style: TextStyle(
                                  color: settingState.appThemeMode ==
                                          ThemeMode.dark
                                      ? Colors.grey
                                      : Colors.grey.shade800,
                                ),
                              );
                            }),
                      ),
                    ),
                    if (sortedList1.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 12),
                        child: Text(
                          context
                              .read<SettingsBloc>()
                              .state
                              .languageData
                              .pinned,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    if (isSearching)
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        //physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (_searchResult.isNotEmpty) {
                            final groupChat = GroupChatRoomModel.fromMap(
                              _searchResult[index].data()
                                  as Map<String, dynamic>,
                            );
                            return FutureBuilder<QuerySnapshot<Object?>>(
                              future: FirebaseFirestore.instance.groupCollection
                                  .doc(sortedList[index].id)
                                  .messagesCollection
                                  .getSavy(),
                              builder: (context, messagesSnap) {
                                var unRead = 0;
                                if (messagesSnap.hasData) {
                                  unRead = messagesSnap.data!.docs.length;
                                }

                                return groupListTile(
                                  state,
                                  index,
                                  groupChat,
                                  snapshot,
                                  sortedList,
                                  context,
                                  unRead,
                                );
                              },
                            );
                          } else {
                            return SizedBox(
                              child: Row(
                                children: [
                                  const CustomCircleAvatar(
                                    name: 'N O',
                                    color: '',
                                    profilePictureUrl:
                                        AppConstants.dummyProfilePictureUrl,
                                  ),
                                  const SizedBoxW10(),
                                  Text(
                                    context
                                        .read<SettingsBloc>()
                                        .state
                                        .languageData
                                        .groupNotFound,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              // leading:
                              // title: Text("Group Not Found"),
                            );
                          }
                        },
                        separatorBuilder: (_, __) => const SizedBoxH10(),
                        itemCount: sortedList.length,
                      )
                    else
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        //physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final groupChat = GroupChatRoomModel.fromMap(
                            sortedList[index].data() as Map<String, dynamic>,
                          );
                          print("Group id-->${sortedList[index].id}");
                          return StreamBuilder<QuerySnapshot<Object?>>(
                            stream: FirebaseFirestore.instance.groupCollection
                                .doc(sortedList[index].id)
                                .messagesCollection
                                .where('isNotSeenByUsers',
                                arrayContains: Getters.getCurrentUserUid())
                                .snapshots(),
                            builder: (context, messagesSnap) {
                              var unRead = 0;
                              if (messagesSnap.hasData) {
                                unRead = messagesSnap.data!.docs.length;
                                print("unread messages-->${unRead}");
                              }
                              return groupListTile(
                                state,
                                index,
                                groupChat,
                                snapshot,
                                sortedList,
                                context,
                                unRead,
                              );
                            },
                          );
                        },
                        separatorBuilder: (_, __) => const SizedBoxH10(),
                        itemCount: sortedList.length,
                      ),
                    if (_isLoading)
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const CircularProgressIndicator(
                              color: Kolors.primary,
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              } else {
                return const Align(child: CircularProgressIndicator());
              }
            },
          );
        });
      },
    );
  }

  GestureDetector groupListTile(
      ChatSelectState state,
      int index,
      GroupChatRoomModel groupChat,
      AsyncSnapshot<QuerySnapshot<Object?>> snapshot,
      List<QueryDocumentSnapshot<Object?>> sortedList,
      BuildContext context,
      int unRead) {
    context
        .read<GroupsBloc>()
        .add(GroupsEvent.deliverMessagesListner(groupId: sortedList[index].id));
    return GestureDetector(
      onLongPressStart: (details) {
        HapticFeedback.vibrate();
        state.selectedGroups[index] = GroupSelectModel(
          groupModel: groupChat,
          index: index,
          documentId: snapshot.data!.docs[index].id,
        );
        setState(() {});
        _showPopupMenu(
          details.globalPosition,
          sortedList[index],
          state,
        );
      },
      onTap: () {
        if (state.selectedGroups[index] != null) {
          state.selectedGroups.remove(index);
          setState(() {});
        } else {
          hiveBox.delete(sortedList[index].id);
          setState(() {});
          context.read<GroupsBloc>().add(GroupsEvent.setGroup(groupChat));
          AutoRouter.of(context).push(
            GroupChattingRoute(
              groupUid: snapshot.data!.docs[index].id,
            ),
          );
        }
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            if (state.isAppSelectionbarEnable && state.selectGroup)
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                value: state.selectedGroups[index] != null,
                onChanged: (v) {
                  if (state.selectedGroups[index] == null) {
                    state.selectedGroupIDList
                        .addAll({index: sortedList[index].id});
                    state.selectedGroups.addAll({
                      index: GroupSelectModel(
                        groupModel: groupChat,
                        index: index,
                        documentId: snapshot.data!.docs[index].id,
                      )
                    });
                    widget.hideNav([]);
                  } else {
                    state.selectedGroups.remove(index);
                    state.selectedGroupIDList.remove(index);
                    widget.hideNav([]);
                  }
                },
              ),
            CustomCircleAvatar(
              name: groupChat.name,
              profilePictureUrl: groupChat.groupImageUrl,
              color: groupChat.groupColor,
            ),
            const SizedBoxW15(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    groupChat.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                  // Text(
                  //   groupChat.lastMessage.text,
                  //   style: const TextStyle(
                  //     color: Kolors.grey,
                  //   ),
                  // ),
                  if(groupChat.lastMessage!=null)
                  Row(
                    children: [
                      // if (unRead == 0)
                      //   const Icon(
                      //     MdiIcons.checkAll,
                      //     // color: Colors.black,
                      //     size: 14,
                      //   )
                      // else
                      //   const Icon(
                      //     MdiIcons.check,
                      //     // color: Colors.black,
                      //     size: 14,
                      //   ),
                      Text(
                        "${groupChat.lastMessage!.sender.name} : ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      if (groupChat.lastMessage!.type == MessageType.text)
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width - 280,
                          ),
                          child: Text(
                            groupChat.lastMessage?.text??"-",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        )
                      else if (groupChat.lastMessage!.type == MessageType.image)
                        Row(
                          children: [
                            const Icon(Icons.image_outlined),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .image),
                          ],
                        )
                      else if (groupChat.lastMessage!.type == MessageType.audio)
                        Row(
                          children: [
                            const Icon(Icons.audiotrack_outlined),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .audio),
                          ],
                        )
                      else if (groupChat.lastMessage!.type == MessageType.file)
                        Row(
                          children: [
                            const Icon(Icons.file_copy_outlined),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .file),
                          ],
                        )
                      else
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: 200,
                              ),
                              child: Text(
                                groupChat.lastMessage!.text,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
            if(groupChat.lastMessage!=null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  DateFormat(DateFormat.HOUR_MINUTE).format(
                    groupChat.lastMessage!.timeOfSending.toDate(),
                  ),
                  style: const TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (unRead != 0)
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Kolors.primary,
                        child: Text(
                          "$unRead",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    if (hiveBox.get(sortedList[index].id) != null &&
                        unRead == 0)
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor: Kolors.darkBlue,
                      ),
                    if (checkPinned(
                      sortedList[index].data() as Map<String, dynamic>,
                    ))
                      const Icon(
                        CupertinoIcons.pin,
                        size: 15,
                      )
                    else
                      const SizedBox(
                        width: 15,
                        height: 15,
                      )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showPopupMenu(
    Offset offset,
    DocumentSnapshot doc,
    ChatSelectState state,
  ) async {
    final double left = offset.dx;
    final double top = offset.dy;
    await showMenu(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      position: RelativeRect.fromLTRB(28, top + 35, left, 0),
      items: [
        PopupMenuItem(
          onTap: () {
            if (hiveBox.get(doc.id) != null) {
              hiveBox.delete(doc.id);
              setState(() {});
            } else {
              hiveBox.put(doc.id, true);
              setState(() {});
            }
            state.selectedGroups.removeWhere((key, value) => true);
            widget.hideNav([]);
            setState(() {});
          },
          child: Row(
            children: [
              const Icon(CupertinoIcons.conversation_bubble),
              const SizedBox(width: 10),
              Text(
                hiveBox.get(doc.id) != null
                    ? context.read<SettingsBloc>().state.languageData.read
                    : context.read<SettingsBloc>().state.languageData.unread,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () {
            state.selectedGroups.removeWhere((key, value) => true);
            //widget.hideNav([]);
            final _data = doc.data() as Map;
            final list = (_data['pinned_user'] != null)
                ? (_data['pinned_user'] as List)
                : [];
            if (!checkPinned(_data)) {
              list.add(Getters.getCurrentUserUid());
              FirebaseFirestore.instance.groupCollection
                  .doc(doc.id)
                  .update({"pinned_user": list});
            } else {
              list.remove(Getters.getCurrentUserUid());
              FirebaseFirestore.instance.groupCollection
                  .doc(doc.id)
                  .update({"pinned_user": list});
            }
            setState(() {});
          },
          child: checkPinned(doc.data() as Map)
              ? Row(
                  children: [
                    const Icon(CupertinoIcons.pin_slash),
                    const SizedBox(width: 10),
                    Text(context.read<SettingsBloc>().state.languageData.unpin),
                  ],
                )
              : Row(
                  children: [
                    const Icon(CupertinoIcons.pin),
                    const SizedBox(width: 10),
                    Text(context.read<SettingsBloc>().state.languageData.pin),
                  ],
                ),
        ),
        PopupMenuItem(
          onTap: () {
            state.selectedGroups.removeWhere((key, value) => true);
            widget.hideNav([]);
            setState(() {});
            final List<dynamic> muteUsers = context
                .read<UserBloc>()
                .state
                .mutedUsersOrGroups
                .muteNotification;
            print(doc.id);
            if (context
                .read<UserBloc>()
                .state
                .mutedUsersOrGroups
                .muteNotification
                .contains(doc.id)) {
              muteUsers.remove(doc.id);
              context.read<UserBloc>().add(
                    UserEvent.createOrUpdateMuteUserGroupNotification(
                      mutedMotification: context
                          .read<UserBloc>()
                          .state
                          .mutedUsersOrGroups
                          .copyWith(
                            muteNotification: muteUsers,
                          ),
                    ),
                  );
            } else {
              muteUsers.add(doc.id);
              context.read<UserBloc>().add(
                    UserEvent.createOrUpdateMuteUserGroupNotification(
                      mutedMotification: context
                          .read<UserBloc>()
                          .state
                          .mutedUsersOrGroups
                          .copyWith(
                            muteNotification: muteUsers,
                          ),
                    ),
                  );
            }
          },
          child: Row(
            children: [
              Icon(context
                      .read<UserBloc>()
                      .state
                      .mutedUsersOrGroups
                      .muteNotification
                      .contains(doc.id)
                  ? CupertinoIcons.bell
                  : CupertinoIcons.bell_slash),
              const SizedBox(width: 10),
              Text(context
                      .read<UserBloc>()
                      .state
                      .mutedUsersOrGroups
                      .muteNotification
                      .contains(doc.id)
                  ? context.read<SettingsBloc>().state.languageData.unmute
                  : context.read<SettingsBloc>().state.languageData.mute),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () {
            context
                .read<ChatSelectBloc>()
                .add(ChatSelectEvent.enableSelectionBar(isSelectionBar: true));
            context
                .read<ChatSelectBloc>()
                .add(ChatSelectEvent.groupSelection(group_select: true));
            state.selectedGroupIDList.addAll({0: doc.id});
            widget.hideNav([]);
          },
          child: Row(
            children: [
              const Icon(CupertinoIcons.check_mark_circled),
              const SizedBox(width: 10),
              Text(context.read<SettingsBloc>().state.languageData.select),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () {
            state.selectedGroups.removeWhere((key, value) => true);
            widget.hideNav([]);
            setState(() {});
          },
          child: Row(
            children: [
              const Icon(CupertinoIcons.delete),
              const SizedBox(width: 10),
              Text(context.read<SettingsBloc>().state.languageData.delete),
            ],
          ),
        ),
      ],
      elevation: 8.0,
    );
  }
}
