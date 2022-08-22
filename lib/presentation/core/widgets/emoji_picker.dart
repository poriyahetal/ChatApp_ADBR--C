import 'package:auto_route/auto_route.dart';
import 'package:chat_pickers/chat_pickers.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/base/stories/widgets/image_view.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class EmojiPickerKeyboard extends StatefulWidget {
  EmojiPickerKeyboard(
      {Key? key,
      required this.controller,
      required this.gifSource,
      this.peerUser,
      this.groupId})
      : super(key: key);
  final TextEditingController controller;
  final GifSource gifSource;
  KahoChatUser? peerUser;
  String? groupId;

  @override
  _EmojiPickerKeyboardState createState() => _EmojiPickerKeyboardState();
}

class _EmojiPickerKeyboardState extends State<EmojiPickerKeyboard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
      return BlocBuilder<StoriesBloc, StoriesState>(
          builder: (context, storiestate) {
        return SizedBox(
            height: 269,
            child: SingleChildScrollView(
              child: Container(
                height: 269,
                child: ChatPickers(
                  chatController: widget.controller,
                  emojiPickerConfig: EmojiPickerConfig(
                    columns: 7,
                    numRecommended: 10,
                    bgBarColor: Color(0xFFF2F2F2),
                    bgColor: Color(0xFFF2F2F2),
                    indicatorColor: Colors.green,
                  ),
                  giphyPickerConfig: GiphyPickerConfig(
                      apiKey: "q3KulxGCIKWrOU283I3xM3DWvMnO5zOV",
                      onSelected: (gif) async {
                        if (widget.gifSource == GifSource.chat) {
                          List<String> imagPath = [];
                          imagPath.add(gif.images.original!.url!);
                          ImageWithCaptionModel imageWithCaptionModel =
                              ImageWithCaptionModel(
                                  imagePath: gif.images.original!.url!,
                                  caption: '');

                          context.read<ChatsBloc>().add(
                            ChatsEvent.sendGifMessage(
                              myUser: userState.signedInUser,
                              peerUser: widget.peerUser!,
                              url: gif.images.original!.url!,
                            ),
                          );
                          // await AutoRouter.of(context).push(
                          //   DisplayCapturedImageRoute(
                          //     imagePath: imagPath,
                          //     onCapture: (imageWithCaption) {
                          //       imageWithCaption.forEach((element) {
                          //         print("element-->$element");
                          //         context.read<ChatsBloc>().add(
                          //             ChatsEvent.sendImageMessage(
                          //               myUser: userState.signedInUser,
                          //               peerUser: widget.peerUser!,
                          //               imageWithCaption: element,
                          //             ),
                          //           );
                          //         }
                          //
                          //       );
                          //       Navigator.pop(context);
                          //       Navigator.pop(context);
                          //     },
                          //   ),
                          // );

                          // context.read<ChatsBloc>().add(
                          //   ChatsEvent.sendImageMessage(
                          //     myUser: userState.signedInUser,
                          //     peerUser: widget.peerUser!,
                          //     imageWithCaption: imageWithCaptionModel,
                          //   ),
                          // );
                        }
                        if (widget.gifSource == GifSource.story) {
                          List<String> imagePath = [];
                          imagePath.add(gif.images.original!.url!);
                          double gifSize =
                              double.tryParse(gif.images.original!.size!)! /
                                  1000;
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StoryImageView(
                                        imagePath: imagePath,
                                        onCapture: (imageWithCaption) {},
                                        userStories: storiestate.myStories,
                                        isGif: true,
                                        gifUrl: gif.images.original!.url!,
                                        duration: gifSize,
                                      )));
                        }

                        if(widget.gifSource==GifSource.group){
                          context.read<GroupsBloc>().add(
                              GroupsEvent.sendGifMessage(
                                  url: gif.images.original!.url!,
                                  myUser: userState.signedInUser,
                                  groupUid: widget.groupId.toString()));
                        }

                        // _addGifMessage(gif);
                      }),
                ),
              ),
            ));
      });
    });
  }
}
