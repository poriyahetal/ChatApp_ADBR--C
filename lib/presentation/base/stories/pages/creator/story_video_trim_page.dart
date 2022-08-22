import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/stories/creator/file/file_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/trimmer/video_trimmer_for_story_cubit.dart';
import 'package:flutter_template/injection.dart';
import 'package:flutter_template/presentation/core/utils/story_creator_services.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:video_trimmer/video_trimmer.dart';

class VideoTrimPage extends StatefulWidget {
  const VideoTrimPage({
    Key? key,
    required this.file,
  }) : super(key: key);
  final File file;

  @override
  State<VideoTrimPage> createState() => _VideoTrimPageState();
}

class _VideoTrimPageState extends State<VideoTrimPage> {
  final Trimmer _trimmer = Trimmer();
  @override
  void initState() {
    super.initState();
    _loadVideo();
  }

  void _loadVideo() {
    _trimmer.loadVideo(videoFile: widget.file);
  }

  @override
  Widget build(BuildContext context) {
    final state = getIt<VideoTrimmerForStoryCubitEvent>().read(context).state;
    final int duration = (state.selectedDuration > -1)
        ? VideoTrimmerForStoryCubit.durations[state.selectedDuration]
        : (state.allDuration != null)
            ? state.allDuration!
            : (state.minute != null && state.second != null)
                ? state.minute! * 60 + state.second!
                : (state.minute != null && state.second == null)
                    ? state.minute! * 60
                    : (state.minute == null && state.second != null)
                        ? state.second!
                        : 15;
    return WillPopScope(
      onWillPop: () async {
        deleteFile(widget.file);
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            BlocSelector<VideoTrimmerForStoryCubit, VideoTrimmerForStoryState,
                VideoTrimmerForStoryState>(
              selector: (state) => state,
              builder: (_, state) => IconButton(
                onPressed: () {
                  _trimmer.saveTrimmedVideo(
                    startValue: state.startValue,
                    endValue: state.endValue,
                    onSave: (path) {
                      if (path != null) {
                        // Update State
                        getIt<FileForStoryCubitEvent>()
                            .read(context)
                            .takeVideo(path);
                        deleteFile(widget.file);

                        Navigator.pop(context);
                      }
                    },
                  );
                },
                icon: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: VideoViewer(trimmer: _trimmer),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigate
                  AutoRouter.of(context).replace(
                    StoryChooseDurationRoute(
                      indexDuration: getIt<VideoTrimmerForStoryCubitEvent>()
                          .read(context)
                          .state
                          .selectedDuration,
                      video: widget.file,
                    ),
                  );
                },
                child: const Text(
                  "Change Duration",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text(
                    (duration == 0)
                        ? "Maximum story duration is all video duration"
                        : "Maximum story duration is $duration second",
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  TrimEditor(
                    trimmer: _trimmer,
                    viewerHeight: 50,
                    viewerWidth: MediaQuery.of(context).size.width,
                    maxVideoLength: Duration(
                      seconds: duration,
                    ),
                    fit: BoxFit.cover,
                    onChangeStart: (value) {
                      // Update State
                      getIt<VideoTrimmerForStoryCubitEvent>()
                          .read(context)
                          .udpateStart(value);
                    },
                    onChangeEnd: (value) {
                      // Update State
                      getIt<VideoTrimmerForStoryCubitEvent>()
                          .read(context)
                          .udpateEnd(value);
                    },
                    onChangePlaybackState: (value) {
                      // Update State
                      getIt<VideoTrimmerForStoryCubitEvent>()
                          .read(context)
                          .updateIsPlaying(value);
                    },
                  ),
                ],
              ),
            ),
            BlocSelector<VideoTrimmerForStoryCubit, VideoTrimmerForStoryState,
                VideoTrimmerForStoryState>(
              selector: (state) => state,
              builder: (_, state) => TextButton(
                onPressed: () async {
                  final bool playbackState = await _trimmer.videPlaybackControl(
                    startValue: state.startValue,
                    endValue: state.endValue,
                  );
                  // Update State
                  // ignore: use_build_context_synchronously
                  getIt<VideoTrimmerForStoryCubitEvent>()
                      .read(context)
                      .updateIsPlaying(playbackState);
                },
                child: (state.isPlaying)
                    ? const Icon(
                        Icons.pause,
                        size: 80.0,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.play_arrow,
                        size: 80.0,
                        color: Colors.white,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
