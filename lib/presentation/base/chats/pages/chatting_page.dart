// ignore_for_file: avoid_bool_literals_in_conditional_expressions, deprecated_member_use, unrelated_type_equality_checks, cast_nullable_to_non_nullable

import 'dart:developer' as dev;
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/edit_message.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/base/chats/widgets/chat_app_bar.dart';
import 'package:flutter_template/presentation/base/chats/widgets/get_message_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/note_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/send_message_toolbar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:swipe_to/swipe_to.dart';
import 'package:vibration/vibration.dart';

int _limit = 40;
bool _isLoading = false;

class ChattingPage extends StatefulWidget {
  const ChattingPage({Key? key, required this.peerUser}) : super(key: key);

  final KahoChatUser peerUser;

  @override
  _ChattingPageState createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  bool isDeleteForAll = false;
  bool isImageGrid = false;
  int messageLength = 0;
  num disMessageLength = 0;

  ScrollController controller = ScrollController();

  @override
  void dispose() {
    enableCapture();
    _limit = 40;
    _isLoading = false;
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  void initState() {
    _isLoading = false;
    // context.read<UserBloc>().add(const UserEvent.getSignedInUser());
    controller.addListener(_scrollListener);
    deleteUnreadCount();
    fetchContacts();
    fetchIsFirstTime();
    fetchInviteStatus();
    getTotalMessageLength();
    //disableCapture();
    // TODO: implement initState
    super.initState();
  }

  Future getTotalMessageLength() async {
    final getDisMsgCount = await FirebaseFirestore.instance.chatCollection
        .doc(Getters.getCurrentUserUid())
        .chatUsersCollection
        .doc(widget.peerUser.uid)
        .get();
    disMessageLength = getDisMsgCount.data() != null
        ? (getDisMsgCount.data().toJson()['desepeaearingTime'] as num?) ?? 0
        : 0;
    final getDataCount = await FirebaseFirestore.instance.chatCollection
        .doc(Getters.getCurrentUserUid())
        .chatUsersCollection
        .doc(widget.peerUser.uid)
        .messagesCollection
        .orderBy('timeOfSending', descending: true)
        .get();
    print('printing length of total message ==. ${getDataCount.docs.length}');
    messageLength = getDataCount.docs.length;
  }

  void _scrollListener() async {
    if (controller.position.pixels >= controller.position.maxScrollExtent - 2) {
      if (_limit < disMessageLength.toInt() || _limit < messageLength) {
        setState(() {
          _isLoading = true;
          _limit = _limit + 50;
        });
      }
    }
  }

  Future<void> disableCapture() async {
    //disable screenshots and record screen in current screen
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  Future<void> enableCapture() async {
    //disable screenshots and record screen in current screen
    await FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
  }

  Future deleteUnreadCount() async {
    await FirebaseFirestore.instance
        .collection('counts')
        .doc(Getters.getCurrentUserUid())
        .collection('chats')
        .doc(widget.peerUser.uid)
        .delete();
  }

  void fetchIsFirstTime() {
    final uState = context
        .read<UserBloc>()
        .state;
    context.read<ChatsBloc>().add(
      ChatsEvent.fetchIsNewPeer(
        myUser: uState.signedInUser,
        peerUser: widget.peerUser,
      ),
    );
  }

  void fetchContacts() {
    context.read<ContactsBloc>().add(const ContactsEvent.fetchMyContacts());
  }

  void fetchInviteStatus() {
    final uState = context
        .read<UserBloc>()
        .state;
    context.read<ChatsBloc>().add(
      ChatsEvent.fetchInviteStatus(
        myUser: uState.signedInUser,
        peerUser: widget.peerUser,
      ),
    );
  }

  // Future<int> getMessageCount(KahoChatUser peerUser) async {
  //   List tempList = [];
  //   CollectionReference ref = FirebaseFirestore.instance.chatCollection
  //       .doc(Getters.getCurrentUserUid())
  //       .chatUsersCollection
  //       .doc(peerUser.uid)
  //       .messagesCollection;
  //   QuerySnapshot eventQuery = await ref.get();
  //   eventQuery.docs.forEach((element) {
  //     tempList.add(element);
  //   });
  //   print("length of list is equal to ${tempList.length}");
  //   return tempList.length;
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<MessageSelectBloc>().add(
          MessageSelectEvent.enableSelectionBar(isSelectionBar: false),
        );
        context
            .read<MessageSelectBloc>()
            .add(MessageSelectEvent.enableSearchBar(isSearch: false));
        context
            .read<MessageSelectBloc>()
            .add(MessageSelectEvent.changeSearchTextVal(searchText: ""));
        context.read<MessageSelectBloc>().add(
          MessageSelectEvent.enableReplay(isReplying: false),
        );
        context.read<ChatsBloc>().add(
          ChatsEvent.setReadUnread(
            myUser: Getters.getCurrentUserUid(),
            peerUser: widget.peerUser.uid,
          ),
        );
        if (context
            .read<MessageSelectBloc>()
            .state
            .isAppSelectionbarEnable) {
          return false;
        } else {
          return true;
        }
      },
      child: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.chatCollection
            .doc(Getters.getCurrentUserUid())
            .chatUsersCollection
            .doc(widget.peerUser.uid)
            .snapshots(),
        builder: (context, snapshot) {
          String isBlock = "";
          String displayNameOrNumber = widget.peerUser.name;
          num diseaperingMessage = 0;
          Timestamp? desepeaearingStartTime;
          if (snapshot.hasData) {
            final _isBlock = snapshot.data!.data() != null
                ? snapshot.data!.data().toJson()['isBlock']
                : null;
            isBlock = _isBlock != null ? _isBlock.toString() : "";
            diseaperingMessage = snapshot.data!.data() != null
                ? (snapshot.data!.data().toJson()['desepeaearingTime']
            as num?) ??
                0
                : 0;
            desepeaearingStartTime = snapshot.data!.data() != null
                ? (snapshot.data!.data().toJson()['desepeaearingStartTime']
            as Timestamp?)
                : null;
            final String phoneContactNumberOrName = Getters.checkLocalContact(
              phoneContacts: context
                  .read<ContactsBloc>()
                  .state
                  .phoneContacts,
              phoneNumber: widget.peerUser.phoneNumber,
            );
            if (phoneContactNumberOrName == '') {
              displayNameOrNumber = "${widget.peerUser.name}";
            } else {
              displayNameOrNumber = phoneContactNumberOrName;
            }
            if (diseaperingMessage != 0) {
              context.read<ChatsBloc>().add(ChatsEvent.removeDesepearingMessage(
                  myUser: Getters.getCurrentUserUid(),
                  peerUser: widget.peerUser.uid,
                  second: diseaperingMessage.toInt(),
                  time: desepeaearingStartTime!));
            }
          }

          return BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingState) {
                print("messageState rebuild");
                return BlocBuilder<MessageSelectBloc, MessageSelectState>(
                    builder: (context, mState) {
                      print("Settingstate rebuild");
                      return SafeScaffold(
                        //resizeToAvoidBottomInset: false,
                        //backgroundColor: Colors.transparent,
                        appBar: mState.isSearching
                            ? AppBar(
                          backgroundColor: Theme
                              .of(context)
                              .backgroundColor,
                          iconTheme: Theme
                              .of(context)
                              .iconTheme,
                          titleSpacing: 0,
                          leading: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.enableSearchBar(
                                  isSearch: false,
                                ),
                              );
                            },
                          ),
                          title: TextField(
                            decoration: const InputDecoration(
                              hintText: "Search Chats ...",
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {
                              context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.changeSearchTextVal(
                                  searchText: v,
                                ),
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
                          backgroundColor: Theme
                              .of(context)
                              .backgroundColor,
                          iconTheme: Theme
                              .of(context)
                              .iconTheme,
                          elevation: 2,
                          leading: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.enableSelectionBar(
                                  isSelectionBar: false,
                                ),
                              );
                            },
                          ),
                          centerTitle: false,
                          titleSpacing: 5,
                          title: Text(
                            "${mState.selectedIndexList.isNotEmpty ? mState
                                .selectedIndexList.length : ""}",
                            style: const TextStyle(color: Colors.black),
                          ),
                          actions: [
                            IconButton(
                              onPressed: () {
                                context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.hideSelectionBar(
                                    isSelectionBar: false,
                                  ),
                                );
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      Dialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: SizedBox(
                                            height: 120,
                                            child: Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "${context
                                                          .read<SettingsBloc>()
                                                          .state
                                                          .languageData
                                                          .deleteMessage} ?",
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBoxH10(),
                                                Row(
                                                  children: [
                                                    StatefulBuilder(builder:
                                                        (BuildContext context,
                                                        StateSetter
                                                        setState) {
                                                      return Checkbox(
                                                          value: isDeleteForAll,
                                                          activeColor: context
                                                              .read<
                                                              SettingsBloc>()
                                                              .state
                                                              .appThemeMode ==
                                                              ThemeMode.dark
                                                              ? Colors.grey
                                                              : null,
                                                          onChanged:
                                                              (bool? value) {
                                                            setState(() {
                                                              isDeleteForAll =
                                                              !isDeleteForAll;
                                                              print(
                                                                  isDeleteForAll);
                                                            });
                                                          });
                                                    }),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                        '${context
                                                            .read<
                                                            SettingsBloc>()
                                                            .state
                                                            .languageData
                                                            .alsoDeleteFor} ${widget
                                                            .peerUser.name}'),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () =>
                                                          Navigator.pop(
                                                              context),
                                                      child: Text(
                                                        context
                                                            .read<
                                                            SettingsBloc>()
                                                            .state
                                                            .languageData
                                                            .cancel,
                                                        style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          color: context
                                                              .read<
                                                              SettingsBloc>()
                                                              .state
                                                              .appThemeMode ==
                                                              ThemeMode.dark
                                                              ? Colors.grey
                                                              : Kolors.primary,
                                                          height: 2,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 25,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        isDeleteForAll
                                                            ? context
                                                            .read<ChatsBloc>()
                                                            .add(
                                                          ChatsEvent
                                                              .deleteMessageEveryone(
                                                            messages: mState
                                                                .selectedIndexList,
                                                            myUser: Getters
                                                                .getCurrentUserUid(),
                                                            peerUser: widget
                                                                .peerUser
                                                                .uid,
                                                          ),
                                                        )
                                                            : context
                                                            .read<ChatsBloc>()
                                                            .add(
                                                          ChatsEvent
                                                              .deleteMessage(
                                                            messages: mState
                                                                .selectedIndexList,
                                                            myUser: Getters
                                                                .getCurrentUserUid(),
                                                            peerUser: widget
                                                                .peerUser
                                                                .uid,
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
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        context
                                                            .read<
                                                            SettingsBloc>()
                                                            .state
                                                            .languageData
                                                            .delete,
                                                        style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          color: context
                                                              .read<
                                                              SettingsBloc>()
                                                              .state
                                                              .appThemeMode ==
                                                              ThemeMode.dark
                                                              ? Colors.red
                                                              .shade300
                                                              : Kolors.red,
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
                            if (mState.selectedIndexList.length == 1) ...[
                              if (mState.selectedIndexList.values.first
                                  .messageModel!.sender.uid ==
                                  Getters.getCurrentUserUid() &&
                                  !mState.selectedIndexList.values.first
                                      .messageModel!.isSeen)
                                IconButton(
                                  onPressed: () {
                                    context.read<MessageSelectBloc>().add(
                                      MessageSelectEvent
                                          .editSelectedMessage(
                                        isEditing: true,
                                      ),
                                    );
                                    final mesg =
                                        mState.selectedIndexList.values.first;
                                    showCustomModalBottomSheet(
                                      containerWidget: (context, _, __) =>
                                          EditMessage(
                                              message: mesg,
                                              peerUser: widget.peerUser),
                                      context: context,
                                      builder: (context) {
                                        return const SizedBox.shrink();
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.edit_outlined),
                                )
                            ],
                            IconButton(
                              onPressed: () {
                                var _m = "";
                                mState.selectedIndexList
                                    .forEach((key, value) {
                                  _m = "${value.messageModel!.text}\n$_m";
                                });
                                Clipboard.setData(ClipboardData(text: _m))
                                    .then((_) {
                                  Fluttertoast.showToast(
                                    msg: "Copied to clipboard",
                                    backgroundColor: Kolors.grey,
                                  );
                                });
                              },
                              icon: const Icon(
                                LineIcons.copyAlt,
                              ),
                            ),
                            if (mState.selectedIndexList.length == 1)
                              IconButton(
                                onPressed: () {
                                  context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.replayMessage(
                                      message: mState
                                          .selectedIndexList.values.first,
                                    ),
                                  );
                                  context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.enableReplay(
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
                                onPressed: () {
                                  context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.enableReplay(
                                      isReplying: true,
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  CupertinoIcons.check_mark_circled,
                                ),
                              ),
                            IconButton(
                              onPressed: () {
                                final selectedMessages =
                                    mState.selectedIndexList;
                                ForwardFunction.showForwardSheet(
                                    context, selectedMessages);
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
                            : PreferredSize(
                          preferredSize: const Size.fromHeight(60),
                          child: ChatAppBar(
                            peerUser: widget.peerUser,
                            isBlock: isBlock,
                          ),
                        )),
                        body: Container(
                          decoration:
                          settingState.chatBackgroundWallpaper ==
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
                            color: settingState.appThemeMode == ThemeMode.dark
                                ? Colors.grey.shade800

                                : Colors.white,
                          ),
                          child: Column(
                            children: [
                              if (_isLoading)
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          100.0),
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
                                  controller: controller,
                                  shrinkWrap: true,
                                  reverse: true,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10),
                                  children: [
                                    BlocBuilder<UserBloc, UserState>(
                                      builder: (context, uState) {
                                        print("ustate rebuild");
                                        return BlocBuilder<ChatsBloc,
                                            ChatsState>(
                                          builder: (context, cState) {
                                            print("cstate rebuild");
                                            return BlocBuilder<ContactsBloc,
                                                ContactsState>(
                                              builder: (context, coState) {
                                                List<String> uid = coState
                                                    .myContacts
                                                    .map((e) => e.uid)
                                                    .toList();
                                                if (!uid
                                                    .contains(
                                                    widget.peerUser.uid)) {
                                                  if (!cState.isNewPeer) {
                                                    if (cState.inviteModel
                                                        .answered ==
                                                        null ||
                                                        cState.inviteModel
                                                            .answered ==
                                                            false ||
                                                        cState.inviteModel
                                                            .answered ==
                                                            true) {
                                                      if (cState.inviteModel
                                                          .receiverUid ==
                                                          Getters
                                                              .getCurrentUserUid()) {
                                                        debugPrint(
                                                            "receivedInviteRequrest returned");
                                                        return ListView(
                                                          shrinkWrap: true,
                                                          physics:
                                                          const NeverScrollableScrollPhysics(),
                                                          children: [
                                                            ReceivedInviteRequest(
                                                              peerUser: widget
                                                                  .peerUser,
                                                              myUser:
                                                              uState
                                                                  .signedInUser,
                                                            ),
                                                            if (cState
                                                                .inviteModel
                                                                .answered ==
                                                                true) ...[
                                                              // const AcceptDeclineText(
                                                              //   text:
                                                              //       'You have accepted this chat invitation.',
                                                              //   width: .65,
                                                              // ),
                                                              MessagesList(
                                                                state: mState,
                                                                diseaperingMessage:
                                                                diseaperingMessage,
                                                                desepeaearingStartTime:
                                                                desepeaearingStartTime,
                                                                peerUser:
                                                                widget.peerUser,
                                                                enableBar: (v) {
                                                                  setState(() {});
                                                                },
                                                              ),
                                                            ]
                                                          ],
                                                        );
                                                      } else {
                                                        print(
                                                          "PendingInviteRequrest and messagesList returned",
                                                        );
                                                        return ListView(
                                                          shrinkWrap: true,
                                                          physics:
                                                          const NeverScrollableScrollPhysics(),
                                                          children: [
                                                            PendingInviteResponse(
                                                              peerUser: widget
                                                                  .peerUser,
                                                              myUser:
                                                              uState
                                                                  .signedInUser,
                                                            ),
                                                            MessagesList(
                                                              state: mState,
                                                              diseaperingMessage:
                                                              diseaperingMessage,
                                                              desepeaearingStartTime:
                                                              desepeaearingStartTime,
                                                              peerUser: widget
                                                                  .peerUser,
                                                              enableBar: (v) {
                                                                setState(() {});
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      }
                                                    } else {
                                                      print(
                                                          "messagesList returned");
                                                      return MessagesList(
                                                        state: mState,
                                                        diseaperingMessage:
                                                        diseaperingMessage,
                                                        desepeaearingStartTime:
                                                        desepeaearingStartTime,
                                                        peerUser: widget
                                                            .peerUser,
                                                        enableBar: (v) {
                                                          setState(() {});
                                                        },
                                                      );
                                                    }
                                                  } else {
                                                    print(
                                                        "sayHiDialog returned");
                                                    return SayHiDialog(
                                                      myUser: uState
                                                          .signedInUser,
                                                      peerUser: widget.peerUser,
                                                    );
                                                  }
                                                } else {
                                                  print(
                                                      "messagesList returned");
                                                  return MessagesList(
                                                    state: mState,
                                                    diseaperingMessage:
                                                    diseaperingMessage,
                                                    desepeaearingStartTime:
                                                    desepeaearingStartTime,
                                                    peerUser: widget.peerUser,
                                                    enableBar: (v) {
                                                      setState(() {});
                                                    },
                                                  );
                                                }
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    const SizedBoxH30(),
                                    const SizedBoxH30(),
                                    Center(
                                      child: Text(
                                        "${widget.peerUser.countryCode} ${widget
                                            .peerUser.phoneNumber}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,

                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        displayNameOrNumber,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,

                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Material(
                                        shape: const CircleBorder(),
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: widget.peerUser
                                            .profilePictureUrl !=
                                            AppConstants.dummyProfilePictureUrl
                                            ? Ink.image(
                                          image: NetworkImage(
                                            isBlock.isEmpty
                                                ? widget
                                                .peerUser.profilePictureUrl
                                                : AppConstants
                                                .dummyProfilePictureUrl,
                                          ),
                                          fit: BoxFit.cover,
                                          width: 120.0,
                                          height: 120.0,
                                          child: InkWell(
                                            onTap: () {},
                                          ),
                                        )
                                            : Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: widget.peerUser.userColor ==
                                                'Colors.red'
                                                ? Colors.red.withOpacity(.2)
                                                : widget.peerUser.userColor ==
                                                'Colors.blue'
                                                ? Colors.blue.withOpacity(.2)
                                                : widget.peerUser.userColor ==
                                                'Colors.green'
                                                ? Colors.green
                                                .withOpacity(.2)
                                                : widget.peerUser
                                                .userColor ==
                                                'Colors.yellow'
                                                ? Colors.yellow
                                                .withOpacity(
                                              .2,
                                            )
                                                : widget.peerUser
                                                .userColor ==
                                                'Colors.orange'
                                                ? Colors.orange
                                                .withOpacity(
                                              .2,
                                            )
                                                : widget.peerUser
                                                .userColor ==
                                                'Colors.lightGreen'
                                                ? Colors
                                                .lightGreen
                                                .withOpacity(
                                                .2)
                                                : widget.peerUser.userColor ==
                                                'Colors.pinkAccent'
                                                ? Colors
                                                .pinkAccent
                                                .withOpacity(
                                                .2)
                                                : widget.peerUser.userColor ==
                                                'Colors.cyan'
                                                ? Colors.cyan.withOpacity(.2)
                                                : widget.peerUser.userColor ==
                                                'Colors.purple'
                                                ? Colors.purple.withOpacity(.2)
                                                : Colors.black.withOpacity(.2),
                                            // border: Border.all(
                                            //   color: colors[index],
                                            // ),
                                          ),
                                          alignment: Alignment.center,
                                          width: 80,
                                          height: 80,
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            HelperFunctions.getNameInitials(
                                              displayNameOrNumber.contains("+")
                                                  ? widget.peerUser.name
                                                  : displayNameOrNumber,
                                            ).toUpperCase(),
                                            style: TextStyle(
                                              color: widget.peerUser
                                                  .userColor ==
                                                  'Colors.red'
                                                  ? Colors.red
                                                  : widget.peerUser.userColor ==
                                                  'Colors.blue'
                                                  ? Colors.blue
                                                  : widget.peerUser
                                                  .userColor ==
                                                  'Colors.green'
                                                  ? Colors.green
                                                  : widget.peerUser
                                                  .userColor ==
                                                  'Colors.yellow'
                                                  ? Colors.yellow
                                                  : widget.peerUser
                                                  .userColor ==
                                                  'Colors.orange'
                                                  ? Colors.orange
                                                  : widget.peerUser
                                                  .userColor ==
                                                  'Colors.lightGreen'
                                                  ? Colors
                                                  .lightGreen
                                                  : widget.peerUser.userColor ==
                                                  'Colors.pinkAccent'
                                                  ? Colors
                                                  .pinkAccent
                                                  : widget.peerUser.userColor ==
                                                  'Colors.cyan'
                                                  ? Colors.cyan
                                                  : widget.peerUser.userColor ==
                                                  'Colors.purple'
                                                  ? Colors.purple
                                                  : Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (mState.isReplying &&
                                  mState.replayMessageSelect != null)
                                Container(
                                  //  height: 100,

                                  width: Size.infinite.width,
                                  color: context
                                      .read<SettingsBloc>()
                                      .state
                                      .appThemeMode ==
                                      ThemeMode.dark
                                      ? Colors.grey.shade600 : Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons
                                                  .arrowshape_turn_up_right_fill,
                                              color: Colors.blue.shade200,
                                            ),
                                            // Container(
                                            //   decoration: BoxDecoration(
                                            //     color: Colors.white,
                                            //     borderRadius: BorderRadius.only(
                                            //       bottomLeft: Radius.circular(
                                            //         8.0,
                                            //       ),
                                            //       topLeft: Radius.circular(
                                            //         8.0,
                                            //       ),
                                            //     ),
                                            //   ),
                                            //   width: 4.0,
                                            // ),
                                            Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  horizontal: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    mState.replayMessageSelect!
                                                        .messageModel!.sender
                                                        .name,
                                                    style: TextStyle(
                                                        color: Colors.blue
                                                            .shade200),
                                                  ),
                                                  Container(
                                                    constraints: const BoxConstraints(
                                                        maxWidth: 250),
                                                    child: Text(
                                                      mState
                                                          .replayMessageSelect!
                                                          .messageModel!.text,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
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
                                      //   state.replayMessageSelect!,
                                      //   BorderRadius.circular(8),
                                      //   context.read<UserBloc>().state.signedInUser,
                                      //   widget.peerUser,
                                      //   "",
                                      //   "",
                                      //   Getters.getChatDocumentId(
                                      //     Getters.getCurrentUserUid(),
                                      //     widget.peerUser.uid,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              if (isBlock.isEmpty)
                                SendMessageToolbar(
                                  peerUser: widget.peerUser,
                                  editMessage: null,
                                )
                              else
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  color: Kolors.primary.withOpacity(0.2),
                                  child: isBlock == Getters.getCurrentUserUid()
                                      ? Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) =>
                                                AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(5),
                                                  ),
                                                  title: Text(
                                                    "${context
                                                        .read<SettingsBloc>()
                                                        .state
                                                        .languageData
                                                        .unblock} ${widget
                                                        .peerUser.name} ?",
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight
                                                          .w600,
                                                    ),
                                                  ),
                                                  content: Text(
                                                    "${context
                                                        .read<SettingsBloc>()
                                                        .state
                                                        .languageData
                                                        .UnblockToSendAMessageOrMakeACall}.",
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight
                                                          .normal,
                                                    ),
                                                  ),
                                                  actions: [
                                                    FlatButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                            context,
                                                          ),
                                                      textColor: Kolors.primary,
                                                      child: Text(
                                                        context
                                                            .read<
                                                            SettingsBloc>()
                                                            .state
                                                            .languageData
                                                            .cancel,
                                                      ),
                                                    ),
                                                    FlatButton(
                                                      onPressed: () {
                                                        final Map blockDataMap =
                                                        context
                                                            .read<UserBloc>()
                                                            .state
                                                            .signedInUser
                                                            .mute!;
                                                        blockDataMap.remove(
                                                            widget.peerUser
                                                                .uid);
                                                        final KahoChatUser
                                                        updatedUser = context
                                                            .read<UserBloc>()
                                                            .state
                                                            .signedInUser
                                                            .copyWith(
                                                            mute:
                                                            blockDataMap);
                                                        context.read<UserBloc>()
                                                            .add(
                                                            UserEvent
                                                                .createOrUpdateUser(
                                                                updatedUser));
                                                        // FirebaseFirestore.instance
                                                        //     .usersCollection
                                                        //     .doc(Getters
                                                        //         .getCurrentUserUid())
                                                        //     .set(
                                                        //         updatedUser
                                                        //             .toMap(),
                                                        //         SetOptions(
                                                        //             merge: true));
                                                        FirebaseFirestore
                                                            .instance
                                                            .chatCollection
                                                            .doc(
                                                          Getters
                                                              .getCurrentUserUid(),
                                                        )
                                                            .chatUsersCollection
                                                            .doc(
                                                          widget.peerUser.uid,
                                                        )
                                                            .update({
                                                          'isBlock': null
                                                        })
                                                            .whenComplete(() {
                                                          FirebaseFirestore
                                                              .instance
                                                              .chatCollection
                                                              .doc(
                                                            widget.peerUser.uid,
                                                          )
                                                              .chatUsersCollection
                                                              .doc(
                                                            Getters
                                                                .getCurrentUserUid(),
                                                          )
                                                              .update(
                                                              {
                                                                'isBlock': null
                                                              });
                                                          context
                                                              .read<ChatsBloc>()
                                                              .add(
                                                            ChatsEvent
                                                                .sendBlockMessage(
                                                              myUser: context
                                                                  .read<
                                                                  UserBloc>()
                                                                  .state
                                                                  .signedInUser,
                                                              peerUser:
                                                              widget.peerUser,
                                                              message: "unblock",
                                                            ),
                                                          );
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        });
                                                      },
                                                      textColor: Kolors.primary,
                                                      child: Text(
                                                        context
                                                            .read<
                                                            SettingsBloc>()
                                                            .state
                                                            .languageData
                                                            .unblock,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                          );
                                        },
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: const TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            text:
                                            "You blocked this user. You can not message or make a call.",
                                            children: [
                                              TextSpan(
                                                text: " Tap ",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Kolors.primary,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "to unblock",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                      : Text(
                                    "${widget.peerUser.countryCode} ${widget
                                        .peerUser
                                        .phoneNumber} has blocked you. You cannot message or make a call.",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    });
              });
        },
      ),
    );
  }
}

// class AcceptDeclineText extends StatelessWidget {
//   final String text;
//   final double width;
//   const AcceptDeclineText({
//     Key? key,
//     required this.text,
//     required this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       // alignment: Alignment
//       //     .center,
//       child: Container(
//         // height: ,
//         // width: MediaQuery.of(context).size.width * width,
//         padding: const EdgeInsets.symmetric(
//           horizontal: 18.0,
//           vertical: 12,
//         ),
//         margin: const EdgeInsets.symmetric(
//           horizontal: 20.0,
//           vertical: 10.0,
//         ),
//         decoration: const BoxDecoration(
//           color: Kolors.grey350,
//           borderRadius: BorderRadius.all(
//             Radius.circular(20.0),
//           ),
//         ),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }

class MessagesList extends StatelessWidget {
  const MessagesList({
    Key? key,
    required this.peerUser,
    required this.state,
    required this.enableBar,
    required this.diseaperingMessage,
    required this.desepeaearingStartTime,
  }) : super(key: key);

  final Timestamp? desepeaearingStartTime;
  final num diseaperingMessage;
  final ValueChanged<bool> enableBar;
  final KahoChatUser peerUser;
  final MessageSelectState state;

  @override
  Widget build(BuildContext context) {
    print("message list rebuild");
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        StreamBuilder<QuerySnapshot>(
          stream: (diseaperingMessage != 0 && desepeaearingStartTime != null)
              ? FirebaseFirestore.instance.chatCollection
              .doc(Getters.getCurrentUserUid())
              .chatUsersCollection
              .doc(peerUser.uid)
              .messagesCollection
              .where(
            'timeOfSending',
            isLessThan: desepeaearingStartTime,
          )
              .orderBy('timeOfSending', descending: true)
              .limit(_limit)
              .snapshots()
              : FirebaseFirestore.instance.chatCollection
              .doc(Getters.getCurrentUserUid())
              .chatUsersCollection
              .doc(peerUser.uid)
              .messagesCollection
              .orderBy('timeOfSending', descending: true)
              .limit(_limit)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (_isLoading) {
              _isLoading = false;
            }
            if (snapshot.hasData) {
              final List<DocumentSnapshot> _catchMessageList = state.isSearching
                  ? snapshot.data!.docs
                  .where(
                    (element) =>
                element.data().toJson()['type'] !=
                    MessageType.deleted.toString(),
              )
                  .where(
                    (element) =>
                    element
                        .data()
                        .toJson()['text']
                        .toString()
                        .startsWith(state.searchTextVal),
              )
                  .toList()
                  : snapshot.data!.docs
                  .where(
                    (element) =>
                element.data().toJson()['type'] !=
                    MessageType.deleted.toString(),
              )
                  .toList();
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
                  final first = DateTime(_firstTime!.toDate().year,
                      _firstTime
                          .toDate()
                          .month, _firstTime
                          .toDate()
                          .day);
                  final sec = DateTime(_secTime!.toDate().year,
                      _secTime
                          .toDate()
                          .month, _secTime
                          .toDate()
                          .day);
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
                                :   Colors.grey.shade400,
                          ),
                          child: const Text("Yesterday",
                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white)),
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
                                :  Colors.grey.shade400,
                          ),
                          child: const Text("Today",
                              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white)),
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
                            color: context
                                .read<SettingsBloc>()
                                .state
                                .appThemeMode ==
                                ThemeMode.dark
                                ? Colors.grey.shade700
                                :  Colors.grey.shade400,
                          ),
                          child: Text(
                              DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY)
                                  .format(first),
                              style:
                              const TextStyle(fontWeight: FontWeight.w700,color: Colors.white)),
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
                      {
                        ..._catchMessageList[index].data().toJson(),
                        "messageId": _catchMessageList[index].id
                      },
                    ),
                    index: index,
                    documentId: val.id,
                  );
                  final bool isSentByMe = Getters.getCurrentUserUid() ==
                      message.messageModel!.sender.uid;
                  if (message.messageModel!.type == MessageType.note) {
                    return NoteMessage(message.messageModel!.text);
                  }
                  if (!message.messageModel!.isDeleted()) {
                    return SwipeTo(
                      iconColor: Colors.transparent,
                      // onLeftSwipe: () async {
                      //   Vibration.vibrate(duration: 50, amplitude: 2);
                      //   context.read<MessageSelectBloc>().add(
                      //         MessageSelectEvent.replayMessage(
                      //           message: MessageSelectModel(
                      //             documentId: val.id,
                      //             index: index,
                      //             messageModel: message.messageModel,
                      //           ),
                      //         ),
                      //       );
                      //   context.read<MessageSelectBloc>().add(
                      //         MessageSelectEvent.enableReplay(isReplying: true),
                      //       );
                      // },
                      onRightSwipe:
                      message.messageModel?.type == MessageType.blocked
                          ? null
                          : () async {
                        Vibration.vibrate(duration: 50, amplitude: 2);
                        dev.log(
                            "swipped ${message.messageModel?.toMap()}");
                        if (message.messageModel?.type ==
                            MessageType.replay) {
                          message.messageModel?.forwared = null;
                        }
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
                      },
                      child: GestureDetector(
                        onTap: message.messageModel?.type == MessageType.blocked
                            ? null
                            : () {
                          if (state.isAppSelectionbarEnable) {
                            if (!state.selectedIndexList
                                .containsKey(index)) {
                              context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.changeSelection(
                                  chat: {
                                    index: MessageSelectModel(
                                      documentId: val.id,
                                      index: index,
                                      messageModel:
                                      message.messageModel,
                                    )
                                  },
                                ),
                              );
                            } else {
                              if (state.selectedIndexList.length == 1) {
                                context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent
                                      .enableSelectionBar(
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
                          enableBar(true);
                        },
                        onLongPress: message.messageModel?.type ==
                            MessageType.blocked
                            ? null
                            : () {
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
                          enableBar(true);
                        },
                        child: Container( constraints: BoxConstraints( maxWidth: MediaQuery.of(context).size.width*.8),

                          // width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 2),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          color: state.selectedIndexList[index] != null &&
                              state.isAppSelectionbarEnable
                              ? context.read<SettingsBloc>().state.appThemeMode ==
                              ThemeMode.dark
                              ? Colors.grey.shade500
                              : Colors.indigo.shade100
                              : Colors.transparent,
                          child: Row(
                            mainAxisAlignment: isSentByMe
                                ? MainAxisAlignment.spaceBetween
                                : MainAxisAlignment.start,
                            // ignore: avoid_redundant_argument_values
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (state.selectedIndexList[index] != null &&
                                  state.isAppSelectionbarEnable)
                                 Padding(
                                  padding: EdgeInsets.only(right: 2.0),
                                  child: Icon(
                                    CupertinoIcons.check_mark_circled_solid,
                                    color:Kolors.primary,
                                  ),
                                ),
                              // else
                              //   const SizedBox(),
                              Expanded(
                                child: Container(
                                  // constraints: BoxConstraints(
                                  //   maxWidth: (MediaQuery.of(context).size.width *
                                  //           0.70) +
                                  //       60,
                                  // ),
                                  child: GetMessageWidget.getMessageWidget(
                                    isSentByMe,
                                    message,
                                    HelperFunctions.getChatShape(
                                      _catchMessageList,
                                      index,
                                    ),
                                    context
                                        .read<UserBloc>()
                                        .state
                                        .signedInUser,
                                    peerUser,
                                    val.id,
                                    "",
                                    Getters.getChatDocumentId(
                                      Getters.getCurrentUserUid(),
                                      peerUser.uid,
                                    ),
                                    isLastMessage,
                                  ),
                                ),
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
        ),
        if (diseaperingMessage != 0) ...[
          StreamBuilder<QuerySnapshot>(
            stream: (diseaperingMessage != 0 && desepeaearingStartTime != null)
                ? FirebaseFirestore.instance.chatCollection
                .doc(Getters.getCurrentUserUid())
                .chatUsersCollection
                .doc(peerUser.uid)
                .messagesCollection
            //.where('type',isNotEqualTo: MessageType.deleted.toString())
                .where('timeOfSending',
                isGreaterThan: Timestamp.fromDate(DateTime.now()
                    .subtract(
                    Duration(seconds: diseaperingMessage.toInt()))))
                .orderBy('timeOfSending', descending: true)
                .limit(_limit)
                .snapshots()
                : FirebaseFirestore.instance.chatCollection
                .doc(Getters.getCurrentUserUid())
                .chatUsersCollection
                .doc(peerUser.uid)
                .messagesCollection
            //.where('type',isNotEqualTo: MessageType.deleted.toString())
                .orderBy('timeOfSending', descending: true)
                .limit(_limit)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                final List<DocumentSnapshot> _catchMessageList =
                state.isSearching
                    ? snapshot.data!.docs
                    .where(
                      (element) =>
                      element
                          .data()
                          .toJson()['text']
                          .toString()
                          .startsWith(state.searchTextVal),
                )
                    .toList()
                    : snapshot.data!.docs;
                return ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _catchMessageList.length,
                  itemBuilder: (context, index) {
                    final val = _catchMessageList[index];
                    final isLastMessage = val.id == _catchMessageList.first.id;
                    final message = MessageSelectModel(
                      messageModel: MessageModel.fromMap(
                        _catchMessageList[index].data().toJson(),
                      ),
                      index: index,
                      documentId: val.id,
                    );
                    final bool isSentByMe = Getters.getCurrentUserUid() ==
                        message.messageModel!.sender.uid;
                    if (message.messageModel!.type != MessageType.deleted) {
                      return SwipeTo(
                        iconSize: 0,
                        iconColor: Colors.transparent,
                        onRightSwipe: () {
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
                                  isReplying: true));
                        },
                        child: GestureDetector(
                          onTap: () {
                            if (state.isAppSelectionbarEnable) {
                              if (!state.selectedIndexList.containsKey(index)) {
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
                                if (state.selectedIndexList.length != 1) {
                                  context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.removeSelection(
                                      index: index,
                                    ),
                                  );
                                } else {
                                  context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.enableSelectionBar(
                                      isSelectionBar: false,
                                    ),
                                  );
                                  context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.removeSelection(
                                      index: index,
                                    ),
                                  );
                                }
                              }
                            }
                            enableBar(true);
                          },
                          onLongPress: () {
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
                          },
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            margin: const EdgeInsets.only(top: 2),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            color: state.selectedIndexList[index] != null &&
                                state.isAppSelectionbarEnable
                                ? Colors.indigo.shade100
                                : Colors.transparent,
                            child: Row(
                              mainAxisAlignment: isSentByMe
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (state.selectedIndexList[index] != null &&
                                    state.isAppSelectionbarEnable)
                                  const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Icon(
                                      CupertinoIcons.check_mark_circled_solid,
                                      color: Kolors.primary,
                                    ),
                                  )
                                else
                                  const SizedBox(width: 0),
                                Container(
                                  constraints:
                                  const BoxConstraints(maxWidth: 300),
                                  child: GetMessageWidget.getMessageWidget(
                                    isSentByMe,
                                    message,
                                    HelperFunctions.getChatShape(
                                      _catchMessageList,
                                      index,
                                    ),
                                    context
                                        .read<UserBloc>()
                                        .state
                                        .signedInUser,
                                    peerUser,
                                    val.id,
                                    "",
                                    Getters.getChatDocumentId(
                                      Getters.getCurrentUserUid(),
                                      peerUser.uid,
                                    ),
                                    isLastMessage,
                                  ),
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
          ),
        ]
      ],
    );
  }
}

class ReceivedInviteRequest extends StatefulWidget {
  const ReceivedInviteRequest(
      {Key? key, required this.peerUser, required this.myUser})
      : super(key: key);

  final KahoChatUser myUser;
  final KahoChatUser peerUser;

  @override
  State<ReceivedInviteRequest> createState() => _ReceivedInviteRequestState();
}

class _ReceivedInviteRequestState extends State<ReceivedInviteRequest> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.invitesCollection
            .doc(widget.myUser.uid)
            .inviteUsersCollection
            .doc(widget.peerUser.uid)
            .snapshots(),
        builder: (context, snapShot) {
          if (!snapShot.hasData) {
            return const SizedBox.shrink();
          }
          if (snapShot.hasData && snapShot.data!.exists) {
            final answered = snapShot.data!["answered"] != null
                ? snapShot.data!["answered"] as bool
                : null;
            final accepted = snapShot.data!["answered"] != null
                ? snapShot.data!["accepted"] as bool
                : null;
            // update the chatsbloc

            if (answered == null) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: Kolors.wallLightBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/lottie_json/star_emoji.json',
                      height: 40,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                    const SizedBoxH10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${widget.peerUser.name} ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        Text(
                          context
                              .read<SettingsBloc>()
                              .state
                              .languageData
                              .wantsToConnectWithYou,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBoxH10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) =>
                                  AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    // title: Text(
                                    //   "${context.read<SettingsBloc>().state.languageData.Block} ${peerUser.name} ?",
                                    //   style: const TextStyle(
                                    //     fontSize: 16,
                                    //     fontWeight: FontWeight.w600,
                                    //   ),
                                    // ),
                                    title: Text(
                                      "${context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .AreYouSureYouWantToDeclineThisChatInvitatation} ?",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    content: StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setStatee) {
                                        return CheckboxListTile(
                                          contentPadding: EdgeInsets.zero,
                                          controlAffinity:
                                          ListTileControlAffinity.leading,
                                          title: Text(
                                              "${context
                                                  .read<SettingsBloc>()
                                                  .state
                                                  .languageData
                                                  .AlsoBlockThisUser}."),
                                          value: checkBoxValue,
                                          onChanged: (value) {
                                            print(value);
                                            setStatee(() {
                                              checkBoxValue = value!;
                                            });
                                          },
                                        );
                                      },
                                    ),
                                    actions: [
                                      FlatButton(
                                        onPressed: () => Navigator.pop(context),
                                        textColor: Kolors.primary,
                                        child: Text(
                                          context
                                              .read<SettingsBloc>()
                                              .state
                                              .languageData
                                              .cancel,
                                        ),
                                      ),
                                      FlatButton(
                                        onPressed: () {
                                          context.read<ChatsBloc>().add(
                                            ChatsEvent.inviteMessage(
                                              myUser: context
                                                  .read<UserBloc>()
                                                  .state
                                                  .signedInUser,
                                              peerUser: widget.peerUser,
                                              message: "invite",
                                              type: MessageType.inviteDecline,
                                            ),
                                          );
                                          context.read<ChatsBloc>().add(
                                            ChatsEvent.declineInvite(
                                                peerUser: widget.peerUser,
                                                myUser: widget.myUser,
                                                accepted: "false"),
                                          );
                                          context.read<ChatsBloc>().add(
                                            ChatsEvent.fetchInviteStatus(
                                                peerUser: widget.peerUser,
                                                myUser: widget.myUser),
                                          );
                                          if (checkBoxValue) {
                                            final Map blockDataMap = context
                                                .read<UserBloc>()
                                                .state
                                                .signedInUser
                                                .mute!;
                                            // blockDataMap.addAll('': 'blocked');
                                            blockDataMap.putIfAbsent(
                                              widget.peerUser.uid,
                                                  () => 'blocked',
                                            );
                                            final KahoChatUser updatedUser = context
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
                                            FirebaseFirestore
                                                .instance.chatCollection
                                                .doc(
                                                Getters.getCurrentUserUid())
                                                .chatUsersCollection
                                                .doc(widget.peerUser.uid)
                                                .set(
                                                {
                                                  'isBlock':
                                                  Getters.getCurrentUserUid(),
                                                },
                                                SetOptions(
                                                    merge: true))
                                                .whenComplete(
                                                    () {
                                                  FirebaseFirestore
                                                      .instance.chatCollection
                                                      .doc(widget.peerUser.uid)
                                                      .chatUsersCollection
                                                      .doc(Getters
                                                      .getCurrentUserUid())
                                                      .set({
                                                    'isBlock':
                                                    Getters.getCurrentUserUid()
                                                  }, SetOptions(merge: true));
                                                  context.read<ContactsBloc>()
                                                      .add(
                                                      const ContactsEvent
                                                          .blockedContacts());
                                                  context.read<ChatsBloc>().add(
                                                    ChatsEvent.sendBlockMessage(
                                                      myUser: context
                                                          .read<UserBloc>()
                                                          .state
                                                          .signedInUser,
                                                      peerUser: widget.peerUser,
                                                      message: "blocked",
                                                    ),
                                                  );
                                                });
                                          }
                                          Navigator.pop(context);
                                        },
                                        textColor: Kolors.primary,
                                        child: Text(
                                          context
                                              .read<SettingsBloc>()
                                              .state
                                              .languageData
                                              .Decline,
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          },
                          child: Container(
                            width: 120.0,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              // color: Kolors.primary,
                              border: Border.all(width: 2.0),
                              borderRadius: BorderRadius.circular(
                                24.0,
                              ),
                            ),
                            child: Text(
                              context
                                  .read<SettingsBloc>()
                                  .state
                                  .languageData
                                  .Decline,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Kolors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        GestureDetector(
                          onTap: () {
                            context.read<ChatsBloc>().add(
                              ChatsEvent.inviteMessage(
                                myUser: context
                                    .read<UserBloc>()
                                    .state
                                    .signedInUser,
                                peerUser: widget.peerUser,
                                message: "invite",
                                type: MessageType.inviteAccepted,
                              ),
                            );
                            context.read<ChatsBloc>().add(
                              ChatsEvent.answerInvite(
                                peerUser: widget.peerUser,
                                myUser: widget.myUser,
                                accepted: "true",
                                answered: "true",
                              ),
                            );
                            context.read<ChatsBloc>().add(
                              ChatsEvent.fetchInviteStatus(
                                peerUser: widget.peerUser,
                                myUser: widget.myUser,
                              ),
                            );
                          },
                          child: Container(
                            width: 120.0,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: Kolors.primary,
                              border:
                              Border.all(width: 2.0, color: Kolors.primary),
                              borderRadius: BorderRadius.circular(
                                24.0,
                              ),
                            ),
                            child: Text(
                              context
                                  .read<SettingsBloc>()
                                  .state
                                  .languageData
                                  .accept,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Kolors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }
            if (accepted == false) {
              return InvitationReceiverContainer(
                text:
                "${context
                    .read<SettingsBloc>()
                    .state
                    .languageData
                    .YouHaveDeclinedThisChatInvitation}.",
                verticalPadding: 10.0,
                myUser: widget.myUser,
                peerUser: widget.peerUser,
                width: double.infinity,
              );
            }
          }
          return const SizedBox.shrink();
        });
  }
}

class InvitationReceiverContainer extends StatelessWidget {
  final String text;
  final double verticalPadding;
  final double width;
  final KahoChatUser peerUser;
  final KahoChatUser myUser;

  const InvitationReceiverContainer({
    Key? key,
    required this.text,
    required this.verticalPadding,
    required this.myUser,
    required this.peerUser,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ,
      width: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: verticalPadding,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: const BoxDecoration(
        color: Kolors.grey350,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.abc),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.block,
                color: Kolors.red,
              ),
              const SizedBoxW10(),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$text.",
                        style: const TextStyle(
                          color: Kolors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Tap to accept",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // context
                            //     .read<UserBloc>()
                            //     .add(const UserEvent.getSignedInUser());

                            // print('invite accepted');
                            if (context
                                .read<UserBloc>()
                                .state
                                .signedInUser
                                .mute!
                                .containsKey(peerUser.uid)) {
                              Fluttertoast.showToast(
                                msg:
                                'Unblock this user before accepting the chat invitation.',
                                backgroundColor: Kolors.grey,
                              );
                            } else {
                              context.read<ChatsBloc>().add(
                                ChatsEvent.inviteMessage(
                                  myUser: context
                                      .read<UserBloc>()
                                      .state
                                      .signedInUser,
                                  peerUser: peerUser,
                                  message: "invite",
                                  type: MessageType.inviteAccepted,
                                ),
                              );
                              context.read<ChatsBloc>().add(
                                ChatsEvent.answerInvite(
                                  peerUser: peerUser,
                                  myUser: myUser,
                                  accepted: "true",
                                  answered: "true",
                                ),
                              );
                              context.read<ChatsBloc>().add(
                                ChatsEvent.fetchInviteStatus(
                                  peerUser: peerUser,
                                  myUser: myUser,
                                ),
                              );
                            }
                          },
                        style: const TextStyle(
                          color: Kolors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SenderInvitationContainer extends StatelessWidget {
  final String text;
  final double verticalPadding;
  final KahoChatUser? peerUser;
  final KahoChatUser? myUser;

  const SenderInvitationContainer({
    Key? key,
    required this.text,
    required this.verticalPadding,
    this.myUser,
    this.peerUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: verticalPadding,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: const BoxDecoration(
        color: Kolors.grey350,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.abc),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.block,
                color: Kolors.red,
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: RichText(
                  // textAlign: TextAlign.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$text.",
                        style: const TextStyle(
                          color: Kolors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SayHiDialog extends StatelessWidget {
  const SayHiDialog({Key? key, required this.peerUser, required this.myUser})
      : super(key: key);

  final KahoChatUser myUser;
  final KahoChatUser peerUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: const BoxDecoration(
        color: Kolors.wallLightBlue,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              text: "👋",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
          const SizedBoxH10(),
          Text(
              "${context
                  .read<SettingsBloc>()
                  .state
                  .languageData
                  .sayHiTo} ${peerUser.name} ${context
                  .read<SettingsBloc>()
                  .state
                  .languageData
                  .withAWave}"),
          const SizedBoxH10(),
          GestureDetector(
            onTap: () {
              context.read<ChatsBloc>().add(
                ChatsEvent.sendTextMessage(
                  myUser: myUser,
                  peerUser: peerUser,
                  message: "👋",
                ),
              );

              context.read<ChatsBloc>().add(
                const ChatsEvent.setIsNewPeer(
                  isNew: false,
                ),
              );
              // sendInvite();
              context.read<ChatsBloc>().add(
                ChatsEvent.sendInvite(peerUser: peerUser, myUser: myUser),
              );
              context.read<ChatsBloc>().add(
                ChatsEvent.fetchInviteStatus(
                    peerUser: peerUser, myUser: myUser),
              );
            },
            child: Container(
              width: 160.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: Kolors.primary,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Text(
                context
                    .read<SettingsBloc>()
                    .state
                    .languageData
                    .sayHi,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Kolors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PendingInviteResponse extends StatelessWidget {
  const PendingInviteResponse(
      {Key? key, required this.peerUser, required this.myUser})
      : super(key: key);

  final KahoChatUser myUser;
  final KahoChatUser peerUser;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance.invitesCollection
          .doc(myUser.uid)
          .inviteUsersCollection
          .doc(peerUser.uid)
          .snapshots(),
      builder: (context, snapShot) {
        if (!snapShot.hasData) {
          return const SizedBox.shrink();
        }
        if (snapShot.hasData && snapShot.data!.exists) {
          final answered = snapShot.data!["answered"] != null
              ? snapShot.data!["answered"] as bool
              : null;
          final accepted = snapShot.data!["answered"] != null
              ? snapShot.data!["accepted"] as bool
              : null;
          if (answered == null) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              decoration: const BoxDecoration(
                color: Kolors.wallLightBlue,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Lottie.asset(
                    'assets/lottie_json/sleepy_emoji.json',
                    height: 40,
                    width: 40,
                  ),
                  const SizedBoxH20(),
                  Text(
                    "${context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .waitingFor} ${peerUser.name} ${context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .toAcceptInvitation}",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }
          //  else if (accepted == false) {
          //   return Column(
          //     children: [
          //       SenderInvitationContainer(
          //         text:
          //             "${peerUser.countryCode} ${peerUser.phoneNumber} has declined your chat invitation",
          //         verticalPadding: 10.0,
          //       ),

          //       // if (answered == true) ...[
          //       //   AcceptDeclineText(
          //       //     text:
          //       //         '${peerUser.countryCode} ${peerUser.phoneNumber} has accepted your chat invitation',
          //       //     width: .75,
          //       //   ),
          //       // ],
          //     ],
          //   );
          // }
          else {
            return const SizedBox.shrink();
          }

          //   if (answered == true) {
          //   return AcceptDeclineText(
          //     text:
          //         '${peerUser.countryCode} ${peerUser.phoneNumber} has accepted your chat invitation.',
          //     width: .75,
          //   );
          // }
        }
        return const SizedBox.shrink();
      },
    );
  }
}
