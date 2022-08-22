import 'dart:developer';
import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/audio.dart';
import 'package:flutter_template/presentation/base/chats/widgets/bottom_sheet_menu.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';
import 'package:flutter_template/presentation/core/widgets/keyboard_visibility_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SendMessageToolbar extends StatefulWidget {
  const SendMessageToolbar({
    Key? key,
    required this.peerUser,
    required this.editMessage,
  }) : super(key: key);
  final KahoChatUser peerUser;
  final MessageSelectModel? editMessage;
  @override
  _SendMessageToolbarState createState() => _SendMessageToolbarState();
}

class _SendMessageToolbarState extends State<SendMessageToolbar> {
  late TextEditingController messageTextTEC;
  late bool isEmojiKeyboardOpened;
  late bool isTextKeyboardOpened;
  var brightness;
  late bool isDarkMode;
  Timer? _timer = null;
  bool isTyping = false;

  @override
  void initState() {
    try {
      context.read<ChatsBloc>().add(
            ChatsEvent.setReadUnread(
              myUser: Getters.getCurrentUserUid(),
              peerUser: widget.peerUser.uid,
            ),
          );
    } catch (e) {
      log(e.toString());
    }
    if (context.read<SettingsBloc>().state.appThemeMode == ThemeMode.system) {
      brightness = SchedulerBinding.instance.window.platformBrightness;
      isDarkMode = SchedulerBinding.instance.window.platformBrightness ==
          Brightness.light;
    }
    super.initState();
    isEmojiKeyboardOpened = false;
    isTextKeyboardOpened = false;
    var text = "";
    if (widget.editMessage != null) {
      text = widget.editMessage!.messageModel!.text;
    }
    messageTextTEC = TextEditingController(text: text);
    messageTextTEC.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    messageTextTEC.dispose();
    super.dispose();
  }

  Future<bool> onBackPress() {
    if (isEmojiKeyboardOpened) {
      setState(() {
        isEmojiKeyboardOpened = false;
      });
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    // isTextKeyboardOpened=
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: onBackPress,
          child: KeyboardVisibilityBuilder(
            builder:
                (BuildContext context, Widget? child, bool isKeyboardVisible) {
              if (isKeyboardVisible) {
              } else {}
              return child!;
            },
            child: BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingState) {
                return Container(
                  color:context.read<SettingsBloc>().state.appThemeMode ==
                      ThemeMode.dark
                      ? Colors.grey.shade800
                      : Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 8,
                            ),
                            child: Row(
                              children: [
                                /*if (messageTextTEC.text.isNotEmpty)
                                  IconButton(
                                    padding: const EdgeInsets.all(2.5),
                                    onPressed: () async {
                                      showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (builder) => BottomSheetMenu(
                                          peerUser: widget.peerUser,
                                        ),
                                      );
                                    },
                                    icon: const CircleAvatar(
                                      backgroundColor: Kolors.primary,
                                      radius: 30,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),*/
                                SizedBox(
                                  //width: MediaQuery.of(context).size.width - (messageTextTEC.text.isNotEmpty ? 116 : 68),
                                  width:
                                      MediaQuery.of(context).size.width - (68),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (!isTyping) {
                                        if (state.isUserSignedIn) {
                                          // TODO: new event will be assigned
                                          context.read<UserBloc>().add(
                                                UserEvent
                                                    .createOrUpdateLastActiveStatus(
                                                  activeStatus: state
                                                      .activeStatus
                                                      .copyWith(
                                                    activeStatus:
                                                        ActiveStatus.Typing,
                                                  ),
                                                ),
                                              );
                                        }
                                      }
                                      isTyping = true;
                                      if (_timer != null) {
                                        _timer!.cancel();
                                      }

                                      _timer =
                                          Timer(const Duration(seconds: 2), () {
                                        isTyping = false;
                                        if (state.isUserSignedIn) {
                                          //TODO: NEW EVENT
                                          context.read<UserBloc>().add(
                                                UserEvent
                                                    .createOrUpdateLastActiveStatus(
                                                  activeStatus: state
                                                      .activeStatus
                                                      .copyWith(
                                                    activeStatus:
                                                        ActiveStatus.Online,
                                                  ),
                                                ),
                                              );
                                        }
                                        _timer = null;
                                      });
                                      //print(value);
                                    },
                                    keyboardType: TextInputType.multiline,
                                    minLines: 1,
                                    maxLines: 4,
                                    controller: messageTextTEC,
                                    textInputAction: TextInputAction.newline,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      filled: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 2,
                                      ),
                                      fillColor: settingState.appThemeMode ==
                                              ThemeMode.dark
                                          ? Colors.black26
                                          : Color(0xFFE2E2E2),
                                      // fillColor: settingState.appThemeMode ==
                                      //     ThemeMode.system
                                      //     ? SchedulerBinding.instance.window
                                      //     .platformBrightness ==
                                      //     Brightness.light
                                      //     ? const Color(0xFFE2E2E2)
                                      //     : Theme.of(context).primaryColor
                                      //     : settingState.appThemeMode ==
                                      //     ThemeMode.light
                                      //     ? const Color(0xFFE2E2E2)
                                      //     : Theme.of(context).primaryColor,
                                      // Color(0xFFe2e2e2)
                                      isDense: true,
                                      hintText:
                                          "${context.read<SettingsBloc>().state.languageData.typeAMessage}...",

                                      hintStyle:
                                          Theme.of(context).textTheme.bodyText2,
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      prefixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            // FocusScope.of(context).unfocus();
                                            isEmojiKeyboardOpened =
                                                !isEmojiKeyboardOpened;
                                          });
                                        },
                                        icon: Icon(
                                          isEmojiKeyboardOpened
                                              ? Icons.keyboard_outlined
                                              : CupertinoIcons.smiley,
                                          color:
                                              Theme.of(context).iconTheme.color,
                                          size: 27,
                                        ),
                                      ),
                                      suffixIcon: messageTextTEC.text.isEmpty
                                          ? GestureDetector(
                                              onTap: () {
                                                showBottomSheet(
                                                  context: context,
                                                  builder: (context) =>
                                                      BottomSheet(
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(10),
                                                        topLeft:
                                                            Radius.circular(
                                                          10,
                                                        ),
                                                      ),
                                                    ),
                                                    onClosing: () {},
                                                    builder: (context) => Demo(
                                                      onRecordingDone:
                                                          (String? value) {
                                                        if (value != null) {
                                                          final result =
                                                              File(value);
                                                          final String
                                                              fileName = result
                                                                  .path
                                                                  .split('/')
                                                                  .last;
                                                          context
                                                              .read<ChatsBloc>()
                                                              .add(
                                                                ChatsEvent
                                                                    .uploadFile(
                                                                  fileName:
                                                                      fileName,
                                                                  isUploading:
                                                                      true,
                                                                ),
                                                              );
                                                          //final File file = File(result.files.single.path!);
                                                          context
                                                              .read<ChatsBloc>()
                                                              .add(
                                                                ChatsEvent
                                                                    .sendAudioFile(
                                                                  myUser: state
                                                                      .signedInUser,
                                                                  peerUser: widget
                                                                      .peerUser,
                                                                  filePath:
                                                                      result
                                                                          .path,
                                                                ),
                                                              );
                                                          context
                                                              .read<
                                                                  SQLiteBloc>()
                                                              .add(
                                                                SQLiteEvent
                                                                    .setFilePath(
                                                                  filePath: FileLocation(
                                                                      id: 0, //random value
                                                                      filename: result.path.split('/').last,
                                                                      filepath: result.path,
                                                                      senderUid: state.signedInUser.uid,
                                                                      receiverUid: widget.peerUser.uid),
                                                                ),
                                                              );
                                                          Navigator.pop(
                                                              context);
                                                        } else {
                                                          Fluttertoast
                                                              .showToast(
                                                            msg: "no audio",
                                                            backgroundColor:
                                                                Kolors.grey,
                                                          );
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Icon(
                                                Icons.mic_none_rounded,
                                                size: 25,
                                                color: Theme.of(context)
                                                    .iconTheme
                                                    .color,
                                              ),
                                            )
                                          : null,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            color:  context.read<SettingsBloc>().state.appThemeMode ==
                                ThemeMode.dark
                                ? Colors.white54
                                : null,
                            padding: const EdgeInsets.all(2.5),
                            onPressed: () async {
                              context.read<MessageSelectBloc>().add(
                                    MessageSelectEvent.enableReplay(
                                      isReplying: false,
                                    ),
                                  );
                              context.read<ChatsBloc>().add(
                                    ChatsEvent.setReadUnread(
                                      myUser: Getters.getCurrentUserUid(),
                                      peerUser: widget.peerUser.uid,
                                    ),
                                  );
                              if (messageTextTEC.text.isNotEmpty) {
                                if (!context
                                    .read<MessageSelectBloc>()
                                    .state
                                    .isReplying) {
                                  if (widget.editMessage == null) {
                                    context.read<ChatsBloc>().add(
                                          ChatsEvent.sendTextMessage(
                                            myUser: state.signedInUser,
                                            peerUser: widget.peerUser,
                                            message: messageTextTEC.text.trim(),
                                          ),
                                        );
                                  } else {
                                    context.read<ChatsBloc>().add(
                                          ChatsEvent.editMessage(
                                            myUser: state.signedInUser.uid,
                                            peerUser: widget.peerUser.uid,
                                            message: widget.editMessage!,
                                            text: messageTextTEC.text,
                                          ),
                                        );
                                    context.read<MessageSelectBloc>().add(
                                          MessageSelectEvent
                                              .editSelectedMessage(
                                            isEditing: false,
                                          ),
                                        );
                                    context.read<MessageSelectBloc>().add(
                                          MessageSelectEvent.enableSelectionBar(
                                              isSelectionBar: false),
                                        );
                                    Navigator.pop(context);
                                  }
                                } else {
                                  context.read<ChatsBloc>().add(
                                        ChatsEvent.replayMessage(
                                          myUser: state.signedInUser,
                                          peerUser: widget.peerUser,
                                          message: context
                                              .read<MessageSelectBloc>()
                                              .state
                                              .replayMessageSelect!
                                              .messageModel!,
                                          text: messageTextTEC.text.trim(),
                                        ),
                                      );
                                  context.read<MessageSelectBloc>().add(
                                        MessageSelectEvent.enableReplay(
                                          isReplying: false,
                                        ),
                                      );
                                }
                                messageTextTEC.clear();
                                setState(() {});
                              } else {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  //backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (builder) => BottomSheetMenu(
                                    peerUser: widget.peerUser,
                                  ),
                                );
                              }
                            },
                            icon: messageTextTEC.text.isEmpty
                                ? const CircleAvatar(
                                    backgroundColor: Kolors.primary,
                                    radius: 30,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                : const CircleAvatar(
                                    backgroundColor: Kolors.primary,
                                    radius: 30,
                                    child: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                      if (isEmojiKeyboardOpened)
                        EmojiPickerKeyboard(
                          controller: messageTextTEC,
                          gifSource: GifSource.chat,
                          peerUser: widget.peerUser,
                        )
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
