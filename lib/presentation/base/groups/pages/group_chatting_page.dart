// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/supportChat/reported_message_model.dart';
import 'package:flutter_template/domain/supportChat/support_chat_model.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/base/chats/widgets/get_message_widget.dart';
import 'package:flutter_template/presentation/base/groups/pages/message_info.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_app_bar.dart';
import 'package:flutter_template/presentation/base/groups/widgets/send_message_toolbar_group.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:swipe_to/swipe_to.dart';

int _limit = 40;
bool _isLoading = false;

class GroupChattingPage extends StatefulWidget {
  final String groupUid;

  const GroupChattingPage({
    Key? key,
    required this.groupUid,
  }) : super(key: key);

  @override
  State<GroupChattingPage> createState() => _GroupChattingPageState();
}

class _GroupChattingPageState extends State<GroupChattingPage> {
  // FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
  // var link = '';
  int messageLength = 0;
  ScrollController controller = ScrollController();

  Future<void> deleteUnreadCount() async {
    await FirebaseFirestore.instance
        .collection('counts')
        .doc(Getters.getCurrentUserUid())
        .collection('group')
        .doc(widget.groupUid)
        .delete();
  }

  // void invitelink() async {
  //   var imageUrl = '';
  //   var name = '';
  //   // await FirebaseFirestore.instance
  //   //     .collection('groups')
  //   //     .doc(widget.groupUid)
  //   //     .get()
  //   //     .then((value) {
  //   //   Fluttertoast.showToast(msg: value.toJson());
  //   //   setState(() {
  //   //     // imageUrl = value['name'];
  //   //   });
  //   // });
  //   DynamicLinkParameters parameters = DynamicLinkParameters(
  //     uriPrefix: 'https://kahochat.page.link',
  //     link: Uri.parse('https://kahochat.page.link?id=${widget.groupUid}'),
  //     androidParameters: const AndroidParameters(
  //       packageName: 'com.example.whatsapp',
  //       // TODO fallbackUrl:
  //     ),
  //     socialMetaTagParameters: SocialMetaTagParameters(
  //       title: 'name',
  //       description: 'group chat',
  //       // imageUrl: Uri.parse(imageUrl),
  //     ),
  //   );
  //   final ShortDynamicLink shortDynamicLink =
  //       await FirebaseDynamicLinks.instance.buildShortLink(
  //     parameters,
  //     shortLinkType: ShortDynamicLinkType.unguessable,
  //   );

  //   final Uri uri = await dynamicLinks.buildLink(parameters);
  //   setState(() {
  //     link = shortDynamicLink.shortUrl.toString();
  //   });
  //   debugPrint(link);
  // }

  bool isDeleteForAll = false;
  late GroupChatRoomModel? group;

  @override
  void initState() {
    _isLoading = false;
    controller.addListener(_scrollListener);
    super.initState();
    deleteUnreadCount();
    //disableCapture();
    getTotalMessageLength();
  }

  Future<void> disableCapture() async {
    //disable screenshots and record screen in current screen
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  Future<void> enableCapture() async {
    //disable screenshots and record screen in current screen
    await FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void dispose() {
    _isLoading = false;
    enableCapture();
    _limit = 40;
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  Future getTotalMessageLength() async {
    final getDataCount = await FirebaseFirestore.instance.groupCollection
        .doc(widget.groupUid)
        .messagesCollection
        .orderBy('timeOfSending', descending: true)
        .get();
    print('printing length of total message ==. ${getDataCount.docs.length}');
    messageLength = getDataCount.docs.length;
  }

  void _scrollListener() {
    if (controller.position.pixels >=
        controller.position.maxScrollExtent - 250) {
      if (_limit < messageLength) {
        setState(() {
          _isLoading = true;
          _limit = _limit + 50;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Object?>>(
      stream: FirebaseFirestore.instance.groupCollection
          .doc(widget.groupUid)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          group = snapshot.data!.data() != null
              ? GroupChatRoomModel.fromMap(snapshot.data!.data().toJson())
              : null;
          if (group != null) {
            context.read<GroupsBloc>().add(GroupsEvent.setGroup(group!));
          }
        }
        return BlocBuilder<MessageSelectBloc, MessageSelectState>(
          builder: (context, mState) {
            return BlocBuilder<GroupsBloc, GroupsState>(
              builder: (context, state) {
                // final link = invitelink(
                //     name: state.group.name,
                //     imageUrl: state.group.groupImageUrl);
                context
                    .read<GroupsBloc>()
                    .add(GroupsEvent.readMessages(groupId: widget.groupUid));
                return BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, settingState) {
                    return WillPopScope(
                      onWillPop: () async {
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
                        context.read<MessageSelectBloc>().add(
                              MessageSelectEvent.enableReplay(
                                isReplying: false,
                              ),
                            );
                        if (mState.isAppSelectionbarEnable) {
                          return false;
                        } else {
                          return true;
                        }
                      },
                      child: SafeScaffold(
                        //backgroundColor: Colors.green,
                        appBar: mState.isSearching
                            ? AppBar(
                                backgroundColor:
                                    Theme.of(context).backgroundColor,
                                iconTheme: Theme.of(context).iconTheme,
                                titleSpacing: 0,
                                leading: IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                  ),
                                  onPressed: () {
                                    context.read<MessageSelectBloc>().add(
                                          MessageSelectEvent.enableSearchBar(
                                            isSearch: false,
                                          ),
                                        );
                                  },
                                ),
                                title: FutureBuilder(
                                  future: Getters.getTranslation(
                                    languageCode: 'en',
                                    text: "Search Chats ...",
                                  ),
                                  builder: (context, gSnapshot) {
                                    return TextField(
                                      decoration: InputDecoration(
                                        hintText: !gSnapshot.hasData
                                            ? "Search Chats ..."
                                            : gSnapshot.data! as String,
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (v) {
                                        context.read<MessageSelectBloc>().add(
                                              MessageSelectEvent
                                                  .changeSearchTextVal(
                                                searchText: v,
                                              ),
                                            );
                                      },
                                    );
                                  },
                                ),
                                actions: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(CupertinoIcons.search),
                                  ),
                                  const SizedBoxW10()
                                ],
                              )
                            : (mState.selectedIndexList.isNotEmpty
                                ? AppBar(
                                    backgroundColor:
                                        Theme.of(context).backgroundColor,
                                    iconTheme: Theme.of(context).iconTheme,
                                    leading: IconButton(
                                      icon: const Icon(
                                        Icons.close,
                                      ),
                                      onPressed: () {
                                        context.read<MessageSelectBloc>().add(
                                              MessageSelectEvent
                                                  .enableSelectionBar(
                                                isSelectionBar: false,
                                              ),
                                            );
                                      },
                                    ),
                                    centerTitle: false,
                                    titleSpacing: 5,
                                    title: Text(
                                      "${mState.selectedIndexList.isNotEmpty ? mState.selectedIndexList.length : ""}",
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                    actions: [
                                      if (mState.selectedIndexList.length == 1)
                                        IconButton(
                                          onPressed: () async {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                title: Text(
                                                    "${context.read<SettingsBloc>().state.languageData.reportUser} ?",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                content: Text(
                                                  context
                                                      .read<SettingsBloc>()
                                                      .state
                                                      .languageData
                                                      .theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                actions: [
                                                  FlatButton(
                                                    onPressed: () {
                                                      final SupportChatModel
                                                          message =
                                                          SupportChatModel(
                                                        message: mState
                                                                .selectedIndexList[
                                                                    0]
                                                                ?.messageModel
                                                                ?.text ??
                                                            "Message Reported",
                                                        type: "text",
                                                        time: DateTime.now()
                                                            .toString(),
                                                        seen: false,
                                                        sender: FirebaseAuth
                                                            .instance
                                                            .currentUser!
                                                            .uid,
                                                        reportedMessageList: [
                                                          ReportedMessageModel
                                                              .mockTextMessage(),
                                                        ],
                                                      );
                                                      reportUser(message);
                                                      Fluttertoast.showToast(
                                                        msg:
                                                            'Your report action will be taken within 72 hours. We will update our judgement in help centre.',
                                                        backgroundColor:
                                                            Kolors.grey,
                                                      );
                                                      Navigator.pop(context);
                                                    },
                                                    textColor: Kolors.primary,
                                                    child: Text(
                                                      context
                                                          .read<SettingsBloc>()
                                                          .state
                                                          .languageData
                                                          .report,
                                                      style: const TextStyle(
                                                          color: Kolors.red),
                                                    ),
                                                  ),
                                                  FlatButton(
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                    textColor: Kolors.primary,
                                                    child: Text(context
                                                        .read<SettingsBloc>()
                                                        .state
                                                        .languageData
                                                        .cancel),
                                                  ),
                                                ],
                                              ),
                                            );
                                            // bool result = await showDecisionDialog(title: 'Report this user?', context: context);
                                            // if(result){
                                            //
                                            // }
                                          },
                                          icon: const Icon(
                                            Icons.thumb_down_outlined,
                                            color: Colors.red,
                                          ),
                                        ),
                                      IconButton(
                                        onPressed: () {
                                          context.read<MessageSelectBloc>().add(
                                                MessageSelectEvent
                                                    .hideSelectionBar(
                                                  isSelectionBar: false,
                                                ),
                                              );
                                          showDialog(
                                            context: context,
                                            builder: (context) => Dialog(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: SizedBox(
                                                  height: 150,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            context
                                                                .read<
                                                                    SettingsBloc>()
                                                                .state
                                                                .languageData
                                                                .deleteMessage,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBoxH10(),
                                                      Text(
                                                        "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToDeleteThisMessage}?",
                                                      ),
                                                      Row(
                                                        children: [
                                                          StatefulBuilder(
                                                            builder: (BuildContext
                                                                    context,
                                                                StateSetter
                                                                    setState) {
                                                              return Checkbox(
                                                                activeColor: context.read<SettingsBloc>().state.appThemeMode ==
                                                                    ThemeMode.dark
                                                                    ? Colors.grey
                                                                    :null,
                                                                value:
                                                                    isDeleteForAll,
                                                                onChanged:
                                                                    (bool?
                                                                        value) {
                                                                  setState(() {
                                                                    isDeleteForAll =
                                                                        !isDeleteForAll;
                                                                  });
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            context
                                                                .read<
                                                                    SettingsBloc>()
                                                                .state
                                                                .languageData
                                                                .deleteForAllMembers,
                                                          )
                                                        ],
                                                      ),

                                                      // GestureDetector(
                                                      //   onTap: () {
                                                      //     context
                                                      //         .read<GroupsBloc>()
                                                      //         .add(
                                                      //           GroupsEvent
                                                      //               .deleteMessage(
                                                      //             groupUid: widget
                                                      //                 .groupUid,
                                                      //             message: mState
                                                      //                 .selectedIndexList,
                                                      //           ),
                                                      //         );
                                                      //     context
                                                      //         .read<
                                                      //             MessageSelectBloc>()
                                                      //         .add(
                                                      //           MessageSelectEvent
                                                      //               .enableSelectionBar(
                                                      //             isSelectionBar:
                                                      //                 false,
                                                      //           ),
                                                      //         );
                                                      //     setState(() {});
                                                      //     Navigator.pop(context);
                                                      //   },
                                                      //   child: const TextTranslate(
                                                      //     "Delete for me",
                                                      //     style: TextStyle(
                                                      //       fontWeight:
                                                      //           FontWeight.w500,
                                                      //       color: Kolors.primary,
                                                      //       height: 2,
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () =>
                                                                Navigator.pop(
                                                              context,
                                                            ),
                                                            child: Text(
                                                              context
                                                                  .read<
                                                                      SettingsBloc>()
                                                                  .state
                                                                  .languageData
                                                                  .cancel,
                                                              style:
                                                                   TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: context.read<SettingsBloc>().state.appThemeMode ==
                                                                    ThemeMode.dark
                                                                    ? Colors.grey
                                                                    : Kolors
                                                                    .primary,
                                                                height: 2,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 25,
                                                          ),
                                                          if (!mState
                                                              .selectedIndexList
                                                              .values
                                                              .map(
                                                                (value) =>
                                                                    value
                                                                        .messageModel!
                                                                        .sender
                                                                        .uid ==
                                                                    Getters
                                                                        .getCurrentUserUid(),
                                                              )
                                                              .toList()
                                                              .contains(false))
                                                            GestureDetector(
                                                              onTap: () {
                                                                isDeleteForAll
                                                                    ? context
                                                                        .read<
                                                                            GroupsBloc>()
                                                                        .add(
                                                                          GroupsEvent
                                                                              .deleteMessageEveryone(
                                                                            message:
                                                                                mState.selectedIndexList,
                                                                            groupUid:
                                                                                widget.groupUid,
                                                                          ),
                                                                        )
                                                                    : context
                                                                        .read<
                                                                            GroupsBloc>()
                                                                        .add(
                                                                          GroupsEvent
                                                                              .deleteMessage(
                                                                            groupUid:
                                                                                widget.groupUid,
                                                                            message:
                                                                                mState.selectedIndexList,
                                                                          ),
                                                                        );

                                                                context
                                                                    .read<
                                                                        MessageSelectBloc>()
                                                                    .add(
                                                                      MessageSelectEvent
                                                                          .enableSelectionBar(
                                                                        isSelectionBar:
                                                                            false,
                                                                      ),
                                                                    );
                                                                setState(() {});
                                                                Navigator.pop(
                                                                  context,
                                                                );
                                                              },
                                                              child: Text(
                                                                context
                                                                    .read<
                                                                        SettingsBloc>()
                                                                    .state
                                                                    .languageData
                                                                    .delete,
                                                                style:
                                                                     TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color:context.read<SettingsBloc>().state.appThemeMode ==
                                                                      ThemeMode.dark
                                                                      ? Colors.red.shade300
                                                                      : Kolors
                                                                      .red,
                                                                  height: 2,
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        icon: const Icon(CupertinoIcons.delete),
                                      ),
                                      if (mState.selectedIndexList.length ==
                                          1) ...[
                                        IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MessageInfoPage(
                                                  groupId: widget.groupUid,
                                                  messsage: mState
                                                      .selectedIndexList
                                                      .values
                                                      .first,
                                                  groupChatRoomModel: group!,
                                                ),
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            CupertinoIcons.info_circle,
                                          ),
                                        )
                                      ],
                                      IconButton(
                                        onPressed: () {
                                          var _m = "";
                                          mState.selectedIndexList
                                              .forEach((key, value) {
                                            _m =
                                                "${value.messageModel!.text}\n$_m";
                                          });
                                          Clipboard.setData(
                                            ClipboardData(text: _m),
                                          ).then((_) {
                                            Fluttertoast.showToast(
                                              msg: "Copied to clipboard",
                                              backgroundColor: Kolors.grey,
                                            );
                                          });
                                        },
                                        icon: const Icon(
                                          LineIcons.copy,
                                        ),
                                      ),
                                      if (mState.selectedIndexList.length <= 1)
                                        IconButton(
                                          onPressed: () {
                                            context
                                                .read<MessageSelectBloc>()
                                                .add(
                                                  MessageSelectEvent
                                                      .replayMessage(
                                                    message: mState
                                                        .selectedIndexList
                                                        .values
                                                        .first,
                                                  ),
                                                );
                                            context
                                                .read<MessageSelectBloc>()
                                                .add(
                                                  MessageSelectEvent
                                                      .enableReplay(
                                                    isReplying: true,
                                                  ),
                                                );
                                          },
                                          icon: const Icon(
                                            LineIcons.reply,
                                          ),
                                        ),
                                      if (mState.selectedIndexList.isEmpty)
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            CupertinoIcons.check_mark_circled,
                                          ),
                                        ),
                                      IconButton(
                                        onPressed: () {
                                          final selectedMessages =
                                              mState.selectedIndexList;
                                          ForwardFunction.showForwardSheet(
                                            context,
                                            selectedMessages,
                                          );
                                        },
                                        icon: Transform(
                                          alignment: Alignment.center,
                                          transform: Matrix4.rotationY(pi),
                                          child: const Icon(
                                            LineIcons.reply,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : GroupAppBar(
                                    groupChat: state.group,
                                    groupId: widget.groupUid,
                                    // inviteLink: link,
                                  )),
                        body: Container(
                          decoration: settingState.chatBackgroundWallpaper ==
                                  Wallpaper.image
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
                          child: Column(
                            children: [
                              if (_isLoading)
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                              Expanded(
                                child: ListView(
                                  reverse: true,
                                  shrinkWrap: true,
                                  controller: controller,
                                  children: [
                                    MessagesList(
                                      groupUid: widget.groupUid,
                                      state: mState,
                                      enableBar: (v) {
                                        setState(() {});
                                      },
                                    ),
                                    // const SizedBoxH10(),
                                    // const EncryptionInfoWidget(),
                                  ],
                                ),
                              ),
                              if (mState.isReplying &&
                                  mState.replayMessageSelect != null)
                                Container(
                                  width: Size.infinite.width,
                                  //color: Colors.white,
                                  color: context
                                      .read<SettingsBloc>()
                                      .state
                                      .appThemeMode ==
                                      ThemeMode.dark
                                      ? Colors.grey.shade600 : Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            CupertinoIcons
                                                .arrowshape_turn_up_right_fill,
                                            color: Colors.blue.shade200,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  mState
                                                      .replayMessageSelect!
                                                      .messageModel!
                                                      .sender
                                                      .name,
                                                  style: TextStyle(
                                                    color: Colors.blue.shade200,
                                                  ),
                                                ),
                                                Container(
                                                  constraints:
                                                      const BoxConstraints(
                                                    maxWidth: 250,
                                                  ),
                                                  child: Text(
                                                    mState.replayMessageSelect!
                                                        .messageModel!.text,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          context.read<MessageSelectBloc>().add(
                                                MessageSelectEvent.enableReplay(
                                                  isReplying: false,
                                                ),
                                              );
                                        },
                                        icon: const Icon(Icons.close),
                                      ),
                                      // GetMessageWidget.getMessageWidget(
                                      //   true,
                                      //   mState.replayMessageSelect!,
                                      //   BorderRadius.circular(8),
                                      //   context.read<UserBloc>().state.signedInUser,
                                      //   null,
                                      //   "",
                                      //   widget.groupUid,
                                      //   "",
                                      // )
                                    ],
                                  ),
                                ),
                              /*if (state.group.sendMessageOnlyAdmin != true ||
                              state.group.adminUser.uid ==
                                  Getters.getCurrentUserUid())
                            SendMessageToolbarGroup(
                              groupUid: widget.groupUid,
                              groupName: state.groupName,
                            )
                          else
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),*/
                              if (state.group.sendMessageOnlyAdmin != true ||
                                  state.group.adminUser.uid ==
                                      Getters.getCurrentUserUid())
                                SendMessageToolbarGroup(
                                  groupUid: widget.groupUid,
                                  groupName: state.groupName,
                                )
                              else
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  color: Kolors.primary.withOpacity(0.2),
                                  child: Text(
                                    context
                                        .read<SettingsBloc>()
                                        .state
                                        .languageData
                                        .onlyAdminCanSendMessageInThisGroup,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  void reportUser(SupportChatModel supportChatModel) {
    FirebaseDatabase.instance
        .ref()
        .child("support_chats")
        .child(FirebaseAuth.instance.currentUser!.uid)
        .child("messages")
        .child(Timestamp.now().microsecondsSinceEpoch.toString())
        .set(supportChatModel.toMap())
        .whenComplete(() {
      context.read<MessageSelectBloc>().add(
            MessageSelectEvent.enableSelectionBar(
              isSelectionBar: false,
            ),
          );
    });
  }
}

class MessagesList extends StatefulWidget {
  const MessagesList({
    Key? key,
    required this.groupUid,
    required this.state,
    required this.enableBar,
  }) : super(key: key);
  final String groupUid;
  final MessageSelectState state;
  final ValueChanged<bool> enableBar;

  @override
  State<MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.groupCollection
          .doc(widget.groupUid)
          .messagesCollection
          .orderBy('timeOfSending', descending: true)
          .limit(_limit)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (_isLoading) {
          _isLoading = false;
        }
        if (snapshot.hasData) {
          final List<DocumentSnapshot> _catchMessageList = widget.state.isSearching
              ? snapshot.data!.docs
                  .where(
                    (element) => element.data().toJson()['deleted'] != null
                        ? (!(element.data().toJson()['deleted'] as List?)!
                            .contains(Getters.getCurrentUserUid()))
                        : true,
                  )
                  .where(
                    (element) => element
                        .data()
                        .toJson()['text']
                        .toString()
                        .startsWith(widget.state.searchTextVal),
                  )
                  .toList()
              : snapshot.data!.docs
                  .where(
                    (element) => element.data().toJson()['deleted'] != null
                        ? (!(element.data().toJson()['deleted'] as List?)!
                            .contains(Getters.getCurrentUserUid()))
                        : true,
                  )
                  .toList();
          print("number of message-->${_catchMessageList.length}");
          return ListView.separated(
            shrinkWrap: true,
            reverse: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _catchMessageList.length,
            separatorBuilder: (context, index) {
              final now = DateTime.now();
              final _firstTime = (_catchMessageList[index].data()
              as Map)['timeOfSending'] as Timestamp?;
              final _secTime = (_catchMessageList[index + 1].data()
              as Map)['timeOfSending'] as Timestamp?;

              print("first time-->${_firstTime}");
              print("first time-->${_secTime}");
              final first = DateTime(_firstTime!.toDate().year,
                  _firstTime.toDate().month, _firstTime.toDate().day);
              final sec = DateTime(_secTime!.toDate().year,
                  _secTime.toDate().month, _secTime.toDate().day);
              final today = first.day == sec.day &&
                  first.month == sec.month &&
                  first.year == sec.year;
              if (!today) {
                if (DateTime(now.year, now.month, now.day - 1) ==
                    DateTime(first.year, first.month, first.day)) {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 10),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:context
                            .read<SettingsBloc>()
                            .state
                            .appThemeMode ==
                            ThemeMode.dark
                            ? Colors.grey.shade700
                            :  const Color(0xff82CAFF),
                      ),
                      child: const Text("Yesterday",
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ),
                  );
                } else if (DateTime(now.year, now.month, now.day) ==
                    DateTime(first.year, first.month, first.day)) {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 10),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: context
                            .read<SettingsBloc>()
                            .state
                            .appThemeMode ==
                            ThemeMode.dark
                            ? Colors.grey.shade700
                            : const Color(0xff82CAFF),
                      ),
                      child: const Text("Today",
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ),
                  );
                } else {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 10),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:context
                            .read<SettingsBloc>()
                            .state
                            .appThemeMode ==
                            ThemeMode.dark
                            ? Colors.grey.shade700
                            :  const Color(0xff82CAFF),
                      ),
                      child: Text(
                          DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY)
                              .format(first),
                          style:
                          const TextStyle(fontWeight: FontWeight.w700)),
                    ),
                  );
                }
              }
              return const SizedBox.shrink();
            },
            itemBuilder: (context, index) {
              final val = _catchMessageList[index];
              final isLastMessage = val.id == _catchMessageList.first.id;
              final message = MessageSelectModel(
                messageModel: MessageModel.fromMap(
                  val.data().toJson(),
                ),
                index: index,
                documentId: val.id,
              );
              final bool isSentByMe = Getters.getCurrentUserUid() ==
                  message.messageModel!.sender.uid;
              if (!message.messageModel!.isDeleted()) {
                return SwipeTo(
                  iconSize: 0,
                  iconColor: Colors.transparent,
                  onRightSwipe: message.messageModel?.type !=
                          MessageType.groupNotification
                      ? () {
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.replayMessage(
                                  message: MessageSelectModel(
                                    documentId: val.id,
                                    index: index,
                                    messageModel: message.messageModel,
                                  ),
                                ),
                              );
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.enableReplay(
                                    isReplying: true),
                              );
                        }
                      : null,
                  child: GestureDetector(
                    onTap: () {
                      if (widget.state.isAppSelectionbarEnable) {
                        if (!widget.state.selectedIndexList.containsKey(index)) {
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.changeSelection(
                                  chat: {
                                    index: MessageSelectModel(
                                      documentId: val.id,
                                      index: index,
                                      messageModel: message.messageModel,
                                    )
                                  },
                                ),
                              );
                        } else {
                          if (widget.state.selectedIndexList.length == 1) {
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.enableSelectionBar(
                                    isSelectionBar: false,
                                  ),
                                );
                          }
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.removeSelection(
                                  index: index,
                                ),
                              );

                        }
                      }
                      widget.enableBar(true);
                    },
                    onLongPress: () {
                      if (message.messageModel?.type !=
                          MessageType.groupNotification) {
                        HapticFeedback.vibrate();
                        context.read<MessageSelectBloc>().add(
                              MessageSelectEvent.enableSelectionBar(
                                isSelectionBar: true,
                              ),
                            );
                        context.read<MessageSelectBloc>().add(
                              MessageSelectEvent.changeSelection(
                                chat: {
                                  index: MessageSelectModel(
                                    documentId: val.id,
                                    index: index,
                                    messageModel: message.messageModel,
                                  )
                                },
                              ),
                            );
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      color: widget.state.selectedIndexList[index] != null &&
                              widget.state.isAppSelectionbarEnable
                          ?context.read<SettingsBloc>().state.appThemeMode ==
                          ThemeMode.dark
                          ? Colors.grey.shade500
                          : Colors.indigo.shade100
                          : Colors.transparent,
                      child: Row(
                        mainAxisAlignment: message.messageModel?.type ==
                                MessageType.groupNotification
                            ? MainAxisAlignment.center
                            : isSentByMe && widget.state.isAppSelectionbarEnable
                                ? MainAxisAlignment.spaceBetween
                                : isSentByMe && !widget.state.isAppSelectionbarEnable
                                    ? MainAxisAlignment.end
                                    : !isSentByMe &&
                                            widget.state.isAppSelectionbarEnable
                                        ? MainAxisAlignment.start
                                        : MainAxisAlignment.start,
                        children: [
                          if (widget.state.selectedIndexList[index] != null &&
                              widget.state.isAppSelectionbarEnable)
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                CupertinoIcons.check_mark_circled_solid,
                                color: Kolors.primary,
                              ),
                            )
                          else
                            const SizedBox(width: 0),
                          GetMessageWidget.getMessageWidget(
                            isSentByMe,
                            message,
                            HelperFunctions.getChatShape(
                              _catchMessageList,
                              index,
                            ),
                            context.read<UserBloc>().state.signedInUser,
                            null,
                            val.id,
                            widget.groupUid,
                            "",
                            isLastMessage,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
