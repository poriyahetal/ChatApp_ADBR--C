import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/stories/story_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom2_circle_avatar.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class customlist extends StatefulWidget {
  const customlist({
    Key? key,
    required this.storymodel,
    this.isclicked = false,
  }) : super(key: key);
  final StoryModel storymodel;
  final bool isclicked;

  @override
  _customlistState createState() => _customlistState();
}

class _customlistState extends State<customlist> {
  double _height = 0, _width = 0;
  late Color _color;
  late ThemeData theme;
  late CollectionReference _firestore;
  late String profilePic, profilename, profilereact;

  @override
  void initState() {
    _firestore = FirebaseFirestore.instance.usersCollection;
    profilePic = "";
    profilename = "";
    profilereact = "";
    super.initState();
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
      return 'just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    theme.brightness == Brightness.dark
        ? _color = const Color.fromRGBO(66, 66, 66, 0.9)
        : _color = const Color.fromRGBO(43, 89, 195, 0.9);
    _width = MediaQuery.of(context).size.width;
    if (widget.isclicked) {
      _height = 500;
      _width = MediaQuery.of(context).size.width;
    } else {
      _height = 40;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: AnimatedContainer(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.transparent),
        duration: const Duration(milliseconds: 200),
        height: _height,
        width: _width,
        child: Mylist(),
      ),
    );
  }

  Widget Mylist() {
    return BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, contactsState) {
      return widget.isclicked
          ? ListView(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: _color),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${context.read<SettingsBloc>().state.languageData.storiesViewedBy}:",
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      widget.storymodel.react != null
                          ? Text(
                              widget.storymodel.react!.length.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              '0',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: widget.storymodel.storySeen!.length,
                      itemBuilder: (context, index) {
                        final seenName =
                            widget.storymodel.storySeen![index].name;
                        final seenProfile = widget
                            .storymodel.storySeen![index].profilePictureUrl;
                        final seenTime =
                            widget.storymodel.storySeen![index].seenTime;
                        String? reactEmoji = "";
                        for (var react in widget.storymodel.react?.keys ?? []) {
                          if (react ==
                              widget.storymodel.storySeen![index].uid) {
                            if ([
                              "sad_emoji",
                              "heart_emoji",
                              "laugh_emoji",
                              "like_emoji",
                              "angry_emoji"
                            ].contains(widget.storymodel.react?[react])) {
                              reactEmoji =
                                  widget.storymodel.react?[react] as String;
                            } else {
                              reactEmoji = "";
                            }
                          }
                        }
                        print("reacted-->${widget.storymodel.react}");

                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListTile(
                              leading: Custom2CircleAvatar(
                                profilePictureUrl: seenProfile,
                                // name: seenName,
                                // color: '',
                              ),
                              title: Text(seenName),
                              // subtitle: TextTranslate(profilereact.substring(5)),
                              trailing: reactEmoji != ""
                                  ? Lottie.asset(
                                      "assets/lottie_json/$reactEmoji.json",
                                      height: 40.0,
                                      width: 40.0)
                                  : const Offstage(),
                              subtitle: Text(convertToAgo(seenTime.toDate()))),
                        );

                        // if(profilereact.contains('smile')) {
                        //   return Padding(
                        //     padding: const EdgeInsets.all(10.0),
                        //     child: ListTile(
                        //         leading: Custom2CircleAvatar(profilePictureUrl: profilePic),
                        //         title: TextTranslate(profilename),
                        //         subtitle: TextTranslate(profilereact.substring(5)),
                        //         trailing:  const Icon(Icons.emoji_emotions,size: 40,color: Colors.yellow,)
                        //     ),
                        //   );
                        // }
                        // else if(profilereact.contains('heart')) {
                        //   return Padding(
                        //     padding: const EdgeInsets.all(10.0),
                        //     child: ListTile(
                        //         leading: Custom2CircleAvatar(profilePictureUrl: profilePic),
                        //         title: TextTranslate(profilename),
                        //         subtitle: TextTranslate(profilereact.substring(5)),
                        //         trailing:  const Icon(EvaIcons.heart,size: 40,color: Colors.red,)
                        //     ),
                        //   );
                        // }
                        // else if(profilereact.contains('recommend')) {
                        //   return Padding(
                        //     padding: const EdgeInsets.all(10.0),
                        //     child: ListTile(
                        //         leading: Custom2CircleAvatar(profilePictureUrl: profilePic),
                        //         title: TextTranslate(profilename),
                        //         subtitle: TextTranslate(profilereact.substring(8)),
                        //         trailing:  const Icon(Icons.recommend,size: 40,color: Colors.blue,)
                        //     ),
                        //   );
                        // }
                        // else if(profilereact.contains('clap')) {
                        //   return Padding(
                        //     padding: const EdgeInsets.all(10.0),
                        //     child: ListTile(
                        //         leading: Custom2CircleAvatar(profilePictureUrl: profilePic),
                        //         title: TextTranslate(profilename),
                        //         subtitle: TextTranslate(profilereact.substring(8)),
                        //         trailing:   const Icon(MdiIcons.handClap,size: 40,color: Colors.blue,)
                        //     ),
                        //   );
                        // }
                        // else if(profilereact.contains('hand')) {
                        //   return Padding(
                        //     padding: const EdgeInsets.all(10.0),
                        //     child: ListTile(
                        //         leading: Custom2CircleAvatar(profilePictureUrl: profilePic),
                        //         title: TextTranslate(profilename),
                        //         subtitle: TextTranslate(profilereact.substring(8)),
                        //         trailing:    Icon(MdiIcons.handFrontRight,size: 40,color: Colors.blue,)
                        //     ),
                        //   );
                        // }
                        // else if(profilereact.contains('seen')){
                        //   return Container();
                        // }
                        //
                        // return Container();
                      }),
                )
              ],
            )
          : const Icon(
              EvaIcons.arrowIosUpward,
              color: Colors.white,
              size: 50,
            );
    });
  }

  String getEmojiByTag(String? tag) {
    switch (tag) {
      case "sad_emoji":
        return "https://assets1.lottiefiles.com/packages/lf20_lt5xlugl.json";
      case "laugh_emoji":
        return "https://assets8.lottiefiles.com/datafiles/DQs1NxxhARpqrOe/data.json";
      case "heart_emoji":
        return "https://assets2.lottiefiles.com/packages/lf20_5losrddo.json";
      case "angry_emoji":
        return "https://assets2.lottiefiles.com/packages/lf20_vncvnui2.json";
      case "like_emoji":
        return "https://assets2.lottiefiles.com/packages/lf20_Tt4ojh.json";
      default:
        return "";
    }
  }
}
