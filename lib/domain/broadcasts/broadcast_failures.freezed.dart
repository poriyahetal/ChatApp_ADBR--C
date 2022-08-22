// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'broadcast_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BroadcastFailureTearOff {
  const _$BroadcastFailureTearOff();

  CustomError customError(String error) {
    return CustomError(
      error,
    );
  }
}

/// @nodoc
const $BroadcastFailure = _$BroadcastFailureTearOff();

/// @nodoc
mixin _$BroadcastFailure {
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) customError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? customError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? customError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastFailureCopyWith<BroadcastFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastFailureCopyWith<$Res> {
  factory $BroadcastFailureCopyWith(
          BroadcastFailure value, $Res Function(BroadcastFailure) then) =
      _$BroadcastFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$BroadcastFailureCopyWithImpl<$Res>
    implements $BroadcastFailureCopyWith<$Res> {
  _$BroadcastFailureCopyWithImpl(this._value, this._then);

  final BroadcastFailure _value;
  // ignore: unused_field
  final $Res Function(BroadcastFailure) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res>
    implements $BroadcastFailureCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res>
    extends _$BroadcastFailureCopyWithImpl<$Res>
    implements $CustomErrorCopyWith<$Res> {
  _$CustomErrorCopyWithImpl(
      CustomError _value, $Res Function(CustomError) _then)
      : super(_value, (v) => _then(v as CustomError));

  @override
  CustomError get _value => super._value as CustomError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CustomError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomError implements CustomError {
  const _$CustomError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BroadcastFailure.customError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $CustomErrorCopyWith<CustomError> get copyWith =>
      _$CustomErrorCopyWithImpl<CustomError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) customError,
  }) {
    return customError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? customError,
  }) {
    return customError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? customError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements BroadcastFailure {
  const factory CustomError(String error) = _$CustomError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  $CustomErrorCopyWith<CustomError> get copyWith =>
      throw _privateConstructorUsedError;
}
