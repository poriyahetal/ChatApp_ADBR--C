part of 'video_trimmer_for_story_cubit.dart';

@freezed
class VideoTrimmerForStoryState with _$VideoTrimmerForStoryState {
  factory VideoTrimmerForStoryState({
    required bool isPlaying,
    required double startValue,
    required double endValue,
    required int selectedDuration,
    required int? minute,
    required int? second,
    required int? allDuration,
  }) = _VideoTrimmerForStoryState;

  factory VideoTrimmerForStoryState.initial() => VideoTrimmerForStoryState(
        isPlaying: false,
        startValue: 0,
        endValue: 0,
        selectedDuration: 0,
        minute: null,
        second: null,
        allDuration: null,
      );
}
