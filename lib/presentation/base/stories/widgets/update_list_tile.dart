import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/presentation/base/stories/pages/view_story.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:intl/intl.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../infrastructure/core/getters.dart';

class UpdateListTile extends StatelessWidget {
  const UpdateListTile({
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

  int numberOfUsersSeenMyStory() {
    int numberOfSeen = 0;
    for (int index = 0; index <= user.stories.length - 1; index++) {
      if (user.stories[index].react!
          .containsKey(FirebaseAuth.instance.currentUser!.uid)) {
        numberOfSeen++;
      }
    }
    return numberOfSeen;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          BlocBuilder<ContactsBloc, ContactsState>(builder: (context, state) {
        final String phoneContactNumberOrName = Getters.checkLocalContact(
          phoneContacts: context.read<ContactsBloc>().state.phoneContacts
              as List<PhoneContact>,
          phoneNumber: user.phoneNumber,
        );
        return Column(
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    // AutoRouter.of(context).push(StoryViewRoute(user: user));
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewStoryPage(
                              storiesModel: user,
                            )));
                  },
                  child: Row(
                    children: [
                      // StatusCircleAvatar(
                      //   isStatusAvailable: user.stories.isNotEmpty,
                      //   imageUrl: user.profilePictureUrl,
                      // ),

                      Container(
                        height: 70,
                        width: 70,
                        // color: Colors.white,
                        child: Stack(children: [
                          Positioned(
                            left: 1.5,
                            top: 1.7,
                            child: CircularStepProgressIndicator(
                              totalSteps: user.stories.length <= 1
                                  ? 1
                                  : user.stories.length,
                              currentStep: numberOfUsersSeenMyStory(),
                              padding: user.stories.length <= 1 ? 0 : 3.14 / 20,
                              selectedColor: Colors.grey,
                              unselectedColor: user.stories.length == null
                                  ? Colors.grey
                                  : Kolors.primary,
                              selectedStepSize: 2.0,
                              unselectedStepSize: 2.0,
                              width: 67,
                              height: 67,
                              // roundedCap: (_, isSelected) => isSelected,
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
                              //if there's no background image provided
                              backgroundImage: (user.stories.isNotEmpty &&
                                      (user.stories.last.type ==
                                              StoryType.text ||
                                          user.stories.last.type ==
                                              StoryType.video))
                                  ? null
                                  : storyProfile(user),
                              //add URL to netimage
                              radius: 30,
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
                                      : user.stories.last.type ==
                                              StoryType.video
                                          ? Image.memory(base64.decode(user.stories.last.videoBase64Thumbnail??""))
                                          : Container(), //radius of the circle avatar
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
                              phoneContactNumberOrName,
                              //user.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            // Text(user.stories.first.created!.toTime()),
                            Text(convertToAgo(
                                user.stories.first.created!.toDate())),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
