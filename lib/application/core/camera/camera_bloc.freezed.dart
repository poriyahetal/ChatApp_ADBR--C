// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraEventTearOff {
  const _$CameraEventTearOff();

  _PickImageFromCamera pickImageFromCamera() {
    return const _PickImageFromCamera();
  }

  _PickImageFromGallery pickImageFromGallery() {
    return const _PickImageFromGallery();
  }

  _CropPickedImage cropPickedImage() {
    return const _CropPickedImage();
  }

  _UploadCroppedImage uploadCroppedImage() {
    return const _UploadCroppedImage();
  }

  _UploadImage uploadImage(String imagePath) {
    return _UploadImage(
      imagePath,
    );
  }
}

/// @nodoc
const $CameraEvent = _$CameraEventTearOff();

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromGallery,
    required TResult Function() cropPickedImage,
    required TResult Function() uploadCroppedImage,
    required TResult Function(String imagePath) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageFromCamera value) pickImageFromCamera,
    required TResult Function(_PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_CropPickedImage value) cropPickedImage,
    required TResult Function(_UploadCroppedImage value) uploadCroppedImage,
    required TResult Function(_UploadImage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res> implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  final CameraEvent _value;
  // ignore: unused_field
  final $Res Function(CameraEvent) _then;
}

/// @nodoc
abstract class _$PickImageFromCameraCopyWith<$Res> {
  factory _$PickImageFromCameraCopyWith(_PickImageFromCamera value,
          $Res Function(_PickImageFromCamera) then) =
      __$PickImageFromCameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$PickImageFromCameraCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res>
    implements _$PickImageFromCameraCopyWith<$Res> {
  __$PickImageFromCameraCopyWithImpl(
      _PickImageFromCamera _value, $Res Function(_PickImageFromCamera) _then)
      : super(_value, (v) => _then(v as _PickImageFromCamera));

  @override
  _PickImageFromCamera get _value => super._value as _PickImageFromCamera;
}

/// @nodoc

class _$_PickImageFromCamera implements _PickImageFromCamera {
  const _$_PickImageFromCamera();

  @override
  String toString() {
    return 'CameraEvent.pickImageFromCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PickImageFromCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromGallery,
    required TResult Function() cropPickedImage,
    required TResult Function() uploadCroppedImage,
    required TResult Function(String imagePath) uploadImage,
  }) {
    return pickImageFromCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
  }) {
    return pickImageFromCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageFromCamera != null) {
      return pickImageFromCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageFromCamera value) pickImageFromCamera,
    required TResult Function(_PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_CropPickedImage value) cropPickedImage,
    required TResult Function(_UploadCroppedImage value) uploadCroppedImage,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return pickImageFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
  }) {
    return pickImageFromCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageFromCamera != null) {
      return pickImageFromCamera(this);
    }
    return orElse();
  }
}

abstract class _PickImageFromCamera implements CameraEvent {
  const factory _PickImageFromCamera() = _$_PickImageFromCamera;
}

/// @nodoc
abstract class _$PickImageFromGalleryCopyWith<$Res> {
  factory _$PickImageFromGalleryCopyWith(_PickImageFromGallery value,
          $Res Function(_PickImageFromGallery) then) =
      __$PickImageFromGalleryCopyWithImpl<$Res>;
}

/// @nodoc
class __$PickImageFromGalleryCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res>
    implements _$PickImageFromGalleryCopyWith<$Res> {
  __$PickImageFromGalleryCopyWithImpl(
      _PickImageFromGallery _value, $Res Function(_PickImageFromGallery) _then)
      : super(_value, (v) => _then(v as _PickImageFromGallery));

  @override
  _PickImageFromGallery get _value => super._value as _PickImageFromGallery;
}

/// @nodoc

class _$_PickImageFromGallery implements _PickImageFromGallery {
  const _$_PickImageFromGallery();

  @override
  String toString() {
    return 'CameraEvent.pickImageFromGallery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PickImageFromGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromGallery,
    required TResult Function() cropPickedImage,
    required TResult Function() uploadCroppedImage,
    required TResult Function(String imagePath) uploadImage,
  }) {
    return pickImageFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
  }) {
    return pickImageFromGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageFromCamera value) pickImageFromCamera,
    required TResult Function(_PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_CropPickedImage value) cropPickedImage,
    required TResult Function(_UploadCroppedImage value) uploadCroppedImage,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return pickImageFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
  }) {
    return pickImageFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery(this);
    }
    return orElse();
  }
}

abstract class _PickImageFromGallery implements CameraEvent {
  const factory _PickImageFromGallery() = _$_PickImageFromGallery;
}

/// @nodoc
abstract class _$CropPickedImageCopyWith<$Res> {
  factory _$CropPickedImageCopyWith(
          _CropPickedImage value, $Res Function(_CropPickedImage) then) =
      __$CropPickedImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$CropPickedImageCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res>
    implements _$CropPickedImageCopyWith<$Res> {
  __$CropPickedImageCopyWithImpl(
      _CropPickedImage _value, $Res Function(_CropPickedImage) _then)
      : super(_value, (v) => _then(v as _CropPickedImage));

  @override
  _CropPickedImage get _value => super._value as _CropPickedImage;
}

/// @nodoc

class _$_CropPickedImage implements _CropPickedImage {
  const _$_CropPickedImage();

  @override
  String toString() {
    return 'CameraEvent.cropPickedImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CropPickedImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromGallery,
    required TResult Function() cropPickedImage,
    required TResult Function() uploadCroppedImage,
    required TResult Function(String imagePath) uploadImage,
  }) {
    return cropPickedImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
  }) {
    return cropPickedImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (cropPickedImage != null) {
      return cropPickedImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageFromCamera value) pickImageFromCamera,
    required TResult Function(_PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_CropPickedImage value) cropPickedImage,
    required TResult Function(_UploadCroppedImage value) uploadCroppedImage,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return cropPickedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
  }) {
    return cropPickedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (cropPickedImage != null) {
      return cropPickedImage(this);
    }
    return orElse();
  }
}

abstract class _CropPickedImage implements CameraEvent {
  const factory _CropPickedImage() = _$_CropPickedImage;
}

/// @nodoc
abstract class _$UploadCroppedImageCopyWith<$Res> {
  factory _$UploadCroppedImageCopyWith(
          _UploadCroppedImage value, $Res Function(_UploadCroppedImage) then) =
      __$UploadCroppedImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$UploadCroppedImageCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res>
    implements _$UploadCroppedImageCopyWith<$Res> {
  __$UploadCroppedImageCopyWithImpl(
      _UploadCroppedImage _value, $Res Function(_UploadCroppedImage) _then)
      : super(_value, (v) => _then(v as _UploadCroppedImage));

  @override
  _UploadCroppedImage get _value => super._value as _UploadCroppedImage;
}

/// @nodoc

class _$_UploadCroppedImage implements _UploadCroppedImage {
  const _$_UploadCroppedImage();

  @override
  String toString() {
    return 'CameraEvent.uploadCroppedImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UploadCroppedImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromGallery,
    required TResult Function() cropPickedImage,
    required TResult Function() uploadCroppedImage,
    required TResult Function(String imagePath) uploadImage,
  }) {
    return uploadCroppedImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
  }) {
    return uploadCroppedImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadCroppedImage != null) {
      return uploadCroppedImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageFromCamera value) pickImageFromCamera,
    required TResult Function(_PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_CropPickedImage value) cropPickedImage,
    required TResult Function(_UploadCroppedImage value) uploadCroppedImage,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadCroppedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
  }) {
    return uploadCroppedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadCroppedImage != null) {
      return uploadCroppedImage(this);
    }
    return orElse();
  }
}

abstract class _UploadCroppedImage implements CameraEvent {
  const factory _UploadCroppedImage() = _$_UploadCroppedImage;
}

/// @nodoc
abstract class _$UploadImageCopyWith<$Res> {
  factory _$UploadImageCopyWith(
          _UploadImage value, $Res Function(_UploadImage) then) =
      __$UploadImageCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class __$UploadImageCopyWithImpl<$Res> extends _$CameraEventCopyWithImpl<$Res>
    implements _$UploadImageCopyWith<$Res> {
  __$UploadImageCopyWithImpl(
      _UploadImage _value, $Res Function(_UploadImage) _then)
      : super(_value, (v) => _then(v as _UploadImage));

  @override
  _UploadImage get _value => super._value as _UploadImage;

  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_UploadImage(
      imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UploadImage implements _UploadImage {
  const _$_UploadImage(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'CameraEvent.uploadImage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadImage &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$UploadImageCopyWith<_UploadImage> get copyWith =>
      __$UploadImageCopyWithImpl<_UploadImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromGallery,
    required TResult Function() cropPickedImage,
    required TResult Function() uploadCroppedImage,
    required TResult Function(String imagePath) uploadImage,
  }) {
    return uploadImage(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
  }) {
    return uploadImage?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromGallery,
    TResult Function()? cropPickedImage,
    TResult Function()? uploadCroppedImage,
    TResult Function(String imagePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageFromCamera value) pickImageFromCamera,
    required TResult Function(_PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_CropPickedImage value) cropPickedImage,
    required TResult Function(_UploadCroppedImage value) uploadCroppedImage,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageFromCamera value)? pickImageFromCamera,
    TResult Function(_PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_CropPickedImage value)? cropPickedImage,
    TResult Function(_UploadCroppedImage value)? uploadCroppedImage,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements CameraEvent {
  const factory _UploadImage(String imagePath) = _$_UploadImage;

  String get imagePath;
  @JsonKey(ignore: true)
  _$UploadImageCopyWith<_UploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CameraStateTearOff {
  const _$CameraStateTearOff();

  _Camera call(
      {required bool isLoading,
      required String uploadedImageUrl,
      required String croppedImagePath,
      required String pickedImagePath,
      required Option<Either<CameraFailure, Unit>>
          pickImageFailureOrSuccessOption,
      required Option<Either<CameraFailure, Unit>>
          cropImageFailureOrSuccessOption,
      required Option<Either<CameraFailure, Unit>>
          uploadImageFailureOrSuccessOption}) {
    return _Camera(
      isLoading: isLoading,
      uploadedImageUrl: uploadedImageUrl,
      croppedImagePath: croppedImagePath,
      pickedImagePath: pickedImagePath,
      pickImageFailureOrSuccessOption: pickImageFailureOrSuccessOption,
      cropImageFailureOrSuccessOption: cropImageFailureOrSuccessOption,
      uploadImageFailureOrSuccessOption: uploadImageFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CameraState = _$CameraStateTearOff();

/// @nodoc
mixin _$CameraState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get uploadedImageUrl => throw _privateConstructorUsedError;
  String get croppedImagePath => throw _privateConstructorUsedError;
  String get pickedImagePath => throw _privateConstructorUsedError;
  Option<Either<CameraFailure, Unit>> get pickImageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<CameraFailure, Unit>> get cropImageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<CameraFailure, Unit>> get uploadImageFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String uploadedImageUrl,
      String croppedImagePath,
      String pickedImagePath,
      Option<Either<CameraFailure, Unit>> pickImageFailureOrSuccessOption,
      Option<Either<CameraFailure, Unit>> cropImageFailureOrSuccessOption,
      Option<Either<CameraFailure, Unit>> uploadImageFailureOrSuccessOption});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  final CameraState _value;
  // ignore: unused_field
  final $Res Function(CameraState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? uploadedImageUrl = freezed,
    Object? croppedImagePath = freezed,
    Object? pickedImagePath = freezed,
    Object? pickImageFailureOrSuccessOption = freezed,
    Object? cropImageFailureOrSuccessOption = freezed,
    Object? uploadImageFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadedImageUrl: uploadedImageUrl == freezed
          ? _value.uploadedImageUrl
          : uploadedImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      croppedImagePath: croppedImagePath == freezed
          ? _value.croppedImagePath
          : croppedImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      pickedImagePath: pickedImagePath == freezed
          ? _value.pickedImagePath
          : pickedImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      pickImageFailureOrSuccessOption: pickImageFailureOrSuccessOption ==
              freezed
          ? _value.pickImageFailureOrSuccessOption
          : pickImageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CameraFailure, Unit>>,
      cropImageFailureOrSuccessOption: cropImageFailureOrSuccessOption ==
              freezed
          ? _value.cropImageFailureOrSuccessOption
          : cropImageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CameraFailure, Unit>>,
      uploadImageFailureOrSuccessOption: uploadImageFailureOrSuccessOption ==
              freezed
          ? _value.uploadImageFailureOrSuccessOption
          : uploadImageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CameraFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CameraCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$CameraCopyWith(_Camera value, $Res Function(_Camera) then) =
      __$CameraCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String uploadedImageUrl,
      String croppedImagePath,
      String pickedImagePath,
      Option<Either<CameraFailure, Unit>> pickImageFailureOrSuccessOption,
      Option<Either<CameraFailure, Unit>> cropImageFailureOrSuccessOption,
      Option<Either<CameraFailure, Unit>> uploadImageFailureOrSuccessOption});
}

/// @nodoc
class __$CameraCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraCopyWith<$Res> {
  __$CameraCopyWithImpl(_Camera _value, $Res Function(_Camera) _then)
      : super(_value, (v) => _then(v as _Camera));

  @override
  _Camera get _value => super._value as _Camera;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? uploadedImageUrl = freezed,
    Object? croppedImagePath = freezed,
    Object? pickedImagePath = freezed,
    Object? pickImageFailureOrSuccessOption = freezed,
    Object? cropImageFailureOrSuccessOption = freezed,
    Object? uploadImageFailureOrSuccessOption = freezed,
  }) {
    return _then(_Camera(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadedImageUrl: uploadedImageUrl == freezed
          ? _value.uploadedImageUrl
          : uploadedImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      croppedImagePath: croppedImagePath == freezed
          ? _value.croppedImagePath
          : croppedImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      pickedImagePath: pickedImagePath == freezed
          ? _value.pickedImagePath
          : pickedImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      pickImageFailureOrSuccessOption: pickImageFailureOrSuccessOption ==
              freezed
          ? _value.pickImageFailureOrSuccessOption
          : pickImageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CameraFailure, Unit>>,
      cropImageFailureOrSuccessOption: cropImageFailureOrSuccessOption ==
              freezed
          ? _value.cropImageFailureOrSuccessOption
          : cropImageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CameraFailure, Unit>>,
      uploadImageFailureOrSuccessOption: uploadImageFailureOrSuccessOption ==
              freezed
          ? _value.uploadImageFailureOrSuccessOption
          : uploadImageFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CameraFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_Camera implements _Camera {
  const _$_Camera(
      {required this.isLoading,
      required this.uploadedImageUrl,
      required this.croppedImagePath,
      required this.pickedImagePath,
      required this.pickImageFailureOrSuccessOption,
      required this.cropImageFailureOrSuccessOption,
      required this.uploadImageFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String uploadedImageUrl;
  @override
  final String croppedImagePath;
  @override
  final String pickedImagePath;
  @override
  final Option<Either<CameraFailure, Unit>> pickImageFailureOrSuccessOption;
  @override
  final Option<Either<CameraFailure, Unit>> cropImageFailureOrSuccessOption;
  @override
  final Option<Either<CameraFailure, Unit>> uploadImageFailureOrSuccessOption;

  @override
  String toString() {
    return 'CameraState(isLoading: $isLoading, uploadedImageUrl: $uploadedImageUrl, croppedImagePath: $croppedImagePath, pickedImagePath: $pickedImagePath, pickImageFailureOrSuccessOption: $pickImageFailureOrSuccessOption, cropImageFailureOrSuccessOption: $cropImageFailureOrSuccessOption, uploadImageFailureOrSuccessOption: $uploadImageFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Camera &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.uploadedImageUrl, uploadedImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.croppedImagePath, croppedImagePath) &&
            const DeepCollectionEquality()
                .equals(other.pickedImagePath, pickedImagePath) &&
            const DeepCollectionEquality().equals(
                other.pickImageFailureOrSuccessOption,
                pickImageFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.cropImageFailureOrSuccessOption,
                cropImageFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.uploadImageFailureOrSuccessOption,
                uploadImageFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(uploadedImageUrl),
      const DeepCollectionEquality().hash(croppedImagePath),
      const DeepCollectionEquality().hash(pickedImagePath),
      const DeepCollectionEquality().hash(pickImageFailureOrSuccessOption),
      const DeepCollectionEquality().hash(cropImageFailureOrSuccessOption),
      const DeepCollectionEquality().hash(uploadImageFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$CameraCopyWith<_Camera> get copyWith =>
      __$CameraCopyWithImpl<_Camera>(this, _$identity);
}

abstract class _Camera implements CameraState {
  const factory _Camera(
      {required bool isLoading,
      required String uploadedImageUrl,
      required String croppedImagePath,
      required String pickedImagePath,
      required Option<Either<CameraFailure, Unit>>
          pickImageFailureOrSuccessOption,
      required Option<Either<CameraFailure, Unit>>
          cropImageFailureOrSuccessOption,
      required Option<Either<CameraFailure, Unit>>
          uploadImageFailureOrSuccessOption}) = _$_Camera;

  @override
  bool get isLoading;
  @override
  String get uploadedImageUrl;
  @override
  String get croppedImagePath;
  @override
  String get pickedImagePath;
  @override
  Option<Either<CameraFailure, Unit>> get pickImageFailureOrSuccessOption;
  @override
  Option<Either<CameraFailure, Unit>> get cropImageFailureOrSuccessOption;
  @override
  Option<Either<CameraFailure, Unit>> get uploadImageFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$CameraCopyWith<_Camera> get copyWith => throw _privateConstructorUsedError;
}
