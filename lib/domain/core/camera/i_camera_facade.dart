import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/camera/camera_failures.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class ICameraFacade {
  Future<Either<CameraFailure, String>> pickImageFromGallery();
  Future<Either<CameraFailure, String>> pickImageFromCamera();
  Future<Either<CameraFailure, String>> cropImage(String imagePath);
  Future<Either<CameraFailure, String>> getImageUrlFromPath(
    String imagePath,
  );
}
