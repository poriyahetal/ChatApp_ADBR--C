// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  CustomError customError(String error) {
    return CustomError(
      error,
    );
  }

  InvalidOtp invalidOtp() {
    return const InvalidOtp();
  }

  InvalidEmailAndPasswordCombination invalidPhoneNumber() {
    return const InvalidEmailAndPasswordCombination();
  }

  ErrorRetrievingUser errorRetrievingUser() {
    return const ErrorRetrievingUser();
  }

  NoSignedInUser noSignedInUser() {
    return const NoSignedInUser();
  }

  NumberAlreadyInUsed numberAlreadyInUsed() {
    return const NumberAlreadyInUsed();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
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
    return 'AuthFailure.customError(error: $error)';
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
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return customError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return customError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
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
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements AuthFailure {
  const factory CustomError(String error) = _$CustomError;

  String get error;
  @JsonKey(ignore: true)
  $CustomErrorCopyWith<CustomError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidOtpCopyWith<$Res> {
  factory $InvalidOtpCopyWith(
          InvalidOtp value, $Res Function(InvalidOtp) then) =
      _$InvalidOtpCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidOtpCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidOtpCopyWith<$Res> {
  _$InvalidOtpCopyWithImpl(InvalidOtp _value, $Res Function(InvalidOtp) _then)
      : super(_value, (v) => _then(v as InvalidOtp));

  @override
  InvalidOtp get _value => super._value as InvalidOtp;
}

/// @nodoc

class _$InvalidOtp implements InvalidOtp {
  const _$InvalidOtp();

  @override
  String toString() {
    return 'AuthFailure.invalidOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return invalidOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return invalidOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return invalidOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return invalidOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp(this);
    }
    return orElse();
  }
}

abstract class InvalidOtp implements AuthFailure {
  const factory InvalidOtp() = _$InvalidOtp;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return invalidPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class $ErrorRetrievingUserCopyWith<$Res> {
  factory $ErrorRetrievingUserCopyWith(
          ErrorRetrievingUser value, $Res Function(ErrorRetrievingUser) then) =
      _$ErrorRetrievingUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorRetrievingUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ErrorRetrievingUserCopyWith<$Res> {
  _$ErrorRetrievingUserCopyWithImpl(
      ErrorRetrievingUser _value, $Res Function(ErrorRetrievingUser) _then)
      : super(_value, (v) => _then(v as ErrorRetrievingUser));

  @override
  ErrorRetrievingUser get _value => super._value as ErrorRetrievingUser;
}

/// @nodoc

class _$ErrorRetrievingUser implements ErrorRetrievingUser {
  const _$ErrorRetrievingUser();

  @override
  String toString() {
    return 'AuthFailure.errorRetrievingUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ErrorRetrievingUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return errorRetrievingUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return errorRetrievingUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (errorRetrievingUser != null) {
      return errorRetrievingUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return errorRetrievingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return errorRetrievingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (errorRetrievingUser != null) {
      return errorRetrievingUser(this);
    }
    return orElse();
  }
}

abstract class ErrorRetrievingUser implements AuthFailure {
  const factory ErrorRetrievingUser() = _$ErrorRetrievingUser;
}

/// @nodoc
abstract class $NoSignedInUserCopyWith<$Res> {
  factory $NoSignedInUserCopyWith(
          NoSignedInUser value, $Res Function(NoSignedInUser) then) =
      _$NoSignedInUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoSignedInUserCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoSignedInUserCopyWith<$Res> {
  _$NoSignedInUserCopyWithImpl(
      NoSignedInUser _value, $Res Function(NoSignedInUser) _then)
      : super(_value, (v) => _then(v as NoSignedInUser));

  @override
  NoSignedInUser get _value => super._value as NoSignedInUser;
}

/// @nodoc

class _$NoSignedInUser implements NoSignedInUser {
  const _$NoSignedInUser();

  @override
  String toString() {
    return 'AuthFailure.noSignedInUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoSignedInUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return noSignedInUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return noSignedInUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (noSignedInUser != null) {
      return noSignedInUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return noSignedInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return noSignedInUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (noSignedInUser != null) {
      return noSignedInUser(this);
    }
    return orElse();
  }
}

abstract class NoSignedInUser implements AuthFailure {
  const factory NoSignedInUser() = _$NoSignedInUser;
}

/// @nodoc
abstract class $NumberAlreadyInUsedCopyWith<$Res> {
  factory $NumberAlreadyInUsedCopyWith(
          NumberAlreadyInUsed value, $Res Function(NumberAlreadyInUsed) then) =
      _$NumberAlreadyInUsedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NumberAlreadyInUsedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NumberAlreadyInUsedCopyWith<$Res> {
  _$NumberAlreadyInUsedCopyWithImpl(
      NumberAlreadyInUsed _value, $Res Function(NumberAlreadyInUsed) _then)
      : super(_value, (v) => _then(v as NumberAlreadyInUsed));

  @override
  NumberAlreadyInUsed get _value => super._value as NumberAlreadyInUsed;
}

/// @nodoc

class _$NumberAlreadyInUsed implements NumberAlreadyInUsed {
  const _$NumberAlreadyInUsed();

  @override
  String toString() {
    return 'AuthFailure.numberAlreadyInUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NumberAlreadyInUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String error) customError,
    required TResult Function() invalidOtp,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() errorRetrievingUser,
    required TResult Function() noSignedInUser,
    required TResult Function() numberAlreadyInUsed,
  }) {
    return numberAlreadyInUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
  }) {
    return numberAlreadyInUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String error)? customError,
    TResult Function()? invalidOtp,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? errorRetrievingUser,
    TResult Function()? noSignedInUser,
    TResult Function()? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (numberAlreadyInUsed != null) {
      return numberAlreadyInUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(CustomError value) customError,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidPhoneNumber,
    required TResult Function(ErrorRetrievingUser value) errorRetrievingUser,
    required TResult Function(NoSignedInUser value) noSignedInUser,
    required TResult Function(NumberAlreadyInUsed value) numberAlreadyInUsed,
  }) {
    return numberAlreadyInUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
  }) {
    return numberAlreadyInUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(CustomError value)? customError,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidPhoneNumber,
    TResult Function(ErrorRetrievingUser value)? errorRetrievingUser,
    TResult Function(NoSignedInUser value)? noSignedInUser,
    TResult Function(NumberAlreadyInUsed value)? numberAlreadyInUsed,
    required TResult orElse(),
  }) {
    if (numberAlreadyInUsed != null) {
      return numberAlreadyInUsed(this);
    }
    return orElse();
  }
}

abstract class NumberAlreadyInUsed implements AuthFailure {
  const factory NumberAlreadyInUsed() = _$NumberAlreadyInUsed;
}
