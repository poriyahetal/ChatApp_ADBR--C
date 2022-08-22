// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sqlite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SQLiteEventTearOff {
  const _$SQLiteEventTearOff();

  _InitializeDatabase initializeDatabase() {
    return const _InitializeDatabase();
  }

  _GetFilePath getFilePath({required FileLocation filePath}) {
    return _GetFilePath(
      filePath: filePath,
    );
  }

  _SetFilePath setFilePath({required FileLocation filePath}) {
    return _SetFilePath(
      filePath: filePath,
    );
  }
}

/// @nodoc
const $SQLiteEvent = _$SQLiteEventTearOff();

/// @nodoc
mixin _$SQLiteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeDatabase,
    required TResult Function(FileLocation filePath) getFilePath,
    required TResult Function(FileLocation filePath) setFilePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeDatabase value) initializeDatabase,
    required TResult Function(_GetFilePath value) getFilePath,
    required TResult Function(_SetFilePath value) setFilePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SQLiteEventCopyWith<$Res> {
  factory $SQLiteEventCopyWith(
          SQLiteEvent value, $Res Function(SQLiteEvent) then) =
      _$SQLiteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SQLiteEventCopyWithImpl<$Res> implements $SQLiteEventCopyWith<$Res> {
  _$SQLiteEventCopyWithImpl(this._value, this._then);

  final SQLiteEvent _value;
  // ignore: unused_field
  final $Res Function(SQLiteEvent) _then;
}

/// @nodoc
abstract class _$InitializeDatabaseCopyWith<$Res> {
  factory _$InitializeDatabaseCopyWith(
          _InitializeDatabase value, $Res Function(_InitializeDatabase) then) =
      __$InitializeDatabaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeDatabaseCopyWithImpl<$Res>
    extends _$SQLiteEventCopyWithImpl<$Res>
    implements _$InitializeDatabaseCopyWith<$Res> {
  __$InitializeDatabaseCopyWithImpl(
      _InitializeDatabase _value, $Res Function(_InitializeDatabase) _then)
      : super(_value, (v) => _then(v as _InitializeDatabase));

  @override
  _InitializeDatabase get _value => super._value as _InitializeDatabase;
}

/// @nodoc

class _$_InitializeDatabase implements _InitializeDatabase {
  const _$_InitializeDatabase();

  @override
  String toString() {
    return 'SQLiteEvent.initializeDatabase()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitializeDatabase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeDatabase,
    required TResult Function(FileLocation filePath) getFilePath,
    required TResult Function(FileLocation filePath) setFilePath,
  }) {
    return initializeDatabase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
  }) {
    return initializeDatabase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
    required TResult orElse(),
  }) {
    if (initializeDatabase != null) {
      return initializeDatabase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeDatabase value) initializeDatabase,
    required TResult Function(_GetFilePath value) getFilePath,
    required TResult Function(_SetFilePath value) setFilePath,
  }) {
    return initializeDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
  }) {
    return initializeDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
    required TResult orElse(),
  }) {
    if (initializeDatabase != null) {
      return initializeDatabase(this);
    }
    return orElse();
  }
}

abstract class _InitializeDatabase implements SQLiteEvent {
  const factory _InitializeDatabase() = _$_InitializeDatabase;
}

/// @nodoc
abstract class _$GetFilePathCopyWith<$Res> {
  factory _$GetFilePathCopyWith(
          _GetFilePath value, $Res Function(_GetFilePath) then) =
      __$GetFilePathCopyWithImpl<$Res>;
  $Res call({FileLocation filePath});
}

/// @nodoc
class __$GetFilePathCopyWithImpl<$Res> extends _$SQLiteEventCopyWithImpl<$Res>
    implements _$GetFilePathCopyWith<$Res> {
  __$GetFilePathCopyWithImpl(
      _GetFilePath _value, $Res Function(_GetFilePath) _then)
      : super(_value, (v) => _then(v as _GetFilePath));

  @override
  _GetFilePath get _value => super._value as _GetFilePath;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(_GetFilePath(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as FileLocation,
    ));
  }
}

/// @nodoc

class _$_GetFilePath implements _GetFilePath {
  const _$_GetFilePath({required this.filePath});

  @override
  final FileLocation filePath;

  @override
  String toString() {
    return 'SQLiteEvent.getFilePath(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFilePath &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  _$GetFilePathCopyWith<_GetFilePath> get copyWith =>
      __$GetFilePathCopyWithImpl<_GetFilePath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeDatabase,
    required TResult Function(FileLocation filePath) getFilePath,
    required TResult Function(FileLocation filePath) setFilePath,
  }) {
    return getFilePath(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
  }) {
    return getFilePath?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
    required TResult orElse(),
  }) {
    if (getFilePath != null) {
      return getFilePath(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeDatabase value) initializeDatabase,
    required TResult Function(_GetFilePath value) getFilePath,
    required TResult Function(_SetFilePath value) setFilePath,
  }) {
    return getFilePath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
  }) {
    return getFilePath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
    required TResult orElse(),
  }) {
    if (getFilePath != null) {
      return getFilePath(this);
    }
    return orElse();
  }
}

abstract class _GetFilePath implements SQLiteEvent {
  const factory _GetFilePath({required FileLocation filePath}) = _$_GetFilePath;

  FileLocation get filePath;
  @JsonKey(ignore: true)
  _$GetFilePathCopyWith<_GetFilePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetFilePathCopyWith<$Res> {
  factory _$SetFilePathCopyWith(
          _SetFilePath value, $Res Function(_SetFilePath) then) =
      __$SetFilePathCopyWithImpl<$Res>;
  $Res call({FileLocation filePath});
}

/// @nodoc
class __$SetFilePathCopyWithImpl<$Res> extends _$SQLiteEventCopyWithImpl<$Res>
    implements _$SetFilePathCopyWith<$Res> {
  __$SetFilePathCopyWithImpl(
      _SetFilePath _value, $Res Function(_SetFilePath) _then)
      : super(_value, (v) => _then(v as _SetFilePath));

  @override
  _SetFilePath get _value => super._value as _SetFilePath;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(_SetFilePath(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as FileLocation,
    ));
  }
}

/// @nodoc

class _$_SetFilePath implements _SetFilePath {
  const _$_SetFilePath({required this.filePath});

  @override
  final FileLocation filePath;

  @override
  String toString() {
    return 'SQLiteEvent.setFilePath(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetFilePath &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  _$SetFilePathCopyWith<_SetFilePath> get copyWith =>
      __$SetFilePathCopyWithImpl<_SetFilePath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeDatabase,
    required TResult Function(FileLocation filePath) getFilePath,
    required TResult Function(FileLocation filePath) setFilePath,
  }) {
    return setFilePath(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
  }) {
    return setFilePath?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeDatabase,
    TResult Function(FileLocation filePath)? getFilePath,
    TResult Function(FileLocation filePath)? setFilePath,
    required TResult orElse(),
  }) {
    if (setFilePath != null) {
      return setFilePath(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeDatabase value) initializeDatabase,
    required TResult Function(_GetFilePath value) getFilePath,
    required TResult Function(_SetFilePath value) setFilePath,
  }) {
    return setFilePath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
  }) {
    return setFilePath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeDatabase value)? initializeDatabase,
    TResult Function(_GetFilePath value)? getFilePath,
    TResult Function(_SetFilePath value)? setFilePath,
    required TResult orElse(),
  }) {
    if (setFilePath != null) {
      return setFilePath(this);
    }
    return orElse();
  }
}

abstract class _SetFilePath implements SQLiteEvent {
  const factory _SetFilePath({required FileLocation filePath}) = _$_SetFilePath;

  FileLocation get filePath;
  @JsonKey(ignore: true)
  _$SetFilePathCopyWith<_SetFilePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SQLiteStateTearOff {
  const _$SQLiteStateTearOff();

  _SQLite call(
      {required String filePath,
      required Option<Either<SQLiteFailure, String>>
          getFileLocationFailureOrSuccessOption}) {
    return _SQLite(
      filePath: filePath,
      getFileLocationFailureOrSuccessOption:
          getFileLocationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SQLiteState = _$SQLiteStateTearOff();

/// @nodoc
mixin _$SQLiteState {
  String get filePath => throw _privateConstructorUsedError;
  Option<Either<SQLiteFailure, String>>
      get getFileLocationFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SQLiteStateCopyWith<SQLiteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SQLiteStateCopyWith<$Res> {
  factory $SQLiteStateCopyWith(
          SQLiteState value, $Res Function(SQLiteState) then) =
      _$SQLiteStateCopyWithImpl<$Res>;
  $Res call(
      {String filePath,
      Option<Either<SQLiteFailure, String>>
          getFileLocationFailureOrSuccessOption});
}

/// @nodoc
class _$SQLiteStateCopyWithImpl<$Res> implements $SQLiteStateCopyWith<$Res> {
  _$SQLiteStateCopyWithImpl(this._value, this._then);

  final SQLiteState _value;
  // ignore: unused_field
  final $Res Function(SQLiteState) _then;

  @override
  $Res call({
    Object? filePath = freezed,
    Object? getFileLocationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      getFileLocationFailureOrSuccessOption:
          getFileLocationFailureOrSuccessOption == freezed
              ? _value.getFileLocationFailureOrSuccessOption
              : getFileLocationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<SQLiteFailure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$SQLiteCopyWith<$Res> implements $SQLiteStateCopyWith<$Res> {
  factory _$SQLiteCopyWith(_SQLite value, $Res Function(_SQLite) then) =
      __$SQLiteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String filePath,
      Option<Either<SQLiteFailure, String>>
          getFileLocationFailureOrSuccessOption});
}

/// @nodoc
class __$SQLiteCopyWithImpl<$Res> extends _$SQLiteStateCopyWithImpl<$Res>
    implements _$SQLiteCopyWith<$Res> {
  __$SQLiteCopyWithImpl(_SQLite _value, $Res Function(_SQLite) _then)
      : super(_value, (v) => _then(v as _SQLite));

  @override
  _SQLite get _value => super._value as _SQLite;

  @override
  $Res call({
    Object? filePath = freezed,
    Object? getFileLocationFailureOrSuccessOption = freezed,
  }) {
    return _then(_SQLite(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      getFileLocationFailureOrSuccessOption:
          getFileLocationFailureOrSuccessOption == freezed
              ? _value.getFileLocationFailureOrSuccessOption
              : getFileLocationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<SQLiteFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_SQLite implements _SQLite {
  _$_SQLite(
      {required this.filePath,
      required this.getFileLocationFailureOrSuccessOption});

  @override
  final String filePath;
  @override
  final Option<Either<SQLiteFailure, String>>
      getFileLocationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SQLiteState(filePath: $filePath, getFileLocationFailureOrSuccessOption: $getFileLocationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SQLite &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(
                other.getFileLocationFailureOrSuccessOption,
                getFileLocationFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality()
          .hash(getFileLocationFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SQLiteCopyWith<_SQLite> get copyWith =>
      __$SQLiteCopyWithImpl<_SQLite>(this, _$identity);
}

abstract class _SQLite implements SQLiteState {
  factory _SQLite(
      {required String filePath,
      required Option<Either<SQLiteFailure, String>>
          getFileLocationFailureOrSuccessOption}) = _$_SQLite;

  @override
  String get filePath;
  @override
  Option<Either<SQLiteFailure, String>>
      get getFileLocationFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SQLiteCopyWith<_SQLite> get copyWith => throw _privateConstructorUsedError;
}
