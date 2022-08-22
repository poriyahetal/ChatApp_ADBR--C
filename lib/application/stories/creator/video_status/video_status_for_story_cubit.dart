import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

enum VideoStatusForStory { undoing, onLoading, ondone }

@lazySingleton
class VideoStatusForStoryCubitHandle {
  VideoStatusForStoryCubit read(BuildContext context) {
    return context.read<VideoStatusForStoryCubit>();
  }
}

@injectable
class VideoStatusForStoryCubit extends Cubit<VideoStatusForStory> {
  VideoStatusForStoryCubit() : super(_default);

  static const _default = VideoStatusForStory.undoing;

  // Function
  void clear() {
    emit(_default);
  }

  void update(VideoStatusForStory value) {
    emit(value);
  }
}
