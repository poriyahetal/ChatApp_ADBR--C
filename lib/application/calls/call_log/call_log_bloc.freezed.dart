// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'call_log_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CallLogEventTearOff {
  const _$CallLogEventTearOff();

  _Select select(
      {required String callLogId, required List<CallModel> callLogs}) {
    return _Select(
      callLogId: callLogId,
      callLogs: callLogs,
    );
  }

  _UnSelect unSelect(
      {required String callLogId, required List<CallModel> callLogs}) {
    return _UnSelect(
      callLogId: callLogId,
      callLogs: callLogs,
    );
  }

  _DeleteOneCallLogs deleteOneCallLogs({required List<CallModel> callLogs}) {
    return _DeleteOneCallLogs(
      callLogs: callLogs,
    );
  }

  _DeleteCallLogs deleteCallLogs() {
    return const _DeleteCallLogs();
  }

  _DeSelectAll deSelectAll() {
    return const _DeSelectAll();
  }
}

/// @nodoc
const $CallLogEvent = _$CallLogEventTearOff();

/// @nodoc
mixin _$CallLogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callLogId, List<CallModel> callLogs)
        select,
    required TResult Function(String callLogId, List<CallModel> callLogs)
        unSelect,
    required TResult Function(List<CallModel> callLogs) deleteOneCallLogs,
    required TResult Function() deleteCallLogs,
    required TResult Function() deSelectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_UnSelect value) unSelect,
    required TResult Function(_DeleteOneCallLogs value) deleteOneCallLogs,
    required TResult Function(_DeleteCallLogs value) deleteCallLogs,
    required TResult Function(_DeSelectAll value) deSelectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallLogEventCopyWith<$Res> {
  factory $CallLogEventCopyWith(
          CallLogEvent value, $Res Function(CallLogEvent) then) =
      _$CallLogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CallLogEventCopyWithImpl<$Res> implements $CallLogEventCopyWith<$Res> {
  _$CallLogEventCopyWithImpl(this._value, this._then);

  final CallLogEvent _value;
  // ignore: unused_field
  final $Res Function(CallLogEvent) _then;
}

/// @nodoc
abstract class _$SelectCopyWith<$Res> {
  factory _$SelectCopyWith(_Select value, $Res Function(_Select) then) =
      __$SelectCopyWithImpl<$Res>;
  $Res call({String callLogId, List<CallModel> callLogs});
}

/// @nodoc
class __$SelectCopyWithImpl<$Res> extends _$CallLogEventCopyWithImpl<$Res>
    implements _$SelectCopyWith<$Res> {
  __$SelectCopyWithImpl(_Select _value, $Res Function(_Select) _then)
      : super(_value, (v) => _then(v as _Select));

  @override
  _Select get _value => super._value as _Select;

  @override
  $Res call({
    Object? callLogId = freezed,
    Object? callLogs = freezed,
  }) {
    return _then(_Select(
      callLogId: callLogId == freezed
          ? _value.callLogId
          : callLogId // ignore: cast_nullable_to_non_nullable
              as String,
      callLogs: callLogs == freezed
          ? _value.callLogs
          : callLogs // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
    ));
  }
}

/// @nodoc

class _$_Select implements _Select {
  const _$_Select({required this.callLogId, required this.callLogs});

  @override
  final String callLogId;
  @override
  final List<CallModel> callLogs;

  @override
  String toString() {
    return 'CallLogEvent.select(callLogId: $callLogId, callLogs: $callLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Select &&
            const DeepCollectionEquality().equals(other.callLogId, callLogId) &&
            const DeepCollectionEquality().equals(other.callLogs, callLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(callLogId),
      const DeepCollectionEquality().hash(callLogs));

  @JsonKey(ignore: true)
  @override
  _$SelectCopyWith<_Select> get copyWith =>
      __$SelectCopyWithImpl<_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callLogId, List<CallModel> callLogs)
        select,
    required TResult Function(String callLogId, List<CallModel> callLogs)
        unSelect,
    required TResult Function(List<CallModel> callLogs) deleteOneCallLogs,
    required TResult Function() deleteCallLogs,
    required TResult Function() deSelectAll,
  }) {
    return select(callLogId, callLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
  }) {
    return select?.call(callLogId, callLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(callLogId, callLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_UnSelect value) unSelect,
    required TResult Function(_DeleteOneCallLogs value) deleteOneCallLogs,
    required TResult Function(_DeleteCallLogs value) deleteCallLogs,
    required TResult Function(_DeSelectAll value) deSelectAll,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements CallLogEvent {
  const factory _Select(
      {required String callLogId,
      required List<CallModel> callLogs}) = _$_Select;

  String get callLogId;
  List<CallModel> get callLogs;
  @JsonKey(ignore: true)
  _$SelectCopyWith<_Select> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnSelectCopyWith<$Res> {
  factory _$UnSelectCopyWith(_UnSelect value, $Res Function(_UnSelect) then) =
      __$UnSelectCopyWithImpl<$Res>;
  $Res call({String callLogId, List<CallModel> callLogs});
}

/// @nodoc
class __$UnSelectCopyWithImpl<$Res> extends _$CallLogEventCopyWithImpl<$Res>
    implements _$UnSelectCopyWith<$Res> {
  __$UnSelectCopyWithImpl(_UnSelect _value, $Res Function(_UnSelect) _then)
      : super(_value, (v) => _then(v as _UnSelect));

  @override
  _UnSelect get _value => super._value as _UnSelect;

  @override
  $Res call({
    Object? callLogId = freezed,
    Object? callLogs = freezed,
  }) {
    return _then(_UnSelect(
      callLogId: callLogId == freezed
          ? _value.callLogId
          : callLogId // ignore: cast_nullable_to_non_nullable
              as String,
      callLogs: callLogs == freezed
          ? _value.callLogs
          : callLogs // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
    ));
  }
}

/// @nodoc

class _$_UnSelect implements _UnSelect {
  const _$_UnSelect({required this.callLogId, required this.callLogs});

  @override
  final String callLogId;
  @override
  final List<CallModel> callLogs;

  @override
  String toString() {
    return 'CallLogEvent.unSelect(callLogId: $callLogId, callLogs: $callLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnSelect &&
            const DeepCollectionEquality().equals(other.callLogId, callLogId) &&
            const DeepCollectionEquality().equals(other.callLogs, callLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(callLogId),
      const DeepCollectionEquality().hash(callLogs));

  @JsonKey(ignore: true)
  @override
  _$UnSelectCopyWith<_UnSelect> get copyWith =>
      __$UnSelectCopyWithImpl<_UnSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callLogId, List<CallModel> callLogs)
        select,
    required TResult Function(String callLogId, List<CallModel> callLogs)
        unSelect,
    required TResult Function(List<CallModel> callLogs) deleteOneCallLogs,
    required TResult Function() deleteCallLogs,
    required TResult Function() deSelectAll,
  }) {
    return unSelect(callLogId, callLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
  }) {
    return unSelect?.call(callLogId, callLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
    required TResult orElse(),
  }) {
    if (unSelect != null) {
      return unSelect(callLogId, callLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_UnSelect value) unSelect,
    required TResult Function(_DeleteOneCallLogs value) deleteOneCallLogs,
    required TResult Function(_DeleteCallLogs value) deleteCallLogs,
    required TResult Function(_DeSelectAll value) deSelectAll,
  }) {
    return unSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
  }) {
    return unSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
    required TResult orElse(),
  }) {
    if (unSelect != null) {
      return unSelect(this);
    }
    return orElse();
  }
}

abstract class _UnSelect implements CallLogEvent {
  const factory _UnSelect(
      {required String callLogId,
      required List<CallModel> callLogs}) = _$_UnSelect;

  String get callLogId;
  List<CallModel> get callLogs;
  @JsonKey(ignore: true)
  _$UnSelectCopyWith<_UnSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteOneCallLogsCopyWith<$Res> {
  factory _$DeleteOneCallLogsCopyWith(
          _DeleteOneCallLogs value, $Res Function(_DeleteOneCallLogs) then) =
      __$DeleteOneCallLogsCopyWithImpl<$Res>;
  $Res call({List<CallModel> callLogs});
}

/// @nodoc
class __$DeleteOneCallLogsCopyWithImpl<$Res>
    extends _$CallLogEventCopyWithImpl<$Res>
    implements _$DeleteOneCallLogsCopyWith<$Res> {
  __$DeleteOneCallLogsCopyWithImpl(
      _DeleteOneCallLogs _value, $Res Function(_DeleteOneCallLogs) _then)
      : super(_value, (v) => _then(v as _DeleteOneCallLogs));

  @override
  _DeleteOneCallLogs get _value => super._value as _DeleteOneCallLogs;

  @override
  $Res call({
    Object? callLogs = freezed,
  }) {
    return _then(_DeleteOneCallLogs(
      callLogs: callLogs == freezed
          ? _value.callLogs
          : callLogs // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
    ));
  }
}

/// @nodoc

class _$_DeleteOneCallLogs implements _DeleteOneCallLogs {
  const _$_DeleteOneCallLogs({required this.callLogs});

  @override
  final List<CallModel> callLogs;

  @override
  String toString() {
    return 'CallLogEvent.deleteOneCallLogs(callLogs: $callLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteOneCallLogs &&
            const DeepCollectionEquality().equals(other.callLogs, callLogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(callLogs));

  @JsonKey(ignore: true)
  @override
  _$DeleteOneCallLogsCopyWith<_DeleteOneCallLogs> get copyWith =>
      __$DeleteOneCallLogsCopyWithImpl<_DeleteOneCallLogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callLogId, List<CallModel> callLogs)
        select,
    required TResult Function(String callLogId, List<CallModel> callLogs)
        unSelect,
    required TResult Function(List<CallModel> callLogs) deleteOneCallLogs,
    required TResult Function() deleteCallLogs,
    required TResult Function() deSelectAll,
  }) {
    return deleteOneCallLogs(callLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
  }) {
    return deleteOneCallLogs?.call(callLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
    required TResult orElse(),
  }) {
    if (deleteOneCallLogs != null) {
      return deleteOneCallLogs(callLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_UnSelect value) unSelect,
    required TResult Function(_DeleteOneCallLogs value) deleteOneCallLogs,
    required TResult Function(_DeleteCallLogs value) deleteCallLogs,
    required TResult Function(_DeSelectAll value) deSelectAll,
  }) {
    return deleteOneCallLogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
  }) {
    return deleteOneCallLogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
    required TResult orElse(),
  }) {
    if (deleteOneCallLogs != null) {
      return deleteOneCallLogs(this);
    }
    return orElse();
  }
}

abstract class _DeleteOneCallLogs implements CallLogEvent {
  const factory _DeleteOneCallLogs({required List<CallModel> callLogs}) =
      _$_DeleteOneCallLogs;

  List<CallModel> get callLogs;
  @JsonKey(ignore: true)
  _$DeleteOneCallLogsCopyWith<_DeleteOneCallLogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCallLogsCopyWith<$Res> {
  factory _$DeleteCallLogsCopyWith(
          _DeleteCallLogs value, $Res Function(_DeleteCallLogs) then) =
      __$DeleteCallLogsCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteCallLogsCopyWithImpl<$Res>
    extends _$CallLogEventCopyWithImpl<$Res>
    implements _$DeleteCallLogsCopyWith<$Res> {
  __$DeleteCallLogsCopyWithImpl(
      _DeleteCallLogs _value, $Res Function(_DeleteCallLogs) _then)
      : super(_value, (v) => _then(v as _DeleteCallLogs));

  @override
  _DeleteCallLogs get _value => super._value as _DeleteCallLogs;
}

/// @nodoc

class _$_DeleteCallLogs implements _DeleteCallLogs {
  const _$_DeleteCallLogs();

  @override
  String toString() {
    return 'CallLogEvent.deleteCallLogs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteCallLogs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callLogId, List<CallModel> callLogs)
        select,
    required TResult Function(String callLogId, List<CallModel> callLogs)
        unSelect,
    required TResult Function(List<CallModel> callLogs) deleteOneCallLogs,
    required TResult Function() deleteCallLogs,
    required TResult Function() deSelectAll,
  }) {
    return deleteCallLogs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
  }) {
    return deleteCallLogs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
    required TResult orElse(),
  }) {
    if (deleteCallLogs != null) {
      return deleteCallLogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_UnSelect value) unSelect,
    required TResult Function(_DeleteOneCallLogs value) deleteOneCallLogs,
    required TResult Function(_DeleteCallLogs value) deleteCallLogs,
    required TResult Function(_DeSelectAll value) deSelectAll,
  }) {
    return deleteCallLogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
  }) {
    return deleteCallLogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
    required TResult orElse(),
  }) {
    if (deleteCallLogs != null) {
      return deleteCallLogs(this);
    }
    return orElse();
  }
}

abstract class _DeleteCallLogs implements CallLogEvent {
  const factory _DeleteCallLogs() = _$_DeleteCallLogs;
}

/// @nodoc
abstract class _$DeSelectAllCopyWith<$Res> {
  factory _$DeSelectAllCopyWith(
          _DeSelectAll value, $Res Function(_DeSelectAll) then) =
      __$DeSelectAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeSelectAllCopyWithImpl<$Res> extends _$CallLogEventCopyWithImpl<$Res>
    implements _$DeSelectAllCopyWith<$Res> {
  __$DeSelectAllCopyWithImpl(
      _DeSelectAll _value, $Res Function(_DeSelectAll) _then)
      : super(_value, (v) => _then(v as _DeSelectAll));

  @override
  _DeSelectAll get _value => super._value as _DeSelectAll;
}

/// @nodoc

class _$_DeSelectAll implements _DeSelectAll {
  const _$_DeSelectAll();

  @override
  String toString() {
    return 'CallLogEvent.deSelectAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeSelectAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callLogId, List<CallModel> callLogs)
        select,
    required TResult Function(String callLogId, List<CallModel> callLogs)
        unSelect,
    required TResult Function(List<CallModel> callLogs) deleteOneCallLogs,
    required TResult Function() deleteCallLogs,
    required TResult Function() deSelectAll,
  }) {
    return deSelectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
  }) {
    return deSelectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callLogId, List<CallModel> callLogs)? select,
    TResult Function(String callLogId, List<CallModel> callLogs)? unSelect,
    TResult Function(List<CallModel> callLogs)? deleteOneCallLogs,
    TResult Function()? deleteCallLogs,
    TResult Function()? deSelectAll,
    required TResult orElse(),
  }) {
    if (deSelectAll != null) {
      return deSelectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_UnSelect value) unSelect,
    required TResult Function(_DeleteOneCallLogs value) deleteOneCallLogs,
    required TResult Function(_DeleteCallLogs value) deleteCallLogs,
    required TResult Function(_DeSelectAll value) deSelectAll,
  }) {
    return deSelectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
  }) {
    return deSelectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_UnSelect value)? unSelect,
    TResult Function(_DeleteOneCallLogs value)? deleteOneCallLogs,
    TResult Function(_DeleteCallLogs value)? deleteCallLogs,
    TResult Function(_DeSelectAll value)? deSelectAll,
    required TResult orElse(),
  }) {
    if (deSelectAll != null) {
      return deSelectAll(this);
    }
    return orElse();
  }
}

abstract class _DeSelectAll implements CallLogEvent {
  const factory _DeSelectAll() = _$_DeSelectAll;
}

/// @nodoc
class _$CallLogStateTearOff {
  const _$CallLogStateTearOff();

  CallsLogState call(
      {required List<String> calls,
      required List<CallModel> callLogs,
      required int length,
      required Option<CallLogFailure> deletionSuccessorFailure}) {
    return CallsLogState(
      calls: calls,
      callLogs: callLogs,
      length: length,
      deletionSuccessorFailure: deletionSuccessorFailure,
    );
  }
}

/// @nodoc
const $CallLogState = _$CallLogStateTearOff();

/// @nodoc
mixin _$CallLogState {
  List<String> get calls => throw _privateConstructorUsedError;
  List<CallModel> get callLogs => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  Option<CallLogFailure> get deletionSuccessorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallLogStateCopyWith<CallLogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallLogStateCopyWith<$Res> {
  factory $CallLogStateCopyWith(
          CallLogState value, $Res Function(CallLogState) then) =
      _$CallLogStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> calls,
      List<CallModel> callLogs,
      int length,
      Option<CallLogFailure> deletionSuccessorFailure});
}

/// @nodoc
class _$CallLogStateCopyWithImpl<$Res> implements $CallLogStateCopyWith<$Res> {
  _$CallLogStateCopyWithImpl(this._value, this._then);

  final CallLogState _value;
  // ignore: unused_field
  final $Res Function(CallLogState) _then;

  @override
  $Res call({
    Object? calls = freezed,
    Object? callLogs = freezed,
    Object? length = freezed,
    Object? deletionSuccessorFailure = freezed,
  }) {
    return _then(_value.copyWith(
      calls: calls == freezed
          ? _value.calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      callLogs: callLogs == freezed
          ? _value.callLogs
          : callLogs // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      deletionSuccessorFailure: deletionSuccessorFailure == freezed
          ? _value.deletionSuccessorFailure
          : deletionSuccessorFailure // ignore: cast_nullable_to_non_nullable
              as Option<CallLogFailure>,
    ));
  }
}

/// @nodoc
abstract class $CallsLogStateCopyWith<$Res>
    implements $CallLogStateCopyWith<$Res> {
  factory $CallsLogStateCopyWith(
          CallsLogState value, $Res Function(CallsLogState) then) =
      _$CallsLogStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> calls,
      List<CallModel> callLogs,
      int length,
      Option<CallLogFailure> deletionSuccessorFailure});
}

/// @nodoc
class _$CallsLogStateCopyWithImpl<$Res> extends _$CallLogStateCopyWithImpl<$Res>
    implements $CallsLogStateCopyWith<$Res> {
  _$CallsLogStateCopyWithImpl(
      CallsLogState _value, $Res Function(CallsLogState) _then)
      : super(_value, (v) => _then(v as CallsLogState));

  @override
  CallsLogState get _value => super._value as CallsLogState;

  @override
  $Res call({
    Object? calls = freezed,
    Object? callLogs = freezed,
    Object? length = freezed,
    Object? deletionSuccessorFailure = freezed,
  }) {
    return _then(CallsLogState(
      calls: calls == freezed
          ? _value.calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      callLogs: callLogs == freezed
          ? _value.callLogs
          : callLogs // ignore: cast_nullable_to_non_nullable
              as List<CallModel>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      deletionSuccessorFailure: deletionSuccessorFailure == freezed
          ? _value.deletionSuccessorFailure
          : deletionSuccessorFailure // ignore: cast_nullable_to_non_nullable
              as Option<CallLogFailure>,
    ));
  }
}

/// @nodoc

class _$CallsLogState implements CallsLogState {
  const _$CallsLogState(
      {required this.calls,
      required this.callLogs,
      required this.length,
      required this.deletionSuccessorFailure});

  @override
  final List<String> calls;
  @override
  final List<CallModel> callLogs;
  @override
  final int length;
  @override
  final Option<CallLogFailure> deletionSuccessorFailure;

  @override
  String toString() {
    return 'CallLogState(calls: $calls, callLogs: $callLogs, length: $length, deletionSuccessorFailure: $deletionSuccessorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallsLogState &&
            const DeepCollectionEquality().equals(other.calls, calls) &&
            const DeepCollectionEquality().equals(other.callLogs, callLogs) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(
                other.deletionSuccessorFailure, deletionSuccessorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(calls),
      const DeepCollectionEquality().hash(callLogs),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(deletionSuccessorFailure));

  @JsonKey(ignore: true)
  @override
  $CallsLogStateCopyWith<CallsLogState> get copyWith =>
      _$CallsLogStateCopyWithImpl<CallsLogState>(this, _$identity);
}

abstract class CallsLogState implements CallLogState {
  const factory CallsLogState(
          {required List<String> calls,
          required List<CallModel> callLogs,
          required int length,
          required Option<CallLogFailure> deletionSuccessorFailure}) =
      _$CallsLogState;

  @override
  List<String> get calls;
  @override
  List<CallModel> get callLogs;
  @override
  int get length;
  @override
  Option<CallLogFailure> get deletionSuccessorFailure;
  @override
  @JsonKey(ignore: true)
  $CallsLogStateCopyWith<CallsLogState> get copyWith =>
      throw _privateConstructorUsedError;
}
