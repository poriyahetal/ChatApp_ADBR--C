import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:video_player/video_player.dart';

@lazySingleton
class VideoPlayerForStoryCubitEvent {
  VideoPlayerForStoryCubit read(BuildContext context) {
    return context.read<VideoPlayerForStoryCubit>();
  }
}

@injectable
class VideoPlayerForStoryCubit extends Cubit<VideoPlayerController?> {
  VideoPlayerForStoryCubit() : super(null);

  // Function
  void initialize(File video) {
    emit(VideoPlayerController.file(video));
    state?.setLooping(true);
  }

  void play() {
    state?.play();
  }

  void pause() {
    state?.pause();
  }

  void dispose() {
    state?.dispose();
  }
}
