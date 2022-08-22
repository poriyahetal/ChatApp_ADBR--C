part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    required bool isLoading,
    required String uploadedImageUrl,
    required String croppedImagePath,
    required String pickedImagePath,
    required Option<Either<CameraFailure, Unit>>
        pickImageFailureOrSuccessOption,
    required Option<Either<CameraFailure, Unit>>
        cropImageFailureOrSuccessOption,
    required Option<Either<CameraFailure, Unit>>
        uploadImageFailureOrSuccessOption,
  }) = _Camera;

  factory CameraState.initial() => CameraState(
        uploadedImageUrl: "",
        croppedImagePath: "",
        pickedImagePath: "",
        pickImageFailureOrSuccessOption: none(),
        cropImageFailureOrSuccessOption: none(),
        uploadImageFailureOrSuccessOption: none(),
        isLoading: false,
      );
}
