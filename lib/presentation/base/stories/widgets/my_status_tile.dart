import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/presentation/base/stories/pages/view_story.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:intl/intl.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class MyStatusTile extends StatelessWidget {
  const MyStatusTile({
    Key? key,
  }) : super(key: key);
  // final KahoChatUser user;

  NetworkImage storyProfile(StoriesModel storyModel) {
    final _storys = storyModel.stories
        .where((ee) =>
            (ee.created!.toDate().add(const Duration(hours: 24)))
                .microsecondsSinceEpoch >=
            DateTime.now().microsecondsSinceEpoch)
        .toList();
    NetworkImage myNetworkImage = const NetworkImage('');
    if (_storys.isEmpty) {
      myNetworkImage = const NetworkImage(
        'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png',
      );
    } else if (_storys.isNotEmpty) {
      if (storyModel.stories.last.type == StoryType.text) {
        myNetworkImage = const NetworkImage(
          'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png',
        );
      } else if (_storys.last.type == StoryType.image) {
        myNetworkImage = NetworkImage(_storys.last.imageUrl!);
      } else {
        myNetworkImage = const NetworkImage(
          'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png',
        );
      }
    }
    return myNetworkImage;
  }

  String convertToAgo(DateTime input) {
    final Duration diff = DateTime.now().difference(input);
    if (diff.inDays >= 2) {
      return DateFormat('MM/dd/yy, hh:mm')
          .format(DateTime.parse(input.toString()))
          // ignore: noop_primitive_operations
          .toString();
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

  // Future<int> stLength(int length) async {
  //   return length;
  // }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesBloc, StoriesState>(
      builder: (context, userState) {
        final _storys = userState.myStories.stories
            .where((ee) =>
                (ee.created!.toDate().add(const Duration(hours: 24)))
                    .microsecondsSinceEpoch >=
                DateTime.now().microsecondsSinceEpoch)
            .toList();
        // Future<int> storiesLength =
        //     stLength(userState.signedInUser.stories.length);
        return Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  //print(userState.myStories.profilePictureUrl);
                  if (_storys.isNotEmpty) {
                    // AutoRouter.of(context)
                    //     .push(ViewStoryPage(storiesModel: userState.myStories));
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ViewStoryPage(
                          storiesModel: userState.myStories,
                        ),
                      ),
                    );
                  } else {
                    AutoRouter.of(context).push(const TypeAStatusRoute());
                  }
                },
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 1.5,
                            top: 1.7,
                            child: CircularStepProgressIndicator(
                              totalSteps:
                                  _storys.length <= 1 ? 1 : _storys.length,
                              currentStep: 0,
                              padding: _storys.length <= 1 ? 0 : 3.14 / 20,
                              selectedColor: Colors.grey,
                              unselectedColor: Colors.grey,
                              selectedStepSize: 2.0,
                              unselectedStepSize: 2.0,
                              width: 67,
                              height: 67,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: _storys.isEmpty
                                  ? Colors.grey
                                  : _storys.last.type == StoryType.text
                                      ? _storys.last.color
                                      : Colors.grey,
                              // backgroundColor: Colors.grey[300],
                              // if there's no background image provided
                              backgroundImage: (_storys.isNotEmpty &&
                                      (_storys.last.type == StoryType.text ||
                                  _storys.last.type ==
                                      StoryType.video))
                                  ? null
                                  : storyProfile(userState.myStories),
                              //add URL to netimage
                              radius: 30,
                              child: _storys.isEmpty
                                  ? Container()
                                  : _storys.last.type == StoryType.text
                                      ? Container(
                                          color: _storys.last.color,
                                          child: ConstrainedBox(
                                            constraints: const BoxConstraints(
                                              minWidth: 38.0,
                                              maxWidth: 38.0,
                                              minHeight: 38.0,
                                              maxHeight: 38.0,
                                            ),
                                            child: AutoSizeText(
                                              _storys.last.text!,
                                              overflow: TextOverflow.visible,
                                              style: const TextStyle(
                                                fontSize: 30.0,
                                                color: Colors.white,
                                              ),
                                              minFontSize: 4,
                                            ),
                                          ),
                                        )
                                      :_storys.last.type ==
                                  StoryType.video
                                  ? ClipRRect(
                                borderRadius:
                                BorderRadius.circular(
                                    70.0),
                                child: SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.memory(
                                        base64.decode(_storys.last.videoBase64Thumbnail??"",
                                    ),fit: BoxFit.cover,),
                              ))
                                  : Container(), //radius of the circle avatar
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBoxW10(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //const SizedBoxH10(),
                        Text(
                          "${context.read<SettingsBloc>().state.languageData.myStories}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        // Text(DateFormat('yyyy-MM-dd hh:mm').format(DateTime.parse(userState.signedInUser.stories.isNotEmpty ? userState.signedInUser.stories[0].created!.toDate().toString() : '')) ),
                        Text(
                          _storys.isNotEmpty
                              ? convertToAgo(
                                  _storys.last.created!.toDate(),
                                )
                              : '',
                        ),

                        // Text("Add to my status"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // IconButton(
            //   onPressed: () async {
            //     final cameras = await availableCameras();
            //     final firstCamera = cameras.first;
            //     await AutoRouter.of(context).push(
            //       CameraRoute(
            //         camera: cameras,
            //         onCapture: (imageWithCaption) {
            //           context.read<StoriesBloc>().add(
            //                 StoriesEvent.createImageStatus(
            //                   userState.signedInUser,
            //                   imageWithCaption,
            //                 ),
            //               );
            //         },
            //       ),
            //     );
            //   },
            //   icon: const Icon(
            //     Icons.camera_alt,
            //     color: Kolors.primary,
            //   ),
            // ),
            // IconButton(
            //   onPressed: () {
            //     AutoRouter.of(context).push(const TypeAStatusRoute());
            //   },
            //   icon: const Icon(
            //     Icons.edit,
            //     color: Kolors.primary,
            //   ),
            // )
          ],
        );
      },
    );
  }
}
