// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupFailureTearOff {
  const _$GroupFailureTearOff();

  CustomError customError(String error) {
    return CustomError(
      error,
    );
  }

  AdminCannotLeaveGroup adminCannotLeaveGroup() {
    return const AdminCannotLeaveGroup();
  }
}

/// @nodoc
const $GroupFailure = _$GroupFailureTearOff();

/// @nodoc
mixin _$GroupFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) customError,
    required TResult Function() adminCannotLeaveGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? customError,
    TResult Function()? adminCannotLeaveGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? customError,
    TResult Function()? adminCannotLeaveGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(AdminCannotLeaveGroup value)
        adminCannotLeaveGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(AdminCannotLeaveGroup value)? adminCannotLeaveGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(AdminCannotLeaveGroup value)? adminCannotLeaveGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupFailureCopyWith<$Res> {
  factory $GroupFailureCopyWith(
          GroupFailure value, $Res Function(GroupFailure) then) =
      _$GroupFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupFailureCopyWithImpl<$Res> implements $GroupFailureCopyWith<$Res> {
  _$GroupFailureCopyWithImpl(this._value, this._then);

  final GroupFailure _value;
  // ignore: unused_field
  final $Res Function(GroupFailure) _then;
}

/// @nodoc
abstract class $CustomErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(
          CustomError value, $Res Function(CustomError) then) =
      _$CustomErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$CustomErrorCopyWithImpl<$Res> extends _$GroupFailureCopyWithImpl<$Res>
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
    return 'GroupFailure.customError(error: $error)';
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
    required TResult Function() adminCannotLeaveGroup,
  }) {
    return customError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? customError,
    TResult Function()? adminCannotLeaveGroup,
  }) {
    return customError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? customError,
    TResult Function()? adminCannotLeaveGroup,
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
    required TResult Function(AdminCannotLeaveGroup value)
        adminCannotLeaveGroup,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(AdminCannotLeaveGroup value)? adminCannotLeaveGroup,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(AdminCannotLeaveGroup value)? adminCannotLeaveGroup,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class CustomError implements GroupFailure {
  const factory CustomError(String error) = _$CustomError;

  String get error;
  @JsonKey(ignore: true)
  $CustomErrorCopyWith<CustomError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCannotLeaveGroupCopyWith<$Res> {
  factory $AdminCannotLeaveGroupCopyWith(AdminCannotLeaveGroup value,
          $Res Function(AdminCannotLeaveGroup) then) =
      _$AdminCannotLeaveGroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminCannotLeaveGroupCopyWithImpl<$Res>
    extends _$GroupFailureCopyWithImpl<$Res>
    implements $AdminCannotLeaveGroupCopyWith<$Res> {
  _$AdminCannotLeaveGroupCopyWithImpl(
      AdminCannotLeaveGroup _value, $Res Function(AdminCannotLeaveGroup) _then)
      : super(_value, (v) => _then(v as AdminCannotLeaveGroup));

  @override
  AdminCannotLeaveGroup get _value => super._value as AdminCannotLeaveGroup;
}

/// @nodoc

class _$AdminCannotLeaveGroup implements AdminCannotLeaveGroup {
  const _$AdminCannotLeaveGroup();

  @override
  String toString() {
    return 'GroupFailure.adminCannotLeaveGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdminCannotLeaveGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) customError,
    required TResult Function() adminCannotLeaveGroup,
  }) {
    return adminCannotLeaveGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? customError,
    TResult Function()? adminCannotLeaveGroup,
  }) {
    return adminCannotLeaveGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? customError,
    TResult Function()? adminCannotLeaveGroup,
    required TResult orElse(),
  }) {
    if (adminCannotLeaveGroup != null) {
      return adminCannotLeaveGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomError value) customError,
    required TResult Function(AdminCannotLeaveGroup value)
        adminCannotLeaveGroup,
  }) {
    return adminCannotLeaveGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(AdminCannotLeaveGroup value)? adminCannotLeaveGroup,
  }) {
    return adminCannotLeaveGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomError value)? customError,
    TResult Function(AdminCannotLeaveGroup value)? adminCannotLeaveGroup,
    required TResult orElse(),
  }) {
    if (adminCannotLeaveGroup != null) {
      return adminCannotLeaveGroup(this);
    }
    return orElse();
  }
}

abstract class AdminCannotLeaveGroup implements GroupFailure {
  const factory AdminCannotLeaveGroup() = _$AdminCannotLeaveGroup;
}
