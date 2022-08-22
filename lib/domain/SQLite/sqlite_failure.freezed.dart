// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sqlite_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SQLiteFailureTearOff {
  const _$SQLiteFailureTearOff();

  CustomError customError() {
    return const CustomError();
  }

  FilePathNotFound filePathNotFound() {
    return const FilePathNotFound();
  }
}

/// @nodoc
const $SQLiteFailure = _$SQLiteFailureTearOff();

/// @nodoc
mixin _$SQLiteFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customError,
    required TResult Function() filePathNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? filePathNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? filePathNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(FilePathNotFound value) filePathNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FilePathNotFound value)? filePathNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FilePathNotFound value)? filePathNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SQLiteFailureCopyWith<$Res> {
  factory $SQLiteFailureCopyWith(
          SQLiteFailure value, $Res Function(SQLiteFailure) then) =
      _$SQLiteFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SQLiteFailureCopyWithImpl<$Res>
    implements $SQLiteFailureCopyWith<$Res> {
  _$SQLiteFailureCopyWithImpl(this._value, this._then);

  final SQLiteFailure _value;
  // ignore: unused_field
  final $Res Function(SQLiteFailure) _then;
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res> extends _$SQLiteFailureCopyWithImpl<$Res>
    implements $CustomErrorCopyWith<$Res> {
  _$CustomErrorCopyWithImpl(
      CustomError _value, $Res Function(CustomError) _then)
      : super(_value, (v) => _then(v as CustomError));

  @override
  CustomError get _value => super._value as CustomError;
}

/// @nodoc

class _$CustomError implements CustomError {
  const _$CustomError();

  @override
  String toString() {
    return 'SQLiteFailure.customError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customError,
    required TResult Function() filePathNotFound,
  }) {
    return customError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? filePathNotFound,
  }) {
    return customError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? filePathNotFound,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(FilePathNotFound value) filePathNotFound,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FilePathNotFound value)? filePathNotFound,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FilePathNotFound value)? filePathNotFound,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements SQLiteFailure {
  const factory CustomError() = _$CustomError;
}

/// @nodoc
abstract class $FilePathNotFoundCopyWith<$Res> {
  factory $FilePathNotFoundCopyWith(
          FilePathNotFound value, $Res Function(FilePathNotFound) then) =
      _$FilePathNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilePathNotFoundCopyWithImpl<$Res>
    extends _$SQLiteFailureCopyWithImpl<$Res>
    implements $FilePathNotFoundCopyWith<$Res> {
  _$FilePathNotFoundCopyWithImpl(
      FilePathNotFound _value, $Res Function(FilePathNotFound) _then)
      : super(_value, (v) => _then(v as FilePathNotFound));

  @override
  FilePathNotFound get _value => super._value as FilePathNotFound;
}

/// @nodoc

class _$FilePathNotFound implements FilePathNotFound {
  const _$FilePathNotFound();

  @override
  String toString() {
    return 'SQLiteFailure.filePathNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FilePathNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customError,
    required TResult Function() filePathNotFound,
  }) {
    return filePathNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? filePathNotFound,
  }) {
    return filePathNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? filePathNotFound,
    required TResult orElse(),
  }) {
    if (filePathNotFound != null) {
      return filePathNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(FilePathNotFound value) filePathNotFound,
  }) {
    return filePathNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FilePathNotFound value)? filePathNotFound,
  }) {
    return filePathNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FilePathNotFound value)? filePathNotFound,
    required TResult orElse(),
  }) {
    if (filePathNotFound != null) {
      return filePathNotFound(this);
    }
    return orElse();
  }
}

abstract class FilePathNotFound implements SQLiteFailure {
  const factory FilePathNotFound() = _$FilePathNotFound;
}
