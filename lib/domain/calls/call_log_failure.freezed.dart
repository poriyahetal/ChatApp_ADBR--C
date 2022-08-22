// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'call_log_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CallLogFailureTearOff {
  const _$CallLogFailureTearOff();

  _DeletetionError deletetionError(String error) {
    return _DeletetionError(
      error,
    );
  }
}

/// @nodoc
const $CallLogFailure = _$CallLogFailureTearOff();

/// @nodoc
mixin _$CallLogFailure {
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) deletetionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? deletetionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? deletetionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletetionError value) deletetionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DeletetionError value)? deletetionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletetionError value)? deletetionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallLogFailureCopyWith<CallLogFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallLogFailureCopyWith<$Res> {
  factory $CallLogFailureCopyWith(
          CallLogFailure value, $Res Function(CallLogFailure) then) =
      _$CallLogFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$CallLogFailureCopyWithImpl<$Res>
    implements $CallLogFailureCopyWith<$Res> {
  _$CallLogFailureCopyWithImpl(this._value, this._then);

  final CallLogFailure _value;
  // ignore: unused_field
  final $Res Function(CallLogFailure) _then;

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
abstract class _$DeletetionErrorCopyWith<$Res>
    implements $CallLogFailureCopyWith<$Res> {
  factory _$DeletetionErrorCopyWith(
          _DeletetionError value, $Res Function(_DeletetionError) then) =
      __$DeletetionErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$DeletetionErrorCopyWithImpl<$Res>
    extends _$CallLogFailureCopyWithImpl<$Res>
    implements _$DeletetionErrorCopyWith<$Res> {
  __$DeletetionErrorCopyWithImpl(
      _DeletetionError _value, $Res Function(_DeletetionError) _then)
      : super(_value, (v) => _then(v as _DeletetionError));

  @override
  _DeletetionError get _value => super._value as _DeletetionError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DeletetionError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeletetionError implements _DeletetionError {
  const _$_DeletetionError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CallLogFailure.deletetionError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeletetionError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DeletetionErrorCopyWith<_DeletetionError> get copyWith =>
      __$DeletetionErrorCopyWithImpl<_DeletetionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) deletetionError,
  }) {
    return deletetionError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? deletetionError,
  }) {
    return deletetionError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? deletetionError,
    required TResult orElse(),
  }) {
    if (deletetionError != null) {
      return deletetionError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletetionError value) deletetionError,
  }) {
    return deletetionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DeletetionError value)? deletetionError,
  }) {
    return deletetionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletetionError value)? deletetionError,
    required TResult orElse(),
  }) {
    if (deletetionError != null) {
      return deletetionError(this);
    }
    return orElse();
  }
}

abstract class _DeletetionError implements CallLogFailure {
  const factory _DeletetionError(String error) = _$_DeletetionError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$DeletetionErrorCopyWith<_DeletetionError> get copyWith =>
      throw _privateConstructorUsedError;
}
