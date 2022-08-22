// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recording_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecordingFailureTearOff {
  const _$RecordingFailureTearOff();

  _StatusCodeError statusCodeError(String error) {
    return _StatusCodeError(
      error,
    );
  }

  _CustomError customError(String error) {
    return _CustomError(
      error,
    );
  }

  _QueryError queryError(String error) {
    return _QueryError(
      error,
    );
  }
}

/// @nodoc
const $RecordingFailure = _$RecordingFailureTearOff();

/// @nodoc
mixin _$RecordingFailure {
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) statusCodeError,
    required TResult Function(String error) customError,
    required TResult Function(String error) queryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusCodeError value) statusCodeError,
    required TResult Function(_CustomError value) customError,
    required TResult Function(_QueryError value) queryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordingFailureCopyWith<RecordingFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingFailureCopyWith<$Res> {
  factory $RecordingFailureCopyWith(
          RecordingFailure value, $Res Function(RecordingFailure) then) =
      _$RecordingFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$RecordingFailureCopyWithImpl<$Res>
    implements $RecordingFailureCopyWith<$Res> {
  _$RecordingFailureCopyWithImpl(this._value, this._then);

  final RecordingFailure _value;
  // ignore: unused_field
  final $Res Function(RecordingFailure) _then;

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
abstract class _$StatusCodeErrorCopyWith<$Res>
    implements $RecordingFailureCopyWith<$Res> {
  factory _$StatusCodeErrorCopyWith(
          _StatusCodeError value, $Res Function(_StatusCodeError) then) =
      __$StatusCodeErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$StatusCodeErrorCopyWithImpl<$Res>
    extends _$RecordingFailureCopyWithImpl<$Res>
    implements _$StatusCodeErrorCopyWith<$Res> {
  __$StatusCodeErrorCopyWithImpl(
      _StatusCodeError _value, $Res Function(_StatusCodeError) _then)
      : super(_value, (v) => _then(v as _StatusCodeError));

  @override
  _StatusCodeError get _value => super._value as _StatusCodeError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_StatusCodeError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StatusCodeError implements _StatusCodeError {
  const _$_StatusCodeError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RecordingFailure.statusCodeError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusCodeError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$StatusCodeErrorCopyWith<_StatusCodeError> get copyWith =>
      __$StatusCodeErrorCopyWithImpl<_StatusCodeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) statusCodeError,
    required TResult Function(String error) customError,
    required TResult Function(String error) queryError,
  }) {
    return statusCodeError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
  }) {
    return statusCodeError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
    required TResult orElse(),
  }) {
    if (statusCodeError != null) {
      return statusCodeError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusCodeError value) statusCodeError,
    required TResult Function(_CustomError value) customError,
    required TResult Function(_QueryError value) queryError,
  }) {
    return statusCodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
  }) {
    return statusCodeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
    required TResult orElse(),
  }) {
    if (statusCodeError != null) {
      return statusCodeError(this);
    }
    return orElse();
  }
}

abstract class _StatusCodeError implements RecordingFailure {
  const factory _StatusCodeError(String error) = _$_StatusCodeError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$StatusCodeErrorCopyWith<_StatusCodeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CustomErrorCopyWith<$Res>
    implements $RecordingFailureCopyWith<$Res> {
  factory _$CustomErrorCopyWith(
          _CustomError value, $Res Function(_CustomError) then) =
      __$CustomErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$CustomErrorCopyWithImpl<$Res>
    extends _$RecordingFailureCopyWithImpl<$Res>
    implements _$CustomErrorCopyWith<$Res> {
  __$CustomErrorCopyWithImpl(
      _CustomError _value, $Res Function(_CustomError) _then)
      : super(_value, (v) => _then(v as _CustomError));

  @override
  _CustomError get _value => super._value as _CustomError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_CustomError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CustomError implements _CustomError {
  const _$_CustomError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RecordingFailure.customError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$CustomErrorCopyWith<_CustomError> get copyWith =>
      __$CustomErrorCopyWithImpl<_CustomError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) statusCodeError,
    required TResult Function(String error) customError,
    required TResult Function(String error) queryError,
  }) {
    return customError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
  }) {
    return customError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
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
    required TResult Function(_StatusCodeError value) statusCodeError,
    required TResult Function(_CustomError value) customError,
    required TResult Function(_QueryError value) queryError,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class _CustomError implements RecordingFailure {
  const factory _CustomError(String error) = _$_CustomError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$CustomErrorCopyWith<_CustomError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QueryErrorCopyWith<$Res>
    implements $RecordingFailureCopyWith<$Res> {
  factory _$QueryErrorCopyWith(
          _QueryError value, $Res Function(_QueryError) then) =
      __$QueryErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class __$QueryErrorCopyWithImpl<$Res>
    extends _$RecordingFailureCopyWithImpl<$Res>
    implements _$QueryErrorCopyWith<$Res> {
  __$QueryErrorCopyWithImpl(
      _QueryError _value, $Res Function(_QueryError) _then)
      : super(_value, (v) => _then(v as _QueryError));

  @override
  _QueryError get _value => super._value as _QueryError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_QueryError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryError implements _QueryError {
  const _$_QueryError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RecordingFailure.queryError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueryError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$QueryErrorCopyWith<_QueryError> get copyWith =>
      __$QueryErrorCopyWithImpl<_QueryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) statusCodeError,
    required TResult Function(String error) customError,
    required TResult Function(String error) queryError,
  }) {
    return queryError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
  }) {
    return queryError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? statusCodeError,
    TResult Function(String error)? customError,
    TResult Function(String error)? queryError,
    required TResult orElse(),
  }) {
    if (queryError != null) {
      return queryError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusCodeError value) statusCodeError,
    required TResult Function(_CustomError value) customError,
    required TResult Function(_QueryError value) queryError,
  }) {
    return queryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
  }) {
    return queryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusCodeError value)? statusCodeError,
    TResult Function(_CustomError value)? customError,
    TResult Function(_QueryError value)? queryError,
    required TResult orElse(),
  }) {
    if (queryError != null) {
      return queryError(this);
    }
    return orElse();
  }
}

abstract class _QueryError implements RecordingFailure {
  const factory _QueryError(String error) = _$_QueryError;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$QueryErrorCopyWith<_QueryError> get copyWith =>
      throw _privateConstructorUsedError;
}
