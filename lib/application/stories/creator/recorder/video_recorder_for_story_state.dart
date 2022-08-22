part of 'video_recorder_for_story_cubit.dart';

@freezed
class VideoRecorderForStoryState with _$VideoRecorderForStoryState {
  factory VideoRecorderForStoryState({
    required Duration duration,
    required Timer? timer,
    required bool isPlaying,
  }) = _VideoRecorderForStoryState;

  factory VideoRecorderForStoryState.initial() => VideoRecorderForStoryState(
        // ignore: use_named_constants
        duration: const Duration(),
        timer: null,
        isPlaying: false,
      );
}
