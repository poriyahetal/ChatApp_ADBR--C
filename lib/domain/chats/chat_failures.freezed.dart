// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatFailureTearOff {
  const _$ChatFailureTearOff();

  CustomError customError() {
    return const CustomError();
  }
}

/// @nodoc
const $ChatFailure = _$ChatFailureTearOff();

/// @nodoc
mixin _$ChatFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
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
}

/// @nodoc
abstract class $ChatFailureCopyWith<$Res> {
  factory $ChatFailureCopyWith(
          ChatFailure value, $Res Function(ChatFailure) then) =
      _$ChatFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatFailureCopyWithImpl<$Res> implements $ChatFailureCopyWith<$Res> {
  _$ChatFailureCopyWithImpl(this._value, this._then);

  final ChatFailure _value;
  // ignore: unused_field
  final $Res Function(ChatFailure) _then;
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
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
    return 'ChatFailure.customError()';
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
  }) {
    return customError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customError,
  }) {
    return customError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customError,
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

abstract class CustomError implements ChatFailure {
  const factory CustomError() = _$CustomError;
}
