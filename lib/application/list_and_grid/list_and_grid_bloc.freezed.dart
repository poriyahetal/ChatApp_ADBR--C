// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_and_grid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListAndGridEventTearOff {
  const _$ListAndGridEventTearOff();

  EnableSelectionBar enableSelectionBar({required bool isSelectionBar}) {
    return EnableSelectionBar(
      isSelectionBar: isSelectionBar,
    );
  }

  ChangeSelection changeSelection({required bool enable, required int index}) {
    return ChangeSelection(
      enable: enable,
      index: index,
    );
  }

  DisableSelection disableSelection({required bool enable}) {
    return DisableSelection(
      enable: enable,
    );
  }
}

/// @nodoc
const $ListAndGridEvent = _$ListAndGridEventTearOff();

/// @nodoc
mixin _$ListAndGridEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool enable, int index) changeSelection,
    required TResult Function(bool enable) disableSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(DisableSelection value) disableSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAndGridEventCopyWith<$Res> {
  factory $ListAndGridEventCopyWith(
          ListAndGridEvent value, $Res Function(ListAndGridEvent) then) =
      _$ListAndGridEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListAndGridEventCopyWithImpl<$Res>
    implements $ListAndGridEventCopyWith<$Res> {
  _$ListAndGridEventCopyWithImpl(this._value, this._then);

  final ListAndGridEvent _value;
  // ignore: unused_field
  final $Res Function(ListAndGridEvent) _then;
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
    extends _$ListAndGridEventCopyWithImpl<$Res>
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
    return 'ListAndGridEvent.enableSelectionBar(isSelectionBar: $isSelectionBar)';
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
    required TResult Function(bool enable, int index) changeSelection,
    required TResult Function(bool enable) disableSelection,
  }) {
    return enableSelectionBar(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
  }) {
    return enableSelectionBar?.call(isSelectionBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
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
    required TResult Function(DisableSelection value) disableSelection,
  }) {
    return enableSelectionBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
  }) {
    return enableSelectionBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
    required TResult orElse(),
  }) {
    if (enableSelectionBar != null) {
      return enableSelectionBar(this);
    }
    return orElse();
  }
}

abstract class EnableSelectionBar implements ListAndGridEvent {
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
  $Res call({bool enable, int index});
}

/// @nodoc
class _$ChangeSelectionCopyWithImpl<$Res>
    extends _$ListAndGridEventCopyWithImpl<$Res>
    implements $ChangeSelectionCopyWith<$Res> {
  _$ChangeSelectionCopyWithImpl(
      ChangeSelection _value, $Res Function(ChangeSelection) _then)
      : super(_value, (v) => _then(v as ChangeSelection));

  @override
  ChangeSelection get _value => super._value as ChangeSelection;

  @override
  $Res call({
    Object? enable = freezed,
    Object? index = freezed,
  }) {
    return _then(ChangeSelection(
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelection implements ChangeSelection {
  _$ChangeSelection({required this.enable, required this.index});

  @override
  final bool enable;
  @override
  final int index;

  @override
  String toString() {
    return 'ListAndGridEvent.changeSelection(enable: $enable, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeSelection &&
            const DeepCollectionEquality().equals(other.enable, enable) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enable),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $ChangeSelectionCopyWith<ChangeSelection> get copyWith =>
      _$ChangeSelectionCopyWithImpl<ChangeSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSelectionBar) enableSelectionBar,
    required TResult Function(bool enable, int index) changeSelection,
    required TResult Function(bool enable) disableSelection,
  }) {
    return changeSelection(enable, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
  }) {
    return changeSelection?.call(enable, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(enable, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnableSelectionBar value) enableSelectionBar,
    required TResult Function(ChangeSelection value) changeSelection,
    required TResult Function(DisableSelection value) disableSelection,
  }) {
    return changeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
  }) {
    return changeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(this);
    }
    return orElse();
  }
}

abstract class ChangeSelection implements ListAndGridEvent {
  factory ChangeSelection({required bool enable, required int index}) =
      _$ChangeSelection;

  bool get enable;
  int get index;
  @JsonKey(ignore: true)
  $ChangeSelectionCopyWith<ChangeSelection> get copyWith =>
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
    extends _$ListAndGridEventCopyWithImpl<$Res>
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
    return 'ListAndGridEvent.disableSelection(enable: $enable)';
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
    required TResult Function(bool enable, int index) changeSelection,
    required TResult Function(bool enable) disableSelection,
  }) {
    return disableSelection(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
  }) {
    return disableSelection?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelectionBar)? enableSelectionBar,
    TResult Function(bool enable, int index)? changeSelection,
    TResult Function(bool enable)? disableSelection,
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
    required TResult Function(DisableSelection value) disableSelection,
  }) {
    return disableSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
  }) {
    return disableSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnableSelectionBar value)? enableSelectionBar,
    TResult Function(ChangeSelection value)? changeSelection,
    TResult Function(DisableSelection value)? disableSelection,
    required TResult orElse(),
  }) {
    if (disableSelection != null) {
      return disableSelection(this);
    }
    return orElse();
  }
}

abstract class DisableSelection implements ListAndGridEvent {
  factory DisableSelection({required bool enable}) = _$DisableSelection;

  bool get enable;
  @JsonKey(ignore: true)
  $DisableSelectionCopyWith<DisableSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListAndGridStateTearOff {
  const _$ListAndGridStateTearOff();

  _ListAndGrid call(
      {required bool isAppSelectionbarEnable,
      required List<int> selectedIndexList,
      required bool selectionMode}) {
    return _ListAndGrid(
      isAppSelectionbarEnable: isAppSelectionbarEnable,
      selectedIndexList: selectedIndexList,
      selectionMode: selectionMode,
    );
  }
}

/// @nodoc
const $ListAndGridState = _$ListAndGridStateTearOff();

/// @nodoc
mixin _$ListAndGridState {
  bool get isAppSelectionbarEnable => throw _privateConstructorUsedError;
  List<int> get selectedIndexList => throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListAndGridStateCopyWith<ListAndGridState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAndGridStateCopyWith<$Res> {
  factory $ListAndGridStateCopyWith(
          ListAndGridState value, $Res Function(ListAndGridState) then) =
      _$ListAndGridStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAppSelectionbarEnable,
      List<int> selectedIndexList,
      bool selectionMode});
}

/// @nodoc
class _$ListAndGridStateCopyWithImpl<$Res>
    implements $ListAndGridStateCopyWith<$Res> {
  _$ListAndGridStateCopyWithImpl(this._value, this._then);

  final ListAndGridState _value;
  // ignore: unused_field
  final $Res Function(ListAndGridState) _then;

  @override
  $Res call({
    Object? isAppSelectionbarEnable = freezed,
    Object? selectedIndexList = freezed,
    Object? selectionMode = freezed,
  }) {
    return _then(_value.copyWith(
      isAppSelectionbarEnable: isAppSelectionbarEnable == freezed
          ? _value.isAppSelectionbarEnable
          : isAppSelectionbarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndexList: selectedIndexList == freezed
          ? _value.selectedIndexList
          : selectedIndexList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ListAndGridCopyWith<$Res>
    implements $ListAndGridStateCopyWith<$Res> {
  factory _$ListAndGridCopyWith(
          _ListAndGrid value, $Res Function(_ListAndGrid) then) =
      __$ListAndGridCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAppSelectionbarEnable,
      List<int> selectedIndexList,
      bool selectionMode});
}

/// @nodoc
class __$ListAndGridCopyWithImpl<$Res>
    extends _$ListAndGridStateCopyWithImpl<$Res>
    implements _$ListAndGridCopyWith<$Res> {
  __$ListAndGridCopyWithImpl(
      _ListAndGrid _value, $Res Function(_ListAndGrid) _then)
      : super(_value, (v) => _then(v as _ListAndGrid));

  @override
  _ListAndGrid get _value => super._value as _ListAndGrid;

  @override
  $Res call({
    Object? isAppSelectionbarEnable = freezed,
    Object? selectedIndexList = freezed,
    Object? selectionMode = freezed,
  }) {
    return _then(_ListAndGrid(
      isAppSelectionbarEnable: isAppSelectionbarEnable == freezed
          ? _value.isAppSelectionbarEnable
          : isAppSelectionbarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndexList: selectedIndexList == freezed
          ? _value.selectedIndexList
          : selectedIndexList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectionMode: selectionMode == freezed
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ListAndGrid implements _ListAndGrid {
  _$_ListAndGrid(
      {required this.isAppSelectionbarEnable,
      required this.selectedIndexList,
      required this.selectionMode});

  @override
  final bool isAppSelectionbarEnable;
  @override
  final List<int> selectedIndexList;
  @override
  final bool selectionMode;

  @override
  String toString() {
    return 'ListAndGridState(isAppSelectionbarEnable: $isAppSelectionbarEnable, selectedIndexList: $selectedIndexList, selectionMode: $selectionMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListAndGrid &&
            const DeepCollectionEquality().equals(
                other.isAppSelectionbarEnable, isAppSelectionbarEnable) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndexList, selectedIndexList) &&
            const DeepCollectionEquality()
                .equals(other.selectionMode, selectionMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAppSelectionbarEnable),
      const DeepCollectionEquality().hash(selectedIndexList),
      const DeepCollectionEquality().hash(selectionMode));

  @JsonKey(ignore: true)
  @override
  _$ListAndGridCopyWith<_ListAndGrid> get copyWith =>
      __$ListAndGridCopyWithImpl<_ListAndGrid>(this, _$identity);
}

abstract class _ListAndGrid implements ListAndGridState {
  factory _ListAndGrid(
      {required bool isAppSelectionbarEnable,
      required List<int> selectedIndexList,
      required bool selectionMode}) = _$_ListAndGrid;

  @override
  bool get isAppSelectionbarEnable;
  @override
  List<int> get selectedIndexList;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$ListAndGridCopyWith<_ListAndGrid> get copyWith =>
      throw _privateConstructorUsedError;
}
