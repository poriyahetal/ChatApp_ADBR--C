// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoriesEventTearOff {
  const _$StoriesEventTearOff();

  _CreateTextStatus createTextStatus(
      StoriesModel currentUser, String text, Color color) {
    return _CreateTextStatus(
      currentUser,
      text,
      color,
    );
  }

  _CreatePaintStatus createPaintStatus(
      StoriesModel currentUser, File imageFile) {
    return _CreatePaintStatus(
      currentUser,
      imageFile,
    );
  }

  _CreateImageStatus createImageStatus(
      StoriesModel currentUser, List<ImageWithCaptionModel> imageWithCaption) {
    return _CreateImageStatus(
      currentUser,
      imageWithCaption,
    );
  }

  _AddImageCaption addImageCaption(List<String> caption) {
    return _AddImageCaption(
      caption,
    );
  }

  _CompleteScreenshot completeScreenshot() {
    return const _CompleteScreenshot();
  }

  _CreateGifStatus createGifStatus(StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption, double duration) {
    return _CreateGifStatus(
      currentUser,
      imageWithCaption,
      duration,
    );
  }

  _CreateVideoStatus createVideoStatus(
      StoriesModel currentuser, String text, String path, double duration) {
    return _CreateVideoStatus(
      currentuser,
      text,
      path,
      duration,
    );
  }

  _StorySeenBy storySeenBy(
      StoriesModel currentUser, int index, KahoChatUser myUser) {
    return _StorySeenBy(
      currentUser,
      index,
      myUser,
    );
  }

  _StoryReactedBy reactOnStory(StoriesModel currentUser, int index,
      KahoChatUser myUser, String reaction) {
    return _StoryReactedBy(
      currentUser,
      index,
      myUser,
      reaction,
    );
  }

  _CreateStories createStories(StoriesModel stories) {
    return _CreateStories(
      stories,
    );
  }

  _GetCurrentUserStory getCurrentUserStory() {
    return const _GetCurrentUserStory();
  }
}

/// @nodoc
const $StoriesEvent = _$StoriesEventTearOff();

/// @nodoc
mixin _$StoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesEventCopyWith<$Res> {
  factory $StoriesEventCopyWith(
          StoriesEvent value, $Res Function(StoriesEvent) then) =
      _$StoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoriesEventCopyWithImpl<$Res> implements $StoriesEventCopyWith<$Res> {
  _$StoriesEventCopyWithImpl(this._value, this._then);

  final StoriesEvent _value;
  // ignore: unused_field
  final $Res Function(StoriesEvent) _then;
}

/// @nodoc
abstract class _$CreateTextStatusCopyWith<$Res> {
  factory _$CreateTextStatusCopyWith(
          _CreateTextStatus value, $Res Function(_CreateTextStatus) then) =
      __$CreateTextStatusCopyWithImpl<$Res>;
  $Res call({StoriesModel currentUser, String text, Color color});
}

/// @nodoc
class __$CreateTextStatusCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CreateTextStatusCopyWith<$Res> {
  __$CreateTextStatusCopyWithImpl(
      _CreateTextStatus _value, $Res Function(_CreateTextStatus) _then)
      : super(_value, (v) => _then(v as _CreateTextStatus));

  @override
  _CreateTextStatus get _value => super._value as _CreateTextStatus;

  @override
  $Res call({
    Object? currentUser = freezed,
    Object? text = freezed,
    Object? color = freezed,
  }) {
    return _then(_CreateTextStatus(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_CreateTextStatus implements _CreateTextStatus {
  const _$_CreateTextStatus(this.currentUser, this.text, this.color);

  @override
  final StoriesModel currentUser;
  @override
  final String text;
  @override
  final Color color;

  @override
  String toString() {
    return 'StoriesEvent.createTextStatus(currentUser: $currentUser, text: $text, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTextStatus &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$CreateTextStatusCopyWith<_CreateTextStatus> get copyWith =>
      __$CreateTextStatusCopyWithImpl<_CreateTextStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return createTextStatus(currentUser, text, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return createTextStatus?.call(currentUser, text, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createTextStatus != null) {
      return createTextStatus(currentUser, text, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return createTextStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return createTextStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createTextStatus != null) {
      return createTextStatus(this);
    }
    return orElse();
  }
}

abstract class _CreateTextStatus implements StoriesEvent {
  const factory _CreateTextStatus(
      StoriesModel currentUser, String text, Color color) = _$_CreateTextStatus;

  StoriesModel get currentUser;
  String get text;
  Color get color;
  @JsonKey(ignore: true)
  _$CreateTextStatusCopyWith<_CreateTextStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatePaintStatusCopyWith<$Res> {
  factory _$CreatePaintStatusCopyWith(
          _CreatePaintStatus value, $Res Function(_CreatePaintStatus) then) =
      __$CreatePaintStatusCopyWithImpl<$Res>;
  $Res call({StoriesModel currentUser, File imageFile});
}

/// @nodoc
class __$CreatePaintStatusCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CreatePaintStatusCopyWith<$Res> {
  __$CreatePaintStatusCopyWithImpl(
      _CreatePaintStatus _value, $Res Function(_CreatePaintStatus) _then)
      : super(_value, (v) => _then(v as _CreatePaintStatus));

  @override
  _CreatePaintStatus get _value => super._value as _CreatePaintStatus;

  @override
  $Res call({
    Object? currentUser = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_CreatePaintStatus(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_CreatePaintStatus implements _CreatePaintStatus {
  const _$_CreatePaintStatus(this.currentUser, this.imageFile);

  @override
  final StoriesModel currentUser;
  @override
  final File imageFile;

  @override
  String toString() {
    return 'StoriesEvent.createPaintStatus(currentUser: $currentUser, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePaintStatus &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  _$CreatePaintStatusCopyWith<_CreatePaintStatus> get copyWith =>
      __$CreatePaintStatusCopyWithImpl<_CreatePaintStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return createPaintStatus(currentUser, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return createPaintStatus?.call(currentUser, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createPaintStatus != null) {
      return createPaintStatus(currentUser, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return createPaintStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return createPaintStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createPaintStatus != null) {
      return createPaintStatus(this);
    }
    return orElse();
  }
}

abstract class _CreatePaintStatus implements StoriesEvent {
  const factory _CreatePaintStatus(StoriesModel currentUser, File imageFile) =
      _$_CreatePaintStatus;

  StoriesModel get currentUser;
  File get imageFile;
  @JsonKey(ignore: true)
  _$CreatePaintStatusCopyWith<_CreatePaintStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateImageStatusCopyWith<$Res> {
  factory _$CreateImageStatusCopyWith(
          _CreateImageStatus value, $Res Function(_CreateImageStatus) then) =
      __$CreateImageStatusCopyWithImpl<$Res>;
  $Res call(
      {StoriesModel currentUser, List<ImageWithCaptionModel> imageWithCaption});
}

/// @nodoc
class __$CreateImageStatusCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CreateImageStatusCopyWith<$Res> {
  __$CreateImageStatusCopyWithImpl(
      _CreateImageStatus _value, $Res Function(_CreateImageStatus) _then)
      : super(_value, (v) => _then(v as _CreateImageStatus));

  @override
  _CreateImageStatus get _value => super._value as _CreateImageStatus;

  @override
  $Res call({
    Object? currentUser = freezed,
    Object? imageWithCaption = freezed,
  }) {
    return _then(_CreateImageStatus(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as List<ImageWithCaptionModel>,
    ));
  }
}

/// @nodoc

class _$_CreateImageStatus implements _CreateImageStatus {
  const _$_CreateImageStatus(this.currentUser, this.imageWithCaption);

  @override
  final StoriesModel currentUser;
  @override
  final List<ImageWithCaptionModel> imageWithCaption;

  @override
  String toString() {
    return 'StoriesEvent.createImageStatus(currentUser: $currentUser, imageWithCaption: $imageWithCaption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateImageStatus &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(imageWithCaption));

  @JsonKey(ignore: true)
  @override
  _$CreateImageStatusCopyWith<_CreateImageStatus> get copyWith =>
      __$CreateImageStatusCopyWithImpl<_CreateImageStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return createImageStatus(currentUser, imageWithCaption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return createImageStatus?.call(currentUser, imageWithCaption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createImageStatus != null) {
      return createImageStatus(currentUser, imageWithCaption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return createImageStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return createImageStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createImageStatus != null) {
      return createImageStatus(this);
    }
    return orElse();
  }
}

abstract class _CreateImageStatus implements StoriesEvent {
  const factory _CreateImageStatus(StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption) = _$_CreateImageStatus;

  StoriesModel get currentUser;
  List<ImageWithCaptionModel> get imageWithCaption;
  @JsonKey(ignore: true)
  _$CreateImageStatusCopyWith<_CreateImageStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddImageCaptionCopyWith<$Res> {
  factory _$AddImageCaptionCopyWith(
          _AddImageCaption value, $Res Function(_AddImageCaption) then) =
      __$AddImageCaptionCopyWithImpl<$Res>;
  $Res call({List<String> caption});
}

/// @nodoc
class __$AddImageCaptionCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$AddImageCaptionCopyWith<$Res> {
  __$AddImageCaptionCopyWithImpl(
      _AddImageCaption _value, $Res Function(_AddImageCaption) _then)
      : super(_value, (v) => _then(v as _AddImageCaption));

  @override
  _AddImageCaption get _value => super._value as _AddImageCaption;

  @override
  $Res call({
    Object? caption = freezed,
  }) {
    return _then(_AddImageCaption(
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AddImageCaption implements _AddImageCaption {
  const _$_AddImageCaption(this.caption);

  @override
  final List<String> caption;

  @override
  String toString() {
    return 'StoriesEvent.addImageCaption(caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddImageCaption &&
            const DeepCollectionEquality().equals(other.caption, caption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(caption));

  @JsonKey(ignore: true)
  @override
  _$AddImageCaptionCopyWith<_AddImageCaption> get copyWith =>
      __$AddImageCaptionCopyWithImpl<_AddImageCaption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return addImageCaption(caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return addImageCaption?.call(caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (addImageCaption != null) {
      return addImageCaption(caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return addImageCaption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return addImageCaption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (addImageCaption != null) {
      return addImageCaption(this);
    }
    return orElse();
  }
}

abstract class _AddImageCaption implements StoriesEvent {
  const factory _AddImageCaption(List<String> caption) = _$_AddImageCaption;

  List<String> get caption;
  @JsonKey(ignore: true)
  _$AddImageCaptionCopyWith<_AddImageCaption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompleteScreenshotCopyWith<$Res> {
  factory _$CompleteScreenshotCopyWith(
          _CompleteScreenshot value, $Res Function(_CompleteScreenshot) then) =
      __$CompleteScreenshotCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompleteScreenshotCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CompleteScreenshotCopyWith<$Res> {
  __$CompleteScreenshotCopyWithImpl(
      _CompleteScreenshot _value, $Res Function(_CompleteScreenshot) _then)
      : super(_value, (v) => _then(v as _CompleteScreenshot));

  @override
  _CompleteScreenshot get _value => super._value as _CompleteScreenshot;
}

/// @nodoc

class _$_CompleteScreenshot implements _CompleteScreenshot {
  const _$_CompleteScreenshot();

  @override
  String toString() {
    return 'StoriesEvent.completeScreenshot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CompleteScreenshot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return completeScreenshot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return completeScreenshot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (completeScreenshot != null) {
      return completeScreenshot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return completeScreenshot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return completeScreenshot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (completeScreenshot != null) {
      return completeScreenshot(this);
    }
    return orElse();
  }
}

abstract class _CompleteScreenshot implements StoriesEvent {
  const factory _CompleteScreenshot() = _$_CompleteScreenshot;
}

/// @nodoc
abstract class _$CreateGifStatusCopyWith<$Res> {
  factory _$CreateGifStatusCopyWith(
          _CreateGifStatus value, $Res Function(_CreateGifStatus) then) =
      __$CreateGifStatusCopyWithImpl<$Res>;
  $Res call(
      {StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption,
      double duration});
}

/// @nodoc
class __$CreateGifStatusCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CreateGifStatusCopyWith<$Res> {
  __$CreateGifStatusCopyWithImpl(
      _CreateGifStatus _value, $Res Function(_CreateGifStatus) _then)
      : super(_value, (v) => _then(v as _CreateGifStatus));

  @override
  _CreateGifStatus get _value => super._value as _CreateGifStatus;

  @override
  $Res call({
    Object? currentUser = freezed,
    Object? imageWithCaption = freezed,
    Object? duration = freezed,
  }) {
    return _then(_CreateGifStatus(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as List<ImageWithCaptionModel>,
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CreateGifStatus implements _CreateGifStatus {
  const _$_CreateGifStatus(
      this.currentUser, this.imageWithCaption, this.duration);

  @override
  final StoriesModel currentUser;
  @override
  final List<ImageWithCaptionModel> imageWithCaption;
  @override
  final double duration;

  @override
  String toString() {
    return 'StoriesEvent.createGifStatus(currentUser: $currentUser, imageWithCaption: $imageWithCaption, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGifStatus &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(imageWithCaption),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$CreateGifStatusCopyWith<_CreateGifStatus> get copyWith =>
      __$CreateGifStatusCopyWithImpl<_CreateGifStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return createGifStatus(currentUser, imageWithCaption, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return createGifStatus?.call(currentUser, imageWithCaption, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createGifStatus != null) {
      return createGifStatus(currentUser, imageWithCaption, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return createGifStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return createGifStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createGifStatus != null) {
      return createGifStatus(this);
    }
    return orElse();
  }
}

abstract class _CreateGifStatus implements StoriesEvent {
  const factory _CreateGifStatus(
      StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption,
      double duration) = _$_CreateGifStatus;

  StoriesModel get currentUser;
  List<ImageWithCaptionModel> get imageWithCaption;
  double get duration;
  @JsonKey(ignore: true)
  _$CreateGifStatusCopyWith<_CreateGifStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateVideoStatusCopyWith<$Res> {
  factory _$CreateVideoStatusCopyWith(
          _CreateVideoStatus value, $Res Function(_CreateVideoStatus) then) =
      __$CreateVideoStatusCopyWithImpl<$Res>;
  $Res call(
      {StoriesModel currentuser, String text, String path, double duration});
}

/// @nodoc
class __$CreateVideoStatusCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CreateVideoStatusCopyWith<$Res> {
  __$CreateVideoStatusCopyWithImpl(
      _CreateVideoStatus _value, $Res Function(_CreateVideoStatus) _then)
      : super(_value, (v) => _then(v as _CreateVideoStatus));

  @override
  _CreateVideoStatus get _value => super._value as _CreateVideoStatus;

  @override
  $Res call({
    Object? currentuser = freezed,
    Object? text = freezed,
    Object? path = freezed,
    Object? duration = freezed,
  }) {
    return _then(_CreateVideoStatus(
      currentuser == freezed
          ? _value.currentuser
          : currentuser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CreateVideoStatus implements _CreateVideoStatus {
  const _$_CreateVideoStatus(
      this.currentuser, this.text, this.path, this.duration);

  @override
  final StoriesModel currentuser;
  @override
  final String text;
  @override
  final String path;
  @override
  final double duration;

  @override
  String toString() {
    return 'StoriesEvent.createVideoStatus(currentuser: $currentuser, text: $text, path: $path, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateVideoStatus &&
            const DeepCollectionEquality()
                .equals(other.currentuser, currentuser) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentuser),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$CreateVideoStatusCopyWith<_CreateVideoStatus> get copyWith =>
      __$CreateVideoStatusCopyWithImpl<_CreateVideoStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return createVideoStatus(currentuser, text, path, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return createVideoStatus?.call(currentuser, text, path, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createVideoStatus != null) {
      return createVideoStatus(currentuser, text, path, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return createVideoStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return createVideoStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createVideoStatus != null) {
      return createVideoStatus(this);
    }
    return orElse();
  }
}

abstract class _CreateVideoStatus implements StoriesEvent {
  const factory _CreateVideoStatus(
          StoriesModel currentuser, String text, String path, double duration) =
      _$_CreateVideoStatus;

  StoriesModel get currentuser;
  String get text;
  String get path;
  double get duration;
  @JsonKey(ignore: true)
  _$CreateVideoStatusCopyWith<_CreateVideoStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StorySeenByCopyWith<$Res> {
  factory _$StorySeenByCopyWith(
          _StorySeenBy value, $Res Function(_StorySeenBy) then) =
      __$StorySeenByCopyWithImpl<$Res>;
  $Res call({StoriesModel currentUser, int index, KahoChatUser myUser});
}

/// @nodoc
class __$StorySeenByCopyWithImpl<$Res> extends _$StoriesEventCopyWithImpl<$Res>
    implements _$StorySeenByCopyWith<$Res> {
  __$StorySeenByCopyWithImpl(
      _StorySeenBy _value, $Res Function(_StorySeenBy) _then)
      : super(_value, (v) => _then(v as _StorySeenBy));

  @override
  _StorySeenBy get _value => super._value as _StorySeenBy;

  @override
  $Res call({
    Object? currentUser = freezed,
    Object? index = freezed,
    Object? myUser = freezed,
  }) {
    return _then(_StorySeenBy(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_StorySeenBy implements _StorySeenBy {
  const _$_StorySeenBy(this.currentUser, this.index, this.myUser);

  @override
  final StoriesModel currentUser;
  @override
  final int index;
  @override
  final KahoChatUser myUser;

  @override
  String toString() {
    return 'StoriesEvent.storySeenBy(currentUser: $currentUser, index: $index, myUser: $myUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StorySeenBy &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.myUser, myUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(myUser));

  @JsonKey(ignore: true)
  @override
  _$StorySeenByCopyWith<_StorySeenBy> get copyWith =>
      __$StorySeenByCopyWithImpl<_StorySeenBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return storySeenBy(currentUser, index, myUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return storySeenBy?.call(currentUser, index, myUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (storySeenBy != null) {
      return storySeenBy(currentUser, index, myUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return storySeenBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return storySeenBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (storySeenBy != null) {
      return storySeenBy(this);
    }
    return orElse();
  }
}

abstract class _StorySeenBy implements StoriesEvent {
  const factory _StorySeenBy(
          StoriesModel currentUser, int index, KahoChatUser myUser) =
      _$_StorySeenBy;

  StoriesModel get currentUser;
  int get index;
  KahoChatUser get myUser;
  @JsonKey(ignore: true)
  _$StorySeenByCopyWith<_StorySeenBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StoryReactedByCopyWith<$Res> {
  factory _$StoryReactedByCopyWith(
          _StoryReactedBy value, $Res Function(_StoryReactedBy) then) =
      __$StoryReactedByCopyWithImpl<$Res>;
  $Res call(
      {StoriesModel currentUser,
      int index,
      KahoChatUser myUser,
      String reaction});
}

/// @nodoc
class __$StoryReactedByCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$StoryReactedByCopyWith<$Res> {
  __$StoryReactedByCopyWithImpl(
      _StoryReactedBy _value, $Res Function(_StoryReactedBy) _then)
      : super(_value, (v) => _then(v as _StoryReactedBy));

  @override
  _StoryReactedBy get _value => super._value as _StoryReactedBy;

  @override
  $Res call({
    Object? currentUser = freezed,
    Object? index = freezed,
    Object? myUser = freezed,
    Object? reaction = freezed,
  }) {
    return _then(_StoryReactedBy(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      reaction == freezed
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StoryReactedBy implements _StoryReactedBy {
  const _$_StoryReactedBy(
      this.currentUser, this.index, this.myUser, this.reaction);

  @override
  final StoriesModel currentUser;
  @override
  final int index;
  @override
  final KahoChatUser myUser;
  @override
  final String reaction;

  @override
  String toString() {
    return 'StoriesEvent.reactOnStory(currentUser: $currentUser, index: $index, myUser: $myUser, reaction: $reaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoryReactedBy &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.myUser, myUser) &&
            const DeepCollectionEquality().equals(other.reaction, reaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(myUser),
      const DeepCollectionEquality().hash(reaction));

  @JsonKey(ignore: true)
  @override
  _$StoryReactedByCopyWith<_StoryReactedBy> get copyWith =>
      __$StoryReactedByCopyWithImpl<_StoryReactedBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return reactOnStory(currentUser, index, myUser, reaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return reactOnStory?.call(currentUser, index, myUser, reaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (reactOnStory != null) {
      return reactOnStory(currentUser, index, myUser, reaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return reactOnStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return reactOnStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (reactOnStory != null) {
      return reactOnStory(this);
    }
    return orElse();
  }
}

abstract class _StoryReactedBy implements StoriesEvent {
  const factory _StoryReactedBy(StoriesModel currentUser, int index,
      KahoChatUser myUser, String reaction) = _$_StoryReactedBy;

  StoriesModel get currentUser;
  int get index;
  KahoChatUser get myUser;
  String get reaction;
  @JsonKey(ignore: true)
  _$StoryReactedByCopyWith<_StoryReactedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateStoriesCopyWith<$Res> {
  factory _$CreateStoriesCopyWith(
          _CreateStories value, $Res Function(_CreateStories) then) =
      __$CreateStoriesCopyWithImpl<$Res>;
  $Res call({StoriesModel stories});
}

/// @nodoc
class __$CreateStoriesCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$CreateStoriesCopyWith<$Res> {
  __$CreateStoriesCopyWithImpl(
      _CreateStories _value, $Res Function(_CreateStories) _then)
      : super(_value, (v) => _then(v as _CreateStories));

  @override
  _CreateStories get _value => super._value as _CreateStories;

  @override
  $Res call({
    Object? stories = freezed,
  }) {
    return _then(_CreateStories(
      stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
    ));
  }
}

/// @nodoc

class _$_CreateStories implements _CreateStories {
  const _$_CreateStories(this.stories);

  @override
  final StoriesModel stories;

  @override
  String toString() {
    return 'StoriesEvent.createStories(stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStories &&
            const DeepCollectionEquality().equals(other.stories, stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stories));

  @JsonKey(ignore: true)
  @override
  _$CreateStoriesCopyWith<_CreateStories> get copyWith =>
      __$CreateStoriesCopyWithImpl<_CreateStories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return createStories(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return createStories?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createStories != null) {
      return createStories(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return createStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return createStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (createStories != null) {
      return createStories(this);
    }
    return orElse();
  }
}

abstract class _CreateStories implements StoriesEvent {
  const factory _CreateStories(StoriesModel stories) = _$_CreateStories;

  StoriesModel get stories;
  @JsonKey(ignore: true)
  _$CreateStoriesCopyWith<_CreateStories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCurrentUserStoryCopyWith<$Res> {
  factory _$GetCurrentUserStoryCopyWith(_GetCurrentUserStory value,
          $Res Function(_GetCurrentUserStory) then) =
      __$GetCurrentUserStoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCurrentUserStoryCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res>
    implements _$GetCurrentUserStoryCopyWith<$Res> {
  __$GetCurrentUserStoryCopyWithImpl(
      _GetCurrentUserStory _value, $Res Function(_GetCurrentUserStory) _then)
      : super(_value, (v) => _then(v as _GetCurrentUserStory));

  @override
  _GetCurrentUserStory get _value => super._value as _GetCurrentUserStory;
}

/// @nodoc

class _$_GetCurrentUserStory implements _GetCurrentUserStory {
  const _$_GetCurrentUserStory();

  @override
  String toString() {
    return 'StoriesEvent.getCurrentUserStory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCurrentUserStory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StoriesModel currentUser, String text, Color color)
        createTextStatus,
    required TResult Function(StoriesModel currentUser, File imageFile)
        createPaintStatus,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)
        createImageStatus,
    required TResult Function(List<String> caption) addImageCaption,
    required TResult Function() completeScreenshot,
    required TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)
        createGifStatus,
    required TResult Function(
            StoriesModel currentuser, String text, String path, double duration)
        createVideoStatus,
    required TResult Function(
            StoriesModel currentUser, int index, KahoChatUser myUser)
        storySeenBy,
    required TResult Function(StoriesModel currentUser, int index,
            KahoChatUser myUser, String reaction)
        reactOnStory,
    required TResult Function(StoriesModel stories) createStories,
    required TResult Function() getCurrentUserStory,
  }) {
    return getCurrentUserStory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
  }) {
    return getCurrentUserStory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoriesModel currentUser, String text, Color color)?
        createTextStatus,
    TResult Function(StoriesModel currentUser, File imageFile)?
        createPaintStatus,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption)?
        createImageStatus,
    TResult Function(List<String> caption)? addImageCaption,
    TResult Function()? completeScreenshot,
    TResult Function(StoriesModel currentUser,
            List<ImageWithCaptionModel> imageWithCaption, double duration)?
        createGifStatus,
    TResult Function(StoriesModel currentuser, String text, String path,
            double duration)?
        createVideoStatus,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser)?
        storySeenBy,
    TResult Function(StoriesModel currentUser, int index, KahoChatUser myUser,
            String reaction)?
        reactOnStory,
    TResult Function(StoriesModel stories)? createStories,
    TResult Function()? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (getCurrentUserStory != null) {
      return getCurrentUserStory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTextStatus value) createTextStatus,
    required TResult Function(_CreatePaintStatus value) createPaintStatus,
    required TResult Function(_CreateImageStatus value) createImageStatus,
    required TResult Function(_AddImageCaption value) addImageCaption,
    required TResult Function(_CompleteScreenshot value) completeScreenshot,
    required TResult Function(_CreateGifStatus value) createGifStatus,
    required TResult Function(_CreateVideoStatus value) createVideoStatus,
    required TResult Function(_StorySeenBy value) storySeenBy,
    required TResult Function(_StoryReactedBy value) reactOnStory,
    required TResult Function(_CreateStories value) createStories,
    required TResult Function(_GetCurrentUserStory value) getCurrentUserStory,
  }) {
    return getCurrentUserStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
  }) {
    return getCurrentUserStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTextStatus value)? createTextStatus,
    TResult Function(_CreatePaintStatus value)? createPaintStatus,
    TResult Function(_CreateImageStatus value)? createImageStatus,
    TResult Function(_AddImageCaption value)? addImageCaption,
    TResult Function(_CompleteScreenshot value)? completeScreenshot,
    TResult Function(_CreateGifStatus value)? createGifStatus,
    TResult Function(_CreateVideoStatus value)? createVideoStatus,
    TResult Function(_StorySeenBy value)? storySeenBy,
    TResult Function(_StoryReactedBy value)? reactOnStory,
    TResult Function(_CreateStories value)? createStories,
    TResult Function(_GetCurrentUserStory value)? getCurrentUserStory,
    required TResult orElse(),
  }) {
    if (getCurrentUserStory != null) {
      return getCurrentUserStory(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUserStory implements StoriesEvent {
  const factory _GetCurrentUserStory() = _$_GetCurrentUserStory;
}

/// @nodoc
class _$StoriesStateTearOff {
  const _$StoriesStateTearOff();

  _StoriesState call(
      {required Option<Either<StoriesFailure, Unit>>
          createStoryFailureOrSuccessOption,
      required ImageWithCaptionModel imageWithCaption,
      required StoriesModel myStories,
      required double uploadProgress,
      required List<String> addedImageCaption,
      required bool addScreenshotImage}) {
    return _StoriesState(
      createStoryFailureOrSuccessOption: createStoryFailureOrSuccessOption,
      imageWithCaption: imageWithCaption,
      myStories: myStories,
      uploadProgress: uploadProgress,
      addedImageCaption: addedImageCaption,
      addScreenshotImage: addScreenshotImage,
    );
  }
}

/// @nodoc
const $StoriesState = _$StoriesStateTearOff();

/// @nodoc
mixin _$StoriesState {
  Option<Either<StoriesFailure, Unit>> get createStoryFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  ImageWithCaptionModel get imageWithCaption =>
      throw _privateConstructorUsedError;
  StoriesModel get myStories => throw _privateConstructorUsedError;
  double get uploadProgress => throw _privateConstructorUsedError;
  List<String> get addedImageCaption => throw _privateConstructorUsedError;
  bool get addScreenshotImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoriesStateCopyWith<StoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<StoriesFailure, Unit>> createStoryFailureOrSuccessOption,
      ImageWithCaptionModel imageWithCaption,
      StoriesModel myStories,
      double uploadProgress,
      List<String> addedImageCaption,
      bool addScreenshotImage});
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res> implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  final StoriesState _value;
  // ignore: unused_field
  final $Res Function(StoriesState) _then;

  @override
  $Res call({
    Object? createStoryFailureOrSuccessOption = freezed,
    Object? imageWithCaption = freezed,
    Object? myStories = freezed,
    Object? uploadProgress = freezed,
    Object? addedImageCaption = freezed,
    Object? addScreenshotImage = freezed,
  }) {
    return _then(_value.copyWith(
      createStoryFailureOrSuccessOption: createStoryFailureOrSuccessOption ==
              freezed
          ? _value.createStoryFailureOrSuccessOption
          : createStoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<StoriesFailure, Unit>>,
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
      myStories: myStories == freezed
          ? _value.myStories
          : myStories // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      uploadProgress: uploadProgress == freezed
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as double,
      addedImageCaption: addedImageCaption == freezed
          ? _value.addedImageCaption
          : addedImageCaption // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addScreenshotImage: addScreenshotImage == freezed
          ? _value.addScreenshotImage
          : addScreenshotImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$StoriesStateCopyWith<$Res>
    implements $StoriesStateCopyWith<$Res> {
  factory _$StoriesStateCopyWith(
          _StoriesState value, $Res Function(_StoriesState) then) =
      __$StoriesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<StoriesFailure, Unit>> createStoryFailureOrSuccessOption,
      ImageWithCaptionModel imageWithCaption,
      StoriesModel myStories,
      double uploadProgress,
      List<String> addedImageCaption,
      bool addScreenshotImage});
}

/// @nodoc
class __$StoriesStateCopyWithImpl<$Res> extends _$StoriesStateCopyWithImpl<$Res>
    implements _$StoriesStateCopyWith<$Res> {
  __$StoriesStateCopyWithImpl(
      _StoriesState _value, $Res Function(_StoriesState) _then)
      : super(_value, (v) => _then(v as _StoriesState));

  @override
  _StoriesState get _value => super._value as _StoriesState;

  @override
  $Res call({
    Object? createStoryFailureOrSuccessOption = freezed,
    Object? imageWithCaption = freezed,
    Object? myStories = freezed,
    Object? uploadProgress = freezed,
    Object? addedImageCaption = freezed,
    Object? addScreenshotImage = freezed,
  }) {
    return _then(_StoriesState(
      createStoryFailureOrSuccessOption: createStoryFailureOrSuccessOption ==
              freezed
          ? _value.createStoryFailureOrSuccessOption
          : createStoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<StoriesFailure, Unit>>,
      imageWithCaption: imageWithCaption == freezed
          ? _value.imageWithCaption
          : imageWithCaption // ignore: cast_nullable_to_non_nullable
              as ImageWithCaptionModel,
      myStories: myStories == freezed
          ? _value.myStories
          : myStories // ignore: cast_nullable_to_non_nullable
              as StoriesModel,
      uploadProgress: uploadProgress == freezed
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as double,
      addedImageCaption: addedImageCaption == freezed
          ? _value.addedImageCaption
          : addedImageCaption // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addScreenshotImage: addScreenshotImage == freezed
          ? _value.addScreenshotImage
          : addScreenshotImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StoriesState implements _StoriesState {
  _$_StoriesState(
      {required this.createStoryFailureOrSuccessOption,
      required this.imageWithCaption,
      required this.myStories,
      required this.uploadProgress,
      required this.addedImageCaption,
      required this.addScreenshotImage});

  @override
  final Option<Either<StoriesFailure, Unit>> createStoryFailureOrSuccessOption;
  @override
  final ImageWithCaptionModel imageWithCaption;
  @override
  final StoriesModel myStories;
  @override
  final double uploadProgress;
  @override
  final List<String> addedImageCaption;
  @override
  final bool addScreenshotImage;

  @override
  String toString() {
    return 'StoriesState(createStoryFailureOrSuccessOption: $createStoryFailureOrSuccessOption, imageWithCaption: $imageWithCaption, myStories: $myStories, uploadProgress: $uploadProgress, addedImageCaption: $addedImageCaption, addScreenshotImage: $addScreenshotImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoriesState &&
            const DeepCollectionEquality().equals(
                other.createStoryFailureOrSuccessOption,
                createStoryFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.imageWithCaption, imageWithCaption) &&
            const DeepCollectionEquality().equals(other.myStories, myStories) &&
            const DeepCollectionEquality()
                .equals(other.uploadProgress, uploadProgress) &&
            const DeepCollectionEquality()
                .equals(other.addedImageCaption, addedImageCaption) &&
            const DeepCollectionEquality()
                .equals(other.addScreenshotImage, addScreenshotImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createStoryFailureOrSuccessOption),
      const DeepCollectionEquality().hash(imageWithCaption),
      const DeepCollectionEquality().hash(myStories),
      const DeepCollectionEquality().hash(uploadProgress),
      const DeepCollectionEquality().hash(addedImageCaption),
      const DeepCollectionEquality().hash(addScreenshotImage));

  @JsonKey(ignore: true)
  @override
  _$StoriesStateCopyWith<_StoriesState> get copyWith =>
      __$StoriesStateCopyWithImpl<_StoriesState>(this, _$identity);
}

abstract class _StoriesState implements StoriesState {
  factory _StoriesState(
      {required Option<Either<StoriesFailure, Unit>>
          createStoryFailureOrSuccessOption,
      required ImageWithCaptionModel imageWithCaption,
      required StoriesModel myStories,
      required double uploadProgress,
      required List<String> addedImageCaption,
      required bool addScreenshotImage}) = _$_StoriesState;

  @override
  Option<Either<StoriesFailure, Unit>> get createStoryFailureOrSuccessOption;
  @override
  ImageWithCaptionModel get imageWithCaption;
  @override
  StoriesModel get myStories;
  @override
  double get uploadProgress;
  @override
  List<String> get addedImageCaption;
  @override
  bool get addScreenshotImage;
  @override
  @JsonKey(ignore: true)
  _$StoriesStateCopyWith<_StoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
