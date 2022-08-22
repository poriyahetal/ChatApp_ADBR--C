// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraFailureTearOff {
  const _$CameraFailureTearOff();

  CustomError customError(String errorText) {
    return CustomError(
      errorText,
    );
  }

  UnableToCapture unableToCapture() {
    return const UnableToCapture();
  }

  PickActionFailed pickActionFailed() {
    return const PickActionFailed();
  }

  CroppingActionCancelled croppingActionCancelled() {
    return const CroppingActionCancelled();
  }

  CroppingActionFailed croppingActionFailed() {
    return const CroppingActionFailed();
  }
}

/// @nodoc
const $CameraFailure = _$CameraFailureTearOff();

/// @nodoc
mixin _$CameraFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) customError,
    required TResult Function() unableToCapture,
    required TResult Function() pickActionFailed,
    required TResult Function() croppingActionCancelled,
    required TResult Function() croppingActionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(UnableToCapture value) unableToCapture,
    required TResult Function(PickActionFailed value) pickActionFailed,
    required TResult Function(CroppingActionCancelled value)
        croppingActionCancelled,
    required TResult Function(CroppingActionFailed value) croppingActionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraFailureCopyWith<$Res> {
  factory $CameraFailureCopyWith(
          CameraFailure value, $Res Function(CameraFailure) then) =
      _$CameraFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraFailureCopyWithImpl<$Res>
    implements $CameraFailureCopyWith<$Res> {
  _$CameraFailureCopyWithImpl(this._value, this._then);

  final CameraFailure _value;
  // ignore: unused_field
  final $Res Function(CameraFailure) _then;
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
  $Res call({String errorText});
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res> extends _$CameraFailureCopyWithImpl<$Res>
    implements $CustomErrorCopyWith<$Res> {
  _$CustomErrorCopyWithImpl(
      CustomError _value, $Res Function(CustomError) _then)
      : super(_value, (v) => _then(v as CustomError));

  @override
  CustomError get _value => super._value as CustomError;

  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(CustomError(
      errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomError implements CustomError {
  const _$CustomError(this.errorText);

  @override
  final String errorText;

  @override
  String toString() {
    return 'CameraFailure.customError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomError &&
            const DeepCollectionEquality().equals(other.errorText, errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorText));

  @JsonKey(ignore: true)
  @override
  $CustomErrorCopyWith<CustomError> get copyWith =>
      _$CustomErrorCopyWithImpl<CustomError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) customError,
    required TResult Function() unableToCapture,
    required TResult Function() pickActionFailed,
    required TResult Function() croppingActionCancelled,
    required TResult Function() croppingActionFailed,
  }) {
    return customError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
  }) {
    return customError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(UnableToCapture value) unableToCapture,
    required TResult Function(PickActionFailed value) pickActionFailed,
    required TResult Function(CroppingActionCancelled value)
        croppingActionCancelled,
    required TResult Function(CroppingActionFailed value) croppingActionFailed,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements CameraFailure {
  const factory CustomError(String errorText) = _$CustomError;

  String get errorText;
  @JsonKey(ignore: true)
  $CustomErrorCopyWith<CustomError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnableToCaptureCopyWith<$Res> {
  factory $UnableToCaptureCopyWith(
          UnableToCapture value, $Res Function(UnableToCapture) then) =
      _$UnableToCaptureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnableToCaptureCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res>
    implements $UnableToCaptureCopyWith<$Res> {
  _$UnableToCaptureCopyWithImpl(
      UnableToCapture _value, $Res Function(UnableToCapture) _then)
      : super(_value, (v) => _then(v as UnableToCapture));

  @override
  UnableToCapture get _value => super._value as UnableToCapture;
}

/// @nodoc

class _$UnableToCapture implements UnableToCapture {
  const _$UnableToCapture();

  @override
  String toString() {
    return 'CameraFailure.unableToCapture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnableToCapture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) customError,
    required TResult Function() unableToCapture,
    required TResult Function() pickActionFailed,
    required TResult Function() croppingActionCancelled,
    required TResult Function() croppingActionFailed,
  }) {
    return unableToCapture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
  }) {
    return unableToCapture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (unableToCapture != null) {
      return unableToCapture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(UnableToCapture value) unableToCapture,
    required TResult Function(PickActionFailed value) pickActionFailed,
    required TResult Function(CroppingActionCancelled value)
        croppingActionCancelled,
    required TResult Function(CroppingActionFailed value) croppingActionFailed,
  }) {
    return unableToCapture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
  }) {
    return unableToCapture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (unableToCapture != null) {
      return unableToCapture(this);
    }
    return orElse();
  }
}

abstract class UnableToCapture implements CameraFailure {
  const factory UnableToCapture() = _$UnableToCapture;
}

/// @nodoc
abstract class $PickActionFailedCopyWith<$Res> {
  factory $PickActionFailedCopyWith(
          PickActionFailed value, $Res Function(PickActionFailed) then) =
      _$PickActionFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickActionFailedCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res>
    implements $PickActionFailedCopyWith<$Res> {
  _$PickActionFailedCopyWithImpl(
      PickActionFailed _value, $Res Function(PickActionFailed) _then)
      : super(_value, (v) => _then(v as PickActionFailed));

  @override
  PickActionFailed get _value => super._value as PickActionFailed;
}

/// @nodoc

class _$PickActionFailed implements PickActionFailed {
  const _$PickActionFailed();

  @override
  String toString() {
    return 'CameraFailure.pickActionFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickActionFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) customError,
    required TResult Function() unableToCapture,
    required TResult Function() pickActionFailed,
    required TResult Function() croppingActionCancelled,
    required TResult Function() croppingActionFailed,
  }) {
    return pickActionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
  }) {
    return pickActionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (pickActionFailed != null) {
      return pickActionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(UnableToCapture value) unableToCapture,
    required TResult Function(PickActionFailed value) pickActionFailed,
    required TResult Function(CroppingActionCancelled value)
        croppingActionCancelled,
    required TResult Function(CroppingActionFailed value) croppingActionFailed,
  }) {
    return pickActionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
  }) {
    return pickActionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (pickActionFailed != null) {
      return pickActionFailed(this);
    }
    return orElse();
  }
}

abstract class PickActionFailed implements CameraFailure {
  const factory PickActionFailed() = _$PickActionFailed;
}

/// @nodoc
abstract class $CroppingActionCancelledCopyWith<$Res> {
  factory $CroppingActionCancelledCopyWith(CroppingActionCancelled value,
          $Res Function(CroppingActionCancelled) then) =
      _$CroppingActionCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CroppingActionCancelledCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res>
    implements $CroppingActionCancelledCopyWith<$Res> {
  _$CroppingActionCancelledCopyWithImpl(CroppingActionCancelled _value,
      $Res Function(CroppingActionCancelled) _then)
      : super(_value, (v) => _then(v as CroppingActionCancelled));

  @override
  CroppingActionCancelled get _value => super._value as CroppingActionCancelled;
}

/// @nodoc

class _$CroppingActionCancelled implements CroppingActionCancelled {
  const _$CroppingActionCancelled();

  @override
  String toString() {
    return 'CameraFailure.croppingActionCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CroppingActionCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) customError,
    required TResult Function() unableToCapture,
    required TResult Function() pickActionFailed,
    required TResult Function() croppingActionCancelled,
    required TResult Function() croppingActionFailed,
  }) {
    return croppingActionCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
  }) {
    return croppingActionCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (croppingActionCancelled != null) {
      return croppingActionCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(UnableToCapture value) unableToCapture,
    required TResult Function(PickActionFailed value) pickActionFailed,
    required TResult Function(CroppingActionCancelled value)
        croppingActionCancelled,
    required TResult Function(CroppingActionFailed value) croppingActionFailed,
  }) {
    return croppingActionCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
  }) {
    return croppingActionCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (croppingActionCancelled != null) {
      return croppingActionCancelled(this);
    }
    return orElse();
  }
}

abstract class CroppingActionCancelled implements CameraFailure {
  const factory CroppingActionCancelled() = _$CroppingActionCancelled;
}

/// @nodoc
abstract class $CroppingActionFailedCopyWith<$Res> {
  factory $CroppingActionFailedCopyWith(CroppingActionFailed value,
          $Res Function(CroppingActionFailed) then) =
      _$CroppingActionFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CroppingActionFailedCopyWithImpl<$Res>
    extends _$CameraFailureCopyWithImpl<$Res>
    implements $CroppingActionFailedCopyWith<$Res> {
  _$CroppingActionFailedCopyWithImpl(
      CroppingActionFailed _value, $Res Function(CroppingActionFailed) _then)
      : super(_value, (v) => _then(v as CroppingActionFailed));

  @override
  CroppingActionFailed get _value => super._value as CroppingActionFailed;
}

/// @nodoc

class _$CroppingActionFailed implements CroppingActionFailed {
  const _$CroppingActionFailed();

  @override
  String toString() {
    return 'CameraFailure.croppingActionFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CroppingActionFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) customError,
    required TResult Function() unableToCapture,
    required TResult Function() pickActionFailed,
    required TResult Function() croppingActionCancelled,
    required TResult Function() croppingActionFailed,
  }) {
    return croppingActionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
  }) {
    return croppingActionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? customError,
    TResult Function()? unableToCapture,
    TResult Function()? pickActionFailed,
    TResult Function()? croppingActionCancelled,
    TResult Function()? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (croppingActionFailed != null) {
      return croppingActionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(UnableToCapture value) unableToCapture,
    required TResult Function(PickActionFailed value) pickActionFailed,
    required TResult Function(CroppingActionCancelled value)
        croppingActionCancelled,
    required TResult Function(CroppingActionFailed value) croppingActionFailed,
  }) {
    return croppingActionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
  }) {
    return croppingActionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(UnableToCapture value)? unableToCapture,
    TResult Function(PickActionFailed value)? pickActionFailed,
    TResult Function(CroppingActionCancelled value)? croppingActionCancelled,
    TResult Function(CroppingActionFailed value)? croppingActionFailed,
    required TResult orElse(),
  }) {
    if (croppingActionFailed != null) {
      return croppingActionFailed(this);
    }
    return orElse();
  }
}

abstract class CroppingActionFailed implements CameraFailure {
  const factory CroppingActionFailed() = _$CroppingActionFailed;
}
