import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ar_for_story_state.dart';
part 'ar_for_story_cubit.freezed.dart';

@lazySingleton
class ArForStoryCubitEvent {
  ArForStoryCubit read(BuildContext context) {
    return context.read<ArForStoryCubit>();
  }
}

@injectable
class ArForStoryCubit extends Cubit<ArForStoryState> {
  ArForStoryCubit() : super(ArForStoryState.initial());

  static const DeepArConfig config = DeepArConfig(
    // Get This Api Key From Site: https://www.deepar.ai/
    androidKey:
        "8ea842f64a7e2d9f09fa303a3ffba269940e4cede14df8558bf83ec115ef71f54c9c7f29c7dfe13f",
    ioskey: "289fd038afced7b695db30cb93379bb5383c2f1480c1201c44323a9949fe09241c68147e0c0de40b",
  );

  static CameraDeepArController controller = CameraDeepArController(config);

  // Function
  void clear() {
    emit(ArForStoryState.initial());
  }

  void changeCameraDirection(CameraDirection value) {
    controller.switchCameraDirection(direction: value);
    emit(
      ArForStoryState(
        currentEffect: state.currentEffect,
        cameraDirection: value,
        modeType: state.modeType,
      ),
    );
  }

  void updateEffectMode(CameraMode value) {
    emit(
      ArForStoryState(
        currentEffect: state.currentEffect,
        cameraDirection: state.cameraDirection,
        modeType: value,
      ),
    );
  }

  void updateEffect(int value) {
    emit(
      ArForStoryState(
        currentEffect: value,
        cameraDirection: state.cameraDirection,
        modeType: state.modeType,
      ),
    );
  }
}
