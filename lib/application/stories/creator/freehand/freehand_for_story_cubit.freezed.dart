// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freehand_for_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FreehandForStoryStateTearOff {
  const _$FreehandForStoryStateTearOff();

  _FreehandForStoryState call(
      {required bool isActive,
      required Color color,
      required double strokeWidth}) {
    return _FreehandForStoryState(
      isActive: isActive,
      color: color,
      strokeWidth: strokeWidth,
    );
  }
}

/// @nodoc
const $FreehandForStoryState = _$FreehandForStoryStateTearOff();

/// @nodoc
mixin _$FreehandForStoryState {
  bool get isActive => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  double get strokeWidth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreehandForStoryStateCopyWith<FreehandForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreehandForStoryStateCopyWith<$Res> {
  factory $FreehandForStoryStateCopyWith(FreehandForStoryState value,
          $Res Function(FreehandForStoryState) then) =
      _$FreehandForStoryStateCopyWithImpl<$Res>;
  $Res call({bool isActive, Color color, double strokeWidth});
}

/// @nodoc
class _$FreehandForStoryStateCopyWithImpl<$Res>
    implements $FreehandForStoryStateCopyWith<$Res> {
  _$FreehandForStoryStateCopyWithImpl(this._value, this._then);

  final FreehandForStoryState _value;
  // ignore: unused_field
  final $Res Function(FreehandForStoryState) _then;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? color = freezed,
    Object? strokeWidth = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      strokeWidth: strokeWidth == freezed
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$FreehandForStoryStateCopyWith<$Res>
    implements $FreehandForStoryStateCopyWith<$Res> {
  factory _$FreehandForStoryStateCopyWith(_FreehandForStoryState value,
          $Res Function(_FreehandForStoryState) then) =
      __$FreehandForStoryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isActive, Color color, double strokeWidth});
}

/// @nodoc
class __$FreehandForStoryStateCopyWithImpl<$Res>
    extends _$FreehandForStoryStateCopyWithImpl<$Res>
    implements _$FreehandForStoryStateCopyWith<$Res> {
  __$FreehandForStoryStateCopyWithImpl(_FreehandForStoryState _value,
      $Res Function(_FreehandForStoryState) _then)
      : super(_value, (v) => _then(v as _FreehandForStoryState));

  @override
  _FreehandForStoryState get _value => super._value as _FreehandForStoryState;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? color = freezed,
    Object? strokeWidth = freezed,
  }) {
    return _then(_FreehandForStoryState(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      strokeWidth: strokeWidth == freezed
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_FreehandForStoryState implements _FreehandForStoryState {
  _$_FreehandForStoryState(
      {required this.isActive, required this.color, required this.strokeWidth});

  @override
  final bool isActive;
  @override
  final Color color;
  @override
  final double strokeWidth;

  @override
  String toString() {
    return 'FreehandForStoryState(isActive: $isActive, color: $color, strokeWidth: $strokeWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreehandForStoryState &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.strokeWidth, strokeWidth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(strokeWidth));

  @JsonKey(ignore: true)
  @override
  _$FreehandForStoryStateCopyWith<_FreehandForStoryState> get copyWith =>
      __$FreehandForStoryStateCopyWithImpl<_FreehandForStoryState>(
          this, _$identity);
}

abstract class _FreehandForStoryState implements FreehandForStoryState {
  factory _FreehandForStoryState(
      {required bool isActive,
      required Color color,
      required double strokeWidth}) = _$_FreehandForStoryState;

  @override
  bool get isActive;
  @override
  Color get color;
  @override
  double get strokeWidth;
  @override
  @JsonKey(ignore: true)
  _$FreehandForStoryStateCopyWith<_FreehandForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
