import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:camera/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/stories/widgets/filter_stories.dart';
import 'package:flutter_template/presentation/base/stories/widgets/image_view.dart';
import 'package:flutter_template/presentation/base/stories/widgets/muted_story.dart';
import 'package:flutter_template/presentation/base/stories/widgets/my_status_tile.dart';
import 'package:flutter_template/presentation/base/stories/widgets/updates_list.dart';
import 'package:flutter_template/presentation/base/stories/widgets/video_capture.dart';
import 'package:flutter_template/presentation/base/stories/widgets/video_view.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({Key? key}) : super(key: key);
  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage>
    with TickerProviderStateMixin {
  bool isFiltering = false;
  bool isSearch = false;
  bool isShowMute = false;
  int timeDifference = 24;
  final FocusNode _focusNode = FocusNode();
  File? _pickedImage;
  String _pickedImagePath = '';
  TextEditingController _searchTextController = TextEditingController();
  late AnimationController _controller;
  late Animation<double> _animation;
  Timer? timer;
  @override
  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
    _focusNode.dispose();
    _searchTextController.dispose();
  }

  void initialization() {
    context
        .read<ContactsBloc>()
        .add(ContactsEvent.filterContactStories(timeDifference));
  }

  void initState() {
    refreshF();
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn,
    );
    _searchTextController = TextEditingController();
    _searchTextController.addListener(() {
      setState(() {});
      // Future.delayed(Duration.zero, () => initialization());
      WidgetsBinding.instance.addPostFrameCallback((_) {
        print("WidgetsBinding");
      });
    });
    unseenStoryCount();
    timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      print("timer");
      if (timer.isActive) {
        print("refreshed");
        refreshF();
      }
    });
  }

  _toggleContainer() {
    print(_animation.status);
    if (_animation.status != AnimationStatus.completed) {
      _controller.forward(from: 0.5);
    } else {
      _controller.animateBack(0, duration: const Duration(milliseconds: 200));
    }
  }

  Future<void> unseenStoryCount() async {
    // context.read<ContactsBloc>().add(ContactsEvent.unseenStories());
    //  context.read<ContactsBloc>().add(ContactsEvent.unmutedStories(Getters.getCurrentUserUid()));
    //  int storySeen = 0;
    // List<StoriesModel> storyList = context.read<ContactsBloc>().state.unmutedStories;
    // for (int i = 0; i <= storyList.length - 1; i++) {
    //   StoriesModel personStory = storyList[i];
    //   for (int j = 0; j <= personStory.stories.length - 1; j++) {
    //     DateTime currentTime = DateTime.now();
    //     int diff =  currentTime.difference(personStory.stories[j].created!.toDate()).inHours;
    //     print('dif:$diff');
    //     if (!personStory.stories[j].react!
    //         .containsKey(Getters.getCurrentUserUid()) && currentTime.difference(personStory.stories[j].created!.toDate()).inHours <=24 ) {
    //       storySeen++;
    //     }
    //   }
    //
    // }
    //
    //  final DocumentSnapshot myStoriesSnap = await FirebaseFirestore.instance.storiesCollection
    //      .doc(Getters.getCurrentUserUid())
    //      .get();
    //  StoriesModel myStory = StoriesModel.fromMap(myStoriesSnap.data() as Map<String, dynamic>);
    //  FirebaseFirestore.instance.storiesCollection.doc(Getters.getCurrentUserUid()).set(
    //      myStory.copyWith(unseenStories: storySeen).toMap(),
    //      SetOptions(merge: true));
  }

  refreshF() async {
    context.read<UserBloc>().add(const UserEvent.getSignedInUser());
    context.read<ContactsBloc>().add(const ContactsEvent.storyContacts());

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

    context.read<StoriesBloc>().add(const StoriesEvent.getCurrentUserStory());
  }

  Widget searchField(BuildContext ctx) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, ContactsState) {
        return Container(
          height: 45,
          margin: const EdgeInsets.only(top: 10),
          // decoration: BoxDecoration(color: Colors.white, boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey.withOpacity(0.2),
          //       spreadRadius: 1,
          //       offset: Offset(0.0, 0.50))
          // ]),
          child: FutureBuilder(
            future: Getters.getTranslation(
                languageCode: 'en', text: "   Search..."),
            builder: (context, snapshot) {
              return TextField(
                controller: _searchTextController,
                focusNode: _focusNode,
                onChanged: (value) {
                  _searchTextController.text.toLowerCase();
                  setState(() {
                    context.read<ContactsBloc>().add(
                          ContactsEvent.searchMyContacts(
                            _searchTextController.text,
                          ),
                        );
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: !snapshot.hasData
                      ? "Search..."
                      : snapshot.data! as String,
                  filled: true,
                  fillColor: Theme.of(context).cardColor,
                  suffixIcon: _searchTextController.text.isEmpty
                      ? const SizedBox()
                      : IconButton(
                          onPressed: _searchTextController.text.isEmpty
                              ? null
                              : () {
                                  _searchTextController.clear();
                                  _focusNode.unfocus();
                                },
                          icon: const Icon(
                            Icons.clear_outlined, color: Colors.grey,
                            // _searchTextController.text.isNotEmpty
                            //     ? Colors.red
                            //     : Colors.grey
                          ),
                        ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void showUploadingProgressIndicator() async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        channelKey: 'story',
        id: 1,
        title: 'uploading...',
        body: 'uploading video...',
        category: NotificationCategory.Progress,
        notificationLayout: NotificationLayout.ProgressBar,
      ),
    );
  }

  void showUploadedProgressIndicator() async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        channelKey: 'story',
        id: 1,
        title: 'uploaded',
        body: 'Video Uploaded Successfuly',
        //
        // category: NotificationCategory.,
        // notificationLayout: NotificationLayout.ProgressBar,
      ),
    );
  }

  Future<dynamic> _buildPopupDialog(BuildContext context) {
    return showDialog(context: context, builder: (context) => FilterPopup());
  }

  @override
  Widget build(BuildContext context) {
    // context.read<StoriesBloc>().add(StoriesEvent.getCurrentUserStory());
    return BlocBuilder<StoriesBloc, StoriesState>(
      builder: (context, storyState) {
        storyState.uploadProgress == 0.1
            ? showUploadingProgressIndicator()
            : storyState.uploadProgress == 1.0
                ? showUploadedProgressIndicator()
                : null;
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, contactsState) {
            return Scaffold(
              appBar: AppBar(
                toolbarHeight: MediaQuery.of(context).size.width<360?50:80,
                backgroundColor: Theme.of(context).backgroundColor,
                leading: !isSearch
                    ? IconButton(
                        onPressed: () {
                          AutoRouter.of(context).push(
                            StatusAndGroupPrivacyRoute(
                              firstTitle: 'Everyone',
                              pageTitle: 'My Contacts',
                              OnChangedFunctions: [],
                              listTileCount: 2,
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            isSearch = false;
                            // context
                            //     .read<ContactsBloc>()
                            //     .add(const ContactsEvent.fetchMyContacts());
                          });
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                        ),
                      ),
                title: isSearch
                    ? searchField(context)
                    : Center(
                        child: Text(
                          "${context.read<SettingsBloc>().state.languageData.stories}",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText2
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                        ),
                      ),
                titleSpacing: isSearch ? 0 : null,
                actions: [
                  if (isSearch)
                    const SizedBox()
                  else
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFiltering = false;
                          isSearch = true;
                        });
                      },
                      icon: Icon(
                        Icons.search,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                ],
              ),
              body: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    isFiltering = false;
                  });
                  // context.read<ContactsBloc>().add(ContactsEvent.storyContacts());
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
                  context
                      .read<UserBloc>()
                      .add(const UserEvent.getSignedInUser());
                  context
                      .read<StoriesBloc>()
                      .add(const StoriesEvent.getCurrentUserStory());
                  // context.read<ContactsBloc>().add(ContactsEvent.unseenStories());
                },
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isFiltering = true;
                          });
                          _buildPopupDialog(context);
                        },
                        icon: const Icon(Icons.filter_list_outlined),
                      ),
                    ),
                    if (isSearch) const SizedBox() else const MyStatusTile(),
                    // TileDivider(),
                    Column(
                      children: [
                        if (contactsState.muteStories.isNotEmpty)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "${context.read<SettingsBloc>().state.languageData.mutedStories}"),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShowMute = !isShowMute;
                                    _toggleContainer();
                                  });
                                },
                                icon: isShowMute
                                    ? const Icon(Icons.keyboard_arrow_up)
                                    : const Icon(Icons.keyboard_arrow_down),
                              ),
                            ],
                          )
                        else
                          const SizedBox(
                            height: 10,
                          ),
                        SizeTransition(
                          sizeFactor: _animation,
                          child: MutedStories(
                            isFiltering: isFiltering,
                            isSearching: isSearch,
                          ),
                        ),
                      ],
                    ),
                    UpdatesList(
                      isSearching: isSearch,
                      isFiltering: isFiltering,
                    )
                  ],
                ),
              ),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlocBuilder<StoriesBloc, StoriesState>(
                    builder: (context, storiestate) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            heroTag: null,
                            backgroundColor:context.read<SettingsBloc>().state.appThemeMode ==
                                ThemeMode.dark
                                ? Colors.white30
                                : Kolors.primary,
                            child:  Icon(
                              Icons.camera_alt_outlined,color: context
                                .read<SettingsBloc>()
                                .state
                                .appThemeMode ==
                                ThemeMode.dark
                                ? Colors.white
                                : null
                              // color: Colors.white,
                            ),
                            onPressed: () async {
                              showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                    height: 215 +
                                        MediaQuery.of(context).padding.bottom,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "${context.read<SettingsBloc>().state.languageData.upload}",
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () async {
                                            // XFile? picker = await ImagePicker()
                                            //     .pickImage(
                                            //         source: ImageSource.gallery,
                                            //         imageQuality: 20);
                                            //
                                            // if (picker != null) {
                                            //   final File file = File(picker.path);
                                            //   List<String> imagePath = [];
                                            //   imagePath.add(file.path);
                                            final ImagePicker imagePicker =
                                                ImagePicker();
                                            List<XFile>? imageFileList = [];
                                            List<String> imagePath = [];
                                            final List<XFile>? selectedImages =
                                                await imagePicker
                                                    .pickMultiImage();
                                            if (selectedImages != null) {
                                              if (selectedImages.isNotEmpty) {
                                                imageFileList
                                                    .addAll(selectedImages);
                                                imageFileList
                                                    .forEach((element) {
                                                  imagePath.add(element.path);
                                                });
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        StoryImageView(
                                                      imagePath: imagePath,
                                                      onCapture:
                                                          (imageWithCaption) {},
                                                      userStories:
                                                          storiestate.myStories,
                                                      isGif: false,
                                                      gifUrl: '',
                                                      duration: 5000,
                                                    ),
                                                  ),
                                                );
                                              }
                                            }
                                            // else {
                                            //   Navigator.pop(context);
                                            //   Navigator.pop(context);
                                            // }
                                            // await AutoRouter.of(context).push(
                                            //   DisplayCapturedImageRoute(
                                            //     imagePath: imagePath,
                                            //     onCapture: (imageWithCaption) {
                                            //       context.read<StoriesBloc>().add(
                                            //             StoriesEvent
                                            //                 .createImageStatus(
                                            //               storiestate.myStories,
                                            //               imageWithCaption,
                                            //             ),
                                            //           );
                                            //       setState(() {});
                                            //       Navigator.pop(context);
                                            //       Navigator.pop(context);
                                            //     },
                                            //   ),
                                            // );
                                            // context.read<StoriesBloc>().add(
                                            //     StoriesEvent.getCurrentUserStory());
                                          },
                                          // }
                                          leading: Card(
                                            color: Colors.grey.shade200,
                                            elevation: 0,
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                IconlyLight.image,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                            "${context.read<SettingsBloc>().state.languageData.openPhotoGallery}",
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () async {
                                            final cameras =
                                                await availableCameras();
                                            final firstCamera = cameras.first;
                                            AutoRouter.of(context).push(
                                              CameraRoute(
                                                camera: cameras,
                                                onCapture: (imageWithCaption) {
                                                  List<ImageWithCaptionModel>
                                                      capturedImageWithCaption =
                                                      [];
                                                  capturedImageWithCaption
                                                      .add(imageWithCaption);
                                                  context
                                                      .read<StoriesBloc>()
                                                      .add(
                                                        StoriesEvent
                                                            .createImageStatus(
                                                          context
                                                              .read<
                                                                  StoriesBloc>()
                                                              .state
                                                              .myStories,
                                                          capturedImageWithCaption,
                                                        ),
                                                      );
                                                  setState(() {});
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            );
                                          },
                                          leading: Card(
                                            color: Colors.grey.shade200,
                                            elevation: 0,
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.camera_alt_outlined,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                            "${context.read<SettingsBloc>().state.languageData.openCamera}",
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () async {
                                            // showUploadedProgressIndicator();
                                            Navigator.pop(context);
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    ListTile(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                VideoCapture(),
                                                          ),
                                                        );
                                                        // context
                                                        //    .read<StoriesBloc>()
                                                        //    .add(StoriesEvent.createVideoStatus(
                                                        //      context
                                                        //          .read<StoriesBloc>()
                                                        //          .state
                                                        //          .myStories,
                                                        //      "", ImageSource.camera
                                                        //    ));
                                                        //     Navigator.pop(context);
                                                      },
                                                      leading: Card(
                                                        color: Colors
                                                            .grey.shade200,
                                                        elevation: 0,
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Icon(
                                                            CupertinoIcons
                                                                .camera,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      title: Text(
                                                        "${context.read<SettingsBloc>().state.languageData.fromCamera}",
                                                      ),
                                                    ),
                                                    ListTile(
                                                      onTap: () async {
                                                        final ImagePicker
                                                            _picker =
                                                            ImagePicker();
                                                        final XFile? video =
                                                            await _picker
                                                                .pickVideo(
                                                          source: ImageSource
                                                              .gallery,
                                                        );
                                                        Navigator.pop(context);
                                                        if (video?.path !=
                                                            null) {
                                                          Navigator.of(context)
                                                              .push(
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  VideoViewPage(
                                                                path:
                                                                    video!.path,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      leading: Card(
                                                        color: Colors
                                                            .grey.shade200,
                                                        elevation: 0,
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Icon(
                                                            IconlyLight.image,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      title: Text(
                                                        "${context.read<SettingsBloc>().state.languageData.fromGallery}",
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          leading: Card(
                                            color: Colors.grey.shade200,
                                            elevation: 0,
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                CupertinoIcons.video_camera,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                              "${context.read<SettingsBloc>().state.languageData.openVideo}"),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FloatingActionButton(
                            heroTag: null,
                            backgroundColor:context.read<SettingsBloc>().state.appThemeMode ==
                                ThemeMode.dark
                                ? Colors.white30
                                : Kolors.primary,
                            child:  Icon(
                              Icons.edit_outlined,color: context
                                .read<SettingsBloc>()
                                .state
                                .appThemeMode ==
                                ThemeMode.dark
                                ? Colors.white
                                : null
                              // color: Colors.white,
                            ),
                            onPressed: () {
                              AutoRouter.of(context)
                                  .push(const TypeAStatusRoute());
                            },
                          ),
                          //  SizedBox(
                          //   height: MediaQuery.of(context).size.width<360?0:30,
                          // ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
