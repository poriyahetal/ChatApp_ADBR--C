import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'file_for_story_state.dart';
part 'file_for_story_cubit.freezed.dart';

@lazySingleton
class FileForStoryCubitEvent {
  FileForStoryCubit read(BuildContext context) {
    return context.read<FileForStoryCubit>();
  }
}

@injectable
class FileForStoryCubit extends Cubit<FileForStoryState> {
  FileForStoryCubit() : super(FileForStoryState.initial());

  // Function
  void clear() {
    emit(FileForStoryState.initial());
  }

  void takePhoto(String value) {
    emit(
      FileForStoryState(
        image: File(value),
        video: state.video,
      ),
    );
  }

  void takeVideo(String value) {
    emit(
      FileForStoryState(
        image: state.image,
        video: File(value),
      ),
    );
  }
}
