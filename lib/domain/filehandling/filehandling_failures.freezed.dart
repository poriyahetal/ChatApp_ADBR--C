// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filehandling_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileHandlingFailureTearOff {
  const _$FileHandlingFailureTearOff();

  CustomError customError() {
    return const CustomError();
  }

  FileNotFound fileNotFound() {
    return const FileNotFound();
  }
}

/// @nodoc
const $FileHandlingFailure = _$FileHandlingFailureTearOff();

/// @nodoc
mixin _$FileHandlingFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customError,
    required TResult Function() fileNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? fileNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? fileNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(FileNotFound value) fileNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FileNotFound value)? fileNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FileNotFound value)? fileNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileHandlingFailureCopyWith<$Res> {
  factory $FileHandlingFailureCopyWith(
          FileHandlingFailure value, $Res Function(FileHandlingFailure) then) =
      _$FileHandlingFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileHandlingFailureCopyWithImpl<$Res>
    implements $FileHandlingFailureCopyWith<$Res> {
  _$FileHandlingFailureCopyWithImpl(this._value, this._then);

  final FileHandlingFailure _value;
  // ignore: unused_field
  final $Res Function(FileHandlingFailure) _then;
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res>
    extends _$FileHandlingFailureCopyWithImpl<$Res>
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
    return 'FileHandlingFailure.customError()';
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
    required TResult Function() fileNotFound,
  }) {
    return customError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? fileNotFound,
  }) {
    return customError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? fileNotFound,
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
    required TResult Function(FileNotFound value) fileNotFound,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FileNotFound value)? fileNotFound,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FileNotFound value)? fileNotFound,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements FileHandlingFailure {
  const factory CustomError() = _$CustomError;
}

/// @nodoc
abstract class $FileNotFoundCopyWith<$Res> {
  factory $FileNotFoundCopyWith(
          FileNotFound value, $Res Function(FileNotFound) then) =
      _$FileNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileNotFoundCopyWithImpl<$Res>
    extends _$FileHandlingFailureCopyWithImpl<$Res>
    implements $FileNotFoundCopyWith<$Res> {
  _$FileNotFoundCopyWithImpl(
      FileNotFound _value, $Res Function(FileNotFound) _then)
      : super(_value, (v) => _then(v as FileNotFound));

  @override
  FileNotFound get _value => super._value as FileNotFound;
}

/// @nodoc

class _$FileNotFound implements FileNotFound {
  const _$FileNotFound();

  @override
  String toString() {
    return 'FileHandlingFailure.fileNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FileNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customError,
    required TResult Function() fileNotFound,
  }) {
    return fileNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? fileNotFound,
  }) {
    return fileNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
    TResult Function()? fileNotFound,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(FileNotFound value) fileNotFound,
  }) {
    return fileNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FileNotFound value)? fileNotFound,
  }) {
    return fileNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(FileNotFound value)? fileNotFound,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(this);
    }
    return orElse();
  }
}

abstract class FileNotFound implements FileHandlingFailure {
  const factory FileNotFound() = _$FileNotFound;
}
