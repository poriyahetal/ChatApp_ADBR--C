import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/audio.dart';
import 'package:flutter_template/presentation/base/groups/widgets/bottom_sheet_menu_group.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';
import 'package:flutter_template/presentation/core/widgets/keyboard_visibility_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SendMessageToolbarGroup extends StatefulWidget {
  const SendMessageToolbarGroup({
    Key? key,
    required this.groupUid,
    required this.groupName,
  }) : super(key: key);
  final String groupUid;
  final String groupName;

  @override
  _SendMessageToolbarGroupState createState() =>
      _SendMessageToolbarGroupState();
}

class _SendMessageToolbarGroupState extends State<SendMessageToolbarGroup> {
  late TextEditingController messageTextTEC;
  late bool isEmojiKeyboardOpened;
  late bool isTextKeyboardOpened;

  @override
  void initState() {
    super.initState();
    isEmojiKeyboardOpened = false;
    isTextKeyboardOpened = false;
    messageTextTEC = TextEditingController();
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
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingState) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return WillPopScope(
              onWillPop: onBackPress,
              child: KeyboardVisibilityBuilder(
                builder: (BuildContext context, Widget? child,
                    bool isKeyboardVisible) {
                  if (isKeyboardVisible) {
                  } else {}
                  return child!;
                },
                child: Column(
                  // alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          //color: Colors.grey.shade400,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 9,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              /*if(messageTextTEC.text.isNotEmpty)
                                IconButton(
                                  padding: const EdgeInsets.all(2.5),
                                  onPressed: () async {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (builder) =>
                                          BottomSheetMenuGroup(groupUid: widget.groupUid),
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
                                //width: MediaQuery.of(context).size.width-(messageTextTEC.text.isNotEmpty?116:70),
                                width: MediaQuery.of(context).size.width - (70),
                                child: FutureBuilder(
                                    future: Getters.getTranslation(
                                        languageCode: 'en', text: "Type a message..."),
                                    builder: (context, gSnapshot) {
                                      return TextField(
                                        keyboardType: TextInputType.multiline,
                                        minLines: 1,
                                        maxLines: 4,
                                        controller: messageTextTEC,
                                        textInputAction:
                                            TextInputAction.newline,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                          filled: true,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 2),
                                          fillColor: settingState
                                                      .appThemeMode ==
                                                  ThemeMode.system
                                              ? SchedulerBinding
                                                          .instance
                                                          .window
                                                          .platformBrightness ==
                                                      Brightness.light
                                                  ? const Color(0xFFE2E2E2)
                                                  : Theme.of(context)
                                                      .primaryColor
                                              : settingState.appThemeMode ==
                                                      ThemeMode.light
                                                  ? const Color(0xFFE2E2E2)
                                                  : Theme.of(context)
                                                      .primaryColor,
                                          isDense: true,
                                          hintText: !gSnapshot.hasData
                                              ? "Type a message..."
                                              : gSnapshot.data! as String,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                              color: Theme.of(context)
                                                  .iconTheme
                                                  .color,
                                              size: 27,
                                            ),
                                          ),
                                          suffixIcon: messageTextTEC
                                                  .text.isEmpty
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
                                                                Radius.circular(
                                                                    10),
                                                            topLeft:
                                                                Radius.circular(
                                                              10,
                                                            ),
                                                          ),
                                                        ),
                                                        onClosing: () {},
                                                        builder: (context) =>
                                                            Demo(
                                                          onRecordingDone:
                                                              (String? value) {
                                                            if (value != null) {
                                                              context
                                                                  .read<
                                                                      GroupsBloc>()
                                                                  .add(
                                                                    GroupsEvent
                                                                        .sendAudioMessage(
                                                                      myUser: state
                                                                          .signedInUser,
                                                                      groupUid:
                                                                          widget
                                                                              .groupUid,
                                                                      audioPath:
                                                                          value,
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
                                      );
                                    }),
                              ),
                              const SizedBox(width: 4),
                              IconButton(
                                padding: const EdgeInsets.all(2.5),
                                onPressed: () async {
                                  if (messageTextTEC.text.isNotEmpty) {
                                    if (!context
                                        .read<MessageSelectBloc>()
                                        .state
                                        .isReplying) {
                                      context.read<GroupsBloc>().add(
                                            GroupsEvent.sendTextMessage(
                                              message: messageTextTEC.text,
                                              myUser: state.signedInUser,
                                              groupUid: widget.groupUid,
                                              groupName: widget.groupName,
                                            ),
                                          );
                                    } else {
                                      context.read<GroupsBloc>().add(
                                            GroupsEvent.replayMessage(
                                              myUser: state.signedInUser,
                                              groupUid: widget.groupUid,
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
                                  } else {
                                    showModalBottomSheet(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                      ),
                                      context: context,
                                      builder: (builder) =>
                                          BottomSheetMenuGroup(
                                        groupUid: widget.groupUid,
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
                        ),
                      ],
                    ),
                    if (isEmojiKeyboardOpened)
                      EmojiPickerKeyboard(
                        controller: messageTextTEC,
                        gifSource: GifSource.group,
                        groupId: widget.groupUid,
                      )
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
