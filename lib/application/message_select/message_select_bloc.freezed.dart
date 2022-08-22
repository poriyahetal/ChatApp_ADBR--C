// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_select_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageSelectEventTearOff {
  const _$MessageSelectEventTearOff();

  EnableSelectionBar enableSelectionBar({required bool isSelectionBar}) {
    return EnableSelectionBar(
      isSelectionBar: isSelectionBar,
    );
  }

  EnableReplay enableReplay({required bool isReplying}) {
    return EnableReplay(
      isReplying: isReplying,
    );
  }

  ChangeSelection changeSelection(
      {required Map<int, MessageSelectModel> chat}) {
    return ChangeSelection(
      chat: chat,
    );
  }

  ReplayMessage replayMessage({required MessageSelectModel message}) {
    return ReplayMessage(
      message: message,
    );
  }

  RemoveSelection removeSelection({required int index}) {
    return RemoveSelection(
      index: index,
    );
  }

  ChangeSelectionId changeSelectionId({required Map<int, String> ids}) {
    return ChangeSelectionId(
      ids: ids,
    );
  }

  DisableSelection disableSelection({required bool enable}) {
    return DisableSelection(
      enable: enable,
    );
  }

  HideSelectionBar hideSelectionBar({required bool isSelectionBar}) {
    return HideSelectionBar(
      isSelectionBar: isSelectionBar,
    );
  }

  EnableSearchBar enableSearchBar({required bool isSearch}) {
    return EnableSearchBar(
      isSearch: isSearch,
    );
  }

  ChangeSearchTextVal changeSearchTextVal({required String searchText}) {
    return ChangeSearchTextVal(
      searchText: searchText,
    );
  }

  EditSelectedMessage editSelectedMessage({required bool isEditing}) {
    return EditSelectedMessage(
      isEditing: isEditing,
    );
  }
}

/// @nodoc
const $MessageSelectEvent = _$MessageSelectEventTearOff();

/// @nodoc
mixin _$MessageSelectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSelectEventCopyWith<$Res> {
  factory $MessageSelectEventCopyWith(
          MessageSelectEvent value, $Res Function(MessageSelectEvent) then) =
      _$MessageSelectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageSelectEventCopyWithImpl<$Res>
    implements $MessageSelectEventCopyWith<$Res> {
  _$MessageSelectEventCopyWithImpl(this._value, this._then);

  final MessageSelectEvent _value;
  // ignore: unused_field
  final $Res Function(MessageSelectEvent) _then;
}

/// @nodoc
abstract class $EnableSelectionBarCopyWith<$Res> {
  factory $EnableSelectionBarCopyWith(
          EnableSelectionBar value, $Res Function(EnableSelectionBar) then) =
      _$EnableSelectionBarCopyWithImpl<$Res>;
  $Res call({bool isSelectionBar});
}

/// @nodoc
class _$EnableSelectionBarCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $EnableSelectionBarCopyWith<$Res> {
  _$EnableSelectionBarCopyWithImpl(
      EnableSelectionBar _value, $Res Function(EnableSelectionBar) _then)
      : super(_value, (v) => _then(v as EnableSelectionBar));

  @override
  EnableSelectionBar get _value => super._value as EnableSelectionBar;

  @override
  $Res call({
    Object? isSelectionBar = freezed,
  }) {
    return _then(EnableSelectionBar(
      isSelectionBar: isSelectionBar == freezed
          ? _value.isSelectionBar
          : isSelectionBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnableSelectionBar implements EnableSelectionBar {
  _$EnableSelectionBar({required this.isSelectionBar});

  @override
  final bool isSelectionBar;

  @override
  String toString() {
    return 'MessageSelectEvent.enableSelectionBar(isSelectionBar: $isSelectionBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnableSelectionBar &&
            const DeepCollectionEquality()
                .equals(other.isSelectionBar, isSelectionBar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isSelectionBar));

  @JsonKey(ignore: true)
  @override
  $EnableSelectionBarCopyWith<EnableSelectionBar> get copyWith =>
      _$EnableSelectionBarCopyWithImpl<EnableSelectionBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return enableSelectionBar(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return enableSelectionBar?.call(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (enableSelectionBar != null) {
      return enableSelectionBar(isSelectionBar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return enableSelectionBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return enableSelectionBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (enableSelectionBar != null) {
      return enableSelectionBar(this);
    }
    return orElse();
  }
}

abstract class EnableSelectionBar implements MessageSelectEvent {
  factory EnableSelectionBar({required bool isSelectionBar}) =
      _$EnableSelectionBar;

  bool get isSelectionBar;
  @JsonKey(ignore: true)
  $EnableSelectionBarCopyWith<EnableSelectionBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnableReplayCopyWith<$Res> {
  factory $EnableReplayCopyWith(
          EnableReplay value, $Res Function(EnableReplay) then) =
      _$EnableReplayCopyWithImpl<$Res>;
  $Res call({bool isReplying});
}

/// @nodoc
class _$EnableReplayCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $EnableReplayCopyWith<$Res> {
  _$EnableReplayCopyWithImpl(
      EnableReplay _value, $Res Function(EnableReplay) _then)
      : super(_value, (v) => _then(v as EnableReplay));

  @override
  EnableReplay get _value => super._value as EnableReplay;

  @override
  $Res call({
    Object? isReplying = freezed,
  }) {
    return _then(EnableReplay(
      isReplying: isReplying == freezed
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnableReplay implements EnableReplay {
  _$EnableReplay({required this.isReplying});

  @override
  final bool isReplying;

  @override
  String toString() {
    return 'MessageSelectEvent.enableReplay(isReplying: $isReplying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnableReplay &&
            const DeepCollectionEquality()
                .equals(other.isReplying, isReplying));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isReplying));

  @JsonKey(ignore: true)
  @override
  $EnableReplayCopyWith<EnableReplay> get copyWith =>
      _$EnableReplayCopyWithImpl<EnableReplay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return enableReplay(isReplying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return enableReplay?.call(isReplying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (enableReplay != null) {
      return enableReplay(isReplying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return enableReplay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return enableReplay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (enableReplay != null) {
      return enableReplay(this);
    }
    return orElse();
  }
}

abstract class EnableReplay implements MessageSelectEvent {
  factory EnableReplay({required bool isReplying}) = _$EnableReplay;

  bool get isReplying;
  @JsonKey(ignore: true)
  $EnableReplayCopyWith<EnableReplay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSelectionCopyWith<$Res> {
  factory $ChangeSelectionCopyWith(
          ChangeSelection value, $Res Function(ChangeSelection) then) =
      _$ChangeSelectionCopyWithImpl<$Res>;
  $Res call({Map<int, MessageSelectModel> chat});
}

/// @nodoc
class _$ChangeSelectionCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $ChangeSelectionCopyWith<$Res> {
  _$ChangeSelectionCopyWithImpl(
      ChangeSelection _value, $Res Function(ChangeSelection) _then)
      : super(_value, (v) => _then(v as ChangeSelection));

  @override
  ChangeSelection get _value => super._value as ChangeSelection;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(ChangeSelection(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
    ));
  }
}

/// @nodoc

class _$ChangeSelection implements ChangeSelection {
  _$ChangeSelection({required this.chat});

  @override
  final Map<int, MessageSelectModel> chat;

  @override
  String toString() {
    return 'MessageSelectEvent.changeSelection(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeSelection &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  $ChangeSelectionCopyWith<ChangeSelection> get copyWith =>
      _$ChangeSelectionCopyWithImpl<ChangeSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return changeSelection(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return changeSelection?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return changeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return changeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(this);
    }
    return orElse();
  }
}

abstract class ChangeSelection implements MessageSelectEvent {
  factory ChangeSelection({required Map<int, MessageSelectModel> chat}) =
      _$ChangeSelection;

  Map<int, MessageSelectModel> get chat;
  @JsonKey(ignore: true)
  $ChangeSelectionCopyWith<ChangeSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplayMessageCopyWith<$Res> {
  factory $ReplayMessageCopyWith(
          ReplayMessage value, $Res Function(ReplayMessage) then) =
      _$ReplayMessageCopyWithImpl<$Res>;
  $Res call({MessageSelectModel message});
}

/// @nodoc
class _$ReplayMessageCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $ReplayMessageCopyWith<$Res> {
  _$ReplayMessageCopyWithImpl(
      ReplayMessage _value, $Res Function(ReplayMessage) _then)
      : super(_value, (v) => _then(v as ReplayMessage));

  @override
  ReplayMessage get _value => super._value as ReplayMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ReplayMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageSelectModel,
    ));
  }
}

/// @nodoc

class _$ReplayMessage implements ReplayMessage {
  _$ReplayMessage({required this.message});

  @override
  final MessageSelectModel message;

  @override
  String toString() {
    return 'MessageSelectEvent.replayMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReplayMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ReplayMessageCopyWith<ReplayMessage> get copyWith =>
      _$ReplayMessageCopyWithImpl<ReplayMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return replayMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return replayMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (replayMessage != null) {
      return replayMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return replayMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return replayMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (replayMessage != null) {
      return replayMessage(this);
    }
    return orElse();
  }
}

abstract class ReplayMessage implements MessageSelectEvent {
  factory ReplayMessage({required MessageSelectModel message}) =
      _$ReplayMessage;

  MessageSelectModel get message;
  @JsonKey(ignore: true)
  $ReplayMessageCopyWith<ReplayMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSelectionCopyWith<$Res> {
  factory $RemoveSelectionCopyWith(
          RemoveSelection value, $Res Function(RemoveSelection) then) =
      _$RemoveSelectionCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$RemoveSelectionCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $RemoveSelectionCopyWith<$Res> {
  _$RemoveSelectionCopyWithImpl(
      RemoveSelection _value, $Res Function(RemoveSelection) _then)
      : super(_value, (v) => _then(v as RemoveSelection));

  @override
  RemoveSelection get _value => super._value as RemoveSelection;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(RemoveSelection(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveSelection implements RemoveSelection {
  _$RemoveSelection({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MessageSelectEvent.removeSelection(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveSelection &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $RemoveSelectionCopyWith<RemoveSelection> get copyWith =>
      _$RemoveSelectionCopyWithImpl<RemoveSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return removeSelection(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return removeSelection?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (removeSelection != null) {
      return removeSelection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return removeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return removeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (removeSelection != null) {
      return removeSelection(this);
    }
    return orElse();
  }
}

abstract class RemoveSelection implements MessageSelectEvent {
  factory RemoveSelection({required int index}) = _$RemoveSelection;

  int get index;
  @JsonKey(ignore: true)
  $RemoveSelectionCopyWith<RemoveSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSelectionIdCopyWith<$Res> {
  factory $ChangeSelectionIdCopyWith(
          ChangeSelectionId value, $Res Function(ChangeSelectionId) then) =
      _$ChangeSelectionIdCopyWithImpl<$Res>;
  $Res call({Map<int, String> ids});
}

/// @nodoc
class _$ChangeSelectionIdCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $ChangeSelectionIdCopyWith<$Res> {
  _$ChangeSelectionIdCopyWithImpl(
      ChangeSelectionId _value, $Res Function(ChangeSelectionId) _then)
      : super(_value, (v) => _then(v as ChangeSelectionId));

  @override
  ChangeSelectionId get _value => super._value as ChangeSelectionId;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(ChangeSelectionId(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc

class _$ChangeSelectionId implements ChangeSelectionId {
  _$ChangeSelectionId({required this.ids});

  @override
  final Map<int, String> ids;

  @override
  String toString() {
    return 'MessageSelectEvent.changeSelectionId(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeSelectionId &&
            const DeepCollectionEquality().equals(other.ids, ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ids));

  @JsonKey(ignore: true)
  @override
  $ChangeSelectionIdCopyWith<ChangeSelectionId> get copyWith =>
      _$ChangeSelectionIdCopyWithImpl<ChangeSelectionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return changeSelectionId(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return changeSelectionId?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSelectionId != null) {
      return changeSelectionId(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return changeSelectionId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return changeSelectionId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSelectionId != null) {
      return changeSelectionId(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectionId implements MessageSelectEvent {
  factory ChangeSelectionId({required Map<int, String> ids}) =
      _$ChangeSelectionId;

  Map<int, String> get ids;
  @JsonKey(ignore: true)
  $ChangeSelectionIdCopyWith<ChangeSelectionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisableSelectionCopyWith<$Res> {
  factory $DisableSelectionCopyWith(
          DisableSelection value, $Res Function(DisableSelection) then) =
      _$DisableSelectionCopyWithImpl<$Res>;
  $Res call({bool enable});
}

/// @nodoc
class _$DisableSelectionCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $DisableSelectionCopyWith<$Res> {
  _$DisableSelectionCopyWithImpl(
      DisableSelection _value, $Res Function(DisableSelection) _then)
      : super(_value, (v) => _then(v as DisableSelection));

  @override
  DisableSelection get _value => super._value as DisableSelection;

  @override
  $Res call({
    Object? enable = freezed,
  }) {
    return _then(DisableSelection(
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DisableSelection implements DisableSelection {
  _$DisableSelection({required this.enable});

  @override
  final bool enable;

  @override
  String toString() {
    return 'MessageSelectEvent.disableSelection(enable: $enable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisableSelection &&
            const DeepCollectionEquality().equals(other.enable, enable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(enable));

  @JsonKey(ignore: true)
  @override
  $DisableSelectionCopyWith<DisableSelection> get copyWith =>
      _$DisableSelectionCopyWithImpl<DisableSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return disableSelection(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return disableSelection?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (disableSelection != null) {
      return disableSelection(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return disableSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return disableSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (disableSelection != null) {
      return disableSelection(this);
    }
    return orElse();
  }
}

abstract class DisableSelection implements MessageSelectEvent {
  factory DisableSelection({required bool enable}) = _$DisableSelection;

  bool get enable;
  @JsonKey(ignore: true)
  $DisableSelectionCopyWith<DisableSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HideSelectionBarCopyWith<$Res> {
  factory $HideSelectionBarCopyWith(
          HideSelectionBar value, $Res Function(HideSelectionBar) then) =
      _$HideSelectionBarCopyWithImpl<$Res>;
  $Res call({bool isSelectionBar});
}

/// @nodoc
class _$HideSelectionBarCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $HideSelectionBarCopyWith<$Res> {
  _$HideSelectionBarCopyWithImpl(
      HideSelectionBar _value, $Res Function(HideSelectionBar) _then)
      : super(_value, (v) => _then(v as HideSelectionBar));

  @override
  HideSelectionBar get _value => super._value as HideSelectionBar;

  @override
  $Res call({
    Object? isSelectionBar = freezed,
  }) {
    return _then(HideSelectionBar(
      isSelectionBar: isSelectionBar == freezed
          ? _value.isSelectionBar
          : isSelectionBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HideSelectionBar implements HideSelectionBar {
  _$HideSelectionBar({required this.isSelectionBar});

  @override
  final bool isSelectionBar;

  @override
  String toString() {
    return 'MessageSelectEvent.hideSelectionBar(isSelectionBar: $isSelectionBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HideSelectionBar &&
            const DeepCollectionEquality()
                .equals(other.isSelectionBar, isSelectionBar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isSelectionBar));

  @JsonKey(ignore: true)
  @override
  $HideSelectionBarCopyWith<HideSelectionBar> get copyWith =>
      _$HideSelectionBarCopyWithImpl<HideSelectionBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return hideSelectionBar(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return hideSelectionBar?.call(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (hideSelectionBar != null) {
      return hideSelectionBar(isSelectionBar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return hideSelectionBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return hideSelectionBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (hideSelectionBar != null) {
      return hideSelectionBar(this);
    }
    return orElse();
  }
}

abstract class HideSelectionBar implements MessageSelectEvent {
  factory HideSelectionBar({required bool isSelectionBar}) = _$HideSelectionBar;

  bool get isSelectionBar;
  @JsonKey(ignore: true)
  $HideSelectionBarCopyWith<HideSelectionBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnableSearchBarCopyWith<$Res> {
  factory $EnableSearchBarCopyWith(
          EnableSearchBar value, $Res Function(EnableSearchBar) then) =
      _$EnableSearchBarCopyWithImpl<$Res>;
  $Res call({bool isSearch});
}

/// @nodoc
class _$EnableSearchBarCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $EnableSearchBarCopyWith<$Res> {
  _$EnableSearchBarCopyWithImpl(
      EnableSearchBar _value, $Res Function(EnableSearchBar) _then)
      : super(_value, (v) => _then(v as EnableSearchBar));

  @override
  EnableSearchBar get _value => super._value as EnableSearchBar;

  @override
  $Res call({
    Object? isSearch = freezed,
  }) {
    return _then(EnableSearchBar(
      isSearch: isSearch == freezed
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnableSearchBar implements EnableSearchBar {
  _$EnableSearchBar({required this.isSearch});

  @override
  final bool isSearch;

  @override
  String toString() {
    return 'MessageSelectEvent.enableSearchBar(isSearch: $isSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnableSearchBar &&
            const DeepCollectionEquality().equals(other.isSearch, isSearch));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isSearch));

  @JsonKey(ignore: true)
  @override
  $EnableSearchBarCopyWith<EnableSearchBar> get copyWith =>
      _$EnableSearchBarCopyWithImpl<EnableSearchBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return enableSearchBar(isSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return enableSearchBar?.call(isSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (enableSearchBar != null) {
      return enableSearchBar(isSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return enableSearchBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return enableSearchBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (enableSearchBar != null) {
      return enableSearchBar(this);
    }
    return orElse();
  }
}

abstract class EnableSearchBar implements MessageSelectEvent {
  factory EnableSearchBar({required bool isSearch}) = _$EnableSearchBar;

  bool get isSearch;
  @JsonKey(ignore: true)
  $EnableSearchBarCopyWith<EnableSearchBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSearchTextValCopyWith<$Res> {
  factory $ChangeSearchTextValCopyWith(
          ChangeSearchTextVal value, $Res Function(ChangeSearchTextVal) then) =
      _$ChangeSearchTextValCopyWithImpl<$Res>;
  $Res call({String searchText});
}

/// @nodoc
class _$ChangeSearchTextValCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $ChangeSearchTextValCopyWith<$Res> {
  _$ChangeSearchTextValCopyWithImpl(
      ChangeSearchTextVal _value, $Res Function(ChangeSearchTextVal) _then)
      : super(_value, (v) => _then(v as ChangeSearchTextVal));

  @override
  ChangeSearchTextVal get _value => super._value as ChangeSearchTextVal;

  @override
  $Res call({
    Object? searchText = freezed,
  }) {
    return _then(ChangeSearchTextVal(
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeSearchTextVal implements ChangeSearchTextVal {
  _$ChangeSearchTextVal({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'MessageSelectEvent.changeSearchTextVal(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeSearchTextVal &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchText));

  @JsonKey(ignore: true)
  @override
  $ChangeSearchTextValCopyWith<ChangeSearchTextVal> get copyWith =>
      _$ChangeSearchTextValCopyWithImpl<ChangeSearchTextVal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return changeSearchTextVal(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return changeSearchTextVal?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSearchTextVal != null) {
      return changeSearchTextVal(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return changeSearchTextVal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return changeSearchTextVal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (changeSearchTextVal != null) {
      return changeSearchTextVal(this);
    }
    return orElse();
  }
}

abstract class ChangeSearchTextVal implements MessageSelectEvent {
  factory ChangeSearchTextVal({required String searchText}) =
      _$ChangeSearchTextVal;

  String get searchText;
  @JsonKey(ignore: true)
  $ChangeSearchTextValCopyWith<ChangeSearchTextVal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSelectedMessageCopyWith<$Res> {
  factory $EditSelectedMessageCopyWith(
          EditSelectedMessage value, $Res Function(EditSelectedMessage) then) =
      _$EditSelectedMessageCopyWithImpl<$Res>;
  $Res call({bool isEditing});
}

/// @nodoc
class _$EditSelectedMessageCopyWithImpl<$Res>
    extends _$MessageSelectEventCopyWithImpl<$Res>
    implements $EditSelectedMessageCopyWith<$Res> {
  _$EditSelectedMessageCopyWithImpl(
      EditSelectedMessage _value, $Res Function(EditSelectedMessage) _then)
      : super(_value, (v) => _then(v as EditSelectedMessage));

  @override
  EditSelectedMessage get _value => super._value as EditSelectedMessage;

  @override
  $Res call({
    Object? isEditing = freezed,
  }) {
    return _then(EditSelectedMessage(
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditSelectedMessage implements EditSelectedMessage {
  _$EditSelectedMessage({required this.isEditing});

  @override
  final bool isEditing;

  @override
  String toString() {
    return 'MessageSelectEvent.editSelectedMessage(isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditSelectedMessage &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEditing));

  @JsonKey(ignore: true)
  @override
  $EditSelectedMessageCopyWith<EditSelectedMessage> get copyWith =>
      _$EditSelectedMessageCopyWithImpl<EditSelectedMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool isReplying) enableReplay,
    required TResult Function(Map<int, MessageSelectModel> chat)
        changeSelection,
    required TResult Function(MessageSelectModel message) replayMessage,
    required TResult Function(int index) removeSelection,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool isSelectionBar) hideSelectionBar,
    required TResult Function(bool isSearch) enableSearchBar,
    required TResult Function(String searchText) changeSearchTextVal,
    required TResult Function(bool isEditing) editSelectedMessage,
  }) {
    return editSelectedMessage(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
  }) {
    return editSelectedMessage?.call(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool isReplying)? enableReplay,
    TResult Function(Map<int, MessageSelectModel> chat)? changeSelection,
    TResult Function(MessageSelectModel message)? replayMessage,
    TResult Function(int index)? removeSelection,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool isSelectionBar)? hideSelectionBar,
    TResult Function(bool isSearch)? enableSearchBar,
    TResult Function(String searchText)? changeSearchTextVal,
    TResult Function(bool isEditing)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (editSelectedMessage != null) {
      return editSelectedMessage(isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(EnableReplay value) enableReplay,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(ReplayMessage value) replayMessage,
    required TResult Function(RemoveSelection value) removeSelection,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(HideSelectionBar value) hideSelectionBar,
    required TResult Function(EnableSearchBar value) enableSearchBar,
    required TResult Function(ChangeSearchTextVal value) changeSearchTextVal,
    required TResult Function(EditSelectedMessage value) editSelectedMessage,
  }) {
    return editSelectedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
  }) {
    return editSelectedMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(EnableReplay value)? enableReplay,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(ReplayMessage value)? replayMessage,
    TResult Function(RemoveSelection value)? removeSelection,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(HideSelectionBar value)? hideSelectionBar,
    TResult Function(EnableSearchBar value)? enableSearchBar,
    TResult Function(ChangeSearchTextVal value)? changeSearchTextVal,
    TResult Function(EditSelectedMessage value)? editSelectedMessage,
    required TResult orElse(),
  }) {
    if (editSelectedMessage != null) {
      return editSelectedMessage(this);
    }
    return orElse();
  }
}

abstract class EditSelectedMessage implements MessageSelectEvent {
  factory EditSelectedMessage({required bool isEditing}) =
      _$EditSelectedMessage;

  bool get isEditing;
  @JsonKey(ignore: true)
  $EditSelectedMessageCopyWith<EditSelectedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MessageSelectStateTearOff {
  const _$MessageSelectStateTearOff();

  _MessageSelect call(
      {required bool isAppSelectionbarEnable,
      required Map<int, MessageSelectModel> selectedIndexList,
      required Map<int, MessageSelectModel> selectedFilesIndexList,
      required Map<int, MessageSelectModel> selectedAudiosIndexList,
      required Map<int, MessageSelectModel> selectedLinksIndexList,
      required Map<int, String> selectedIDList,
      required bool selectionMode,
      required bool isSearching,
      required bool isReplying,
      required bool isEditingMessage,
      required String searchTextVal,
      required MessageSelectModel? replayMessageSelect}) {
    return _MessageSelect(
      isAppSelectionbarEnable: isAppSelectionbarEnable,
      selectedIndexList: selectedIndexList,
      selectedFilesIndexList: selectedFilesIndexList,
      selectedAudiosIndexList: selectedAudiosIndexList,
      selectedLinksIndexList: selectedLinksIndexList,
      selectedIDList: selectedIDList,
      selectionMode: selectionMode,
      isSearching: isSearching,
      isReplying: isReplying,
      isEditingMessage: isEditingMessage,
      searchTextVal: searchTextVal,
      replayMessageSelect: replayMessageSelect,
    );
  }
}

/// @nodoc
const $MessageSelectState = _$MessageSelectStateTearOff();

/// @nodoc
mixin _$MessageSelectState {
  bool get isAppSelectionbarEnable => throw _privateConstructorUsedError;
  Map<int, MessageSelectModel> get selectedIndexList =>
      throw _privateConstructorUsedError;
  Map<int, MessageSelectModel> get selectedFilesIndexList =>
      throw _privateConstructorUsedError;
  Map<int, MessageSelectModel> get selectedAudiosIndexList =>
      throw _privateConstructorUsedError;
  Map<int, MessageSelectModel> get selectedLinksIndexList =>
      throw _privateConstructorUsedError;
  Map<int, String> get selectedIDList => throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get isReplying => throw _privateConstructorUsedError;
  bool get isEditingMessage => throw _privateConstructorUsedError;
  String get searchTextVal => throw _privateConstructorUsedError;
  MessageSelectModel? get replayMessageSelect =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageSelectStateCopyWith<MessageSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSelectStateCopyWith<$Res> {
  factory $MessageSelectStateCopyWith(
          MessageSelectState value, $Res Function(MessageSelectState) then) =
      _$MessageSelectStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAppSelectionbarEnable,
      Map<int, MessageSelectModel> selectedIndexList,
      Map<int, MessageSelectModel> selectedFilesIndexList,
      Map<int, MessageSelectModel> selectedAudiosIndexList,
      Map<int, MessageSelectModel> selectedLinksIndexList,
      Map<int, String> selectedIDList,
      bool selectionMode,
      bool isSearching,
      bool isReplying,
      bool isEditingMessage,
      String searchTextVal,
      MessageSelectModel? replayMessageSelect});
}

/// @nodoc
class _$MessageSelectStateCopyWithImpl<$Res>
    implements $MessageSelectStateCopyWith<$Res> {
  _$MessageSelectStateCopyWithImpl(this._value, this._then);

  final MessageSelectState _value;
  // ignore: unused_field
  final $Res Function(MessageSelectState) _then;

  @override
  $Res call({
    Object? isAppSelectionbarEnable = freezed,
    Object? selectedIndexList = freezed,
    Object? selectedFilesIndexList = freezed,
    Object? selectedAudiosIndexList = freezed,
    Object? selectedLinksIndexList = freezed,
    Object? selectedIDList = freezed,
    Object? selectionMode = freezed,
    Object? isSearching = freezed,
    Object? isReplying = freezed,
    Object? isEditingMessage = freezed,
    Object? searchTextVal = freezed,
    Object? replayMessageSelect = freezed,
  }) {
    return _then(_value.copyWith(
      isAppSelectionbarEnable: isAppSelectionbarEnable == freezed
          ? _value.isAppSelectionbarEnable
          : isAppSelectionbarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndexList: selectedIndexList == freezed
          ? _value.selectedIndexList
          : selectedIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedFilesIndexList: selectedFilesIndexList == freezed
          ? _value.selectedFilesIndexList
          : selectedFilesIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedAudiosIndexList: selectedAudiosIndexList == freezed
          ? _value.selectedAudiosIndexList
          : selectedAudiosIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedLinksIndexList: selectedLinksIndexList == freezed
          ? _value.selectedLinksIndexList
          : selectedLinksIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedIDList: selectedIDList == freezed
          ? _value.selectedIDList
          : selectedIDList // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isReplying: isReplying == freezed
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditingMessage: isEditingMessage == freezed
          ? _value.isEditingMessage
          : isEditingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      searchTextVal: searchTextVal == freezed
          ? _value.searchTextVal
          : searchTextVal // ignore: cast_nullable_to_non_nullable
              as String,
      replayMessageSelect: replayMessageSelect == freezed
          ? _value.replayMessageSelect
          : replayMessageSelect // ignore: cast_nullable_to_non_nullable
              as MessageSelectModel?,
    ));
  }
}

/// @nodoc
abstract class _$MessageSelectCopyWith<$Res>
    implements $MessageSelectStateCopyWith<$Res> {
  factory _$MessageSelectCopyWith(
          _MessageSelect value, $Res Function(_MessageSelect) then) =
      __$MessageSelectCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAppSelectionbarEnable,
      Map<int, MessageSelectModel> selectedIndexList,
      Map<int, MessageSelectModel> selectedFilesIndexList,
      Map<int, MessageSelectModel> selectedAudiosIndexList,
      Map<int, MessageSelectModel> selectedLinksIndexList,
      Map<int, String> selectedIDList,
      bool selectionMode,
      bool isSearching,
      bool isReplying,
      bool isEditingMessage,
      String searchTextVal,
      MessageSelectModel? replayMessageSelect});
}

/// @nodoc
class __$MessageSelectCopyWithImpl<$Res>
    extends _$MessageSelectStateCopyWithImpl<$Res>
    implements _$MessageSelectCopyWith<$Res> {
  __$MessageSelectCopyWithImpl(
      _MessageSelect _value, $Res Function(_MessageSelect) _then)
      : super(_value, (v) => _then(v as _MessageSelect));

  @override
  _MessageSelect get _value => super._value as _MessageSelect;

  @override
  $Res call({
    Object? isAppSelectionbarEnable = freezed,
    Object? selectedIndexList = freezed,
    Object? selectedFilesIndexList = freezed,
    Object? selectedAudiosIndexList = freezed,
    Object? selectedLinksIndexList = freezed,
    Object? selectedIDList = freezed,
    Object? selectionMode = freezed,
    Object? isSearching = freezed,
    Object? isReplying = freezed,
    Object? isEditingMessage = freezed,
    Object? searchTextVal = freezed,
    Object? replayMessageSelect = freezed,
  }) {
    return _then(_MessageSelect(
      isAppSelectionbarEnable: isAppSelectionbarEnable == freezed
          ? _value.isAppSelectionbarEnable
          : isAppSelectionbarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndexList: selectedIndexList == freezed
          ? _value.selectedIndexList
          : selectedIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedFilesIndexList: selectedFilesIndexList == freezed
          ? _value.selectedFilesIndexList
          : selectedFilesIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedAudiosIndexList: selectedAudiosIndexList == freezed
          ? _value.selectedAudiosIndexList
          : selectedAudiosIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedLinksIndexList: selectedLinksIndexList == freezed
          ? _value.selectedLinksIndexList
          : selectedLinksIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, MessageSelectModel>,
      selectedIDList: selectedIDList == freezed
          ? _value.selectedIDList
          : selectedIDList // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isReplying: isReplying == freezed
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditingMessage: isEditingMessage == freezed
          ? _value.isEditingMessage
          : isEditingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      searchTextVal: searchTextVal == freezed
          ? _value.searchTextVal
          : searchTextVal // ignore: cast_nullable_to_non_nullable
              as String,
      replayMessageSelect: replayMessageSelect == freezed
          ? _value.replayMessageSelect
          : replayMessageSelect // ignore: cast_nullable_to_non_nullable
              as MessageSelectModel?,
    ));
  }
}

/// @nodoc

class _$_MessageSelect implements _MessageSelect {
  _$_MessageSelect(
      {required this.isAppSelectionbarEnable,
      required this.selectedIndexList,
      required this.selectedFilesIndexList,
      required this.selectedAudiosIndexList,
      required this.selectedLinksIndexList,
      required this.selectedIDList,
      required this.selectionMode,
      required this.isSearching,
      required this.isReplying,
      required this.isEditingMessage,
      required this.searchTextVal,
      required this.replayMessageSelect});

  @override
  final bool isAppSelectionbarEnable;
  @override
  final Map<int, MessageSelectModel> selectedIndexList;
  @override
  final Map<int, MessageSelectModel> selectedFilesIndexList;
  @override
  final Map<int, MessageSelectModel> selectedAudiosIndexList;
  @override
  final Map<int, MessageSelectModel> selectedLinksIndexList;
  @override
  final Map<int, String> selectedIDList;
  @override
  final bool selectionMode;
  @override
  final bool isSearching;
  @override
  final bool isReplying;
  @override
  final bool isEditingMessage;
  @override
  final String searchTextVal;
  @override
  final MessageSelectModel? replayMessageSelect;

  @override
  String toString() {
    return 'MessageSelectState(isAppSelectionbarEnable: $isAppSelectionbarEnable, selectedIndexList: $selectedIndexList, selectedFilesIndexList: $selectedFilesIndexList, selectedAudiosIndexList: $selectedAudiosIndexList, selectedLinksIndexList: $selectedLinksIndexList, selectedIDList: $selectedIDList, selectionMode: $selectionMode, isSearching: $isSearching, isReplying: $isReplying, isEditingMessage: $isEditingMessage, searchTextVal: $searchTextVal, replayMessageSelect: $replayMessageSelect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageSelect &&
            const DeepCollectionEquality().equals(
                other.isAppSelectionbarEnable, isAppSelectionbarEnable) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndexList, selectedIndexList) &&
            const DeepCollectionEquality()
                .equals(other.selectedFilesIndexList, selectedFilesIndexList) &&
            const DeepCollectionEquality().equals(
                other.selectedAudiosIndexList, selectedAudiosIndexList) &&
            const DeepCollectionEquality()
                .equals(other.selectedLinksIndexList, selectedLinksIndexList) &&
            const DeepCollectionEquality()
                .equals(other.selectedIDList, selectedIDList) &&
            const DeepCollectionEquality()
                .equals(other.selectionMode, selectionMode) &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching) &&
            const DeepCollectionEquality()
                .equals(other.isReplying, isReplying) &&
            const DeepCollectionEquality()
                .equals(other.isEditingMessage, isEditingMessage) &&
            const DeepCollectionEquality()
                .equals(other.searchTextVal, searchTextVal) &&
            const DeepCollectionEquality()
                .equals(other.replayMessageSelect, replayMessageSelect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAppSelectionbarEnable),
      const DeepCollectionEquality().hash(selectedIndexList),
      const DeepCollectionEquality().hash(selectedFilesIndexList),
      const DeepCollectionEquality().hash(selectedAudiosIndexList),
      const DeepCollectionEquality().hash(selectedLinksIndexList),
      const DeepCollectionEquality().hash(selectedIDList),
      const DeepCollectionEquality().hash(selectionMode),
      const DeepCollectionEquality().hash(isSearching),
      const DeepCollectionEquality().hash(isReplying),
      const DeepCollectionEquality().hash(isEditingMessage),
      const DeepCollectionEquality().hash(searchTextVal),
      const DeepCollectionEquality().hash(replayMessageSelect));

  @JsonKey(ignore: true)
  @override
  _$MessageSelectCopyWith<_MessageSelect> get copyWith =>
      __$MessageSelectCopyWithImpl<_MessageSelect>(this, _$identity);
}

abstract class _MessageSelect implements MessageSelectState {
  factory _MessageSelect(
      {required bool isAppSelectionbarEnable,
      required Map<int, MessageSelectModel> selectedIndexList,
      required Map<int, MessageSelectModel> selectedFilesIndexList,
      required Map<int, MessageSelectModel> selectedAudiosIndexList,
      required Map<int, MessageSelectModel> selectedLinksIndexList,
      required Map<int, String> selectedIDList,
      required bool selectionMode,
      required bool isSearching,
      required bool isReplying,
      required bool isEditingMessage,
      required String searchTextVal,
      required MessageSelectModel? replayMessageSelect}) = _$_MessageSelect;

  @override
  bool get isAppSelectionbarEnable;
  @override
  Map<int, MessageSelectModel> get selectedIndexList;
  @override
  Map<int, MessageSelectModel> get selectedFilesIndexList;
  @override
  Map<int, MessageSelectModel> get selectedAudiosIndexList;
  @override
  Map<int, MessageSelectModel> get selectedLinksIndexList;
  @override
  Map<int, String> get selectedIDList;
  @override
  bool get selectionMode;
  @override
  bool get isSearching;
  @override
  bool get isReplying;
  @override
  bool get isEditingMessage;
  @override
  String get searchTextVal;
  @override
  MessageSelectModel? get replayMessageSelect;
  @override
  @JsonKey(ignore: true)
  _$MessageSelectCopyWith<_MessageSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
