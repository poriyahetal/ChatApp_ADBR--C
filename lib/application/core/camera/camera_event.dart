part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.pickImageFromCamera() = _PickImageFromCamera;
  const factory CameraEvent.pickImageFromGallery() = _PickImageFromGallery;
  const factory CameraEvent.cropPickedImage() = _CropPickedImage;
  const factory CameraEvent.uploadCroppedImage() = _UploadCroppedImage;
  const factory CameraEvent.uploadImage(String imagePath) = _UploadImage;

}
