part of 'ar_for_story_cubit.dart';

@freezed
class ArForStoryState with _$ArForStoryState {
  factory ArForStoryState({
    required CameraDirection cameraDirection,
    required int currentEffect,
    required CameraMode modeType,
  }) = _ArForStoryState;

  factory ArForStoryState.initial() => ArForStoryState(
        cameraDirection: ArForStoryCubit.config.cameraDirection,
        currentEffect: 0,
        modeType: ArForStoryCubit.config.cameraMode,
      );
}
