import 'package:any_link_preview/any_link_preview.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/stories/story_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/stories/widgets/customlist.dart';

import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/base/stories/widgets/custom_react.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewStoryPage extends StatefulWidget {
  ViewStoryPage({required this.storiesModel});
  final StoriesModel storiesModel;
  @override
  State<ViewStoryPage> createState() => ViewStoryPageState();
}

class ViewStoryPageState extends State<ViewStoryPage> {
  final StoryController controller = StoryController();
  List<StoryItem> storyItems = [];
  int currentStoryIndex = 0;
  late final FirebaseFirestore _firestore;
  bool c_user = false;
  bool isclicked = false;
  bool skippedToUnseen = false;
  bool isHover = false;
  bool isReplying = false;
  FocusNode _replyFocusNode = FocusNode();
  bool isReplyingText = false;
  TextEditingController _replyTextController = TextEditingController();
  bool isShowBottomSheet = false;
  bool isEmojiKeyboardOpened = false;
  String userColor = '';
  StoryModel currentDisplayingStory() {
    return widget.storiesModel.stories[currentStoryIndex];
  }

  Future<List<StoryModel>> futureStory() async {
    List<StoryModel> storyModel = await widget.storiesModel.stories;
    return storyModel;
  }

  String convertToAgo(DateTime input) {
    Duration diff = DateTime.now().difference(input);
    if (diff.inDays >= 2) {
      return (DateFormat('MM/dd/yy, hh:mm')
          .format(DateTime.parse(input.toString()))
          .toString());
    } else if (diff.inDays >= 1) {
      return 'Yesterday,${DateFormat('HH:mm').format(input)}';
    } else if (diff.inHours >= 1) {
      return 'Today, ${DateFormat('HH:mm').format(input)}';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }

  Future<void> mute() async {
    if (widget.storiesModel.uid != FirebaseAuth.instance.currentUser!.uid) {
      widget.storiesModel.mute!
          .putIfAbsent(FirebaseAuth.instance.currentUser!.uid, () => "mute");
      await _firestore.storiesCollection.doc(widget.storiesModel.uid).set(
          widget.storiesModel
              .copyWith(stories: widget.storiesModel.stories)
              .toMap(),
          SetOptions(merge: true));
    }
  }

  Future<void> Unmute() async {
    if (widget.storiesModel.uid != FirebaseAuth.instance.currentUser!.uid) {
      widget.storiesModel.mute!.removeWhere(
          (key, value) => key == FirebaseAuth.instance.currentUser!.uid);
      await _firestore.storiesCollection.doc(widget.storiesModel.uid).set(
          widget.storiesModel
              .copyWith(stories: widget.storiesModel.stories)
              .toMap(),
          SetOptions(merge: true));
    }
  }

  Widget muteNotification() {
    return ListTile(
      leading: widget.storiesModel.mute == null
          ? const Icon(Icons.notifications_off_outlined)
          : widget.storiesModel.mute!.keys
                  .contains(FirebaseAuth.instance.currentUser!.uid)
              ? const Icon(Icons.notifications_on_outlined)
              : const Icon(Icons.notifications_off_outlined),
      title: widget.storiesModel.mute == null
          ? Text("${context.read<SettingsBloc>().state.languageData.mute}")
          : widget.storiesModel.mute!.keys
                  .contains(FirebaseAuth.instance.currentUser!.uid)
              ? Text(
                  "${context.read<SettingsBloc>().state.languageData.unmute}")
              : Text("${context.read<SettingsBloc>().state.languageData.mute}"),
      onTap: () {
        if (widget.storiesModel.mute != null &&
            widget.storiesModel.mute!.keys
                .contains(FirebaseAuth.instance.currentUser!.uid)) {
          Unmute();
        } else {
          mute();
        }
        context.read<ContactsBloc>().add(ContactsEvent.unmutedStories(
            FirebaseAuth.instance.currentUser!.uid));
        context.read<ContactsBloc>().add(
            ContactsEvent.muteStories(FirebaseAuth.instance.currentUser!.uid));
        Navigator.pop(context);
        ;
      },
    );
  }

  Widget moreOptions() {
    return Column(
      children: [
        customreact.react(
          index: currentStoryIndex,
          user: widget.storiesModel,
          isHover: isHover,
          currentDisplayingStory: currentDisplayingStory(),
        ),
        /*ListTile(
          leading: const Icon(Icons.reply_outlined),
          title: const TextTranslate('Reply'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              isReplying = true;
            });
          },
        ),*/
        ListTile(
          leading: const Icon(
            CupertinoIcons.arrow_down_to_line,
          ),
          title: Text(
              "${context.read<SettingsBloc>().state.languageData.download}"),
          onTap: () {
            final DownloadFileBloc bloc = DownloadFileBloc();
            bloc.filehandlingEventSink.add(DownloadFile(
                context: context,
                path: LocalStorageConstant.appFolder +
                    LocalStorageConstant.stories,
                fileUrl: currentDisplayingStory().imageUrl!,
                filename: DateTime.now().toString() + '.jpg'));
            Fluttertoast.showToast(
              msg: 'Download successfull',
              backgroundColor: Kolors.grey,
            );
          },
        ),
        muteNotification(),
      ],
    );
  }

  Future<dynamic> deleteStory(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.areYouSureWantToDeleteYourStatus} ?"),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      // currentStoryIndex = currentStoryIndex - 1;
                      // currentDisplayingStory();
                      widget.storiesModel.stories.removeAt(currentStoryIndex);
                      firebasework();
                      AutoRouter.of(context).pop();
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                      controller.pause();
                    });
                  },
                  child: Text(
                      "${context.read<SettingsBloc>().state.languageData.ok}")),
              TextButton(
                  onPressed: () {
                    AutoRouter.of(context).pop();
                    // controller.play();
                  },
                  child: Text(
                      "${context.read<SettingsBloc>().state.languageData.cancel}"))
            ],
          );
        });
  }

  Future<void> firebasework() async {
    if (widget.storiesModel.stories.isNotEmpty) {
      await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
          widget.storiesModel
              .copyWith(stories: widget.storiesModel.stories)
              .toMap(),
          SetOptions(merge: true));
    } else {
      await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
          widget.storiesModel
              .copyWith(
                uid: widget.storiesModel.uid,
                phoneNumber: widget.storiesModel.phoneNumber,
                profilePictureUrl: widget.storiesModel.profilePictureUrl,
              )
              .toMap(),
          SetOptions(merge: true));
    }
    Fluttertoast.showToast(
      msg: "Successfully deleted your Story.",
      backgroundColor: Kolors.grey,
    );
  }

  Widget userOption() {
    return ListTile(
      leading: const Icon(
        Icons.delete_outlined,
      ),
      title: Text("${context.read<SettingsBloc>().state.languageData.delete}"),
      onTap: () {
        deleteStory(context);
      },
    );
  }

  @override
  void initState() {
    KahoChatUser myUser = context.read<UserBloc>().state.signedInUser;

    userColor = myUser.userColor;
    context.read<StoriesBloc>().add(StoriesEvent.storySeenBy(
        widget.storiesModel, currentStoryIndex, myUser));
    context.read<ContactsBloc>().add(
          ContactsEvent.unmutedStories(
            FirebaseAuth.instance.currentUser!.uid,
          ),
        );
    context.read<ContactsBloc>().add(
          ContactsEvent.muteStories(
            FirebaseAuth.instance.currentUser!.uid,
          ),
        );
    context.read<UserBloc>().add(const UserEvent.getSignedInUser());
    context.read<StoriesBloc>().add(const StoriesEvent.getCurrentUserStory());
    context.read<ContactsBloc>().add(const ContactsEvent.unseenStories());
    if (widget.storiesModel.uid == FirebaseAuth.instance.currentUser!.uid) {
      c_user = true;
    }
    _firestore = FirebaseFirestore.instance;
    List<StoryModel> stories = widget.storiesModel.stories;
    super.initState();
    stories.forEach((story) {
      if (story.type == StoryType.text) {
        storyItems.add(
          StoryItem.text(
            title: story.text!,
            backgroundColor: story.color!,
            duration: const Duration(milliseconds: 5000),
            // onTap: () {},
            onTap: () => openIfLink(story.text!),
          ),
        );
      }
      if (story.type == StoryType.image) {
        storyItems.add(StoryItem.pageImage(
          url: story.imageUrl!,
          controller: controller,
          caption: '',
          duration: const Duration(milliseconds: (5000)),
        ));
      }

      if (story.type == StoryType.video) {
        storyItems.add(
          StoryItem.pageVideo(
            story.videoUrl!,
            controller: controller,
            duration: Duration(milliseconds: story.duration!),
            caption: story.text,
          ),
        );
      }
    });
    int numberOfSeen = 0;
    for (int index = 0; index <= storyItems.length - 1; index++) {
      if (widget.storiesModel.stories[index].react!
          .containsKey(FirebaseAuth.instance.currentUser!.uid)) {
        numberOfSeen++;
      }
    }

    if (storyItems.length != numberOfSeen) {
      for (int i = 0; i < numberOfSeen; i++) {
        Future.delayed(const Duration(milliseconds: 200)).then((value) {
          if (!storyItems[i].shown) {
            controller.next();
          }
        });
      }
    }
  }

  void openIfLink(String text) {
    bool isLink = Uri.tryParse(text)?.hasAbsolutePath ?? false;
    if (isLink) {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                height: 200,
                width: 300,
                child: AnyLinkPreview(
                  onTap: () {
                    launch(text);
                  },
                  link: text,
                  cache: const Duration(hours: 1),
                  titleStyle: TextStyle(fontSize: 15),
                  removeElevation: true,
                  errorWidget: const Offstage(),
                ),
              ),
            );
          });
    }
  }

  Widget _buildProfileView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: CustomCircleAvatar(
                  profilePictureUrl: widget.storiesModel.profilePictureUrl,
                  radius: 25,
                  name: widget.storiesModel.name,
                  color: userColor,
                )),
              ],
            ),
            const SizedBox(
              width: 8,
            ),*/
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /*TextTranslate(
                  widget.storiesModel.name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),*/
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    convertToAgo(widget
                        .storiesModel.stories[currentStoryIndex].created!
                        .toDate()),
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (c_user)
              IconButton(
                onPressed: () {
                  controller.pause();
                  setState(() {
                    isclicked = true;
                  });
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return customlist(
                        storymodel: currentDisplayingStory(),
                        isclicked: isclicked,
                      );
                    },
                  ).whenComplete(() => controller.play());
                },
                icon:
                    const Icon(Icons.info_outline_rounded, color: Colors.white),
              )
            else if (!c_user)
              IconButton(
                onPressed: () {
                  controller.pause();
                  setState(() {
                    isReplying = true;
                  });
                  controller.play();
                },
                icon: const Icon(LineIcons.reply, color: Colors.white),
              ),
            GestureDetector(
              onTapUp: (details) {
                isclicked = false;
              },
              child: const Icon(
                Icons.more_vert_outlined,
                size: 30,
                color: Colors.white,
              ),
              onTapDown: (details) {
                setState(() {
                  controller.pause();
                });
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return InkWell(
                      onTap: () {
                        context.router.pop();
                      },
                      child: SizedBox(
                        height: 60 + MediaQuery.of(context).padding.bottom,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (c_user) userOption() else moreOptions(),
                          ],
                        ),
                      ),
                    );
                  },
                ).whenComplete(() => controller.play());
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _replyFocusNode.dispose();
    _replyTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<StoryModel>>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              alignment: Alignment.center,
              children: <Widget>[
                GestureDetector(
                  onTapUp: (details) {},
                  onTapDown: (details) {
                    setState(() {
                      isReplying = false;
                      isclicked = false;
                    });
                  },
                  child: StoryView(
                    storyItems: storyItems,
                    controller: controller,
                    onComplete: () {
                      Navigator.of(context).pop();
                    },
                    onVerticalSwipeComplete: (v) {
                      if (v == Direction.down) {
                        context
                            .read<ContactsBloc>()
                            .add(const ContactsEvent.unseenStories());
                        Navigator.pop(context);
                      }
                    },
                    onStoryShow: (storyItem) async {
                      final int pos = storyItems.indexOf(storyItem);

                      if (pos > 0) {
                        setState(() {
                          currentStoryIndex = pos;
                          currentDisplayingStory();
                          final KahoChatUser myUser =
                              context.read<UserBloc>().state.signedInUser;
                          context.read<StoriesBloc>().add(
                              StoriesEvent.storySeenBy(widget.storiesModel,
                                  currentStoryIndex, myUser));
                          context
                              .read<ContactsBloc>()
                              .add(const ContactsEvent.unseenStories());
                        });
                      }
                    },
                  ),
                ),
                if (currentDisplayingStory().type == StoryType.image)
                  Positioned(
                    bottom: 50,
                    child: Text(
                      currentDisplayingStory().text!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                else
                  const SizedBox(),
                const SizedBox(
                  height: 20,
                ),
                /*if (c_user)
                  const SizedBox()
                Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                        onTap: () {
                          controller.pause();
                          setState(() {
                            isclicked = true;
                          });
                        },
                        child: customlist(
                            storymodel: currentDisplayingStory(),
                            isclicked: isclicked)),
                  )
                else */
                if (!c_user && isReplying)
                  myReply(
                    context,
                    widget.storiesModel,
                    currentDisplayingStory().type == StoryType.text
                        ? currentDisplayingStory().text
                        : currentDisplayingStory().imageUrl,
                  )
                else
                  const SizedBox(),
                Container(
                  width: double.infinity,
                  // color: Colors.blue,
                  padding: const EdgeInsets.only(
                    top: 48,
                    left: 16,
                    right: 16,
                  ),
                  child: _buildProfileView(),
                ),
              ],
            );
          }
          if (snapshot.hasError) {
            return ErrorView();
          }

          return const Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(),
            ),
          );
        },
        future: futureStory(),
      ),
    );
  }

  Widget myReply(
      BuildContext context, StoriesModel peerUser, String? storyContent) {
    if (_replyFocusNode.hasFocus) {
      controller.pause();
    }
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, contactsState) {
            final KahoChatUser peerWhatsappUser = contactsState.myContacts
                .firstWhere(
                    (element) => element.uid == widget.storiesModel.uid);
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                          SizedBox(
                            //width: MediaQuery.of(context).size.width - (messageTextTEC.text.isNotEmpty ? 116 : 68),
                            width: MediaQuery.of(context).size.width - (68),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 4,
                              autofocus: true,
                              controller: _replyTextController,
                              focusNode: _replyFocusNode,
                              textInputAction: TextInputAction.newline,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 2,
                                ),
                                isDense: true,
                                hintText: "Reply...",
                                hintStyle:
                                    Theme.of(context).textTheme.bodyText2,
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                prefixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _replyFocusNode.unfocus();
                                      isEmojiKeyboardOpened =
                                          !isEmojiKeyboardOpened;
                                    });
                                  },
                                  icon: Icon(
                                    isEmojiKeyboardOpened
                                        ? Icons.keyboard_outlined
                                        : Icons.emoji_emotions_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(2.5),
                      onPressed: () async {
                        if (_replyTextController.text.isNotEmpty) {
                          context.read<ChatsBloc>().add(
                                ChatsEvent.sendTextStory(
                                  peerStoryText:
                                      currentDisplayingStory().type ==
                                              StoryType.text
                                          ? currentDisplayingStory().text!
                                          : "",
                                  peerStoryImage:
                                      currentDisplayingStory().type ==
                                              StoryType.image
                                          ? currentDisplayingStory().imageUrl!
                                          : "",
                                  storyVideoUrl:
                                      currentDisplayingStory().type ==
                                              StoryType.video
                                          ? currentDisplayingStory()
                                              .videoBase64Thumbnail!
                                          : "",
                                  myUser: userState.signedInUser,
                                  peerUser: peerWhatsappUser,
                                  message: _replyTextController.text.trim(),
                                ),
                              );

                          _replyTextController.clear();
                          controller.play();
                          // Navigator.pop(context);
                          setState(() {
                            isReplying = false;
                            // _resumeTimer();
                          });
                          Fluttertoast.showToast(msg: "Replied to story");
                        } else {}
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                if (isEmojiKeyboardOpened)
                  EmojiPickerKeyboard(
                    controller: _replyTextController,
                    gifSource: GifSource.other,
                  )
              ],
            );
          },
        );
      },
    );
  }
}

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            const Icon(
              Icons.cancel,
              color: Colors.red,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
                "${context.read<SettingsBloc>().state.languageData.anErrorOccuredWhileLoadingStories}.")
          ],
        ),
      ),
    );
  }
}
