part of 'freehand_for_story_cubit.dart';

@freezed
class FreehandForStoryState with _$FreehandForStoryState {
  factory FreehandForStoryState({
    required bool isActive,
    required Color color,
    required double strokeWidth,
  }) = _FreehandForStoryState;

  factory FreehandForStoryState.initial() => FreehandForStoryState(
        color: Colors.blue,
        isActive: false,
        strokeWidth: 3,
      );
}
