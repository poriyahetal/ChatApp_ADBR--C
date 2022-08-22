import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_template/application/stories/creator/ar/ar_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/caption/caption_text_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/file/file_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/freehand/freehand_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/giphy/giphy_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/recorder/video_recorder_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/video_player/video_player_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/video_status/video_status_for_story_cubit.dart';
import 'package:flutter_template/domain/stories/creator/story_effect_model.dart';
import 'package:flutter_template/domain/stories/creator/story_filter_model.dart';
import 'package:flutter_template/injection.dart';
import 'package:flutter_template/presentation/base/stories/widgets/creator/draggable_content.dart';
import 'package:flutter_template/presentation/base/stories/widgets/creator/icon_button.dart';
import 'package:flutter_template/presentation/base/stories/widgets/creator/text_button.dart';
import 'package:flutter_template/presentation/core/utils/story_creator_services.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:scribble/scribble.dart';
import 'package:video_player/video_player.dart';

class StoryCreatorPage extends StatefulWidget {
  const StoryCreatorPage({Key? key}) : super(key: key);

  @override
  State<StoryCreatorPage> createState() => _StoryCreatorPageState();
}

class _StoryCreatorPageState extends State<StoryCreatorPage> {
  final ScreenshotController controller = ScreenshotController();
  final ScribbleNotifier scribbleNotifier = ScribbleNotifier();
  final picker = ImagePicker();
  late FreehandForStoryCubit freehandCubit;
  late StreamSubscription freehandStream;

  @override
  void initState() {
    super.initState();
    // Update State
    getIt<ArForStoryCubitEvent>().read(context).clear();
    getIt<FileForStoryCubitEvent>().read(context).clear();
    getIt<VideoRecorderForStoryCubitEvent>().read(context).clear();
    getIt<VideoStatusForStoryCubitHandle>().read(context).clear();
    getIt<GiphyForStoryCubitEvent>().read(context).clear();

    // Gif
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GiphyForStoryCubit.client.getRandomId();
    });

    // Set Freehand
    freehandCubit = getIt<FreehandForStoryCubitEvent>().read(context);
    freehandStream = freehandCubit.stream.listen((state) {
      scribbleNotifier.setColor(state.color);
      scribbleNotifier.setStrokeWidth(state.strokeWidth);
    });

    // Event Handler
    ArForStoryCubit.controller.setEventHandler(
      DeepArEventHandler(
        onSnapPhotoCompleted: (file) async {
          // Navigate
          toEditor(file).then((value) {
            if (value != null) {
              // Update State
              getIt<FileForStoryCubitEvent>()
                  .read(context)
                  .takePhoto(value.path);
            }
          });
        },
        onVideoRecordingComplete: (file) {
          // Navigate
          AutoRouter.of(context).push(
            VideoTrimRoute(file: File(file)),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    freehandStream.cancel();
  }

  void startRecordVideo() {
    // Call Controller
    ArForStoryCubit.controller.startVideoRecording();
    // Update State
    getIt<VideoRecorderForStoryCubitEvent>().read(context).startTime();
  }

  void stopRecordVideo() {
    // Call Controller
    ArForStoryCubit.controller.stopVideoRecording();
    // Update State
    getIt<VideoRecorderForStoryCubitEvent>().read(context).reset();
  }

  void showCaptionTextEditor() {
    showDialog(
      context: context,
      builder: (_) => const StoryCaptionTextEditor(),
    );
  }

  Future<File?> toEditor(String path) async {
    final File? editedFile = await AutoRouter.of(context).push(
      StoryEditorImageRoute(image: path),
    ) as File?;

    return editedFile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // View
          BlocSelector<FileForStoryCubit, FileForStoryState, FileForStoryState>(
            selector: (state) => state,
            builder: (_, state) {
              return (state.image != null)
                  ? StoryImageViewWidget(
                      image: state.image!,
                      controller: controller,
                      scribbleNotifier: scribbleNotifier,
                    )
                  : (state.video != null)
                      ? const DraggableText(content: StoryVideoViewWidget())
                      : DeepArPreview(ArForStoryCubit.controller);
            },
          ),
          // Button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24 + 16,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: BlocSelector<FileForStoryCubit, FileForStoryState,
                  FileForStoryState>(
                selector: (state) => state,
                builder: (_, state) => BlocSelector<FreehandForStoryCubit,
                    FreehandForStoryState, FreehandForStoryState>(
                  selector: (state) => state,
                  builder: (_, freehandState) => (freehandState.isActive)
                      ? FreehandButton(scribbleNotifier: scribbleNotifier)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Cancel
                            iconButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                iconData: Icons.clear),
                            // Gallery
                            BlocSelector<VideoRecorderForStoryCubit,
                                VideoRecorderForStoryState, Duration>(
                              selector: (state) => state.duration,
                              builder: (_, duration) {
                                String twoDigits(int n) =>
                                    n.toString().padLeft(2, '0');
                                final minutes =
                                    twoDigits(duration.inMinutes.remainder(60));
                                final seconds =
                                    twoDigits(duration.inSeconds.remainder(60));
                                return (duration.inSeconds > 0)
                                    ? Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        child: Text(
                                          "$minutes:$seconds",
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      )
                                    : (state.video == null &&
                                            state.image == null)
                                        ? iconButton(
                                            onTap: () {
                                              showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                  ),
                                                ),
                                                context: context,
                                                builder: (_) => SizedBox(
                                                  height: 120 +
                                                      MediaQuery.of(context)
                                                          .padding
                                                          .bottom,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      ListTile(
                                                        title:
                                                            const Text("Photo"),
                                                        trailing: const Icon(Icons
                                                            .arrow_forward_ios),
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                          ),
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                          picker
                                                              .pickImage(
                                                                  source:
                                                                      ImageSource
                                                                          .gallery)
                                                              .then(
                                                            (file) {
                                                              if (file !=
                                                                  null) {
                                                                // Navigate
                                                                toEditor(file
                                                                        .path)
                                                                    .then(
                                                                        (value) {
                                                                  if (value !=
                                                                      null) {
                                                                    // Update State
                                                                    getIt<FileForStoryCubitEvent>()
                                                                        .read(
                                                                            context)
                                                                        .takePhoto(
                                                                            value.path);
                                                                  }
                                                                });
                                                              }
                                                            },
                                                          );
                                                        },
                                                      ),
                                                      ListTile(
                                                        title:
                                                            const Text("Video"),
                                                        trailing: const Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                          picker
                                                              .pickVideo(
                                                            source: ImageSource
                                                                .gallery,
                                                          )
                                                              .then(
                                                            (file) {
                                                              if (file !=
                                                                  null) {
                                                                AutoRouter.of(
                                                                        context)
                                                                    .push(
                                                                  VideoTrimRoute(
                                                                    file: File(
                                                                      file.path,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            iconData: Icons.wallpaper,
                                          )
                                        : (state.video != null)
                                            ? iconButton(
                                                onTap: () {
                                                  showCaptionTextEditor();
                                                },
                                                iconData: Icons.font_download,
                                              )
                                            : iconButton(
                                                onTap: () {
                                                  // Update State
                                                  getIt<FreehandForStoryCubitEvent>()
                                                      .read(context)
                                                      .updateActive();
                                                },
                                                iconData: Icons.edit);
                              },
                            ),
                            // Gif
                            BlocSelector<GiphyForStoryCubit, GiphyForStoryState,
                                GiphyGif?>(
                              selector: (state) => state.gif,
                              builder: (_, gifState) => (gifState == null)
                                  ? iconButton(
                                      onTap: () {
                                        if (state.image == null) {
                                          // show Snackbar
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text((state.video !=
                                                      null)
                                                  ? "Cannot add sticker or gif on video"
                                                  : "This feature only for image"),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                          return;
                                        }

                                        // Open Giphy
                                        getIt<GiphyForStoryCubitEvent>()
                                            .read(context)
                                            .updateGif(context);
                                      },
                                      iconData: Icons.emoji_emotions,
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        // Update State
                                        getIt<GiphyForStoryCubitEvent>()
                                            .read(context)
                                            .clear();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        child: const Text(
                                          "Clear Gif",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                            ), // Switch
                            if (state.image != null || state.video != null)
                              iconButton(
                                  onTap: () {
                                    // Delete File
                                    if (state.image != null) {
                                      deleteFile(state.image!);
                                    } else if (state.video != null) {
                                      deleteFile(state.video!);
                                    }
                                    // Update State
                                    getIt<FileForStoryCubitEvent>()
                                        .read(context)
                                        .clear();
                                  },
                                  iconData: Icons.delete)
                            else
                              BlocSelector<ArForStoryCubit, ArForStoryState,
                                  CameraDirection>(
                                selector: (state) => state.cameraDirection,
                                builder: (context, state) => iconButton(
                                    onTap: () {
                                      if (state == CameraDirection.front) {
                                        // Update State
                                        getIt<ArForStoryCubitEvent>()
                                            .read(context)
                                            .changeCameraDirection(
                                                CameraDirection.back);
                                        return;
                                      }
                                      // Update State
                                      getIt<ArForStoryCubitEvent>()
                                          .read(context)
                                          .changeCameraDirection(
                                              CameraDirection.front);
                                    },
                                    iconData: Icons.cameraswitch_outlined),
                              ),
                          ],
                        ),
                ),
              ),
            ),
          ),
          // Effects
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: BlocSelector<FileForStoryCubit, FileForStoryState,
                  FileForStoryState>(
                selector: (state) => state,
                builder: (_, state) =>
                    (state.image == null && state.video == null)
                        ? _effectWidget(context)
                        : _buttonEditorWidget(
                            context: context,
                            controller: controller,
                          ),
              ),
            ),
          ),
          // Button Capture
          BlocSelector<FileForStoryCubit, FileForStoryState, FileForStoryState>(
            selector: (state) => state,
            builder: (_, state) => (state.image == null && state.video == null)
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BlocSelector<VideoRecorderForStoryCubit,
                            VideoRecorderForStoryState, Duration>(
                          selector: (state) => state.duration,
                          builder: (_, duration) => GestureDetector(
                            onTap: () {
                              if (duration.inSeconds > 0) {
                                stopRecordVideo();
                                return;
                              }
                              ArForStoryCubit.controller.snapPhoto();
                            },
                            onLongPress: () {
                              if (duration.inSeconds == 0) {
                                startRecordVideo();
                                return;
                              }
                              stopRecordVideo();
                            },
                            child: BlocSelector<VideoRecorderForStoryCubit,
                                VideoRecorderForStoryState, Duration>(
                              selector: (state) => state.duration,
                              builder: (_, duration) => Container(
                                width: 74,
                                height: 74,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 6,
                                  ),
                                ),
                                child: (duration.inSeconds > 0)
                                    ? Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        child: Center(
                                          child: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 6),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Text(
                            "Effect",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        const SizedBox(height: 17),
                      ],
                    ),
                  )
                : const SizedBox(),
          ),
          // Video Status
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocSelector<VideoStatusForStoryCubit, VideoStatusForStory,
                VideoStatusForStory>(
              selector: (state) => state,
              builder: (_, status) => (status == VideoStatusForStory.onLoading)
                  ? Container(
                      width: double.infinity,
                      height: 56,
                      color: Colors.blue,
                      child: const Center(
                        child: SizedBox(
                          width: 36,
                          height: 36,
                          child: CircularProgressIndicator(color: Colors.white),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buttonEditorWidget({
  required BuildContext context,
  required ScreenshotController controller,
}) {
  final FileForStoryState state =
      getIt<FileForStoryCubitEvent>().read(context).state;
  // Filters
  List<StoryFilter> filters = StoryFilter.filters(state.image);
  // Update State
  getIt<ArForStoryCubitEvent>().read(context).updateEffect(0);

  // Function
  void playVideo() {
    // Call Controller
    getIt<VideoPlayerForStoryCubitEvent>().read(context).play();
    // Update State
    getIt<VideoRecorderForStoryCubitEvent>().read(context).updatePlaying(true);
  }

  void pauseVideo() {
    // Call Controller
    getIt<VideoPlayerForStoryCubitEvent>().read(context).pause();
    // Update State
    getIt<VideoRecorderForStoryCubitEvent>().read(context).updatePlaying(false);
  }

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      // Filters
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: List.generate(
            filters.length,
            (index) {
              final StoryFilter filter = filters[index];

              return GestureDetector(
                onTap: () {
                  // Update State
                  getIt<ArForStoryCubitEvent>()
                      .read(context)
                      .updateEffect(index);
                },
                child: BlocSelector<ArForStoryCubit, ArForStoryState, int>(
                  selector: (state) => state.currentEffect,
                  builder: (_, currentEffect) => Container(
                    margin: EdgeInsets.only(
                      left: 8,
                      right: (index == filters.length - 1) ? 8 : 0,
                    ),
                    width: (currentEffect == index) ? 64 : 48,
                    height: (currentEffect == index) ? 64 : 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: (filter.color == Colors.black)
                            ? Colors.white
                            : Colors.black,
                        width: (currentEffect == index) ? 6 : 1,
                      ),
                      image: (filter.img == null)
                          ? null
                          : DecorationImage(
                              image: FileImage(filter.img!),
                              fit: BoxFit.cover,
                            ),
                    ),
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (index == 0)
                            ? Colors.white
                            : filter.color!
                                .withOpacity((state.image == null) ? 1 : 0.7),
                      ),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
      const SizedBox(height: 24),
      // Button
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Save
            BlocSelector<ArForStoryCubit, ArForStoryState, int>(
              selector: (state) => state.currentEffect,
              builder: (_, currentEffect) => BlocSelector<
                  CaptionTextForStoryCubit,
                  CaptionTextForStoryState,
                  CaptionTextForStoryState>(
                selector: (state) => state,
                builder: (_, captionState) => (state.image != null)
                    ? GestureDetector(
                        onTap: () {
                          // Save Image
                          controller.capture().then(
                            (image) {
                              saveImageToLocal(image).then(
                                (_) =>
                                    // Show Snackbar
                                    ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Success Save"),
                                    backgroundColor: Colors.green,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.file_download,
                              color: Colors.white,
                            ),
                            Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    : (currentEffect > 0 || captionState.text != null)
                        ? GestureDetector(
                            onTap: () {
                              // Save Video
                              filterFromColor(
                                color: (currentEffect < 1)
                                    ? null
                                    : StoryFilter.filters(null)[currentEffect]
                                        .color!,
                                video: state.video!,
                                captionState: captionState,
                                onLoading: () {
                                  // Update State
                                  getIt<VideoStatusForStoryCubitHandle>()
                                      .read(context)
                                      .update(VideoStatusForStory.onLoading);
                                },
                                onSuccess: () {
                                  // Update State
                                  getIt<VideoStatusForStoryCubitHandle>()
                                      .read(context)
                                      .update(VideoStatusForStory.ondone);
                                },
                                onError: () {
                                  // Update State
                                  getIt<VideoStatusForStoryCubitHandle>()
                                      .read(context)
                                      .update(VideoStatusForStory.ondone);
                                },
                                saveTo: (path) {
                                  saveVideoToLocal(path);
                                },
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.file_download,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Save",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox(),
              ),
            ),
            // Video Control
            if (state.video != null)
              BlocSelector<VideoRecorderForStoryCubit,
                  VideoRecorderForStoryState, bool>(
                selector: (state) => state.isPlaying,
                builder: (_, isPlaying) => iconButton(
                  onTap: () {
                    if (isPlaying) {
                      pauseVideo();
                      return;
                    }
                    playVideo();
                  },
                  iconData: isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              )
            else
              const SizedBox(),
            // Upload
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 0,
              ),
              child: const Text("Send to story"),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _effectWidget(BuildContext context) {
  // Update State
  getIt<ArForStoryCubitEvent>().read(context).clear();

  Widget btnModeType({
    required CameraMode mode,
    required CameraMode modeState,
  }) {
    return GestureDetector(
      onTap: () {
        // Update State
        getIt<ArForStoryCubitEvent>().read(context).updateEffectMode(mode);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color:
              (mode == modeState) ? Colors.blue : Colors.blue.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          (mode == CameraMode.mask) ? "Effect" : "Filter",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  return BlocSelector<ArForStoryCubit, ArForStoryState, CameraMode>(
    selector: (state) => state.modeType,
    builder: (_, mode) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Effects | Filters
        CarouselSlider.builder(
          itemCount: (mode == CameraMode.mask)
              ? StoryEffect.effects.length
              : StoryEffect.filters.length,
          itemBuilder: (context, index, _) {
            final StoryEffect effect = (mode == CameraMode.mask)
                ? StoryEffect.effects[index]
                : StoryEffect.filters[index];
            return Container(
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: (index == 0)
                    ? null
                    : DecorationImage(
                        image: AssetImage(effect.img),
                      ),
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 0.2,
            height: 64,
            enlargeCenterPage: true,
            scrollPhysics: const BouncingScrollPhysics(),
            onPageChanged: (index, _) {
              // Update Effect
              ArForStoryCubit.controller.switchEffect(
                mode,
                (mode == CameraMode.mask)
                    ? StoryEffect.effects[index].path
                    : StoryEffect.filters[index].path,
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        // Btn ModeType
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Effect
            btnModeType(mode: CameraMode.mask, modeState: mode),
            const SizedBox(width: 8),
            // Filter
            btnModeType(mode: CameraMode.filter, modeState: mode),
          ],
        ),
      ],
    ),
  );
}

// Image
class StoryImageViewWidget extends StatelessWidget {
  const StoryImageViewWidget({
    Key? key,
    required this.image,
    required this.controller,
    required this.scribbleNotifier,
  }) : super(key: key);
  final File image;
  final ScreenshotController controller;
  final ScribbleNotifier scribbleNotifier;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Screenshot(
        controller: controller,
        child: Stack(
          children: [
            // Image
            BlocSelector<ArForStoryCubit, ArForStoryState, int>(
              selector: (state) => state.currentEffect,
              builder: (_, currentEffect) => (currentEffect == 0)
                  ? Image.file(image)
                  : ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        StoryFilter.filters(image)[currentEffect].color!,
                        BlendMode.color,
                      ),
                      child: Image.file(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
            // Freehand
            Freehand(scribbleNotifier: scribbleNotifier),
            // Gif
            const StoryGifWidget(),
          ],
        ),
      ),
    );
  }
}

// Video
class StoryVideoViewWidget extends StatefulWidget {
  const StoryVideoViewWidget({Key? key}) : super(key: key);

  @override
  State<StoryVideoViewWidget> createState() => _StoryVideoViewWidgetState();
}

class _StoryVideoViewWidgetState extends State<StoryVideoViewWidget> {
  void play() {
    // Call Controller
    getIt<VideoPlayerForStoryCubitEvent>().read(context).play();
    // Update State
    getIt<VideoRecorderForStoryCubitEvent>().read(context).updatePlaying(true);
    getIt<CaptionTextForStoryCubitEvent>().read(context).clear();
  }

  @override
  void initState() {
    super.initState();
    final state = getIt<FileForStoryCubitEvent>().read(context).state;
    getIt<VideoPlayerForStoryCubitEvent>()
        .read(context)
        .initialize(state.video!);
    play();
  }

  @override
  void dispose() {
    super.dispose();
    getIt<VideoPlayerForStoryCubitEvent>().read(context).dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocSelector<VideoPlayerForStoryCubit, VideoPlayerController?,
          VideoPlayerController?>(
        selector: (state) => state,
        builder: (_, state) => FutureBuilder(
          future: state!.initialize(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return BlocSelector<ArForStoryCubit, ArForStoryState, int>(
                  selector: (state) => state.currentEffect,
                  builder: (_, currentEffect) {
                    Widget aspectRatio() {
                      return AspectRatio(
                        aspectRatio: state.value.aspectRatio,
                        child: VideoPlayer(state),
                      );
                    }

                    return (currentEffect == 0)
                        ? aspectRatio()
                        : ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              StoryFilter.filters(null)[currentEffect].color!,
                              BlendMode.color,
                            ),
                            child: aspectRatio(),
                          );
                  });
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

// Draggable Text
class DraggableText extends StatefulWidget {
  const DraggableText({
    Key? key,
    required this.content,
  }) : super(key: key);
  final Widget content;

  @override
  State<DraggableText> createState() => _DraggableTextState();
}

class _DraggableTextState extends State<DraggableText> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.content,
        //  Draggable Text
        BlocSelector<CaptionTextForStoryCubit, CaptionTextForStoryState,
            CaptionTextForStoryState>(
          selector: (state) => state,
          builder: (_, state) => (state.text == null)
              ? const SizedBox()
              : BlocSelector<VideoPlayerForStoryCubit, VideoPlayerController?,
                  VideoPlayerController?>(
                  selector: (state) => state,
                  builder: (_, videoPlayer) => Positioned(
                    left: offset.dx,
                    top: offset.dy,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          offset = Offset(
                            offset.dx + details.delta.dx,
                            offset.dy + details.delta.dy,
                          );

                          // Update State
                          getIt<CaptionTextForStoryCubitEvent>()
                              .read(context)
                              .updatePosition(
                                x: offset.dx + details.delta.dx,
                                y: offset.dy + details.delta.dy,
                              );
                        });
                      },
                      child: SizedBox(
                        width: videoPlayer!.value.size.width,
                        height: videoPlayer.value.size.height,
                        child: Text(
                          state.text!,
                          style: TextStyle(
                            color: state.textColor,
                            fontSize: state.size.toDouble(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}

// Freehand
class Freehand extends StatelessWidget {
  const Freehand({
    Key? key,
    required this.scribbleNotifier,
  }) : super(key: key);
  final ScribbleNotifier scribbleNotifier;

  @override
  Widget build(BuildContext context) {
    return Scribble(notifier: scribbleNotifier);
  }
}

// Freehand Button
class FreehandButton extends StatelessWidget {
  const FreehandButton({Key? key, required this.scribbleNotifier})
      : super(key: key);
  final ScribbleNotifier scribbleNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Undo
            if (scribbleNotifier.canUndo)
              textButton(
                onTap: () {
                  scribbleNotifier.undo();
                },
                title: "Undo",
              )
            else
              const SizedBox(width: 32),
            // Pen
            BlocSelector<FreehandForStoryCubit, FreehandForStoryState, Color>(
              selector: (state) => state.color,
              builder: (_, color) => iconButton(
                onTap: () {
                  // Update State
                  getIt<FreehandForStoryCubitEvent>()
                      .read(context)
                      .updateActive();
                },
                iconData: Icons.edit,
              ),
            ),
            // Color
            iconButton(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: SingleChildScrollView(
                          child: BlocSelector<FreehandForStoryCubit,
                              FreehandForStoryState, Color>(
                            selector: (state) => state.color,
                            builder: (_, state) => ColorPicker(
                              pickerColor: state,
                              onColorChanged: (value) {
                                // Update State
                                getIt<FreehandForStoryCubitEvent>()
                                    .read(context)
                                    .updateColor(value);
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                iconData: Icons.color_lens),
            // Clear
            textButton(
              onTap: () {
                scribbleNotifier.clear();

                // Update State
                getIt<FreehandForStoryCubitEvent>().read(context).clear();
              },
              title: "Clear",
            ),
          ],
        ),
        const SizedBox(height: 12),
        //  Stroke Controller
        BlocSelector<FreehandForStoryCubit, FreehandForStoryState,
            FreehandForStoryState>(
          selector: (state) => state,
          builder: (_, state) => Slider(
            min: 1,
            max: 20,
            value: state.strokeWidth,
            activeColor: state.color,
            thumbColor: state.color,
            inactiveColor: state.color.withOpacity(0.5),
            onChanged: (value) {
              //  Update State
              getIt<FreehandForStoryCubitEvent>()
                  .read(context)
                  .updateStrokeWidth(value);

              scribbleNotifier.setStrokeWidth(value);
            },
          ),
        ),
      ],
    );
  }
}

// Gif
class StoryGifWidget extends StatelessWidget {
  const StoryGifWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: BlocSelector<GiphyForStoryCubit, GiphyForStoryState,
          GiphyForStoryState>(
        selector: (state) => state,
        builder: (_, state) => (state.gif == null)
            ? const SizedBox()
            : DraggableContent(
                content: Image.network(
                  state.gif!.images!.original!.webp!,
                  headers: const {'accept': 'image/*'},
                ),
              ),
      ),
    );
  }
}

// Caption Text Editor
class StoryCaptionTextEditor extends StatefulWidget {
  const StoryCaptionTextEditor({Key? key}) : super(key: key);

  @override
  State<StoryCaptionTextEditor> createState() => _StoryCaptionTextEditorState();
}

class _StoryCaptionTextEditorState extends State<StoryCaptionTextEditor> {
  final textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (textController.text.isNotEmpty) {
          // Update State
          getIt<CaptionTextForStoryCubitEvent>()
              .read(context)
              .updateText(textController.text);
        }

        Navigator.pop(context);
      },
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Color Palete | Weight | Delete
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Color Palete
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: SingleChildScrollView(
                              child: BlocSelector<CaptionTextForStoryCubit,
                                  CaptionTextForStoryState, Color>(
                                selector: (state) => state.textColor,
                                builder: (_, state) => ColorPicker(
                                  pickerColor: state,
                                  onColorChanged: (value) {
                                    // Update State
                                    getIt<CaptionTextForStoryCubitEvent>()
                                        .read(context)
                                        .updateTextColor(value);
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.color_lens, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  // Delete
                  IconButton(
                    onPressed: () {
                      // Update State
                      getIt<CaptionTextForStoryCubitEvent>()
                          .read(context)
                          .clear();
                    },
                    icon: const Icon(Icons.delete, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 64),
              // Font Sizer | Textfield
              BlocSelector<CaptionTextForStoryCubit, CaptionTextForStoryState,
                  CaptionTextForStoryState>(
                selector: (state) => state,
                builder: (_, state) => SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Font Size Slider
                      RotatedBox(
                        quarterTurns: 3,
                        child: Slider(
                          min: 8,
                          max: 96,
                          value: state.size.toDouble(),
                          thumbColor: state.textColor,
                          activeColor: state.textColor,
                          inactiveColor: state.textColor.withOpacity(0.5),
                          onChanged: (value) {
                            //  Update State
                            getIt<CaptionTextForStoryCubitEvent>()
                                .read(context)
                                .updateSize(
                                  value,
                                );
                          },
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Textfield
                      Expanded(
                        child: SingleChildScrollView(
                          child: TextField(
                            autofocus: true,
                            controller: textController
                              ..text = (state.text != null) ? state.text! : "",
                            style: TextStyle(
                              color: state.textColor,
                              fontSize: state.size.toDouble(),
                            ),
                            cursorColor: state.textColor,
                            maxLines: null,
                            decoration: const InputDecoration(
                              filled: false,
                              fillColor: Colors.transparent,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
