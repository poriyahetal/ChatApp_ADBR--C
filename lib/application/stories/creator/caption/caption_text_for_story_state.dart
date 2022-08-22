part of 'caption_text_for_story_cubit.dart';

@freezed
class CaptionTextForStoryState with _$CaptionTextForStoryState {
  factory CaptionTextForStoryState({
    required double positionX,
    required double positionY,
    required double size,
    required Color textColor,
    required String? text,
  }) = _CaptionTextForState;

  factory CaptionTextForStoryState.initial() => CaptionTextForStoryState(
        positionX: 0,
        positionY: 0,
        size: 48,
        textColor: Colors.white,
        text: null,
      );
}
