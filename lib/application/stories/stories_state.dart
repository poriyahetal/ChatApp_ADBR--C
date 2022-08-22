part of 'stories_bloc.dart';

@freezed
class StoriesState with _$StoriesState {
  factory StoriesState({
    required Option<Either<StoriesFailure, Unit>>
        createStoryFailureOrSuccessOption,
    required ImageWithCaptionModel imageWithCaption,
    required StoriesModel myStories,
    required double uploadProgress,
    required List<String> addedImageCaption,
    required bool addScreenshotImage,

  }) = _StoriesState;
  factory StoriesState.initial() => StoriesState(
        createStoryFailureOrSuccessOption: none(),
        imageWithCaption: ImageWithCaptionModel(
          imagePath: "",
          caption: "",
        ),
    myStories: StoriesModel.empty(),
    uploadProgress: 0,
    addedImageCaption: [],
    addScreenshotImage: false,
      );
}
