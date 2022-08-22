part of 'giphy_for_story_cubit.dart';

@freezed
class GiphyForStoryState with _$GiphyForStoryState {
  factory GiphyForStoryState({
    required GiphyGif? gif,
    required GiphyClient client,
    required String? randomId,
  }) = _GiphyForStoryState;

  factory GiphyForStoryState.initial() => GiphyForStoryState(
        gif: null,
        client: GiphyForStoryCubit.client,
        randomId: "",
      );
}
