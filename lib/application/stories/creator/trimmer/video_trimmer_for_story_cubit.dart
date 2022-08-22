import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'video_trimmer_for_story_state.dart';
part 'video_trimmer_for_story_cubit.freezed.dart';

@lazySingleton
class VideoTrimmerForStoryCubitEvent {
  VideoTrimmerForStoryCubit read(BuildContext context) {
    return context.read<VideoTrimmerForStoryCubit>();
  }
}

@injectable
class VideoTrimmerForStoryCubit extends Cubit<VideoTrimmerForStoryState> {
  VideoTrimmerForStoryCubit() : super(VideoTrimmerForStoryState.initial());
  static final List<int> durations = [15, 30, 45, 60];

  static final _default = VideoTrimmerForStoryState(
    isPlaying: false,
    startValue: 0,
    endValue: 0,
    selectedDuration: 0,
    minute: null,
    second: null,
    allDuration: null,
  );

  // Function
  void clear() {
    emit(VideoTrimmerForStoryState.initial());
  }

  void updateIsPlaying(bool value) {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: value,
        startValue: state.startValue,
        selectedDuration: 0,
        minute: state.minute,
        second: state.second,
        allDuration: state.allDuration,
      ),
    );
  }

  void udpateStart(double value) {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: state.isPlaying,
        startValue: value,
        selectedDuration: 0,
        minute: state.minute,
        second: state.second,
        allDuration: state.allDuration,
      ),
    );
  }

  void udpateEnd(double value) {
    emit(
      VideoTrimmerForStoryState(
        endValue: value,
        isPlaying: state.isPlaying,
        startValue: state.startValue,
        selectedDuration: 0,
        minute: state.minute,
        second: state.second,
        allDuration: state.allDuration,
      ),
    );
  }

  void udpateSelectedDuration(int value) {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: state.isPlaying,
        startValue: state.startValue,
        selectedDuration: value,
        minute: _default.minute,
        second: _default.second,
        allDuration: _default.allDuration,
      ),
    );
  }

  void updateMinute(int? minute) {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: state.isPlaying,
        startValue: state.startValue,
        selectedDuration: -1,
        minute: minute,
        second: state.second,
        allDuration: _default.allDuration,
      ),
    );
  }

  void updateSecond(int? second) {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: state.isPlaying,
        startValue: state.startValue,
        selectedDuration: -1,
        minute: state.minute,
        second: second,
        allDuration: _default.allDuration,
      ),
    );
  }

  void allDuration(int? value) {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: state.isPlaying,
        startValue: state.startValue,
        selectedDuration: -1,
        minute: _default.minute,
        second: _default.second,
        allDuration: value,
      ),
    );
  }

  void clearDuration() {
    emit(
      VideoTrimmerForStoryState(
        endValue: state.endValue,
        isPlaying: state.isPlaying,
        startValue: state.startValue,
        selectedDuration: 0,
        minute: _default.minute,
        second: _default.second,
        allDuration: _default.allDuration,
      ),
    );
  }
}
