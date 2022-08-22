// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_for_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileForStoryStateTearOff {
  const _$FileForStoryStateTearOff();

  _FileForStoryState call({required File? image, required File? video}) {
    return _FileForStoryState(
      image: image,
      video: video,
    );
  }
}

/// @nodoc
const $FileForStoryState = _$FileForStoryStateTearOff();

/// @nodoc
mixin _$FileForStoryState {
  File? get image => throw _privateConstructorUsedError;
  File? get video => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileForStoryStateCopyWith<FileForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileForStoryStateCopyWith<$Res> {
  factory $FileForStoryStateCopyWith(
          FileForStoryState value, $Res Function(FileForStoryState) then) =
      _$FileForStoryStateCopyWithImpl<$Res>;
  $Res call({File? image, File? video});
}

/// @nodoc
class _$FileForStoryStateCopyWithImpl<$Res>
    implements $FileForStoryStateCopyWith<$Res> {
  _$FileForStoryStateCopyWithImpl(this._value, this._then);

  final FileForStoryState _value;
  // ignore: unused_field
  final $Res Function(FileForStoryState) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
abstract class _$FileForStoryStateCopyWith<$Res>
    implements $FileForStoryStateCopyWith<$Res> {
  factory _$FileForStoryStateCopyWith(
          _FileForStoryState value, $Res Function(_FileForStoryState) then) =
      __$FileForStoryStateCopyWithImpl<$Res>;
  @override
  $Res call({File? image, File? video});
}

/// @nodoc
class __$FileForStoryStateCopyWithImpl<$Res>
    extends _$FileForStoryStateCopyWithImpl<$Res>
    implements _$FileForStoryStateCopyWith<$Res> {
  __$FileForStoryStateCopyWithImpl(
      _FileForStoryState _value, $Res Function(_FileForStoryState) _then)
      : super(_value, (v) => _then(v as _FileForStoryState));

  @override
  _FileForStoryState get _value => super._value as _FileForStoryState;

  @override
  $Res call({
    Object? image = freezed,
    Object? video = freezed,
  }) {
    return _then(_FileForStoryState(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_FileForStoryState implements _FileForStoryState {
  _$_FileForStoryState({required this.image, required this.video});

  @override
  final File? image;
  @override
  final File? video;

  @override
  String toString() {
    return 'FileForStoryState(image: $image, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileForStoryState &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.video, video));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(video));

  @JsonKey(ignore: true)
  @override
  _$FileForStoryStateCopyWith<_FileForStoryState> get copyWith =>
      __$FileForStoryStateCopyWithImpl<_FileForStoryState>(this, _$identity);
}

abstract class _FileForStoryState implements FileForStoryState {
  factory _FileForStoryState({required File? image, required File? video}) =
      _$_FileForStoryState;

  @override
  File? get image;
  @override
  File? get video;
  @override
  @JsonKey(ignore: true)
  _$FileForStoryStateCopyWith<_FileForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
