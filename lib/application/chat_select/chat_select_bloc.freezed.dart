// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_select_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatSelectEventTearOff {
  const _$ChatSelectEventTearOff();

  EnableSelectionBar enableSelectionBar({required bool isSelectionBar}) {
    return EnableSelectionBar(
      isSelectionBar: isSelectionBar,
    );
  }

  ChangeSelection changeSelection({required Map<int, ChatModel> chat}) {
    return ChangeSelection(
      chat: chat,
    );
  }

  SelectGroup selectGroup({required Map<int, GroupSelectModel> group}) {
    return SelectGroup(
      group: group,
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

  GroupSelection groupSelection({required bool group_select}) {
    return GroupSelection(
      group_select: group_select,
    );
  }

  ShowFabVal showFabAction({required bool showFabVal}) {
    return ShowFabVal(
      showFabVal: showFabVal,
    );
  }
}

/// @nodoc
const $ChatSelectEvent = _$ChatSelectEventTearOff();

/// @nodoc
mixin _$ChatSelectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSelectEventCopyWith<$Res> {
  factory $ChatSelectEventCopyWith(
          ChatSelectEvent value, $Res Function(ChatSelectEvent) then) =
      _$ChatSelectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatSelectEventCopyWithImpl<$Res>
    implements $ChatSelectEventCopyWith<$Res> {
  _$ChatSelectEventCopyWithImpl(this._value, this._then);

  final ChatSelectEvent _value;
  // ignore: unused_field
  final $Res Function(ChatSelectEvent) _then;
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
    extends _$ChatSelectEventCopyWithImpl<$Res>
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
    return 'ChatSelectEvent.enableSelectionBar(isSelectionBar: $isSelectionBar)';
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
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return enableSelectionBar(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return enableSelectionBar?.call(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
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
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return enableSelectionBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return enableSelectionBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (enableSelectionBar != null) {
      return enableSelectionBar(this);
    }
    return orElse();
  }
}

abstract class EnableSelectionBar implements ChatSelectEvent {
  factory EnableSelectionBar({required bool isSelectionBar}) =
      _$EnableSelectionBar;

  bool get isSelectionBar;
  @JsonKey(ignore: true)
  $EnableSelectionBarCopyWith<EnableSelectionBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSelectionCopyWith<$Res> {
  factory $ChangeSelectionCopyWith(
          ChangeSelection value, $Res Function(ChangeSelection) then) =
      _$ChangeSelectionCopyWithImpl<$Res>;
  $Res call({Map<int, ChatModel> chat});
}

/// @nodoc
class _$ChangeSelectionCopyWithImpl<$Res>
    extends _$ChatSelectEventCopyWithImpl<$Res>
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
              as Map<int, ChatModel>,
    ));
  }
}

/// @nodoc

class _$ChangeSelection implements ChangeSelection {
  _$ChangeSelection({required this.chat});

  @override
  final Map<int, ChatModel> chat;

  @override
  String toString() {
    return 'ChatSelectEvent.changeSelection(chat: $chat)';
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
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return changeSelection(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return changeSelection?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
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
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return changeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return changeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(this);
    }
    return orElse();
  }
}

abstract class ChangeSelection implements ChatSelectEvent {
  factory ChangeSelection({required Map<int, ChatModel> chat}) =
      _$ChangeSelection;

  Map<int, ChatModel> get chat;
  @JsonKey(ignore: true)
  $ChangeSelectionCopyWith<ChangeSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectGroupCopyWith<$Res> {
  factory $SelectGroupCopyWith(
          SelectGroup value, $Res Function(SelectGroup) then) =
      _$SelectGroupCopyWithImpl<$Res>;
  $Res call({Map<int, GroupSelectModel> group});
}

/// @nodoc
class _$SelectGroupCopyWithImpl<$Res>
    extends _$ChatSelectEventCopyWithImpl<$Res>
    implements $SelectGroupCopyWith<$Res> {
  _$SelectGroupCopyWithImpl(
      SelectGroup _value, $Res Function(SelectGroup) _then)
      : super(_value, (v) => _then(v as SelectGroup));

  @override
  SelectGroup get _value => super._value as SelectGroup;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(SelectGroup(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Map<int, GroupSelectModel>,
    ));
  }
}

/// @nodoc

class _$SelectGroup implements SelectGroup {
  _$SelectGroup({required this.group});

  @override
  final Map<int, GroupSelectModel> group;

  @override
  String toString() {
    return 'ChatSelectEvent.selectGroup(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectGroup &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  $SelectGroupCopyWith<SelectGroup> get copyWith =>
      _$SelectGroupCopyWithImpl<SelectGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return selectGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return selectGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
    required TResult orElse(),
  }) {
    if (selectGroup != null) {
      return selectGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return selectGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return selectGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (selectGroup != null) {
      return selectGroup(this);
    }
    return orElse();
  }
}

abstract class SelectGroup implements ChatSelectEvent {
  factory SelectGroup({required Map<int, GroupSelectModel> group}) =
      _$SelectGroup;

  Map<int, GroupSelectModel> get group;
  @JsonKey(ignore: true)
  $SelectGroupCopyWith<SelectGroup> get copyWith =>
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
    extends _$ChatSelectEventCopyWithImpl<$Res>
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
    return 'ChatSelectEvent.changeSelectionId(ids: $ids)';
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
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return changeSelectionId(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return changeSelectionId?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
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
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return changeSelectionId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return changeSelectionId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (changeSelectionId != null) {
      return changeSelectionId(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectionId implements ChatSelectEvent {
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
    extends _$ChatSelectEventCopyWithImpl<$Res>
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
    return 'ChatSelectEvent.disableSelection(enable: $enable)';
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
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return disableSelection(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return disableSelection?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
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
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return disableSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return disableSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (disableSelection != null) {
      return disableSelection(this);
    }
    return orElse();
  }
}

abstract class DisableSelection implements ChatSelectEvent {
  factory DisableSelection({required bool enable}) = _$DisableSelection;

  bool get enable;
  @JsonKey(ignore: true)
  $DisableSelectionCopyWith<DisableSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSelectionCopyWith<$Res> {
  factory $GroupSelectionCopyWith(
          GroupSelection value, $Res Function(GroupSelection) then) =
      _$GroupSelectionCopyWithImpl<$Res>;
  $Res call({bool group_select});
}

/// @nodoc
class _$GroupSelectionCopyWithImpl<$Res>
    extends _$ChatSelectEventCopyWithImpl<$Res>
    implements $GroupSelectionCopyWith<$Res> {
  _$GroupSelectionCopyWithImpl(
      GroupSelection _value, $Res Function(GroupSelection) _then)
      : super(_value, (v) => _then(v as GroupSelection));

  @override
  GroupSelection get _value => super._value as GroupSelection;

  @override
  $Res call({
    Object? group_select = freezed,
  }) {
    return _then(GroupSelection(
      group_select: group_select == freezed
          ? _value.group_select
          : group_select // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GroupSelection implements GroupSelection {
  _$GroupSelection({required this.group_select});

  @override
  final bool group_select;

  @override
  String toString() {
    return 'ChatSelectEvent.groupSelection(group_select: $group_select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupSelection &&
            const DeepCollectionEquality()
                .equals(other.group_select, group_select));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(group_select));

  @JsonKey(ignore: true)
  @override
  $GroupSelectionCopyWith<GroupSelection> get copyWith =>
      _$GroupSelectionCopyWithImpl<GroupSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return groupSelection(group_select);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return groupSelection?.call(group_select);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
    required TResult orElse(),
  }) {
    if (groupSelection != null) {
      return groupSelection(group_select);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return groupSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return groupSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (groupSelection != null) {
      return groupSelection(this);
    }
    return orElse();
  }
}

abstract class GroupSelection implements ChatSelectEvent {
  factory GroupSelection({required bool group_select}) = _$GroupSelection;

  bool get group_select;
  @JsonKey(ignore: true)
  $GroupSelectionCopyWith<GroupSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowFabValCopyWith<$Res> {
  factory $ShowFabValCopyWith(
          ShowFabVal value, $Res Function(ShowFabVal) then) =
      _$ShowFabValCopyWithImpl<$Res>;
  $Res call({bool showFabVal});
}

/// @nodoc
class _$ShowFabValCopyWithImpl<$Res> extends _$ChatSelectEventCopyWithImpl<$Res>
    implements $ShowFabValCopyWith<$Res> {
  _$ShowFabValCopyWithImpl(ShowFabVal _value, $Res Function(ShowFabVal) _then)
      : super(_value, (v) => _then(v as ShowFabVal));

  @override
  ShowFabVal get _value => super._value as ShowFabVal;

  @override
  $Res call({
    Object? showFabVal = freezed,
  }) {
    return _then(ShowFabVal(
      showFabVal: showFabVal == freezed
          ? _value.showFabVal
          : showFabVal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowFabVal implements ShowFabVal {
  _$ShowFabVal({required this.showFabVal});

  @override
  final bool showFabVal;

  @override
  String toString() {
    return 'ChatSelectEvent.showFabAction(showFabVal: $showFabVal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowFabVal &&
            const DeepCollectionEquality()
                .equals(other.showFabVal, showFabVal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(showFabVal));

  @JsonKey(ignore: true)
  @override
  $ShowFabValCopyWith<ShowFabVal> get copyWith =>
      _$ShowFabValCopyWithImpl<ShowFabVal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(Map<int, ChatModel> chat) changeSelection,
    required TResult Function(Map<int, GroupSelectModel> group) selectGroup,
    required TResult Function(Map<int, String> ids) changeSelectionId,
    required TResult Function(bool enable) disableSelection,
    required TResult Function(bool group_select) groupSelection,
    required TResult Function(bool showFabVal) showFabAction,
  }) {
    return showFabAction(showFabVal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
  }) {
    return showFabAction?.call(showFabVal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(Map<int, ChatModel> chat)? changeSelection,
    TResult Function(Map<int, GroupSelectModel> group)? selectGroup,
    TResult Function(Map<int, String> ids)? changeSelectionId,
    TResult Function(bool enable)? disableSelection,
    TResult Function(bool group_select)? groupSelection,
    TResult Function(bool showFabVal)? showFabAction,
    required TResult orElse(),
  }) {
    if (showFabAction != null) {
      return showFabAction(showFabVal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(SelectGroup value) selectGroup,
    required TResult Function(ChangeSelectionId value) changeSelectionId,
    required TResult Function(DisableSelection value) disableSelection,
    required TResult Function(GroupSelection value) groupSelection,
    required TResult Function(ShowFabVal value) showFabAction,
  }) {
    return showFabAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
  }) {
    return showFabAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(SelectGroup value)? selectGroup,
    TResult Function(ChangeSelectionId value)? changeSelectionId,
    TResult Function(DisableSelection value)? disableSelection,
    TResult Function(GroupSelection value)? groupSelection,
    TResult Function(ShowFabVal value)? showFabAction,
    required TResult orElse(),
  }) {
    if (showFabAction != null) {
      return showFabAction(this);
    }
    return orElse();
  }
}

abstract class ShowFabVal implements ChatSelectEvent {
  factory ShowFabVal({required bool showFabVal}) = _$ShowFabVal;

  bool get showFabVal;
  @JsonKey(ignore: true)
  $ShowFabValCopyWith<ShowFabVal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatSelectStateTearOff {
  const _$ChatSelectStateTearOff();

  _ChatSelect call(
      {required bool isAppSelectionbarEnable,
      required Map<int, ChatModel> selectedIndexList,
      required Map<int, String> selectedIDList,
      required Map<int, String> selectedGroupIDList,
      required Map<int, GroupSelectModel> selectedGroups,
      required bool selectionMode,
      required bool selectGroup,
      required bool showFab}) {
    return _ChatSelect(
      isAppSelectionbarEnable: isAppSelectionbarEnable,
      selectedIndexList: selectedIndexList,
      selectedIDList: selectedIDList,
      selectedGroupIDList: selectedGroupIDList,
      selectedGroups: selectedGroups,
      selectionMode: selectionMode,
      selectGroup: selectGroup,
      showFab: showFab,
    );
  }
}

/// @nodoc
const $ChatSelectState = _$ChatSelectStateTearOff();

/// @nodoc
mixin _$ChatSelectState {
  bool get isAppSelectionbarEnable => throw _privateConstructorUsedError;
  Map<int, ChatModel> get selectedIndexList =>
      throw _privateConstructorUsedError;
  Map<int, String> get selectedIDList => throw _privateConstructorUsedError;
  Map<int, String> get selectedGroupIDList =>
      throw _privateConstructorUsedError;
  Map<int, GroupSelectModel> get selectedGroups =>
      throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;
  bool get selectGroup => throw _privateConstructorUsedError;
  bool get showFab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatSelectStateCopyWith<ChatSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSelectStateCopyWith<$Res> {
  factory $ChatSelectStateCopyWith(
          ChatSelectState value, $Res Function(ChatSelectState) then) =
      _$ChatSelectStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAppSelectionbarEnable,
      Map<int, ChatModel> selectedIndexList,
      Map<int, String> selectedIDList,
      Map<int, String> selectedGroupIDList,
      Map<int, GroupSelectModel> selectedGroups,
      bool selectionMode,
      bool selectGroup,
      bool showFab});
}

/// @nodoc
class _$ChatSelectStateCopyWithImpl<$Res>
    implements $ChatSelectStateCopyWith<$Res> {
  _$ChatSelectStateCopyWithImpl(this._value, this._then);

  final ChatSelectState _value;
  // ignore: unused_field
  final $Res Function(ChatSelectState) _then;

  @override
  $Res call({
    Object? isAppSelectionbarEnable = freezed,
    Object? selectedIndexList = freezed,
    Object? selectedIDList = freezed,
    Object? selectedGroupIDList = freezed,
    Object? selectedGroups = freezed,
    Object? selectionMode = freezed,
    Object? selectGroup = freezed,
    Object? showFab = freezed,
  }) {
    return _then(_value.copyWith(
      isAppSelectionbarEnable: isAppSelectionbarEnable == freezed
          ? _value.isAppSelectionbarEnable
          : isAppSelectionbarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndexList: selectedIndexList == freezed
          ? _value.selectedIndexList
          : selectedIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, ChatModel>,
      selectedIDList: selectedIDList == freezed
          ? _value.selectedIDList
          : selectedIDList // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      selectedGroupIDList: selectedGroupIDList == freezed
          ? _value.selectedGroupIDList
          : selectedGroupIDList // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      selectedGroups: selectedGroups == freezed
          ? _value.selectedGroups
          : selectedGroups // ignore: cast_nullable_to_non_nullable
              as Map<int, GroupSelectModel>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectGroup: selectGroup == freezed
          ? _value.selectGroup
          : selectGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      showFab: showFab == freezed
          ? _value.showFab
          : showFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChatSelectCopyWith<$Res>
    implements $ChatSelectStateCopyWith<$Res> {
  factory _$ChatSelectCopyWith(
          _ChatSelect value, $Res Function(_ChatSelect) then) =
      __$ChatSelectCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAppSelectionbarEnable,
      Map<int, ChatModel> selectedIndexList,
      Map<int, String> selectedIDList,
      Map<int, String> selectedGroupIDList,
      Map<int, GroupSelectModel> selectedGroups,
      bool selectionMode,
      bool selectGroup,
      bool showFab});
}

/// @nodoc
class __$ChatSelectCopyWithImpl<$Res>
    extends _$ChatSelectStateCopyWithImpl<$Res>
    implements _$ChatSelectCopyWith<$Res> {
  __$ChatSelectCopyWithImpl(
      _ChatSelect _value, $Res Function(_ChatSelect) _then)
      : super(_value, (v) => _then(v as _ChatSelect));

  @override
  _ChatSelect get _value => super._value as _ChatSelect;

  @override
  $Res call({
    Object? isAppSelectionbarEnable = freezed,
    Object? selectedIndexList = freezed,
    Object? selectedIDList = freezed,
    Object? selectedGroupIDList = freezed,
    Object? selectedGroups = freezed,
    Object? selectionMode = freezed,
    Object? selectGroup = freezed,
    Object? showFab = freezed,
  }) {
    return _then(_ChatSelect(
      isAppSelectionbarEnable: isAppSelectionbarEnable == freezed
          ? _value.isAppSelectionbarEnable
          : isAppSelectionbarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndexList: selectedIndexList == freezed
          ? _value.selectedIndexList
          : selectedIndexList // ignore: cast_nullable_to_non_nullable
              as Map<int, ChatModel>,
      selectedIDList: selectedIDList == freezed
          ? _value.selectedIDList
          : selectedIDList // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      selectedGroupIDList: selectedGroupIDList == freezed
          ? _value.selectedGroupIDList
          : selectedGroupIDList // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      selectedGroups: selectedGroups == freezed
          ? _value.selectedGroups
          : selectedGroups // ignore: cast_nullable_to_non_nullable
              as Map<int, GroupSelectModel>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectGroup: selectGroup == freezed
          ? _value.selectGroup
          : selectGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      showFab: showFab == freezed
          ? _value.showFab
          : showFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatSelect implements _ChatSelect {
  _$_ChatSelect(
      {required this.isAppSelectionbarEnable,
      required this.selectedIndexList,
      required this.selectedIDList,
      required this.selectedGroupIDList,
      required this.selectedGroups,
      required this.selectionMode,
      required this.selectGroup,
      required this.showFab});

  @override
  final bool isAppSelectionbarEnable;
  @override
  final Map<int, ChatModel> selectedIndexList;
  @override
  final Map<int, String> selectedIDList;
  @override
  final Map<int, String> selectedGroupIDList;
  @override
  final Map<int, GroupSelectModel> selectedGroups;
  @override
  final bool selectionMode;
  @override
  final bool selectGroup;
  @override
  final bool showFab;

  @override
  String toString() {
    return 'ChatSelectState(isAppSelectionbarEnable: $isAppSelectionbarEnable, selectedIndexList: $selectedIndexList, selectedIDList: $selectedIDList, selectedGroupIDList: $selectedGroupIDList, selectedGroups: $selectedGroups, selectionMode: $selectionMode, selectGroup: $selectGroup, showFab: $showFab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatSelect &&
            const DeepCollectionEquality().equals(
                other.isAppSelectionbarEnable, isAppSelectionbarEnable) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndexList, selectedIndexList) &&
            const DeepCollectionEquality()
                .equals(other.selectedIDList, selectedIDList) &&
            const DeepCollectionEquality()
                .equals(other.selectedGroupIDList, selectedGroupIDList) &&
            const DeepCollectionEquality()
                .equals(other.selectedGroups, selectedGroups) &&
            const DeepCollectionEquality()
                .equals(other.selectionMode, selectionMode) &&
            const DeepCollectionEquality()
                .equals(other.selectGroup, selectGroup) &&
            const DeepCollectionEquality().equals(other.showFab, showFab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAppSelectionbarEnable),
      const DeepCollectionEquality().hash(selectedIndexList),
      const DeepCollectionEquality().hash(selectedIDList),
      const DeepCollectionEquality().hash(selectedGroupIDList),
      const DeepCollectionEquality().hash(selectedGroups),
      const DeepCollectionEquality().hash(selectionMode),
      const DeepCollectionEquality().hash(selectGroup),
      const DeepCollectionEquality().hash(showFab));

  @JsonKey(ignore: true)
  @override
  _$ChatSelectCopyWith<_ChatSelect> get copyWith =>
      __$ChatSelectCopyWithImpl<_ChatSelect>(this, _$identity);
}

abstract class _ChatSelect implements ChatSelectState {
  factory _ChatSelect(
      {required bool isAppSelectionbarEnable,
      required Map<int, ChatModel> selectedIndexList,
      required Map<int, String> selectedIDList,
      required Map<int, String> selectedGroupIDList,
      required Map<int, GroupSelectModel> selectedGroups,
      required bool selectionMode,
      required bool selectGroup,
      required bool showFab}) = _$_ChatSelect;

  @override
  bool get isAppSelectionbarEnable;
  @override
  Map<int, ChatModel> get selectedIndexList;
  @override
  Map<int, String> get selectedIDList;
  @override
  Map<int, String> get selectedGroupIDList;
  @override
  Map<int, GroupSelectModel> get selectedGroups;
  @override
  bool get selectionMode;
  @override
  bool get selectGroup;
  @override
  bool get showFab;
  @override
  @JsonKey(ignore: true)
  _$ChatSelectCopyWith<_ChatSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
