// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/call_log/call_log_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/chat_select/chat_select_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/audio_player.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/calls_page.dart';
import 'package:flutter_template/presentation/base/chats/chats_page.dart';
import 'package:flutter_template/presentation/base/chats/pages/new_chat_page.dart';
import 'package:flutter_template/presentation/base/chats/pages/new_chat_page_2.dart';
import 'package:flutter_template/presentation/base/groups/groups_page.dart';
import 'package:flutter_template/presentation/base/stories/stories_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_main.dart';
import 'package:flutter_template/presentation/core/widgets/on_call_app_bar.dart';
import 'package:flutter_template/presentation/drawer/custom_drawer.dart';
import 'package:flutter_template/presentation/drawer/new_group/pages/select_members_page.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BasePageContents extends StatefulWidget {
  final int selectedIndex;

  const BasePageContents({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  _BasePageContentsState createState() => _BasePageContentsState();
}

class _BasePageContentsState extends State<BasePageContents>
    with SingleTickerProviderStateMixin {
  late PageController _controller;
  late int currentIndex;

  // bnr in english
  // String chatsStringE = "Chats";
  // String groupsStringE = "Groups";
  // String searchStringE = "Search";
  // String callsStringE = "Calls";
  // String storiesStringE = "Stories";

  // bottom nav bar Strings
  // String chatsString = "Chats";
  // String groupsString = "Groups";
  // String searchString = "Search";
  // String callsString = "Calls";
  // String storiesString = "Stories";

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
    _controller = PageController(initialPage: widget.selectedIndex)
      ..addListener(_valueChanged);

    requestToUseNotification(context);
    initDynamicLink(context);
  }

  void _valueChanged() => setState(() {});

  // Future translate() async {
  //   print("translate has been called");

  //   final azlang = context.read<SettingsBloc>().state.azureLang;
  //   if (azlang == "hi") {
  //     // this is because azure translates chats to cats in hindi
  //     chatsString = "चैट";
  //   } else {
  //     chatsString =
  //         await Getters.getTranslation(languageCode: 'en', text: chatsStringE);
  //   }
  //   groupsString =
  //       await Getters.getTranslation(languageCode: 'en', text: groupsStringE);
  //   searchString =
  //       await Getters.getTranslation(languageCode: 'en', text: searchStringE);
  //   callsString =
  //       await Getters.getTranslation(languageCode: 'en', text: callsStringE);
  //   storiesString =
  //       await Getters.getTranslation(languageCode: 'en', text: storiesStringE);

  //   setState(() {
  //     chatsString = chatsString;
  //     groupsString = groupsString;
  //     searchString = searchString;
  //     callsString = callsString;
  //     storiesString = storiesString;
  //   });
  // }

  // @override
  void dispose() {
    // ? CHECK THIS LINE
    _controller.removeListener(_valueChanged);
    _controller.dispose();
    super.dispose();
  }

  bool checkPinned(snapshot, peerUserUid) {
    var _data = snapshot;
    if (_data != null) {
      return (_data as List).contains(peerUserUid);
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<CallLogBloc>().add(const CallLogEvent.deSelectAll());
    context.read<StoriesBloc>().add(StoriesEvent.getCurrentUserStory());
    return BlocConsumer<ChatSelectBloc, ChatSelectState>(
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) {
        return BlocBuilder<CallsBloc, CallsState>(
          builder: (context, callState) {
            if (callState.currentRoomDetails.currentCall.status.toString() ==
                CallStatus.answered.toString()) {
              AppAudioPlayer.stopDialerTone();
            }

            return SafeScaffold(
              appBar: currentIndex == 4 || currentIndex == 2
                  ? null
                  : !(state.isAppSelectionbarEnable || state.selectGroup)
                      ? callState.currentRoomDetails.currentCall.participants
                              .isEmpty
                          ? AppBarMain()
                          : !callState
                                  .currentRoomDetails.currentCall.participants
                                  .firstWhere(
                                    (element) =>
                                        element.participant.uid ==
                                        Getters.getCurrentUserUid(),
                                  )
                                  .isActive
                              ? AppBarMain()
                              : OnCallAppBar() as PreferredSizeWidget
                      : AppBar(
                          backgroundColor: Colors.white,
                          titleSpacing: 5,
                          leading: IconButton(
                            icon: const Icon(Icons.close, color: Colors.black),
                            onPressed: () {
                              context.read<ChatSelectBloc>().add(
                                    ChatSelectEvent.enableSelectionBar(
                                      isSelectionBar: false,
                                    ),
                                  );
                              context.read<ChatSelectBloc>().add(
                                    ChatSelectEvent.groupSelection(
                                      group_select: false,
                                    ),
                                  );
                              state.selectedGroupIDList.clear();
                              state.selectedGroups.clear();
                              state.selectedIDList.clear();
                              state.selectedIndexList.clear();
                            },
                          ),
                          title: Text(
                              "${state.selectGroup ? state.selectedGroups.length : state.selectedIndexList.length}  Selected",
                              style: const TextStyle(color: Colors.black)),
                          centerTitle: false,
                        ),
              drawer: CustomDrawer(),
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                onPageChanged: (newIndex) {
                  if (newIndex == 0) {
                    context
                        .read<ChatSelectBloc>()
                        .add(ChatSelectEvent.showFabAction(showFabVal: true));
                  } else {
                    context
                        .read<ChatSelectBloc>()
                        .add(ChatSelectEvent.showFabAction(showFabVal: false));
                  }

                  setState(() {
                    currentIndex = newIndex;
                  });
                },
                children: [
                  ChatsPage(hidNav: (v) {
                    setState(() {});
                  }),
                  GroupsPage(hideNav: (v) {
                    setState(() {});
                  }),
                  const NewChatPage(),
                  const CallsPage(),
                  const StoriesPage(),
                ],
              ),
              //     floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     AppAudioPlayer.stopRingtone();
              //   },
              // ),
              //    floatingActionButton: FloatingActionButton(
              // onPressed: () async {
              //   await AwesomeNotifications().createNotification(
              //     content: NotificationContent(
              //       summary: "You",
              //       // largeIcon: KahoChatUser.fromJson(myUser).profilePictureUrl,
              //       autoDismissible: false,
              //       locked: true,
              //       id: 1,
              //       channelKey: 'calls',
              //       title: "user",
              //       body: "content",
              //       displayOnForeground: true,
              //       displayOnBackground: true,
              //       notificationLayout: NotificationLayout.Default,
              //       // payload: {'myUser': myUser, "typeOfCall": typeOfCall},
              //     ),
              //     actionButtons: [
              //       NotificationActionButton(
              //         label: "Answer",
              //         key: "answer",
              //       ),
              //       NotificationActionButton(
              //         label: "Decline",
              //         key: "decline",
              //         // buttonType: ActionButtonType.KeepOnTop,
              //       ),
              //     ],
              //   );
              // },
              //   child: Icon(Icons.add),
              // ),
              bottomNavigationBar: !(state.isAppSelectionbarEnable ||
                      state.selectGroup)
                  ? BlocConsumer<SettingsBloc, SettingsState>(
                      listener: (context, settingsState) {
                      print("Settings listener has been called from base page");
                    }, builder: (context, settingsState) {
                      print("Settings state has changed in base page");
                      return Container(
                        // padding: const EdgeInsets.only(top:6.0),
                        decoration: const BoxDecoration(
                            // color: Colors.white,
                            // border: Border(top: BorderSide(color: Colors.grey.shade300)),
                            ),
                        child: CupertinoTabBar(
                          border:
                              Border.all(width: 0.0, color: Colors.transparent),
                          // elevation: 20,
                          //type: BottomNavigationBarType.fixed,
                          activeColor:
                              context.read<SettingsBloc>().state.appThemeMode ==
                                      ThemeMode.dark
                                  ? Colors.white54
                                  : Kolors.primary,
                          // backgroundColor: Colors.white,
                          inactiveColor: Colors.grey.shade700,
                          currentIndex: currentIndex,
                          //selectedItemColor: Kolors.primary,
                          onTap: (index) {
                            if (index != 2) {
                              setState(() {
                                currentIndex = index;
                                _controller.animateToPage(
                                  currentIndex,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeIn,
                                );
                              });
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NewChatPage()));
                            }
                          },
                          items: [
                            BottomNavigationBarItem(
                              label: settingsState.languageData.chats,
                              icon: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('counts')
                                      .doc(Getters.getCurrentUserUid())
                                      .collection('chats')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    var count = 0;
                                    if (!snapshot.hasData &&
                                        snapshot.data == null) {
                                      return Icon(Icons.email_outlined);
                                    } else {
                                      count = snapshot.data!.docs.length;
                                      return count == 0
                                          ? Icon(
                                              Icons.email_outlined,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      360
                                                  ? 24
                                                  : null,
                                            )
                                          : Stack(
                                              // overflow: Overflow.visible,
                                              children: [
                                                Icon(
                                                  Icons.email_outlined,
                                                  size: MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          360
                                                      ? 24
                                                      : null,
                                                ),
                                                Positioned(
                                                  right: -2,
                                                  top: -3,
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                        color: Kolors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      count.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                    }
                                  }),
                              activeIcon: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('counts')
                                      .doc(Getters.getCurrentUserUid())
                                      .collection('chats')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    var count = 0;
                                    if (!snapshot.hasData &&
                                        snapshot.data == null) {
                                      return Icon(Icons.email,
                                          size: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  360
                                              ? 24
                                              : null,
                                          color: context
                                                      .read<SettingsBloc>()
                                                      .state
                                                      .appThemeMode ==
                                                  ThemeMode.dark
                                              ? Colors.white54
                                              : null);
                                    } else {
                                      count = snapshot.data!.docs.length;
                                      return count == 0
                                          ? Icon(Icons.email,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      360
                                                  ? 24
                                                  : null,
                                              color: context
                                                          .read<SettingsBloc>()
                                                          .state
                                                          .appThemeMode ==
                                                      ThemeMode.dark
                                                  ? Colors.white54
                                                  : null)
                                          : Stack(
                                              // overflow: Overflow.visible,
                                              children: [
                                                Icon(Icons.email,
                                                    size: MediaQuery.of(context)
                                                                .size
                                                                .width <
                                                            360
                                                        ? 24
                                                        : null,
                                                    color: context
                                                                .read<
                                                                    SettingsBloc>()
                                                                .state
                                                                .appThemeMode ==
                                                            ThemeMode.dark
                                                        ? Colors.white54
                                                        : null),
                                                Positioned(
                                                  right: -2,
                                                  top: -3,
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                        color: Kolors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      count.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                    }
                                  }),
                            ),
                            BottomNavigationBarItem(
                              label: settingsState.languageData.groups,
                              icon: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('counts')
                                      .doc(Getters.getCurrentUserUid())
                                      .collection('group')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    var count = 0;
                                    if (!snapshot.hasData &&
                                        snapshot.data == null) {
                                      return Icon(
                                        Icons.group_outlined,
                                        size:
                                            MediaQuery.of(context).size.width <
                                                    360
                                                ? 24
                                                : null,
                                      );
                                    } else {
                                      count = snapshot.data!.docs.length;
                                      return count == 0
                                          ? Icon(
                                              Icons.group_outlined,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      360
                                                  ? 24
                                                  : null,
                                            )
                                          : Stack(
                                              // overflow: Overflow.visible,
                                              children: [
                                                Icon(
                                                  Icons.group_outlined,
                                                  size: MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          360
                                                      ? 24
                                                      : null,
                                                ),
                                                Positioned(
                                                  right: -2,
                                                  top: -3,
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                        color: Kolors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      count.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                    }
                                  }),
                              activeIcon: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('counts')
                                      .doc(Getters.getCurrentUserUid())
                                      .collection('group')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    var count = 0;
                                    if (!snapshot.hasData &&
                                        snapshot.data == null) {
                                      return Icon(
                                        Icons.group,
                                        size:
                                            MediaQuery.of(context).size.width <
                                                    360
                                                ? 24
                                                : null,
                                      );
                                    } else {
                                      count = snapshot.data!.docs.length;
                                      return count == 0
                                          ? Icon(
                                              Icons.group,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      360
                                                  ? 24
                                                  : null,
                                            )
                                          : Stack(
                                              // overflow: Overflow.visible,
                                              children: [
                                                Icon(
                                                  Icons.group,
                                                  size: MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          360
                                                      ? 24
                                                      : null,
                                                ),
                                                Positioned(
                                                  right: -2,
                                                  top: -3,
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                        color: Kolors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "",
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                    }
                                  }),
                            ),
                            BottomNavigationBarItem(
                              label: settingsState.languageData.search,
                              icon: Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.person_add_outlined,
                                  size: MediaQuery.of(context).size.width < 360
                                      ? 24
                                      : null,
                                ),
                              ),
                              activeIcon: Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.person_add,
                                  size: MediaQuery.of(context).size.width < 360
                                      ? 24
                                      : null,
                                ),
                              ),
                            ),
                            BottomNavigationBarItem(
                              label: settingsState.languageData.calls,
                              icon: Icon(
                                Icons.call_outlined,
                                size: MediaQuery.of(context).size.width < 360
                                    ? 24
                                    : null,
                              ),
                              activeIcon: Icon(
                                Icons.call,
                                size: MediaQuery.of(context).size.width < 360
                                    ? 24
                                    : null,
                              ),
                            ),
                            // BottomNavigationBarItem(
                            //   label: storiesString,
                            //   icon: Icon(Icons.add_circle_outline),
                            //   activeIcon: Icon(Icons.add_circle),
                            // ),
                            BottomNavigationBarItem(
                              label: settingsState.languageData.stories,
                              icon: StreamBuilder<DocumentSnapshot>(
                                  stream: FirebaseFirestore
                                      .instance.storiesCollection
                                      .doc(Getters.getCurrentUserUid())
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    int count = 0;
                                    var storySeenCount = 0;
                                    if (!snapshot.hasData &&
                                        snapshot.data == null) {
                                      return Icon(
                                        Icons.add_circle_outline,
                                        size:
                                            MediaQuery.of(context).size.width <
                                                    360
                                                ? 24
                                                : null,
                                      );
                                    } else {
                                      final StoriesModel userStories =
                                          StoriesModel.fromMap(snapshot.data!
                                              .data() as Map<String, dynamic>);
                                      storySeenCount =
                                          userStories.unseenStories;
                                      count = storySeenCount;
                                      return count == 0 ||
                                              storySeenCount == null
                                          ? Icon(
                                              Icons.add_circle_outline,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      360
                                                  ? 24
                                                  : null,
                                            )
                                          : Stack(
                                              // overflow: Overflow.visible,
                                              children: [
                                                Icon(
                                                  Icons.add_circle_outline,
                                                  size: MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          360
                                                      ? 24
                                                      : null,
                                                ),
                                                Positioned(
                                                  right: -2,
                                                  top: -3,
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                        color: Kolors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      count.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                    }
                                  }),
                              activeIcon: StreamBuilder<DocumentSnapshot>(
                                  stream: FirebaseFirestore
                                      .instance.storiesCollection
                                      .doc(Getters.getCurrentUserUid())
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    int count = 0;
                                    var storySeenCount = 0;
                                    if (!snapshot.hasData &&
                                        snapshot.data == null) {
                                      return Icon(
                                        Icons.add_circle_outline,
                                        size:
                                            MediaQuery.of(context).size.width <
                                                    360
                                                ? 24
                                                : null,
                                      );
                                    } else {
                                      final StoriesModel userStories =
                                          StoriesModel.fromMap(snapshot.data!
                                              .data() as Map<String, dynamic>);
                                      storySeenCount =
                                          userStories.unseenStories;
                                      count = storySeenCount;
                                      return count == 0
                                          ? Icon(
                                              Icons.add_circle_outline,
                                              size: MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      360
                                                  ? 24
                                                  : null,
                                            )
                                          : Stack(
                                              // overflow: Overflow.visible,
                                              children: [
                                                Icon(
                                                  Icons.add_circle_outline,
                                                  size: MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          360
                                                      ? 24
                                                      : null,
                                                ),
                                                Positioned(
                                                  right: -2,
                                                  top: -3,
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                        color: Kolors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      count.toString(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                    }
                                  }),
                            ),
                          ],
                        ),
                      );
                    })
                  : Container(
                      color: Colors.grey.shade200,
                      height: 72,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                padding: EdgeInsets.all(6),
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.conversation_bubble,
                                ),
                              ),
                              Text(
                                  "${context.read<SettingsBloc>().state.languageData.unread}")
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.all(6),
                                  onPressed: () async {
                                    final list = state.selectedIndexList;
                                    for (int i = 0; i <= list.length; i++) {
                                      if (list[i] != null) {
                                        final _list = (list[i]!.pinnedUser !=
                                                null)
                                            // ignore: cast_nullable_to_non_nullable
                                            ? (list[i]!.pinnedUser as List)
                                            : [];
                                        if (!_list.contains(
                                            Getters.getCurrentUserUid())) {
                                          _list
                                              .add(Getters.getCurrentUserUid());
                                          await FirebaseFirestore
                                              .instance.chatCollection
                                              .doc(Getters.getCurrentUserUid())
                                              .chatUsersCollection
                                              .doc(list[i]!.user1.uid)
                                              .update({"pinned_user": _list});
                                        } else {
                                          _list.remove(
                                              Getters.getCurrentUserUid());
                                          await FirebaseFirestore
                                              .instance.chatCollection
                                              .doc(Getters.getCurrentUserUid())
                                              .chatUsersCollection
                                              .doc(list[i]!.user1.uid)
                                              .update({"pinned_user": _list});
                                        }
                                      }
                                    }
                                    setState(() {});
                                  },
                                  icon: const Icon(CupertinoIcons.pin)),
                              Text(
                                  "${context.read<SettingsBloc>().state.languageData.pin}")
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                padding: EdgeInsets.all(6),
                                onPressed: () {
                                  Map<int, String> list;
                                  final List<dynamic> muteUsers = context
                                      .read<UserBloc>()
                                      .state
                                      .mutedUsersOrGroups
                                      .muteNotification;
                                  if (state.selectGroup) {
                                    list = state.selectedGroupIDList;
                                  } else {
                                    list = state.selectedIDList;
                                  }
                                  List unmuteUsers = [];

                                  list.forEach((key, value) {
                                    if (muteUsers.contains(value)) {
                                      unmuteUsers.add(value);
                                    } else {
                                      if (!context
                                          .read<UserBloc>()
                                          .state
                                          .mutedUsersOrGroups
                                          .muteNotification
                                          .contains(value)) {
                                        muteUsers.add(value);
                                      }
                                    }
                                  });
                                  var set1 = Set.from(muteUsers);
                                  var set2 = Set.from(unmuteUsers);
                                  context.read<UserBloc>().add(
                                        UserEvent
                                            .createOrUpdateMuteUserGroupNotification(
                                          mutedMotification: context
                                              .read<UserBloc>()
                                              .state
                                              .mutedUsersOrGroups
                                              .copyWith(
                                                muteNotification: List.from(
                                                    set1.difference(set2)),
                                              ),
                                        ),
                                      );
                                  context.read<ChatSelectBloc>().add(
                                        ChatSelectEvent.enableSelectionBar(
                                          isSelectionBar: false,
                                        ),
                                      );
                                  context.read<ChatSelectBloc>().add(
                                        ChatSelectEvent.groupSelection(
                                          group_select: false,
                                        ),
                                      );
                                },
                                icon: const Icon(CupertinoIcons.bell_slash),
                              ),
                              Text(
                                  "${context.read<SettingsBloc>().state.languageData.toggle}"),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.all(6),
                                  onPressed: () {
                                    final list = state.selectedIndexList;

                                    list.forEach((key, value) {
                                      final peerUser =
                                          Getters.getCurrentUserUid() ==
                                                  value.user1.uid
                                              ? value.user2
                                              : value.user1;
                                      context.read<ChatsBloc>().add(
                                            ChatsEvent.deleteChat(
                                              myUser:
                                                  Getters.getCurrentUserUid(),
                                              peerUser: peerUser.uid,
                                            ),
                                          );
                                    });
                                    state.selectedIndexList
                                        .removeWhere((key, value) => true);
                                    state.selectedIDList
                                        .removeWhere((key, value) => true);
                                    Fluttertoast.showToast(
                                      msg: "Chat Deleted !",
                                      backgroundColor: Kolors.grey,
                                    );
                                  },
                                  icon: const Icon(CupertinoIcons.delete)),
                              Text(
                                  "${context.read<SettingsBloc>().state.languageData.delete}")
                            ],
                          ),
                        ],
                      ),
                    ),
              floatingActionButton: (!(state.isAppSelectionbarEnable ||
                          state.selectGroup)) &&
                      (state.showFab)
                  ? BlocBuilder<SettingsBloc, SettingsState>(
                      builder: (context, state) {
                      return FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewChatPage2()));
                        },
                        backgroundColor:
                            context.read<SettingsBloc>().state.appThemeMode ==
                                    ThemeMode.dark
                                ? Colors.white30
                                : Kolors.primary,
                        child: Icon(Icons.edit_outlined,
                            color: context
                                        .read<SettingsBloc>()
                                        .state
                                        .appThemeMode ==
                                    ThemeMode.dark
                                ? Colors.white
                                : null),
                      );
                    })
                  : (currentIndex == 1)
                      ? BlocBuilder<SettingsBloc, SettingsState>(
                          builder: (context, state) {
                          return FloatingActionButton(
                            heroTag: null,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectMembersPage(),
                                ),
                              );

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const CreateGroupPage(),
                              //   ),
                              // );
                            },
                            backgroundColor:context.read<SettingsBloc>().state.appThemeMode ==
                                ThemeMode.dark
                                ? Colors.white30
                                : Kolors.primary,
                            child: Icon(Icons.group_add_outlined,
                                color: context
                                            .read<SettingsBloc>()
                                            .state
                                            .appThemeMode ==
                                        ThemeMode.dark
                                    ? Colors.white
                                    : null),
                          );
                        })
                      : null,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
            );
          },
        );
      },
    );
  }
}

void requestToUseNotification(BuildContext context) {
  AwesomeNotifications().isNotificationAllowed().then(
    (isAllowed) {
      if (!isAllowed) {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.allowNotifications}"),
            content: Text(
                "${context.read<SettingsBloc>().state.languageData.ourAppWouldLikeToSendYouNotifications}"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.no}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () => AwesomeNotifications()
                    .requestPermissionToSendNotifications()
                    .then((_) => Navigator.pop(context)),
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.yes}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    },
  );
}

Future<void> initDynamicLink(BuildContext context) async {
  FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) async {
    final Uri groupLink = dynamicLinkData.link;

    final bool isGroupchat = groupLink.pathSegments.contains('groupChat');
    if (isGroupchat) {
      final String? groupUid = groupLink.queryParameters['id'];
      try {
        await FirebaseFirestore.instance.groupCollection
            .doc(groupUid)
            .getSavy()
            .then((DocumentSnapshot snapshot) {
          final List users = snapshot['users'] as List;
          if (users.contains(Getters.getCurrentUserUid())) {
            // return Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return GroupChattingPage(groupUid: groupUid!);
            //     },
            //   ),
            // );
            showBarModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return JoinGroup(
                  groupId: groupUid!,
                  // isAlready: 'yes',
                );
              },
            );
          } else {
            showBarModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return JoinGroup(
                  groupId: groupUid!,
                  // isAlready: 'no',
                );
              },
            );
          }
        });
      } catch (e) {
        print(e);
      }
    }
    // Navigator.pushNamed(context, dynamicLinkData.link.path);
  }).onError((error) {
    // Handle errors
  });
}

class JoinGroup extends StatefulWidget {
  final String groupId;

  // final String? isAlready;
  JoinGroup({
    Key? key,
    required this.groupId,
    // this.isAlready,
  }) : super(key: key);

  @override
  _JoinGroupState createState() => _JoinGroupState();
}

class _JoinGroupState extends State<JoinGroup> {
  Map<int, KahoChatUser> user = {};
  Map<int, KahoChatUser> addedGroupMembers = {};

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Object?>>(
      stream: FirebaseFirestore.instance.groupCollection
          .doc(widget.groupId)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final group = snapshot.data!.data() != null
              ? GroupChatRoomModel.fromMap(snapshot.data!.data().toJson())
              : null;
          if (group != null) {
            context.read<GroupsBloc>().add(GroupsEvent.setGroup(group));
          }
        }
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, userstate) {
            return BlocBuilder<GroupsBloc, GroupsState>(
              builder: (context, gstate) {
// user.signedInUser;
                return SizedBox(
                  height: 400,
                  // color: Colors.black.withOpacity(.4),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBoxH10(),
                        CustomCircleAvatar(
                          name: gstate.groupName,
                          color: gstate.group.groupColor,
                          profilePictureUrl: gstate.group.groupImageUrl,
                        ),
                        SizedBoxH10(),
                        Text(
                          gstate.group.name,
                          style: TextStyle(
                            fontSize: 16,
                            color: Kolors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBoxH10(),
                        Text(
                          'Created by ${gstate.group.adminUser.name}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Kolors.black,
                          ),
                        ),
                        SizedBoxH10(),
                        Text(
                          gstate.group.description,
                          style: TextStyle(
                            fontSize: 16,
                            color: Kolors.black,
                          ),
                        ),
                        // SizedBoxH10(),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${gstate.group.users.length} participants',
                              style: TextStyle(
                                fontSize: 12,
                                color: Kolors.black,
                              ),
                            ),
                          ),
                        ),
                        // SizedBoxH10(),
                        SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (final user in gstate.group.userDetails)
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomCircleAvatar(
                                        name: user.name,
                                        color: user.userColor,
                                        profilePictureUrl:
                                            user.profilePictureUrl,
                                      ),
                                      SizedBoxH10(),
                                      SizedBox(
                                        width: 50,
                                        child: Text(
                                          user.name,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Kolors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBoxH10(),
                        Divider(),
                        SizedBoxH10(),
                        if (gstate.group.users
                            .contains(userstate.signedInUser.uid))
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    AutoRouter.of(context).push(
                                      GroupChattingRoute(
                                        groupUid: widget.groupId,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Message',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        // if (widget.isAlready == 'no')
                        if (gstate.group.users
                                .contains(userstate.signedInUser.uid) ==
                            false)
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Map<int, KahoChatUser> myUser = {'0', userstate.signedInUser} as Map<int, KahoChatUser>;
                                    gstate.members.add(userstate.signedInUser);
                                    print('${gstate.members}');
                                    context.read<GroupsBloc>().add(
                                        GroupsEvent.addGroupMembers(
                                            gstate.members, widget.groupId));
                                    context.read<GroupsBloc>().add(
                                          GroupsEvent.sendGroupNotification(
                                            message:
                                                '${userstate.signedInUser.name} joined using this group\'s invite link',
                                            myUser: userstate.signedInUser,
                                            groupUid: widget.groupId,
                                            groupName: gstate.group.name,
                                          ),
                                        );
                                  },
                                  child: Text('Join'),
                                ),
                              ],
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
