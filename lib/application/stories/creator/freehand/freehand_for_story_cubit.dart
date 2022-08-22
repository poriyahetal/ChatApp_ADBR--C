import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'freehand_for_story_state.dart';
part 'freehand_for_story_cubit.freezed.dart';

@lazySingleton
class FreehandForStoryCubitEvent {
  FreehandForStoryCubit read(BuildContext context) {
    return context.read<FreehandForStoryCubit>();
  }
}

@injectable
class FreehandForStoryCubit extends Cubit<FreehandForStoryState> {
  FreehandForStoryCubit() : super(FreehandForStoryState.initial());

  // Function
  void clear() {
    emit(FreehandForStoryState.initial());
  }

  void updateActive() {
    emit(FreehandForStoryState(
      color: state.color,
      isActive: !state.isActive,
      strokeWidth: state.strokeWidth,
    ));
  }

  void updateColor(Color value) {
    emit(FreehandForStoryState(
      color: value,
      isActive: state.isActive,
      strokeWidth: state.strokeWidth,
    ));
  }

  void updateStrokeWidth(double value) {
    emit(FreehandForStoryState(
      color: state.color,
      isActive: state.isActive,
      strokeWidth: value,
    ));
  }
}
