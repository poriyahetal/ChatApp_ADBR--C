part of 'file_for_story_cubit.dart';

@freezed
class FileForStoryState with _$FileForStoryState {
  factory FileForStoryState({
    required File? image,
    required File? video,
  }) = _FileForStoryState;

  factory FileForStoryState.initial() => FileForStoryState(
        image: null,
        video: null,
      );
}
