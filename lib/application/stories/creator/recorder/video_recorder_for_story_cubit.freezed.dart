// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_recorder_for_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoRecorderForStoryStateTearOff {
  const _$VideoRecorderForStoryStateTearOff();

  _VideoRecorderForStoryState call(
      {required Duration duration,
      required Timer? timer,
      required bool isPlaying}) {
    return _VideoRecorderForStoryState(
      duration: duration,
      timer: timer,
      isPlaying: isPlaying,
    );
  }
}

/// @nodoc
const $VideoRecorderForStoryState = _$VideoRecorderForStoryStateTearOff();

/// @nodoc
mixin _$VideoRecorderForStoryState {
  Duration get duration => throw _privateConstructorUsedError;
  Timer? get timer => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoRecorderForStoryStateCopyWith<VideoRecorderForStoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoRecorderForStoryStateCopyWith<$Res> {
  factory $VideoRecorderForStoryStateCopyWith(VideoRecorderForStoryState value,
          $Res Function(VideoRecorderForStoryState) then) =
      _$VideoRecorderForStoryStateCopyWithImpl<$Res>;
  $Res call({Duration duration, Timer? timer, bool isPlaying});
}

/// @nodoc
class _$VideoRecorderForStoryStateCopyWithImpl<$Res>
    implements $VideoRecorderForStoryStateCopyWith<$Res> {
  _$VideoRecorderForStoryStateCopyWithImpl(this._value, this._then);

  final VideoRecorderForStoryState _value;
  // ignore: unused_field
  final $Res Function(VideoRecorderForStoryState) _then;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timer = freezed,
    Object? isPlaying = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VideoRecorderForStoryStateCopyWith<$Res>
    implements $VideoRecorderForStoryStateCopyWith<$Res> {
  factory _$VideoRecorderForStoryStateCopyWith(
          _VideoRecorderForStoryState value,
          $Res Function(_VideoRecorderForStoryState) then) =
      __$VideoRecorderForStoryStateCopyWithImpl<$Res>;
  @override
  $Res call({Duration duration, Timer? timer, bool isPlaying});
}

/// @nodoc
class __$VideoRecorderForStoryStateCopyWithImpl<$Res>
    extends _$VideoRecorderForStoryStateCopyWithImpl<$Res>
    implements _$VideoRecorderForStoryStateCopyWith<$Res> {
  __$VideoRecorderForStoryStateCopyWithImpl(_VideoRecorderForStoryState _value,
      $Res Function(_VideoRecorderForStoryState) _then)
      : super(_value, (v) => _then(v as _VideoRecorderForStoryState));

  @override
  _VideoRecorderForStoryState get _value =>
      super._value as _VideoRecorderForStoryState;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timer = freezed,
    Object? isPlaying = freezed,
  }) {
    return _then(_VideoRecorderForStoryState(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoRecorderForStoryState implements _VideoRecorderForStoryState {
  _$_VideoRecorderForStoryState(
      {required this.duration, required this.timer, required this.isPlaying});

  @override
  final Duration duration;
  @override
  final Timer? timer;
  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'VideoRecorderForStoryState(duration: $duration, timer: $timer, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoRecorderForStoryState &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.timer, timer) &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(timer),
      const DeepCollectionEquality().hash(isPlaying));

  @JsonKey(ignore: true)
  @override
  _$VideoRecorderForStoryStateCopyWith<_VideoRecorderForStoryState>
      get copyWith => __$VideoRecorderForStoryStateCopyWithImpl<
          _VideoRecorderForStoryState>(this, _$identity);
}

abstract class _VideoRecorderForStoryState
    implements VideoRecorderForStoryState {
  factory _VideoRecorderForStoryState(
      {required Duration duration,
      required Timer? timer,
      required bool isPlaying}) = _$_VideoRecorderForStoryState;

  @override
  Duration get duration;
  @override
  Timer? get timer;
  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$VideoRecorderForStoryStateCopyWith<_VideoRecorderForStoryState>
      get copyWith => throw _privateConstructorUsedError;
}
