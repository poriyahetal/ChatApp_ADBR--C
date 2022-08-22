// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _GetOtp getOtp({required String otp}) {
    return _GetOtp(
      otp: otp,
    );
  }

  _GetPhoneNumber getPhoneNumber(String phoneNumber) {
    return _GetPhoneNumber(
      phoneNumber,
    );
  }

  _GetVerificationId getVerificationId(String verificationId) {
    return _GetVerificationId(
      verificationId,
    );
  }

  _CheckAuthStatus checkAuthStatus() {
    return const _CheckAuthStatus();
  }

  _Logout logOut() {
    return const _Logout();
  }

  _DeleteAccount deleteAccount({required String otp}) {
    return _DeleteAccount(
      otp: otp,
    );
  }

  _UpdateNumber updateNumber({required String otp}) {
    return _UpdateNumber(
      otp: otp,
    );
  }

  _GetNewNumber getNewNumber({required String newPhoneNumber}) {
    return _GetNewNumber(
      newPhoneNumber: newPhoneNumber,
    );
  }

  _ReAuthUser reAuthUser({required String otp}) {
    return _ReAuthUser(
      otp: otp,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$GetOtpCopyWith<$Res> {
  factory _$GetOtpCopyWith(_GetOtp value, $Res Function(_GetOtp) then) =
      __$GetOtpCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$GetOtpCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetOtpCopyWith<$Res> {
  __$GetOtpCopyWithImpl(_GetOtp _value, $Res Function(_GetOtp) _then)
      : super(_value, (v) => _then(v as _GetOtp));

  @override
  _GetOtp get _value => super._value as _GetOtp;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_GetOtp(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetOtp with DiagnosticableTreeMixin implements _GetOtp {
  const _$_GetOtp({required this.otp});

  @override
  final String otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.getOtp(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.getOtp'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetOtp &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$GetOtpCopyWith<_GetOtp> get copyWith =>
      __$GetOtpCopyWithImpl<_GetOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return getOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return getOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getOtp != null) {
      return getOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return getOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return getOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getOtp != null) {
      return getOtp(this);
    }
    return orElse();
  }
}

abstract class _GetOtp implements AuthEvent {
  const factory _GetOtp({required String otp}) = _$_GetOtp;

  String get otp;
  @JsonKey(ignore: true)
  _$GetOtpCopyWith<_GetOtp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPhoneNumberCopyWith<$Res> {
  factory _$GetPhoneNumberCopyWith(
          _GetPhoneNumber value, $Res Function(_GetPhoneNumber) then) =
      __$GetPhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$GetPhoneNumberCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetPhoneNumberCopyWith<$Res> {
  __$GetPhoneNumberCopyWithImpl(
      _GetPhoneNumber _value, $Res Function(_GetPhoneNumber) _then)
      : super(_value, (v) => _then(v as _GetPhoneNumber));

  @override
  _GetPhoneNumber get _value => super._value as _GetPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_GetPhoneNumber(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPhoneNumber
    with DiagnosticableTreeMixin
    implements _GetPhoneNumber {
  const _$_GetPhoneNumber(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.getPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.getPhoneNumber'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$GetPhoneNumberCopyWith<_GetPhoneNumber> get copyWith =>
      __$GetPhoneNumberCopyWithImpl<_GetPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return getPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return getPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getPhoneNumber != null) {
      return getPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return getPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return getPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getPhoneNumber != null) {
      return getPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _GetPhoneNumber implements AuthEvent {
  const factory _GetPhoneNumber(String phoneNumber) = _$_GetPhoneNumber;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$GetPhoneNumberCopyWith<_GetPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetVerificationIdCopyWith<$Res> {
  factory _$GetVerificationIdCopyWith(
          _GetVerificationId value, $Res Function(_GetVerificationId) then) =
      __$GetVerificationIdCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class __$GetVerificationIdCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetVerificationIdCopyWith<$Res> {
  __$GetVerificationIdCopyWithImpl(
      _GetVerificationId _value, $Res Function(_GetVerificationId) _then)
      : super(_value, (v) => _then(v as _GetVerificationId));

  @override
  _GetVerificationId get _value => super._value as _GetVerificationId;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(_GetVerificationId(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetVerificationId
    with DiagnosticableTreeMixin
    implements _GetVerificationId {
  const _$_GetVerificationId(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.getVerificationId(verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.getVerificationId'))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetVerificationId &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(verificationId));

  @JsonKey(ignore: true)
  @override
  _$GetVerificationIdCopyWith<_GetVerificationId> get copyWith =>
      __$GetVerificationIdCopyWithImpl<_GetVerificationId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return getVerificationId(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return getVerificationId?.call(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getVerificationId != null) {
      return getVerificationId(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return getVerificationId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return getVerificationId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getVerificationId != null) {
      return getVerificationId(this);
    }
    return orElse();
  }
}

abstract class _GetVerificationId implements AuthEvent {
  const factory _GetVerificationId(String verificationId) =
      _$_GetVerificationId;

  String get verificationId;
  @JsonKey(ignore: true)
  _$GetVerificationIdCopyWith<_GetVerificationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckAuthStatusCopyWith<$Res> {
  factory _$CheckAuthStatusCopyWith(
          _CheckAuthStatus value, $Res Function(_CheckAuthStatus) then) =
      __$CheckAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckAuthStatusCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$CheckAuthStatusCopyWith<$Res> {
  __$CheckAuthStatusCopyWithImpl(
      _CheckAuthStatus _value, $Res Function(_CheckAuthStatus) _then)
      : super(_value, (v) => _then(v as _CheckAuthStatus));

  @override
  _CheckAuthStatus get _value => super._value as _CheckAuthStatus;
}

/// @nodoc

class _$_CheckAuthStatus
    with DiagnosticableTreeMixin
    implements _CheckAuthStatus {
  const _$_CheckAuthStatus();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.checkAuthStatus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthStatus implements AuthEvent {
  const factory _CheckAuthStatus() = _$_CheckAuthStatus;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc

class _$_Logout with DiagnosticableTreeMixin implements _Logout {
  const _$_Logout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$DeleteAccountCopyWith<$Res> {
  factory _$DeleteAccountCopyWith(
          _DeleteAccount value, $Res Function(_DeleteAccount) then) =
      __$DeleteAccountCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$DeleteAccountCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$DeleteAccountCopyWith<$Res> {
  __$DeleteAccountCopyWithImpl(
      _DeleteAccount _value, $Res Function(_DeleteAccount) _then)
      : super(_value, (v) => _then(v as _DeleteAccount));

  @override
  _DeleteAccount get _value => super._value as _DeleteAccount;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_DeleteAccount(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteAccount with DiagnosticableTreeMixin implements _DeleteAccount {
  const _$_DeleteAccount({required this.otp});

  @override
  final String otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.deleteAccount(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.deleteAccount'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteAccount &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$DeleteAccountCopyWith<_DeleteAccount> get copyWith =>
      __$DeleteAccountCopyWithImpl<_DeleteAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return deleteAccount(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return deleteAccount?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements AuthEvent {
  const factory _DeleteAccount({required String otp}) = _$_DeleteAccount;

  String get otp;
  @JsonKey(ignore: true)
  _$DeleteAccountCopyWith<_DeleteAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateNumberCopyWith<$Res> {
  factory _$UpdateNumberCopyWith(
          _UpdateNumber value, $Res Function(_UpdateNumber) then) =
      __$UpdateNumberCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$UpdateNumberCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$UpdateNumberCopyWith<$Res> {
  __$UpdateNumberCopyWithImpl(
      _UpdateNumber _value, $Res Function(_UpdateNumber) _then)
      : super(_value, (v) => _then(v as _UpdateNumber));

  @override
  _UpdateNumber get _value => super._value as _UpdateNumber;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_UpdateNumber(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateNumber with DiagnosticableTreeMixin implements _UpdateNumber {
  const _$_UpdateNumber({required this.otp});

  @override
  final String otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.updateNumber(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.updateNumber'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateNumber &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$UpdateNumberCopyWith<_UpdateNumber> get copyWith =>
      __$UpdateNumberCopyWithImpl<_UpdateNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return updateNumber(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return updateNumber?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (updateNumber != null) {
      return updateNumber(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return updateNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return updateNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (updateNumber != null) {
      return updateNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdateNumber implements AuthEvent {
  const factory _UpdateNumber({required String otp}) = _$_UpdateNumber;

  String get otp;
  @JsonKey(ignore: true)
  _$UpdateNumberCopyWith<_UpdateNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetNewNumberCopyWith<$Res> {
  factory _$GetNewNumberCopyWith(
          _GetNewNumber value, $Res Function(_GetNewNumber) then) =
      __$GetNewNumberCopyWithImpl<$Res>;
  $Res call({String newPhoneNumber});
}

/// @nodoc
class __$GetNewNumberCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetNewNumberCopyWith<$Res> {
  __$GetNewNumberCopyWithImpl(
      _GetNewNumber _value, $Res Function(_GetNewNumber) _then)
      : super(_value, (v) => _then(v as _GetNewNumber));

  @override
  _GetNewNumber get _value => super._value as _GetNewNumber;

  @override
  $Res call({
    Object? newPhoneNumber = freezed,
  }) {
    return _then(_GetNewNumber(
      newPhoneNumber: newPhoneNumber == freezed
          ? _value.newPhoneNumber
          : newPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetNewNumber with DiagnosticableTreeMixin implements _GetNewNumber {
  const _$_GetNewNumber({required this.newPhoneNumber});

  @override
  final String newPhoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.getNewNumber(newPhoneNumber: $newPhoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.getNewNumber'))
      ..add(DiagnosticsProperty('newPhoneNumber', newPhoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNewNumber &&
            const DeepCollectionEquality()
                .equals(other.newPhoneNumber, newPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newPhoneNumber));

  @JsonKey(ignore: true)
  @override
  _$GetNewNumberCopyWith<_GetNewNumber> get copyWith =>
      __$GetNewNumberCopyWithImpl<_GetNewNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return getNewNumber(newPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return getNewNumber?.call(newPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getNewNumber != null) {
      return getNewNumber(newPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return getNewNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return getNewNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (getNewNumber != null) {
      return getNewNumber(this);
    }
    return orElse();
  }
}

abstract class _GetNewNumber implements AuthEvent {
  const factory _GetNewNumber({required String newPhoneNumber}) =
      _$_GetNewNumber;

  String get newPhoneNumber;
  @JsonKey(ignore: true)
  _$GetNewNumberCopyWith<_GetNewNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReAuthUserCopyWith<$Res> {
  factory _$ReAuthUserCopyWith(
          _ReAuthUser value, $Res Function(_ReAuthUser) then) =
      __$ReAuthUserCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$ReAuthUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$ReAuthUserCopyWith<$Res> {
  __$ReAuthUserCopyWithImpl(
      _ReAuthUser _value, $Res Function(_ReAuthUser) _then)
      : super(_value, (v) => _then(v as _ReAuthUser));

  @override
  _ReAuthUser get _value => super._value as _ReAuthUser;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_ReAuthUser(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReAuthUser with DiagnosticableTreeMixin implements _ReAuthUser {
  const _$_ReAuthUser({required this.otp});

  @override
  final String otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.reAuthUser(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.reAuthUser'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReAuthUser &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$ReAuthUserCopyWith<_ReAuthUser> get copyWith =>
      __$ReAuthUserCopyWithImpl<_ReAuthUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) getOtp,
    required TResult Function(String phoneNumber) getPhoneNumber,
    required TResult Function(String verificationId) getVerificationId,
    required TResult Function() checkAuthStatus,
    required TResult Function() logOut,
    required TResult Function(String otp) deleteAccount,
    required TResult Function(String otp) updateNumber,
    required TResult Function(String newPhoneNumber) getNewNumber,
    required TResult Function(String otp) reAuthUser,
  }) {
    return reAuthUser(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
  }) {
    return reAuthUser?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? getOtp,
    TResult Function(String phoneNumber)? getPhoneNumber,
    TResult Function(String verificationId)? getVerificationId,
    TResult Function()? checkAuthStatus,
    TResult Function()? logOut,
    TResult Function(String otp)? deleteAccount,
    TResult Function(String otp)? updateNumber,
    TResult Function(String newPhoneNumber)? getNewNumber,
    TResult Function(String otp)? reAuthUser,
    required TResult orElse(),
  }) {
    if (reAuthUser != null) {
      return reAuthUser(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOtp value) getOtp,
    required TResult Function(_GetPhoneNumber value) getPhoneNumber,
    required TResult Function(_GetVerificationId value) getVerificationId,
    required TResult Function(_CheckAuthStatus value) checkAuthStatus,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_UpdateNumber value) updateNumber,
    required TResult Function(_GetNewNumber value) getNewNumber,
    required TResult Function(_ReAuthUser value) reAuthUser,
  }) {
    return reAuthUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
  }) {
    return reAuthUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOtp value)? getOtp,
    TResult Function(_GetPhoneNumber value)? getPhoneNumber,
    TResult Function(_GetVerificationId value)? getVerificationId,
    TResult Function(_CheckAuthStatus value)? checkAuthStatus,
    TResult Function(_Logout value)? logOut,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_UpdateNumber value)? updateNumber,
    TResult Function(_GetNewNumber value)? getNewNumber,
    TResult Function(_ReAuthUser value)? reAuthUser,
    required TResult orElse(),
  }) {
    if (reAuthUser != null) {
      return reAuthUser(this);
    }
    return orElse();
  }
}

abstract class _ReAuthUser implements AuthEvent {
  const factory _ReAuthUser({required String otp}) = _$_ReAuthUser;

  String get otp;
  @JsonKey(ignore: true)
  _$ReAuthUserCopyWith<_ReAuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required bool isLoading,
      required String phoneNumber,
      required String otp,
      required String verificationId,
      required Option<Either<AuthFailure, Unit>> userSignInStatusOption,
      required Option<Either<AuthFailure, Unit>> deleteAccount,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, Unit>> reAuthFailureOrsuccessOption,
      required Option<Either<AuthFailure, String>> updatePhoneNumber,
      required String newPhoneNumber}) {
    return _AuthState(
      isLoading: isLoading,
      phoneNumber: phoneNumber,
      otp: otp,
      verificationId: verificationId,
      userSignInStatusOption: userSignInStatusOption,
      deleteAccount: deleteAccount,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      reAuthFailureOrsuccessOption: reAuthFailureOrsuccessOption,
      updatePhoneNumber: updatePhoneNumber,
      newPhoneNumber: newPhoneNumber,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get userSignInStatusOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get deleteAccount =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get reAuthFailureOrsuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, String>> get updatePhoneNumber =>
      throw _privateConstructorUsedError;
  String get newPhoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String phoneNumber,
      String otp,
      String verificationId,
      Option<Either<AuthFailure, Unit>> userSignInStatusOption,
      Option<Either<AuthFailure, Unit>> deleteAccount,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> reAuthFailureOrsuccessOption,
      Option<Either<AuthFailure, String>> updatePhoneNumber,
      String newPhoneNumber});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? phoneNumber = freezed,
    Object? otp = freezed,
    Object? verificationId = freezed,
    Object? userSignInStatusOption = freezed,
    Object? deleteAccount = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? reAuthFailureOrsuccessOption = freezed,
    Object? updatePhoneNumber = freezed,
    Object? newPhoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      userSignInStatusOption: userSignInStatusOption == freezed
          ? _value.userSignInStatusOption
          : userSignInStatusOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      deleteAccount: deleteAccount == freezed
          ? _value.deleteAccount
          : deleteAccount // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      reAuthFailureOrsuccessOption: reAuthFailureOrsuccessOption == freezed
          ? _value.reAuthFailureOrsuccessOption
          : reAuthFailureOrsuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      updatePhoneNumber: updatePhoneNumber == freezed
          ? _value.updatePhoneNumber
          : updatePhoneNumber // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      newPhoneNumber: newPhoneNumber == freezed
          ? _value.newPhoneNumber
          : newPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String phoneNumber,
      String otp,
      String verificationId,
      Option<Either<AuthFailure, Unit>> userSignInStatusOption,
      Option<Either<AuthFailure, Unit>> deleteAccount,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> reAuthFailureOrsuccessOption,
      Option<Either<AuthFailure, String>> updatePhoneNumber,
      String newPhoneNumber});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? phoneNumber = freezed,
    Object? otp = freezed,
    Object? verificationId = freezed,
    Object? userSignInStatusOption = freezed,
    Object? deleteAccount = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? reAuthFailureOrsuccessOption = freezed,
    Object? updatePhoneNumber = freezed,
    Object? newPhoneNumber = freezed,
  }) {
    return _then(_AuthState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      userSignInStatusOption: userSignInStatusOption == freezed
          ? _value.userSignInStatusOption
          : userSignInStatusOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      deleteAccount: deleteAccount == freezed
          ? _value.deleteAccount
          : deleteAccount // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      reAuthFailureOrsuccessOption: reAuthFailureOrsuccessOption == freezed
          ? _value.reAuthFailureOrsuccessOption
          : reAuthFailureOrsuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      updatePhoneNumber: updatePhoneNumber == freezed
          ? _value.updatePhoneNumber
          : updatePhoneNumber // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      newPhoneNumber: newPhoneNumber == freezed
          ? _value.newPhoneNumber
          : newPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {required this.isLoading,
      required this.phoneNumber,
      required this.otp,
      required this.verificationId,
      required this.userSignInStatusOption,
      required this.deleteAccount,
      required this.authFailureOrSuccessOption,
      required this.reAuthFailureOrsuccessOption,
      required this.updatePhoneNumber,
      required this.newPhoneNumber});

  @override
  final bool isLoading;
  @override
  final String phoneNumber;
  @override
  final String otp;
  @override
  final String verificationId;
  @override
  final Option<Either<AuthFailure, Unit>> userSignInStatusOption;
  @override
  final Option<Either<AuthFailure, Unit>> deleteAccount;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> reAuthFailureOrsuccessOption;
  @override
  final Option<Either<AuthFailure, String>> updatePhoneNumber;
  @override
  final String newPhoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLoading: $isLoading, phoneNumber: $phoneNumber, otp: $otp, verificationId: $verificationId, userSignInStatusOption: $userSignInStatusOption, deleteAccount: $deleteAccount, authFailureOrSuccessOption: $authFailureOrSuccessOption, reAuthFailureOrsuccessOption: $reAuthFailureOrsuccessOption, updatePhoneNumber: $updatePhoneNumber, newPhoneNumber: $newPhoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('verificationId', verificationId))
      ..add(
          DiagnosticsProperty('userSignInStatusOption', userSignInStatusOption))
      ..add(DiagnosticsProperty('deleteAccount', deleteAccount))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'reAuthFailureOrsuccessOption', reAuthFailureOrsuccessOption))
      ..add(DiagnosticsProperty('updatePhoneNumber', updatePhoneNumber))
      ..add(DiagnosticsProperty('newPhoneNumber', newPhoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality()
                .equals(other.userSignInStatusOption, userSignInStatusOption) &&
            const DeepCollectionEquality()
                .equals(other.deleteAccount, deleteAccount) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.reAuthFailureOrsuccessOption,
                reAuthFailureOrsuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.updatePhoneNumber, updatePhoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.newPhoneNumber, newPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(userSignInStatusOption),
      const DeepCollectionEquality().hash(deleteAccount),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption),
      const DeepCollectionEquality().hash(reAuthFailureOrsuccessOption),
      const DeepCollectionEquality().hash(updatePhoneNumber),
      const DeepCollectionEquality().hash(newPhoneNumber));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required bool isLoading,
      required String phoneNumber,
      required String otp,
      required String verificationId,
      required Option<Either<AuthFailure, Unit>> userSignInStatusOption,
      required Option<Either<AuthFailure, Unit>> deleteAccount,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, Unit>> reAuthFailureOrsuccessOption,
      required Option<Either<AuthFailure, String>> updatePhoneNumber,
      required String newPhoneNumber}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  String get phoneNumber;
  @override
  String get otp;
  @override
  String get verificationId;
  @override
  Option<Either<AuthFailure, Unit>> get userSignInStatusOption;
  @override
  Option<Either<AuthFailure, Unit>> get deleteAccount;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get reAuthFailureOrsuccessOption;
  @override
  Option<Either<AuthFailure, String>> get updatePhoneNumber;
  @override
  String get newPhoneNumber;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
