// ignore_for_file: cast_nullable_to_non_nullable, avoid_bool_literals_in_conditional_expressions

import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/chat_select/chat_select_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/chat_model.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/presentation/base/chats/pages/chatting_page.dart';
import 'package:flutter_template/presentation/base/chats/widgets/no_chat.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../domain/contacts/phone_contact_model.dart';
import '../../../infrastructure/core/firebase_cloud_messaging.dart';

class ChatsPage extends StatelessWidget {
  final ValueChanged hidNav;
  const ChatsPage({Key? key, required this.hidNav}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ChatsList(hideNav: (v) => hidNav(v)),
      ],
    );
  }
}

class ChatsList extends StatefulWidget {
  final ValueChanged hideNav;
  const ChatsList({
    Key? key,
    required this.hideNav,
  }) : super(key: key);

  @override
  State<ChatsList> createState() => _ChatsListState();
}

class _ChatsListState extends State<ChatsList> {
  bool isSearching = false;
  final List<dynamic> _searchResult = [];
  int _chatLimit = 15;
  int chatListLength = 0;
  String searchHintText = "Search messages, people...";
  String searchHintTextE = "Search messages, people...";
  ScrollController controller = ScrollController();
  bool _isLoading = false;
  bool isVideoCall = false;

  @override
  void initState() {
    super.initState();
    getTotalChatLength();
    controller.addListener(_scrollListener);
    translate();
  }

  @override
  void dispose() {
    _isLoading = false;
    _chatLimit = 15;
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  Future translate() async {
    // searchHintText = await Getters.getTranslation(searchHintTextE);
    setState(() {
      searchHintText = searchHintText;
    });
  }

  Future getTotalChatLength() async {
    final getChatList = await FirebaseFirestore.instance.chatCollection
        .doc(Getters.getCurrentUserUid())
        .chatUsersCollection
        .orderBy('lastMessageTime', descending: true)
        .get();
    print(getChatList.docs.length);
    chatListLength = getChatList.docs.length;
  }

  void _scrollListener() async {
    print(controller.position.maxScrollExtent);
    if (controller.position.pixels >=
        controller.position.maxScrollExtent - 50) {
      if (_chatLimit < chatListLength) {
        setState(() {
          _isLoading = true;
          _chatLimit = _chatLimit + 20;
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

  Future<void> sendAvailabilityNotificationToContacts(
      BuildContext context) async {
    List<PhoneContact> phoneContacts =
        context.read<ContactsBloc>().state.phoneContacts;
    print("all phone contacts-->${phoneContacts}");
    for (int i = 0; i < phoneContacts.length; i++) {
      await FirebaseFirestore.instance
          .collection('users')
          .where('phoneNumber', isEqualTo: phoneContacts[i].phoneNumber)
          .get()
          .then((value) {
        value.docs.forEach((doc) {
          final KahoChatUser user =
          KahoChatUser.fromMap(doc.data());

          if (user.uid != Getters.getCurrentUserUid()) {

            FirebaseCloudMessaging()
                .sendContactAvailabilityNotification(user.pushToken!, user.name,
                "is available on KahoChat", MessageModel.mockTextMessage(), context
                    .read<UserBloc>()
                    .state.signedInUser, user,
                messageID: "messageId")
                .onError(
                  (error, stackTrace) {},
            );
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CallsBloc, CallsState>(
      listener: (context, state) {
        state.slidablePageWaitingCallFailureOrSuccessOpt.fold(() => null,
                (some) {
              some.fold((failure) {
                Fluttertoast.showToast(
                  msg: failure.maybeMap(
                    permissionNotGranted: (e) =>
                    "Please grant camera and microphone permissions for call feature.",
                    orElse: () => "Couldn't start the call. Please try again.",
                  ),
                  backgroundColor: Kolors.grey,
                );
              }, (peerUser) {
                if (peerUser.isOnCall != null && peerUser.isOnCall!) {
                  context.read<UserBloc>().add(
                    UserEvent.createOrUpdateUser(
                      context
                          .read<UserBloc>()
                          .state
                          .signedInUser
                          .copyWith(isOnCall: false),
                    ),
                  );
                  Fluttertoast.showToast(
                    msg: "The person is on another call",
                    backgroundColor: Kolors.grey,
                  );
                } else {
                  if (isVideoCall) {
                    context.read<CallsBloc>().add(
                      CallsEvent.startVideoCall(
                        context.read<UserBloc>().state.signedInUser,
                        peerUser,
                      ),
                    );
                  } else {
                    context.read<CallsBloc>().add(
                      CallsEvent.startVoiceCall(
                        context.read<UserBloc>().state.signedInUser,
                        peerUser,
                      ),
                    );
              }
            }
          });
        });
      },
      child: BlocBuilder<ChatSelectBloc, ChatSelectState>(
        builder: (context, state) {
          return BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingState) {
            return StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.chatCollection
                  .doc(Getters.getCurrentUserUid())
                  .chatUsersCollection
                  .limit(_chatLimit)
                  .orderBy('lastMessageTime', descending: true)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (_isLoading) {
                  _isLoading = false;
                }
                if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
                  final sortedList1 = snapshot.data!.docs
                      .where(
                        (element) => (element.data() as Map)['pinned_user'] !=
                                null
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

                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      // shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Container(
                            height: 60,
                            color: Theme.of(context).backgroundColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: BlocConsumer<SettingsBloc, SettingsState>(
                                listener: (context, settingsState) {
                              translate();
                            }, builder: (context, settingsState) {
                              return TextField(
                                onChanged: (value) {
                                  _searchResult.clear();

                                  if (value != '') {
                                    setState(() {
                                      isSearching = true;
                                    });
                                    for (final element in snapshot.data!.docs) {
                                      final chat = ChatModel.fromMap(
                                        element.data() as Map<String, dynamic>,
                                      );
                                      final peerUser = chat.user1.uid ==
                                              Getters.getCurrentUserUid()
                                          ? chat.user2
                                          : chat.user1;
                                      final myUser = chat.user1.uid ==
                                              Getters.getCurrentUserUid()
                                          ? chat.user1
                                          : chat.user2;
                                      String displayNameOrNumber;
                                      final String phoneContactNumberOrName =
                                          Getters.checkLocalContact(
                                        phoneContacts: context
                                            .read<ContactsBloc>()
                                            .state
                                            .phoneContacts,
                                        phoneNumber: peerUser.phoneNumber,
                                      );
                                      if (phoneContactNumberOrName == '') {
                                        displayNameOrNumber =
                                            "${peerUser.countryCode} ${peerUser.phoneNumber}";
                                      } else {
                                        displayNameOrNumber =
                                            phoneContactNumberOrName;
                                      }

                                      if (displayNameOrNumber
                                          .toLowerCase()
                                          .contains(value)) {
                                        _searchResult.add(element);
                                      } else if (peerUser.phoneNumber
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
                                    vertical: 2,
                                    horizontal: 10,
                                  ),
                                  // fillColor:Theme.of(context).bod,
                                  // fillColor: const Color(0xffDCDCDC),
                                  hintText: searchHintText,
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
                              "${context.read<SettingsBloc>().state.languageData.pinned}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        if (isSearching)
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              //physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              separatorBuilder: (_, indx) =>
                                  indx == _searchResult.length - 1
                                      ? const TileDivider()
                                      : const SizedBox(),
                              itemCount: _searchResult.isNotEmpty
                                  ? _searchResult.length
                                  : 1,
                              itemBuilder: (context, index) {
                                if (_searchResult.isNotEmpty) {
                                  final chat = ChatModel.fromMap(
                                    _searchResult[index].data()
                                        as Map<String, dynamic>,
                                  );

                                  final peerUser = chat.user1.uid ==
                                          Getters.getCurrentUserUid()
                                      ? chat.user2
                                      : chat.user1;
                                  final myUser = chat.user1.uid ==
                                          Getters.getCurrentUserUid()
                                      ? chat.user1
                                      : chat.user2;
                                  return StreamBuilder<QuerySnapshot<Object?>>(
                                    stream: FirebaseFirestore
                                        .instance.chatCollection
                                        .doc(Getters.getCurrentUserUid())
                                        .chatUsersCollection
                                        .doc(peerUser.uid)
                                        .messagesCollection
                                        .where('isSeen', isEqualTo: false)
                                        .snapshots(),
                                    builder: (context, messagesSnap) {
                                      var unRead = 0;
                                      if (messagesSnap.hasData) {
                                        unRead = messagesSnap.data!.docs.length;
                                      }
                                      String displayNameOrNumber;
                                      final String phoneContactNumberOrName =
                                          Getters.checkLocalContact(
                                        phoneContacts: context
                                            .read<ContactsBloc>()
                                            .state
                                            .phoneContacts,
                                        phoneNumber: peerUser.phoneNumber,
                                      );
                                      if (phoneContactNumberOrName == '') {
                                        displayNameOrNumber =
                                            "${peerUser.countryCode} ${peerUser.phoneNumber}";
                                      } else {
                                        displayNameOrNumber =
                                            phoneContactNumberOrName;
                                      }
                                      return slidableWidget(
                                        context,
                                        peerUser,
                                        myUser,
                                        state,
                                        index,
                                        chat,
                                        sortedList,
                                        displayNameOrNumber,
                                        unRead,
                                      );
                                    },
                                  );
                                } else {
                                  return SizedBox(
                                    child: Row(
                                      children: [
                                        const SizedBoxW10(),
                                        const CustomCircleAvatar(
                                          name: 'N O',
                                          color: '',
                                        ),
                                        const SizedBoxW10(),
                                        Text(
                                          "${context.read<SettingsBloc>().state.languageData.userNotFound}",
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    // leading:
                                    // title: Text("Group Not Found"),
                                  );
                                }
                              },
                            ),
                          )
                        else
                          Expanded(
                            child: ListView.separated(
                              //shrinkWrap: true,
                              //physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              itemBuilder: (context, index) {
                                final chat = ChatModel.fromMap(
                                  sortedList[index].data()
                                      as Map<String, dynamic>,
                                );
                                final peerUser = chat.user1.uid ==
                                        Getters.getCurrentUserUid()
                                    ? chat.user2
                                    : chat.user1;

                                final myUser = chat.user1.uid ==
                                        Getters.getCurrentUserUid()
                                    ? chat.user1
                                    : chat.user2;
                                return StreamBuilder<QuerySnapshot<Object?>>(
                                  stream: FirebaseFirestore
                                      .instance.chatCollection
                                      .doc(peerUser.uid)
                                      .chatUsersCollection
                                      .doc(myUser.uid)
                                      .messagesCollection
                                      .where('isSeen', isEqualTo: false)
                                      .snapshots(),
                                  builder: (context, messagesSnap) {
                                    var unRead = 0;
                                    if (messagesSnap.hasData) {
                                      unRead = messagesSnap.data!.docs.length;
                                    }
                                    String displayNameOrNumber;
                                    final String phoneContactNumberOrName =
                                        Getters.checkLocalContact(
                                      phoneContacts: context
                                          .read<ContactsBloc>()
                                          .state
                                          .phoneContacts,
                                      phoneNumber: peerUser.phoneNumber,
                                    );
                                    if (phoneContactNumberOrName == '') {
                                      displayNameOrNumber =
                                          "${peerUser.countryCode} ${peerUser.phoneNumber}";
                                    } else {
                                      displayNameOrNumber =
                                          phoneContactNumberOrName;
                                    }
                                    return slidableWidget(
                                      context,
                                      peerUser,
                                      myUser,
                                      state,
                                      index,
                                      chat,
                                      sortedList,
                                      displayNameOrNumber,
                                      unRead,
                                    );
                                  },
                                );
                                // return ListTile(
                                //   title: Text("Testing"),
                                // );
                              },
                              separatorBuilder: (_, indx) =>
                                  indx == sortedList1.length - 1
                                      ? const TileDivider()
                                      : const SizedBox(),
                              //itemCount: 50,
                              itemCount: sortedList.length,
                            ),
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
                        const SizedBoxH30(),
                        const SizedBoxH30(),
                      ],
                    ),
                  );
                } else {
                  return const nochat();
                }
              },
            );
          });
        },
      ),
    );
  }

  Slidable slidableWidget(
    BuildContext context,
    KahoChatUser peerUser,
    KahoChatUser myUser,
    ChatSelectState state,
    int index,
    ChatModel chat,
    List<QueryDocumentSnapshot<Object?>> sortedList,
    String displayNameOrNumber,
    int unRead,
  ) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: 0.40,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            icon: Icons.info,
            onPressed: (_) {
              AutoRouter.of(context).push(ChatDetailsRoute(
                  peerUser: peerUser,
                  displayNameOrNumber: displayNameOrNumber));
            },
          ),
          SlidableAction(
              icon: Icons.call,
              onPressed: (_) async {
                if (!await Permission.camera.isGranted &&
                    !await Permission.microphone.isGranted) {
                  showRequestPermissionDialogue(
                    context: context,
                    title:
                        'Give the access to KahoChat to capture the audio and videos.',
                    subtitle:
                        "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                    icon: Icons.camera_alt_outlined,
                    onPressed: () async {
                      Navigator.pop(context);
                      if (await Getters.requestPermission(Permission.camera) &&
                          await Getters.requestPermission(
                              Permission.microphone)) {
                        isVideoCall = false;

                        context.read<CallsBloc>().add(
                              CallsEvent.isPeerUserOnAnotherCall(
                                peerUser: peerUser,
                                page: CallingPage.slidableWidget,
                              ),
                            );
                        //     );
                      }
                    },
                  );
                } else {
                  isVideoCall = false;

                  context.read<CallsBloc>().add(
                        CallsEvent.isPeerUserOnAnotherCall(
                          peerUser: peerUser,
                          page: CallingPage.slidableWidget,
                        ),
                      );
                }
              }),
          SlidableAction(
            icon: Icons.videocam,
            onPressed: (_) async {
              if (!await Permission.camera.isGranted &&
                  !await Permission.microphone.isGranted) {
                showRequestPermissionDialogue(
                  context: context,
                  title:
                      'Give the access to KahoChat to capture the audio and videos.',
                  subtitle:
                      "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                  icon: Icons.camera_alt_outlined,
                  onPressed: () async {
                    Navigator.pop(context);
                    if (await Getters.requestPermission(Permission.camera) &&
                        await Getters.requestPermission(
                            Permission.microphone)) {
                      isVideoCall = true;

                      context.read<CallsBloc>().add(
                            CallsEvent.isPeerUserOnAnotherCall(
                              peerUser: peerUser,
                              page: CallingPage.slidableWidget,
                            ),
                          );
                      //     );
                    }
                  },
                );
              } else {
                isVideoCall = true;

                context.read<CallsBloc>().add(
                      CallsEvent.isPeerUserOnAnotherCall(
                        peerUser: peerUser,
                        page: CallingPage.slidableWidget,
                      ),
                    );
              }
            },
          ),
        ],
      ),
      child: GestureDetector(
        onLongPressStart: (details) {
          HapticFeedback.vibrate();
          state.selectedIndexList[index] = chat;
          state.selectedIDList[index] = sortedList[index].id;
          // print(sortedList[index].id);
          setState(() {});
          _showPopupMenu(
            peerUser,
            details.globalPosition,
            sortedList[index],
            state,
          );
        },
        onTap: () {
          if (state.selectedIndexList[index] == null) {
            hiveBox.delete(peerUser.uid);
            setState(() {});
            AutoRouter.of(context).push(ChattingRoute(peerUser: peerUser));

            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ChattingPage(
            //       peerUser: peerUser,
            //     ),
            //   ),
            // );
          } else {
            state.selectedIDList.remove(index);
            state.selectedIndexList.remove(index);
            setState(() {});
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: state.selectedIndexList[index] != null
                ? Colors.indigo.shade50
                : Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.isAppSelectionbarEnable)
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  value: state.selectedIndexList[index] != null,
                  onChanged: (v) {
                    if (state.selectedIndexList[index] == null) {
                      state.selectedIndexList.addAll({index: chat});
                      state.selectedIDList.addAll(
                        {index: sortedList[index].id},
                      );
                      print(state.selectedIDList);
                      print(sortedList[index].id);
                      widget.hideNav([]);
                    } else {
                      state.selectedIndexList.remove(index);
                      state.selectedIDList.remove(index);
                      widget.hideNav([]);
                    }
                  },
                ),
              CustomCircleAvatar(
                profilePictureUrl: peerUser.profilePictureUrl,
                name: RegExp(r'\d').hasMatch(displayNameOrNumber)
                    ? peerUser.name
                    : displayNameOrNumber,
                color: peerUser.userColor,
              ),
              const SizedBoxW15(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      displayNameOrNumber,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        if (unRead == 0)
                          const Icon(
                            MdiIcons.checkAll,
                            // color: Colors.black,
                            size: 14,
                          )
                        else
                          const Icon(
                            MdiIcons.check,
                            // color: Colors.black,
                            size: 14,
                          ),
                        const SizedBoxW10(),
                        if (chat.lastMessage.type == MessageType.text)
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 200,
                            ),
                            child: Text(
                              chat.lastMessage.text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        else if (chat.lastMessage.type == MessageType.image)
                          Row(
                            children: [
                              const Icon(Icons.image_outlined),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.image}",
                              ),
                            ],
                          )
                        else if (chat.lastMessage.type == MessageType.audio)
                          Row(
                            children: [
                              const Icon(Icons.audiotrack_outlined),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.audio}",
                              ),
                            ],
                          )
                        else if (chat.lastMessage.type == MessageType.file)
                          Row(
                            children: [
                              const Icon(Icons.file_copy_outlined),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.file}",
                              ),
                            ],
                          )
                        else
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 200,
                            ),
                            child: Text(
                              chat.lastMessage.text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    DateFormat(DateFormat.HOUR_MINUTE).format(
                      chat.lastMessage.timeOfSending.toDate(),
                    ),
                    style: const TextStyle(fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (unRead != 0 &&
                          chat.lastMessage.receiverUid ==
                              Getters.getCurrentUserUid())
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Kolors.darkBlue,
                          child: Text(
                            unRead.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      if (hiveBox.get(peerUser.uid) != null && unRead == 0)
                        const CircleAvatar(
                          radius: 10,
                          backgroundColor: Kolors.darkBlue,
                        ),
                      if (context
                          .read<UserBloc>()
                          .state
                          .mutedUsersOrGroups
                          .muteNotification
                          .contains(peerUser.uid))
                        const Icon(
                          CupertinoIcons.speaker_slash,
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
      ),
    );
  }

  Future<dynamic> _showPopupMenu(
    KahoChatUser peerUser,
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
            // try {
            //   final _data = doc.data() as Map;
            //   context.read<ChatsBloc>().add(
            //     ChatsEvent.setReadUnread(
            //       myUser: Getters.getCurrentUserUid(),
            //       peerUser: _data['user1']['uid'].toString(),
            //     ),
            //   );
            // } catch (e) {
            //   log(e.toString());
            // }

            if (hiveBox.get(peerUser.uid) != null) {
              hiveBox.delete(peerUser.uid);
              setState(() {});
            } else {
              hiveBox.put(peerUser.uid, true);
              setState(() {});
            }
            state.selectedIndexList.removeWhere((key, value) => true);
            state.selectedIDList.removeWhere((key, value) => true);
            widget.hideNav([]);
          },
          child: Row(
            children: [
              const Icon(CupertinoIcons.conversation_bubble),
              const SizedBox(width: 10),
              Text(
                hiveBox.get(peerUser.uid) != null
                    ? "${context.read<SettingsBloc>().state.languageData.read}"
                    : "${context.read<SettingsBloc>().state.languageData.unread}",
              ),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () {
            state.selectedIndexList.removeWhere((key, value) => true);
            widget.hideNav([]);

            final _data = doc.data() as Map;
            final list = (_data['pinned_user'] != null)
                ? (_data['pinned_user'] as List)
                : [];
            if (!checkPinned(_data)) {
              list.add(Getters.getCurrentUserUid());
              FirebaseFirestore.instance.chatCollection
                  .doc(Getters.getCurrentUserUid())
                  .chatUsersCollection
                  .doc(peerUser.uid)
                  .update({"pinned_user": list});
            } else {
              list.remove(Getters.getCurrentUserUid());
              FirebaseFirestore.instance.chatCollection
                  .doc(Getters.getCurrentUserUid())
                  .chatUsersCollection
                  .doc(peerUser.uid)
                  .update({"pinned_user": list});
            }
            setState(() {});
          },
          child: checkPinned(doc.data() as Map)
              ? Row(
                  children: [
                    const Icon(CupertinoIcons.pin_slash),
                    const SizedBox(width: 10),
                    Text(
                        "${context.read<SettingsBloc>().state.languageData.unpin}"),
                  ],
                )
              : Row(
                  children: [
                    const Icon(CupertinoIcons.pin),
                    const SizedBox(width: 10),
                    Text(
                        "${context.read<SettingsBloc>().state.languageData.pin}"),
                  ],
                ),
        ),
        PopupMenuItem(
          onTap: () {
            state.selectedIDList.removeWhere((key, value) => true);
            state.selectedIndexList.removeWhere((key, value) => true);
            widget.hideNav([]);
            setState(() {});
            final List<dynamic> muteUsers = context
                .read<UserBloc>()
                .state
                .mutedUsersOrGroups
                .muteNotification;
            print(peerUser.uid);
            if (context
                .read<UserBloc>()
                .state
                .mutedUsersOrGroups
                .muteNotification
                .contains(peerUser.uid)) {
              muteUsers.remove(peerUser.uid);
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
              muteUsers.add(peerUser.uid);
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
              Icon(
                context
                        .read<UserBloc>()
                        .state
                        .mutedUsersOrGroups
                        .muteNotification
                        .contains(peerUser.uid)
                    ? CupertinoIcons.bell
                    : CupertinoIcons.bell_slash,
              ),
              const SizedBox(width: 10),
              Text(
                context
                        .read<UserBloc>()
                        .state
                        .mutedUsersOrGroups
                        .muteNotification
                        .contains(peerUser.uid)
                    ? "${context.read<SettingsBloc>().state.languageData.unmute}"
                    : "${context.read<SettingsBloc>().state.languageData.mute}",
              ),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () {
            context
                .read<ChatSelectBloc>()
                .add(ChatSelectEvent.enableSelectionBar(isSelectionBar: true));
            widget.hideNav([]);
          },
          child: Row(
            children: [
              const Icon(CupertinoIcons.check_mark_circled),
              const SizedBox(width: 10),
              Text("${context.read<SettingsBloc>().state.languageData.select}"),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () {
            final list = state.selectedIndexList;

            list.forEach((key, value) {
              final peerUser = Getters.getCurrentUserUid() == value.user1.uid
                  ? value.user2
                  : value.user1;
              context.read<ChatsBloc>().add(
                    ChatsEvent.deleteChat(
                      myUser: Getters.getCurrentUserUid(),
                      peerUser: peerUser.uid,
                    ),
                  );
            });
            state.selectedIndexList.removeWhere((key, value) => true);
            state.selectedIDList.removeWhere((key, value) => true);
            Fluttertoast.showToast(
              msg: "Chat Deleted !",
              backgroundColor: Kolors.grey,
            );
            widget.hideNav([]);
            setState(() {});
          },
          child: Row(
            children: [
              const Icon(CupertinoIcons.delete),
              const SizedBox(width: 10),
              Text("${context.read<SettingsBloc>().state.languageData.delete}"),
            ],
          ),
        ),
        // PopupMenuItem(
        //   onTap: () {
        //     state.selectedIndexList.removeWhere((key, value) => true);
        //     state.selectedIDList.removeWhere((key, value) => true);

        //     widget.hideNav([]);
        //     setState(() {});
        //   },
        //   child: Row(
        //     children: const [
        //       Icon(Icons.report_outlined),
        //       SizedBox(width: 10),
        //       TextTranslate(
        //         "report",
        //       ),
        //     ],
        //   ),
        // ),
      ],
      elevation: 8.0,
    );
  }
}
