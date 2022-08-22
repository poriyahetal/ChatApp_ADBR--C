part of 'stories_bloc.dart';

@freezed
class StoriesEvent with _$StoriesEvent {
  const factory StoriesEvent.createTextStatus(
    StoriesModel currentUser,
    String text,
    Color color,
  ) = _CreateTextStatus;

  const factory StoriesEvent.createPaintStatus(
      StoriesModel currentUser, File imageFile) = _CreatePaintStatus;

  const factory StoriesEvent.createImageStatus(
    StoriesModel currentUser,
    List<ImageWithCaptionModel> imageWithCaption,
  ) = _CreateImageStatus;

  const factory StoriesEvent.addImageCaption(List<String> caption) =
      _AddImageCaption;

  const factory StoriesEvent.completeScreenshot() = _CompleteScreenshot;

  const factory StoriesEvent.createGifStatus(
      StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption,
      double duration) = _CreateGifStatus;

  const factory StoriesEvent.createVideoStatus(
          StoriesModel currentuser, String text, String path, double duration) =
      _CreateVideoStatus;

  const factory StoriesEvent.storySeenBy(
    StoriesModel currentUser,
    int index,
    KahoChatUser myUser,
  ) = _StorySeenBy;

  const factory StoriesEvent.reactOnStory(
    StoriesModel currentUser,
    int index,
    KahoChatUser myUser,
      String reaction,
  ) = _StoryReactedBy;

  const factory StoriesEvent.createStories(
    StoriesModel stories,
  ) = _CreateStories;

  const factory StoriesEvent.getCurrentUserStory() = _GetCurrentUserStory;
}
