import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'caption_text_for_story_state.dart';
part 'caption_text_for_story_cubit.freezed.dart';

@lazySingleton
class CaptionTextForStoryCubitEvent {
  CaptionTextForStoryCubit read(BuildContext context) {
    return context.read<CaptionTextForStoryCubit>();
  }
}

@injectable
class CaptionTextForStoryCubit extends Cubit<CaptionTextForStoryState> {
  CaptionTextForStoryCubit() : super(CaptionTextForStoryState.initial());

  // Function
  void clear() {
    emit(CaptionTextForStoryState.initial());
  }

  void updatePosition({required double? x, required double? y}) {
    emit(CaptionTextForStoryState(
      positionX: x ?? state.positionX,
      positionY: y ?? state.positionY,
      size: state.size,
      text: state.text,
      textColor: state.textColor,
    ));
  }

  void updateSize(double value) {
    emit(CaptionTextForStoryState(
      positionX: state.positionX,
      positionY: state.positionY,
      size: value,
      text: state.text,
      textColor: state.textColor,
    ));
  }

  void updateText(String value) {
    emit(CaptionTextForStoryState(
      positionX: state.positionX,
      positionY: state.positionY,
      size: state.size,
      text: value,
      textColor: state.textColor,
    ));
  }

  void updateTextColor(Color value) {
    emit(CaptionTextForStoryState(
      positionX: state.positionX,
      positionY: state.positionY,
      size: state.size,
      text: state.text,
      textColor: value,
    ));
  }
}
