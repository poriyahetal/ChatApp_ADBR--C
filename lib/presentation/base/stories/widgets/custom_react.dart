import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/stories/story_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/stories/stories_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/src/provider.dart';

import '../../../../application/stories/stories_bloc.dart';

class customreact extends StatefulWidget {
  const customreact.react(
      {Key? key,
      this.isHover = false,
      required this.index,
      required this.user,
      required this.currentDisplayingStory})
      : super(key: key);
  final bool isHover;
  final int index;
  final StoriesModel user;
  final StoryModel currentDisplayingStory;

  @override
  _customreactState createState() => _customreactState();
}

class _customreactState extends State<customreact> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late StoryModel _storyModel;
  int n_smile = 0, n_like = 0, n_fire = 0;
  late List<StoryModel> stories;
  double _height = 0, _width = 60;
  late Map<String, String> react_data;
  late DateTime now;
  late String formatedTime;
  bool c_user = false;
  List<String> emojis = [
    "https://assets1.lottiefiles.com/packages/lf20_lt5xlugl.json", //sad
    ""
  ];

  @override
  void initState() {
    stories = widget.user.stories;
    if (widget.user.uid == FirebaseAuth.instance.currentUser!.uid) {
      c_user = true;
    }
    super.initState();
  }

  Future<void> firebasework() async {
    if (widget.user.stories.isNotEmpty) {
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).set(
          widget.user.copyWith(stories: widget.user.stories).toMap(),
          SetOptions(merge: true));
    } else {
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).set(
          widget.user
              .copyWith(
                uid: widget.user.uid,
                phoneNumber: widget.user.phoneNumber,
                profilePictureUrl: widget.user.profilePictureUrl,
              )
              .toMap(),
          SetOptions(merge: true));
    }
    Fluttertoast.showToast(
      msg: "Successfully deleted your status.",
      backgroundColor: Kolors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    // if(widget.isHover) {
    //   _height = 170;
    // }
    // else {
    //   _height = 60;
    // }
    // return AnimatedContainer(duration: const Duration(milliseconds: 300),
    //     height: _height,
    //     width: _width,
    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
    //     child: custom_emojii(widget.isHover)
    // );
    return showBottomSheet();
  }

  Widget showBottomSheet() {
    return BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, contactstate) {
      // KahoChatUser peerUser = context.read<UserBloc>().state.signedInUser;
      KahoChatUser peerUser = contactstate.myContacts
          .firstWhere((element) => element.uid == widget.user.uid);

      return c_user
          ? const SizedBox()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                "sad_emoji",
                "laugh_emoji",
                "angry_emoji",
                "like_emoji",
                "heart_emoji"
              ]
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(top: 12),
                      // child: IconButton(
                      //     onPressed: () {
                      //       stories[widget.index].react = {
                      //         Getters.getCurrentUserUid() : e
                      //       };
                      //       // stories[0].storySeen?.where((element){
                      //       //   print(element.uid);
                      //       //   if(element.uid == Getters.getCurrentUserUid()){
                      //       //     print("entered");
                      //       //     element.react = "sad_emoji";
                      //       //     return true;
                      //       //   }else{
                      //       //     return false;
                      //       //   }
                      //       // });
                      //
                      //       print("stories-->${stories}");
                      //       _firestore.usersCollection.doc(widget.user.uid).set(
                      //           widget.user.copyWith(stories: stories).toMap(),
                      //           SetOptions(merge: true));
                      //
                      //       // setState(() {
                      //       //   reaction_update(1, widget.index);
                      //       //   context
                      //       //       .read<ChatsBloc>()
                      //       //       .add(ChatsEvent.sendTextStory(
                      //       //     peerStoryText: 'my stories react from',
                      //       //     peerStoryImage: "",
                      //       //     myUser:
                      //       //     context.read<UserBloc>().state.signedInUser,
                      //       //     peerUser: peerUser,
                      //       //     imageUrl: "https://assets1.lottiefiles.com/packages/lf20_lt5xlugl.json",
                      //       //     message: '👍',
                      //       //   ));
                      //       //   AutoRouter.of(context).pop();
                      //       // });
                      //     },
                      //     icon: const Icon(
                      //       MdiIcons.thumbUp,
                      //       size: 40,
                      //       color: Colors.blue,
                      //     )),
                      child: InkWell(
                        onTap: () {

                          setState(() {
                            final KahoChatUser myUser =
                                context.read<UserBloc>().state.signedInUser;
                            context.read<StoriesBloc>().add(
                                StoriesEvent.reactOnStory(widget.user,
                                    widget.index, myUser,e));
                          });
                          Navigator.pop(context);
                        },
                        child: Lottie.asset("assets/lottie_json/$e.json",
                            height: 40.0, width: 40.0),
                      ),
                    ),
                  )
                  .toList()

              // [
              //   const SizedBox(
              //     width: 8,
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.only(top: 12),
              //     child: IconButton(
              //         onPressed: () {
              //           setState(() {
              //             reaction_update(1, widget.index);
              //             context
              //                 .read<ChatsBloc>()
              //                 .add(ChatsEvent.sendTextStory(
              //                   peerStoryText: 'my stories react from',
              //                   peerStoryImage: "",
              //                   myUser:
              //                       context.read<UserBloc>().state.signedInUser,
              //                   peerUser: peerUser,
              //                   message: '👍',
              //                 ));
              //             AutoRouter.of(context).pop();
              //           });
              //         },
              //         icon: const Icon(
              //           MdiIcons.thumbUp,
              //           size: 40,
              //           color: Colors.blue,
              //         )),
              //   ),
              //   // SizedBox(width: 10,),
              //   Padding(
              //     padding: const EdgeInsets.only(top: 12),
              //     child: IconButton(
              //         onPressed: () {
              //           setState(() {
              //             reaction_update(2, widget.index);
              //             context
              //                 .read<ChatsBloc>()
              //                 .add(ChatsEvent.sendTextStory(
              //                   peerStoryText:
              //                       widget.currentDisplayingStory.type ==
              //                               StoryType.text
              //                           ? widget.currentDisplayingStory.text!
              //                           : "",
              //                   peerStoryImage: widget
              //                               .currentDisplayingStory.type ==
              //                           StoryType.image
              //                       ? widget.currentDisplayingStory.imageUrl!
              //                       : "",
              //                   myUser:
              //                       context.read<UserBloc>().state.signedInUser,
              //                   peerUser: peerUser,
              //                   message: 'heart_emoji',
              //                 ));
              //             AutoRouter.of(context).pop();
              //           });
              //         },
              //         icon: const Icon(
              //           Icons.favorite,
              //           size: 40,
              //           color: Colors.red,
              //         )),
              //   ),
              //   Padding(
              //       padding: const EdgeInsets.only(top: 12),
              //       child: IconButton(
              //         onPressed: () {
              //           setState(() {
              //             reaction_update(3, widget.index);
              //             context
              //                 .read<ChatsBloc>()
              //                 .add(ChatsEvent.sendTextStory(
              //                   peerStoryText:
              //                       widget.currentDisplayingStory.type ==
              //                               StoryType.text
              //                           ? widget.currentDisplayingStory.text!
              //                           : "",
              //                   peerStoryImage: widget
              //                               .currentDisplayingStory.type ==
              //                           StoryType.image
              //                       ? widget.currentDisplayingStory.imageUrl!
              //                       : "",
              //                   myUser:
              //                       context.read<UserBloc>().state.signedInUser,
              //                   peerUser: peerUser,
              //                   imageUrl: "https://lottiefiles.com/97304-sad-face-emoji",
              //                   message: 'laugh_emoji',
              //                 ));
              //             AutoRouter.of(context).pop();
              //           });
              //         },
              //         icon: Icon(
              //           MdiIcons.handClap,
              //           size: 40,
              //           color: Colors.yellow.shade600,
              //         ),
              //       )),
              //   Padding(
              //     padding: const EdgeInsets.only(top: 12),
              //     child: IconButton(
              //         onPressed: () {
              //           setState(() {
              //             reaction_update(4, widget.index);
              //             context
              //                 .read<ChatsBloc>()
              //                 .add(ChatsEvent.sendTextStory(
              //                   peerStoryText:
              //                       widget.currentDisplayingStory.type ==
              //                               StoryType.text
              //                           ? widget.currentDisplayingStory.text!
              //                           : "",
              //                   peerStoryImage: widget
              //                               .currentDisplayingStory.type ==
              //                           StoryType.image
              //                       ? widget.currentDisplayingStory.imageUrl!
              //                       : "",
              //                   myUser:
              //                       context.read<UserBloc>().state.signedInUser,
              //                   peerUser: peerUser,
              //                   message: 'sad_emoji',
              //                 ));
              //             AutoRouter.of(context).pop();
              //           });
              //         },
              //         icon: Icon(
              //           Icons.emoji_emotions,
              //           size: 40,
              //           color: Colors.yellow.shade600,
              //         )),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.only(top: 12, right: 8),
              //     child: IconButton(
              //         onPressed: () {
              //           setState(() {
              //             reaction_update(5, widget.index);
              //             context
              //                 .read<ChatsBloc>()
              //                 .add(ChatsEvent.sendTextStory(
              //                   peerStoryText:
              //                       widget.currentDisplayingStory.type ==
              //                               StoryType.text
              //                           ? widget.currentDisplayingStory.text!
              //                           : "",
              //                   peerStoryImage: widget
              //                               .currentDisplayingStory.type ==
              //                           StoryType.image
              //                       ? widget.currentDisplayingStory.imageUrl!
              //                       : "",
              //                   myUser:
              //                       context.read<UserBloc>().state.signedInUser,
              //                   peerUser: peerUser,
              //                   message: 'angry_emoji',
              //                 ));
              //             AutoRouter.of(context).pop();
              //           });
              //         },
              //         icon: Icon(
              //           MdiIcons.handFrontRight,
              //           size: 40,
              //           color: Colors.yellow.shade600,
              //         )),
              //   ),
              //   const SizedBox(width: 8),
              //   // SizedBox(width: 8,),
              // ],
              );
    });
  }

  // Widget custom_emojii(bool isHover) {
  //   return isHover? ListView(
  //     physics: const BouncingScrollPhysics(),
  //     shrinkWrap: true,
  //     children: [
  //       IconButton(onPressed: () {
  //         setState(() {
  //           reaction_update(1,widget.index);
  //         });
  //       }, icon: const Icon(Icons.emoji_emotions,size: 40,color: Colors.yellow,)),
  //       const SizedBoxH10(),
  //       IconButton(onPressed: () {
  //         setState(() {
  //           reaction_update(2,widget.index);
  //         });
  //       }, icon: const Icon(EvaIcons.heart,size: 40,color: Colors.red,)),
  //       const SizedBoxH10(),
  //       IconButton(onPressed: () {
  //         setState(() {
  //           reaction_update(3,widget.index);
  //         });
  //       }, icon: const Icon(Icons.recommend,size: 40,color: Colors.blue,)),
  //     ],) : const Icon(Icons.add,color: Colors.grey,);
  // }

  // Future<void> reaction_update(int i, int index) async {
  //   _storyModel = widget.user.stories[index];
  //   // widget.user.stories.removeAt(index);
  //   // await _firestore.usersCollection.doc(widget.user.uid).set(
  //   //     widget.user.copyWith(
  //   //         stories: widget.user.stories
  //   //     )
  //   //         .toMap(),
  //   //     SetOptions(merge: true)
  //   // );
  //   now = DateTime.now();
  //   formatedTime = DateFormat.Hm().format(now);
  //   if (i == 1) {
  //     _storyModel.react!.putIfAbsent(FirebaseAuth.instance.currentUser!.uid,
  //         () => "recommend$formatedTime");
  //     // stories.add(StoryModel(
  //     //     created: Timestamp.now(),
  //     //     type: _storyModel.type,
  //     //     text: _storyModel.text,
  //     //     color: _storyModel.color,
  //     //     imageUrl: _storyModel.imageUrl,
  //     //     videoUrl: _storyModel.videoUrl,
  //     //     react: _storyModel.react));
  //     await _firestore.usersCollection.doc(widget.user.uid).set(
  //         widget.user.copyWith(stories: stories).toMap(),
  //         SetOptions(merge: true));
  //   } else if (i == 2) {
  //     _storyModel.react!.putIfAbsent(
  //         FirebaseAuth.instance.currentUser!.uid, () => 'heart$formatedTime');
  //     // stories.add(StoryModel(
  //     //     created: Timestamp.now(),
  //     //     type: _storyModel.type,
  //     //     text: _storyModel.text,
  //     //     color: _storyModel.color,
  //     //     imageUrl: _storyModel.imageUrl,
  //     //     videoUrl: _storyModel.videoUrl,
  //     //     react: _storyModel.react
  //     // ));
  //     await _firestore.usersCollection.doc(widget.user.uid).set(
  //         widget.user.copyWith(stories: stories).toMap(),
  //         SetOptions(merge: true));
  //   } else if (i == 3) {
  //     _storyModel.react!.putIfAbsent(
  //         FirebaseAuth.instance.currentUser!.uid, () => 'clap$formatedTime');
  //     // stories.add(StoryModel(
  //     //     created: Timestamp.now(),
  //     //     type: _storyModel.type,
  //     //     text: _storyModel.text,
  //     //     color: _storyModel.color,
  //     //     imageUrl: _storyModel.imageUrl,
  //     //     videoUrl: _storyModel.videoUrl,
  //     //     react: _storyModel.react));
  //     await _firestore.usersCollection.doc(widget.user.uid).set(
  //         widget.user.copyWith(stories: stories).toMap(),
  //         SetOptions(merge: true));
  //   } else if (i == 4) {
  //     _storyModel.react!.putIfAbsent(
  //         FirebaseAuth.instance.currentUser!.uid, () => 'smile$formatedTime');
  //     // stories.add(StoryModel(
  //     //     created: Timestamp.now(),
  //     //     type: _storyModel.type,
  //     //     text: _storyModel.text,
  //     //     color: _storyModel.color,
  //     //     imageUrl: _storyModel.imageUrl,
  //     //     videoUrl: _storyModel.videoUrl,
  //     //     react: _storyModel.react));
  //     await _firestore.usersCollection.doc(widget.user.uid).set(
  //         widget.user.copyWith(stories: stories).toMap(),
  //         SetOptions(merge: true));
  //   } else if (i == 5) {
  //     _storyModel.react!.putIfAbsent(
  //         FirebaseAuth.instance.currentUser!.uid, () => 'hand$formatedTime');
  //     // stories.add(StoryModel(
  //     //     created: Timestamp.now(),
  //     //     type: _storyModel.type,
  //     //     text: _storyModel.text,
  //     //     color: _storyModel.color,
  //     //     imageUrl: _storyModel.imageUrl,
  //     //     videoUrl: _storyModel.videoUrl,
  //     //     react: _storyModel.react));
  //     await _firestore.usersCollection.doc(widget.user.uid).set(
  //         widget.user.copyWith(stories: stories).toMap(),
  //         SetOptions(merge: true));
  //   }
  // }
  //
  // String getEmojiByTag(String? tag) {
  //   switch (tag) {
  //     case "sad_emoji":
  //       return "https://assets1.lottiefiles.com/packages/lf20_lt5xlugl.json";
  //     case "laugh_emoji":
  //       return "https://assets8.lottiefiles.com/datafiles/DQs1NxxhARpqrOe/data.json";
  //     case "heart_emoji":
  //       return "https://assets2.lottiefiles.com/packages/lf20_5losrddo.json";
  //     case "angry_emoji":
  //       return "https://assets2.lottiefiles.com/packages/lf20_vncvnui2.json";
  //     case "like_emoji":
  //       return "https://assets2.lottiefiles.com/packages/lf20_Tt4ojh.json";
  //     default:
  //       return "";
  //   }
  // }
}
