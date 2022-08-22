import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:injectable/injectable.dart';
part 'giphy_for_story_state.dart';
part 'giphy_for_story_cubit.freezed.dart';

@lazySingleton
class GiphyForStoryCubitEvent {
  GiphyForStoryCubit read(BuildContext context) {
    return context.read<GiphyForStoryCubit>();
  }
}

@injectable
class GiphyForStoryCubit extends Cubit<GiphyForStoryState> {
  GiphyForStoryCubit() : super(GiphyForStoryState.initial());

  // Get This Api Key From Site: https://developers.giphy.com/
  static const apiKey = "CrE4ZkaDjUkojn1CjzwVFQ6hPFY0FgV3";

  static final client = GiphyClient(
    apiKey: apiKey,
    randomId: '',
  );

  // Function
  void clear() {
    emit(GiphyForStoryState.initial());
  }

  void initial() {
    client.getRandomId().then(
          (value) => emit(
            GiphyForStoryState(
              gif: state.gif,
              client: state.client,
              randomId: value,
            ),
          ),
        );
  }

  Future<void> updateGif(BuildContext context) async {
    final GiphyGif? gif = await GiphyGet.getGif(
      context: context,
      apiKey: apiKey,
    );

    if (gif != null) {
      emit(
        GiphyForStoryState(
          gif: gif,
          client: state.client,
          randomId: state.randomId,
        ),
      );
    }
  }
}
