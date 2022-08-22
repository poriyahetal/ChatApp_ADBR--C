// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/camera/camera_failures.dart';
import 'package:flutter_template/domain/core/camera/i_camera_facade.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'camera_bloc.freezed.dart';
part 'camera_event.dart';
part 'camera_state.dart';

@injectable
class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc(this._cameraFacade) : super(CameraState.initial());
  final ICameraFacade _cameraFacade;

  @override
  Stream<CameraState> mapEventToState(
    CameraEvent event,
  ) async* {
    yield* event.map(
      pickImageFromCamera: (e) async* {
        yield state.copyWith(
          pickImageFailureOrSuccessOption: none(),
          uploadImageFailureOrSuccessOption: none(),
          cropImageFailureOrSuccessOption: none(),
        );
        final opt = await _cameraFacade.pickImageFromCamera();
        yield opt.fold(
          (failure) => state.copyWith(
            pickedImagePath: "",
            pickImageFailureOrSuccessOption: some(left(failure)),
            uploadImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: none(),
          ),
          (pickedImagePath) => state.copyWith(
            pickedImagePath: pickedImagePath,
            pickImageFailureOrSuccessOption: some(right(unit)),
            uploadImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: none(),
          ),
        );
      },
      pickImageFromGallery: (e) async* {
        yield state.copyWith(
          pickImageFailureOrSuccessOption: none(),
          uploadImageFailureOrSuccessOption: none(),
          cropImageFailureOrSuccessOption: none(),
        );
        final opt = await _cameraFacade.pickImageFromGallery();
        yield opt.fold(
          (failure) => state.copyWith(
            pickedImagePath: "",
            pickImageFailureOrSuccessOption: some(left(failure)),
            uploadImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: none(),
          ),
          (pickedImagePath) => state.copyWith(
            pickedImagePath: pickedImagePath,
            pickImageFailureOrSuccessOption: some(right(unit)),
            uploadImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: none(),
          ),
        );
      },
      cropPickedImage: (e) async* {
        yield state.copyWith(
          pickImageFailureOrSuccessOption: none(),
          uploadImageFailureOrSuccessOption: none(),
          cropImageFailureOrSuccessOption: none(),
        );

        final opt = await _cameraFacade.cropImage(state.pickedImagePath);

        yield opt.fold(
          (failure) => state.copyWith(
            croppedImagePath: "",
            pickImageFailureOrSuccessOption: none(),
            uploadImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: some(left(failure)),
          ),
          (croppedImagePath) => state.copyWith(
            croppedImagePath: croppedImagePath,
            pickImageFailureOrSuccessOption: none(),
            uploadImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      uploadCroppedImage: (e) async* {
        yield state.copyWith(
          isLoading: true,
          pickImageFailureOrSuccessOption: none(),
          uploadImageFailureOrSuccessOption: none(),
          cropImageFailureOrSuccessOption: none(),
        );
        log("uploading started");
        final opt =
            await _cameraFacade.getImageUrlFromPath(state.croppedImagePath);
        log("uploading $opt");
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            uploadedImageUrl: "",
            pickImageFailureOrSuccessOption: none(),
            cropImageFailureOrSuccessOption: none(),
            uploadImageFailureOrSuccessOption: some(left(failure)),
          ),
          (uploadedImageUrl) => state.copyWith(
            isLoading: false,
            uploadedImageUrl: uploadedImageUrl,
            pickImageFailureOrSuccessOption: none(),
            uploadImageFailureOrSuccessOption: some(right(unit)),
            cropImageFailureOrSuccessOption: none(),
          ),
        );
      },
      uploadImage: (e) async* {
        yield state.copyWith(
          pickImageFailureOrSuccessOption: none(),
          uploadImageFailureOrSuccessOption: none(),
          cropImageFailureOrSuccessOption: none(),
        );
        final opt = await _cameraFacade.getImageUrlFromPath(e.imagePath);
        yield opt.fold(
          (failure) => state.copyWith(
            uploadedImageUrl: "",
            pickImageFailureOrSuccessOption: none(),
            uploadImageFailureOrSuccessOption: some(left(failure)),
            cropImageFailureOrSuccessOption: none(),
          ),
          (imageUrl) => state.copyWith(
            uploadedImageUrl: imageUrl,
            pickImageFailureOrSuccessOption: none(),
            uploadImageFailureOrSuccessOption: some(right(unit)),
            cropImageFailureOrSuccessOption: none(),
          ),
        );
      },
    );
  }
}
