// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'giphy_for_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GiphyForStoryStateTearOff {
  const _$GiphyForStoryStateTearOff();

  _GiphyForStoryState call(
      {required GiphyGif? gif,
      required GiphyClient client,
      required String? randomId}) {
    return _GiphyForStoryState(
      gif: gif,
      client: client,
      randomId: randomId,
    );
  }
}

/// @nodoc
const $GiphyForStoryState = _$GiphyForStoryStateTearOff();

/// @nodoc
mixin _$GiphyForStoryState {
  GiphyGif? get gif => throw _privateConstructorUsedError;
  GiphyClient get client => throw _privateConstructorUsedError;
  String? get randomId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GiphyForStoryStateCopyWith<GiphyForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiphyForStoryStateCopyWith<$Res> {
  factory $GiphyForStoryStateCopyWith(
          GiphyForStoryState value, $Res Function(GiphyForStoryState) then) =
      _$GiphyForStoryStateCopyWithImpl<$Res>;
  $Res call({GiphyGif? gif, GiphyClient client, String? randomId});
}

/// @nodoc
class _$GiphyForStoryStateCopyWithImpl<$Res>
    implements $GiphyForStoryStateCopyWith<$Res> {
  _$GiphyForStoryStateCopyWithImpl(this._value, this._then);

  final GiphyForStoryState _value;
  // ignore: unused_field
  final $Res Function(GiphyForStoryState) _then;

  @override
  $Res call({
    Object? gif = freezed,
    Object? client = freezed,
    Object? randomId = freezed,
  }) {
    return _then(_value.copyWith(
      gif: gif == freezed
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as GiphyGif?,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as GiphyClient,
      randomId: randomId == freezed
          ? _value.randomId
          : randomId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GiphyForStoryStateCopyWith<$Res>
    implements $GiphyForStoryStateCopyWith<$Res> {
  factory _$GiphyForStoryStateCopyWith(
          _GiphyForStoryState value, $Res Function(_GiphyForStoryState) then) =
      __$GiphyForStoryStateCopyWithImpl<$Res>;
  @override
  $Res call({GiphyGif? gif, GiphyClient client, String? randomId});
}

/// @nodoc
class __$GiphyForStoryStateCopyWithImpl<$Res>
    extends _$GiphyForStoryStateCopyWithImpl<$Res>
    implements _$GiphyForStoryStateCopyWith<$Res> {
  __$GiphyForStoryStateCopyWithImpl(
      _GiphyForStoryState _value, $Res Function(_GiphyForStoryState) _then)
      : super(_value, (v) => _then(v as _GiphyForStoryState));

  @override
  _GiphyForStoryState get _value => super._value as _GiphyForStoryState;

  @override
  $Res call({
    Object? gif = freezed,
    Object? client = freezed,
    Object? randomId = freezed,
  }) {
    return _then(_GiphyForStoryState(
      gif: gif == freezed
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as GiphyGif?,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as GiphyClient,
      randomId: randomId == freezed
          ? _value.randomId
          : randomId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GiphyForStoryState implements _GiphyForStoryState {
  _$_GiphyForStoryState(
      {required this.gif, required this.client, required this.randomId});

  @override
  final GiphyGif? gif;
  @override
  final GiphyClient client;
  @override
  final String? randomId;

  @override
  String toString() {
    return 'GiphyForStoryState(gif: $gif, client: $client, randomId: $randomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GiphyForStoryState &&
            const DeepCollectionEquality().equals(other.gif, gif) &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.randomId, randomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gif),
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(randomId));

  @JsonKey(ignore: true)
  @override
  _$GiphyForStoryStateCopyWith<_GiphyForStoryState> get copyWith =>
      __$GiphyForStoryStateCopyWithImpl<_GiphyForStoryState>(this, _$identity);
}

abstract class _GiphyForStoryState implements GiphyForStoryState {
  factory _GiphyForStoryState(
      {required GiphyGif? gif,
      required GiphyClient client,
      required String? randomId}) = _$_GiphyForStoryState;

  @override
  GiphyGif? get gif;
  @override
  GiphyClient get client;
  @override
  String? get randomId;
  @override
  @JsonKey(ignore: true)
  _$GiphyForStoryStateCopyWith<_GiphyForStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
