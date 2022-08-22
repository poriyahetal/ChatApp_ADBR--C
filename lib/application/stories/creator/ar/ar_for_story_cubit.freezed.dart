// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ar_for_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArForStoryStateTearOff {
  const _$ArForStoryStateTearOff();

  _ArForStoryState call(
      {required CameraDirection cameraDirection,
      required int currentEffect,
      required CameraMode modeType}) {
    return _ArForStoryState(
      cameraDirection: cameraDirection,
      currentEffect: currentEffect,
      modeType: modeType,
    );
  }
}

/// @nodoc
const $ArForStoryState = _$ArForStoryStateTearOff();

/// @nodoc
mixin _$ArForStoryState {
  CameraDirection get cameraDirection => throw _privateConstructorUsedError;
  int get currentEffect => throw _privateConstructorUsedError;
  CameraMode get modeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArForStoryStateCopyWith<ArForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArForStoryStateCopyWith<$Res> {
  factory $ArForStoryStateCopyWith(
          ArForStoryState value, $Res Function(ArForStoryState) then) =
      _$ArForStoryStateCopyWithImpl<$Res>;
  $Res call(
      {CameraDirection cameraDirection,
      int currentEffect,
      CameraMode modeType});
}

/// @nodoc
class _$ArForStoryStateCopyWithImpl<$Res>
    implements $ArForStoryStateCopyWith<$Res> {
  _$ArForStoryStateCopyWithImpl(this._value, this._then);

  final ArForStoryState _value;
  // ignore: unused_field
  final $Res Function(ArForStoryState) _then;

  @override
  $Res call({
    Object? cameraDirection = freezed,
    Object? currentEffect = freezed,
    Object? modeType = freezed,
  }) {
    return _then(_value.copyWith(
      cameraDirection: cameraDirection == freezed
          ? _value.cameraDirection
          : cameraDirection // ignore: cast_nullable_to_non_nullable
              as CameraDirection,
      currentEffect: currentEffect == freezed
          ? _value.currentEffect
          : currentEffect // ignore: cast_nullable_to_non_nullable
              as int,
      modeType: modeType == freezed
          ? _value.modeType
          : modeType // ignore: cast_nullable_to_non_nullable
              as CameraMode,
    ));
  }
}

/// @nodoc
abstract class _$ArForStoryStateCopyWith<$Res>
    implements $ArForStoryStateCopyWith<$Res> {
  factory _$ArForStoryStateCopyWith(
          _ArForStoryState value, $Res Function(_ArForStoryState) then) =
      __$ArForStoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CameraDirection cameraDirection,
      int currentEffect,
      CameraMode modeType});
}

/// @nodoc
class __$ArForStoryStateCopyWithImpl<$Res>
    extends _$ArForStoryStateCopyWithImpl<$Res>
    implements _$ArForStoryStateCopyWith<$Res> {
  __$ArForStoryStateCopyWithImpl(
      _ArForStoryState _value, $Res Function(_ArForStoryState) _then)
      : super(_value, (v) => _then(v as _ArForStoryState));

  @override
  _ArForStoryState get _value => super._value as _ArForStoryState;

  @override
  $Res call({
    Object? cameraDirection = freezed,
    Object? currentEffect = freezed,
    Object? modeType = freezed,
  }) {
    return _then(_ArForStoryState(
      cameraDirection: cameraDirection == freezed
          ? _value.cameraDirection
          : cameraDirection // ignore: cast_nullable_to_non_nullable
              as CameraDirection,
      currentEffect: currentEffect == freezed
          ? _value.currentEffect
          : currentEffect // ignore: cast_nullable_to_non_nullable
              as int,
      modeType: modeType == freezed
          ? _value.modeType
          : modeType // ignore: cast_nullable_to_non_nullable
              as CameraMode,
    ));
  }
}

/// @nodoc

class _$_ArForStoryState implements _ArForStoryState {
  _$_ArForStoryState(
      {required this.cameraDirection,
      required this.currentEffect,
      required this.modeType});

  @override
  final CameraDirection cameraDirection;
  @override
  final int currentEffect;
  @override
  final CameraMode modeType;

  @override
  String toString() {
    return 'ArForStoryState(cameraDirection: $cameraDirection, currentEffect: $currentEffect, modeType: $modeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArForStoryState &&
            const DeepCollectionEquality()
                .equals(other.cameraDirection, cameraDirection) &&
            const DeepCollectionEquality()
                .equals(other.currentEffect, currentEffect) &&
            const DeepCollectionEquality().equals(other.modeType, modeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cameraDirection),
      const DeepCollectionEquality().hash(currentEffect),
      const DeepCollectionEquality().hash(modeType));

  @JsonKey(ignore: true)
  @override
  _$ArForStoryStateCopyWith<_ArForStoryState> get copyWith =>
      __$ArForStoryStateCopyWithImpl<_ArForStoryState>(this, _$identity);
}

abstract class _ArForStoryState implements ArForStoryState {
  factory _ArForStoryState(
      {required CameraDirection cameraDirection,
      required int currentEffect,
      required CameraMode modeType}) = _$_ArForStoryState;

  @override
  CameraDirection get cameraDirection;
  @override
  int get currentEffect;
  @override
  CameraMode get modeType;
  @override
  @JsonKey(ignore: true)
  _$ArForStoryStateCopyWith<_ArForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
