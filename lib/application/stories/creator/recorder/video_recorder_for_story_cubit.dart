import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'video_recorder_for_story_state.dart';
part 'video_recorder_for_story_cubit.freezed.dart';

@lazySingleton
class VideoRecorderForStoryCubitEvent {
  VideoRecorderForStoryCubit read(BuildContext context) {
    return context.read<VideoRecorderForStoryCubit>();
  }
}

@injectable
class VideoRecorderForStoryCubit extends Cubit<VideoRecorderForStoryState> {
  VideoRecorderForStoryCubit() : super(VideoRecorderForStoryState.initial());

  // Function
  void clear() {
    emit(VideoRecorderForStoryState.initial());
  }

  void _addTime() {
    const addSeconds = 1;

    emit(
      VideoRecorderForStoryState(
        duration: Duration(
          seconds: state.duration.inSeconds + addSeconds,
        ),
        timer: state.timer,
        isPlaying: state.isPlaying,
      ),
    );
  }

  void startTime() {
    emit(
      VideoRecorderForStoryState(
        duration: state.duration,
        timer: Timer.periodic(
          const Duration(seconds: 1),
          (_) => _addTime(),
        ),
        isPlaying: state.isPlaying,
      ),
    );
  }

  void reset() {
    state.timer?.cancel();
    emit(
      VideoRecorderForStoryState(
        duration: const Duration(),
        timer: state.timer,
        isPlaying: state.isPlaying,
      ),
    );
  }

  void updatePlaying(bool value) {
    emit(
      VideoRecorderForStoryState(
        duration: state.duration,
        timer: state.timer,
        isPlaying: value,
      ),
    );
  }
}
