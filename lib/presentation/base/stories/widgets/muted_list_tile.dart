import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/stories/story_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/base/stories/pages/view_story.dart';
import 'package:flutter_template/presentation/base/stories/widgets/status_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:intl/intl.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MutedListTile extends StatelessWidget {
  const MutedListTile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final StoriesModel user;


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

  NetworkImage storyProfile(StoriesModel storyModel) {
    NetworkImage myNetworkImage = const NetworkImage('');
    if (storyModel.stories.isEmpty) {
      myNetworkImage = const NetworkImage(
        'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png',
      );
    } else if (storyModel.stories.isNotEmpty) {
      if (storyModel.stories.last.type == StoryType.text) {
        myNetworkImage = const NetworkImage(
          'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png',
        );
      } else if (storyModel.stories.last.type == StoryType.image) {
        myNetworkImage = NetworkImage(storyModel.stories.last.imageUrl!);
      } else {
        myNetworkImage = const NetworkImage(
          'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png',
        );
      }
    }
    return myNetworkImage;
  }

  int numberOfUsersSeenMyStory(){
    int numberOfSeen=0;
    for(int index=0; index<=user.stories.length-1; index++){
      if(user.stories[index].react!.containsKey(FirebaseAuth.instance.currentUser!.uid)){
        numberOfSeen++;
      }
    }
    return numberOfSeen;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  // AutoRouter.of(context).push(StoryViewRoute(user: user));
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ViewStoryPage(storiesModel: user,)));
                },
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      // color: Colors.white,
                      child: Stack(children: [
                        Positioned(
                          left: 1.5,
                          top: 1.7,
                          child: CircularStepProgressIndicator(
                            totalSteps: user.stories.length <=1
                                ? 1
                                : user.stories.length,
                            currentStep: numberOfUsersSeenMyStory(),
                            padding:
                            user.stories.length <=1 ? 0 : 3.14 / 20,
                            selectedColor: Colors.grey,
                            unselectedColor: user.stories.length == null
                                ? Colors.grey
                                : Kolors.primary,
                            selectedStepSize: 2.0,
                            unselectedStepSize: 2.0,
                            width: 67,
                            height: 67,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: user.stories.isEmpty
                                ? Colors.grey
                                : user.stories.last.type == StoryType.text
                                ? user.stories.last.color
                                : Colors.grey,
                            child: user.stories.isEmpty
                                ? Container()
                                : user.stories.last.type == StoryType.text
                                ? Container(
                              color: user.stories.last.color,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: 38.0,
                                  maxWidth: 38.0,
                                  minHeight: 38.0,
                                  maxHeight: 38.0,
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    user.stories.last.text!,
                                    overflow: TextOverflow.visible,
                                    style: const TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.white,
                                    ),
                                    minFontSize: 4,
                                  ),
                                ),
                              ),
                            )
                                : Container(),
                            //if there's no background image provided
                            backgroundImage: (user
                                .stories.isNotEmpty &&
                                user.stories.last
                                    .type ==
                                    StoryType.text)
                                ? null
                                : storyProfile(user),
                            //add URL to netimage
                            radius: 30, //radius of the circle avatar
                          ),
                        ),
                      ]),
                    ),

                    const SizedBoxW15(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey
                            ),
                          ),
                          // Text(user.stories.first.created!.toTime()),
                          Text(convertToAgo(
                              user.stories.first.created!.toDate()), style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
