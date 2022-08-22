// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_template/domain/core/camera/camera_failures.dart';
import 'package:flutter_template/domain/core/camera/i_camera_facade.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: ICameraFacade)
class CameraFacade implements ICameraFacade {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CameraFacade(this._storageReference, this._firestore);

  @override
  Future<Either<CameraFailure, String>> cropImage(String imagePath) async {
    try {
      final CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: imagePath,
        // aspectRatio: const CropAspectRatio(ratioX: 16, ratioY: 16),
        compressQuality: 100,
        aspectRatioPresets: [CropAspectRatioPreset.square],
        cropStyle: CropStyle.rectangle,
        uiSettings: [ AndroidUiSettings(
          toolbarColor: Kolors.white,
          toolbarTitle: "Crop your image",
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: true,
        ),]
      );
      if (croppedFile != null) {
        return right(croppedFile.path);
      }
      return left(const CameraFailure.croppingActionCancelled());
    } catch (e) {
      return left(const CameraFailure.croppingActionFailed());
    }
  }

  @override
  Future<Either<CameraFailure, String>> pickImageFromGallery() async {
    return pickImage(source: ImageSource.gallery);
  }

  @override
  Future<Either<CameraFailure, String>> pickImageFromCamera() {
    return pickImage(source: ImageSource.camera);
  }

  Future<Either<CameraFailure, String>> pickImage({
    required ImageSource source,
  }) async {
    try {
      final ImagePicker _picker = ImagePicker();
      final PickedFile? file = await _picker.getImage(source: source);
      if (file != null) {
        return right(file.path);
      }
      return left(const CameraFailure.pickActionFailed());
    } catch (e) {
      return left(const CameraFailure.pickActionFailed());
    }
  }

  @override
  Future<Either<CameraFailure, String>> getImageUrlFromPath(
    String imagePath,
  ) async {
    final File file = File(imagePath);
    File? result;
    try {
      if (file.lengthSync() > 1000000) {
        String tempPath;
        final tempDir = await getExternalStorageDirectory();
        if (imagePath.endsWith(".jpg")) {
          tempPath = tempDir!.path + '/temp.jpg';
        } else if (imagePath.endsWith(".jpeg")) {
          tempPath = tempDir!.path + '/temp.jpeg';
        } else if (imagePath.endsWith(".webp")) {
          tempPath = tempDir!.path + '/temp.webp';
        } else {
          tempPath = tempDir!.path + '/temp.png';
        }
        result = await FlutterImageCompress.compressAndGetFile(
          imagePath,
          tempPath,
          quality: 30,
        );
      } else {
        result = file;
      }
      print(result!.lengthSync());
      final TaskSnapshot storageSnap = await _storageReference
          .profilePicturesStorageCollection
          .child(Getters.getCurrentUserUid())
          .putFile(result);
      final String uploadUrl = await storageSnap.ref.getDownloadURL();
      return right(uploadUrl);
    } on FirebaseException catch (e) {
      return left(CameraFailure.customError(e.toString()));
    }
  }
}
