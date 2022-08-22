import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_failures.freezed.dart';

@freezed
abstract class CameraFailure with _$CameraFailure {
  const factory CameraFailure.customError(String errorText) = CustomError;
  const factory CameraFailure.unableToCapture() = UnableToCapture;
  const factory CameraFailure.pickActionFailed() = PickActionFailed;
  const factory CameraFailure.croppingActionCancelled() =
      CroppingActionCancelled;
  const factory CameraFailure.croppingActionFailed() = CroppingActionFailed;
}
