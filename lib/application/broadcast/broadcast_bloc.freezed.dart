// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'broadcast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BroadcastEventTearOff {
  const _$BroadcastEventTearOff();

  _CreateBroadcast createBroadcast({required KahoChatUser sender}) {
    return _CreateBroadcast(
      sender: sender,
    );
  }

  _SendMessage sendMessage() {
    return const _SendMessage();
  }

  _SetBroadcastName setBroadcastName(String name) {
    return _SetBroadcastName(
      name,
    );
  }

  _SetBroadcastRecipients setBroadcastRecipients(
      List<KahoChatUser> recipients) {
    return _SetBroadcastRecipients(
      recipients,
    );
  }
}

/// @nodoc
const $BroadcastEvent = _$BroadcastEventTearOff();

/// @nodoc
mixin _$BroadcastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KahoChatUser sender) createBroadcast,
    required TResult Function() sendMessage,
    required TResult Function(String name) setBroadcastName,
    required TResult Function(List<KahoChatUser> recipients)
        setBroadcastRecipients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBroadcast value) createBroadcast,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SetBroadcastName value) setBroadcastName,
    required TResult Function(_SetBroadcastRecipients value)
        setBroadcastRecipients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastEventCopyWith<$Res> {
  factory $BroadcastEventCopyWith(
          BroadcastEvent value, $Res Function(BroadcastEvent) then) =
      _$BroadcastEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BroadcastEventCopyWithImpl<$Res>
    implements $BroadcastEventCopyWith<$Res> {
  _$BroadcastEventCopyWithImpl(this._value, this._then);

  final BroadcastEvent _value;
  // ignore: unused_field
  final $Res Function(BroadcastEvent) _then;
}

/// @nodoc
abstract class _$CreateBroadcastCopyWith<$Res> {
  factory _$CreateBroadcastCopyWith(
          _CreateBroadcast value, $Res Function(_CreateBroadcast) then) =
      __$CreateBroadcastCopyWithImpl<$Res>;
  $Res call({KahoChatUser sender});
}

/// @nodoc
class __$CreateBroadcastCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements _$CreateBroadcastCopyWith<$Res> {
  __$CreateBroadcastCopyWithImpl(
      _CreateBroadcast _value, $Res Function(_CreateBroadcast) _then)
      : super(_value, (v) => _then(v as _CreateBroadcast));

  @override
  _CreateBroadcast get _value => super._value as _CreateBroadcast;

  @override
  $Res call({
    Object? sender = freezed,
  }) {
    return _then(_CreateBroadcast(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_CreateBroadcast implements _CreateBroadcast {
  const _$_CreateBroadcast({required this.sender});

  @override
  final KahoChatUser sender;

  @override
  String toString() {
    return 'BroadcastEvent.createBroadcast(sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateBroadcast &&
            const DeepCollectionEquality().equals(other.sender, sender));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sender));

  @JsonKey(ignore: true)
  @override
  _$CreateBroadcastCopyWith<_CreateBroadcast> get copyWith =>
      __$CreateBroadcastCopyWithImpl<_CreateBroadcast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KahoChatUser sender) createBroadcast,
    required TResult Function() sendMessage,
    required TResult Function(String name) setBroadcastName,
    required TResult Function(List<KahoChatUser> recipients)
        setBroadcastRecipients,
  }) {
    return createBroadcast(sender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
  }) {
    return createBroadcast?.call(sender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (createBroadcast != null) {
      return createBroadcast(sender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBroadcast value) createBroadcast,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SetBroadcastName value) setBroadcastName,
    required TResult Function(_SetBroadcastRecipients value)
        setBroadcastRecipients,
  }) {
    return createBroadcast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
  }) {
    return createBroadcast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (createBroadcast != null) {
      return createBroadcast(this);
    }
    return orElse();
  }
}

abstract class _CreateBroadcast implements BroadcastEvent {
  const factory _CreateBroadcast({required KahoChatUser sender}) =
      _$_CreateBroadcast;

  KahoChatUser get sender;
  @JsonKey(ignore: true)
  _$CreateBroadcastCopyWith<_CreateBroadcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage();

  @override
  String toString() {
    return 'BroadcastEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KahoChatUser sender) createBroadcast,
    required TResult Function() sendMessage,
    required TResult Function(String name) setBroadcastName,
    required TResult Function(List<KahoChatUser> recipients)
        setBroadcastRecipients,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBroadcast value) createBroadcast,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SetBroadcastName value) setBroadcastName,
    required TResult Function(_SetBroadcastRecipients value)
        setBroadcastRecipients,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements BroadcastEvent {
  const factory _SendMessage() = _$_SendMessage;
}

/// @nodoc
abstract class _$SetBroadcastNameCopyWith<$Res> {
  factory _$SetBroadcastNameCopyWith(
          _SetBroadcastName value, $Res Function(_SetBroadcastName) then) =
      __$SetBroadcastNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$SetBroadcastNameCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements _$SetBroadcastNameCopyWith<$Res> {
  __$SetBroadcastNameCopyWithImpl(
      _SetBroadcastName _value, $Res Function(_SetBroadcastName) _then)
      : super(_value, (v) => _then(v as _SetBroadcastName));

  @override
  _SetBroadcastName get _value => super._value as _SetBroadcastName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_SetBroadcastName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetBroadcastName implements _SetBroadcastName {
  const _$_SetBroadcastName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'BroadcastEvent.setBroadcastName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetBroadcastName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$SetBroadcastNameCopyWith<_SetBroadcastName> get copyWith =>
      __$SetBroadcastNameCopyWithImpl<_SetBroadcastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KahoChatUser sender) createBroadcast,
    required TResult Function() sendMessage,
    required TResult Function(String name) setBroadcastName,
    required TResult Function(List<KahoChatUser> recipients)
        setBroadcastRecipients,
  }) {
    return setBroadcastName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
  }) {
    return setBroadcastName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (setBroadcastName != null) {
      return setBroadcastName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBroadcast value) createBroadcast,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SetBroadcastName value) setBroadcastName,
    required TResult Function(_SetBroadcastRecipients value)
        setBroadcastRecipients,
  }) {
    return setBroadcastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
  }) {
    return setBroadcastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (setBroadcastName != null) {
      return setBroadcastName(this);
    }
    return orElse();
  }
}

abstract class _SetBroadcastName implements BroadcastEvent {
  const factory _SetBroadcastName(String name) = _$_SetBroadcastName;

  String get name;
  @JsonKey(ignore: true)
  _$SetBroadcastNameCopyWith<_SetBroadcastName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetBroadcastRecipientsCopyWith<$Res> {
  factory _$SetBroadcastRecipientsCopyWith(_SetBroadcastRecipients value,
          $Res Function(_SetBroadcastRecipients) then) =
      __$SetBroadcastRecipientsCopyWithImpl<$Res>;
  $Res call({List<KahoChatUser> recipients});
}

/// @nodoc
class __$SetBroadcastRecipientsCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements _$SetBroadcastRecipientsCopyWith<$Res> {
  __$SetBroadcastRecipientsCopyWithImpl(_SetBroadcastRecipients _value,
      $Res Function(_SetBroadcastRecipients) _then)
      : super(_value, (v) => _then(v as _SetBroadcastRecipients));

  @override
  _SetBroadcastRecipients get _value => super._value as _SetBroadcastRecipients;

  @override
  $Res call({
    Object? recipients = freezed,
  }) {
    return _then(_SetBroadcastRecipients(
      recipients == freezed
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
    ));
  }
}

/// @nodoc

class _$_SetBroadcastRecipients implements _SetBroadcastRecipients {
  const _$_SetBroadcastRecipients(this.recipients);

  @override
  final List<KahoChatUser> recipients;

  @override
  String toString() {
    return 'BroadcastEvent.setBroadcastRecipients(recipients: $recipients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetBroadcastRecipients &&
            const DeepCollectionEquality()
                .equals(other.recipients, recipients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipients));

  @JsonKey(ignore: true)
  @override
  _$SetBroadcastRecipientsCopyWith<_SetBroadcastRecipients> get copyWith =>
      __$SetBroadcastRecipientsCopyWithImpl<_SetBroadcastRecipients>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KahoChatUser sender) createBroadcast,
    required TResult Function() sendMessage,
    required TResult Function(String name) setBroadcastName,
    required TResult Function(List<KahoChatUser> recipients)
        setBroadcastRecipients,
  }) {
    return setBroadcastRecipients(recipients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
  }) {
    return setBroadcastRecipients?.call(recipients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KahoChatUser sender)? createBroadcast,
    TResult Function()? sendMessage,
    TResult Function(String name)? setBroadcastName,
    TResult Function(List<KahoChatUser> recipients)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (setBroadcastRecipients != null) {
      return setBroadcastRecipients(recipients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBroadcast value) createBroadcast,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SetBroadcastName value) setBroadcastName,
    required TResult Function(_SetBroadcastRecipients value)
        setBroadcastRecipients,
  }) {
    return setBroadcastRecipients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
  }) {
    return setBroadcastRecipients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBroadcast value)? createBroadcast,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SetBroadcastName value)? setBroadcastName,
    TResult Function(_SetBroadcastRecipients value)? setBroadcastRecipients,
    required TResult orElse(),
  }) {
    if (setBroadcastRecipients != null) {
      return setBroadcastRecipients(this);
    }
    return orElse();
  }
}

abstract class _SetBroadcastRecipients implements BroadcastEvent {
  const factory _SetBroadcastRecipients(List<KahoChatUser> recipients) =
      _$_SetBroadcastRecipients;

  List<KahoChatUser> get recipients;
  @JsonKey(ignore: true)
  _$SetBroadcastRecipientsCopyWith<_SetBroadcastRecipients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BroadcastStateTearOff {
  const _$BroadcastStateTearOff();

  _BroadcastState call(
      {required List<KahoChatUser> recipients,
      required String broadcastName,
      required Option<Either<BroadcastFailure, Unit>>
          createBroadcastFailureOrSuccessOption}) {
    return _BroadcastState(
      recipients: recipients,
      broadcastName: broadcastName,
      createBroadcastFailureOrSuccessOption:
          createBroadcastFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $BroadcastState = _$BroadcastStateTearOff();

/// @nodoc
mixin _$BroadcastState {
  List<KahoChatUser> get recipients => throw _privateConstructorUsedError;
  String get broadcastName => throw _privateConstructorUsedError;
  Option<Either<BroadcastFailure, Unit>>
      get createBroadcastFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastStateCopyWith<BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastStateCopyWith<$Res> {
  factory $BroadcastStateCopyWith(
          BroadcastState value, $Res Function(BroadcastState) then) =
      _$BroadcastStateCopyWithImpl<$Res>;
  $Res call(
      {List<KahoChatUser> recipients,
      String broadcastName,
      Option<Either<BroadcastFailure, Unit>>
          createBroadcastFailureOrSuccessOption});
}

/// @nodoc
class _$BroadcastStateCopyWithImpl<$Res>
    implements $BroadcastStateCopyWith<$Res> {
  _$BroadcastStateCopyWithImpl(this._value, this._then);

  final BroadcastState _value;
  // ignore: unused_field
  final $Res Function(BroadcastState) _then;

  @override
  $Res call({
    Object? recipients = freezed,
    Object? broadcastName = freezed,
    Object? createBroadcastFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      recipients: recipients == freezed
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
      broadcastName: broadcastName == freezed
          ? _value.broadcastName
          : broadcastName // ignore: cast_nullable_to_non_nullable
              as String,
      createBroadcastFailureOrSuccessOption:
          createBroadcastFailureOrSuccessOption == freezed
              ? _value.createBroadcastFailureOrSuccessOption
              : createBroadcastFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<BroadcastFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$BroadcastStateCopyWith<$Res>
    implements $BroadcastStateCopyWith<$Res> {
  factory _$BroadcastStateCopyWith(
          _BroadcastState value, $Res Function(_BroadcastState) then) =
      __$BroadcastStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<KahoChatUser> recipients,
      String broadcastName,
      Option<Either<BroadcastFailure, Unit>>
          createBroadcastFailureOrSuccessOption});
}

/// @nodoc
class __$BroadcastStateCopyWithImpl<$Res>
    extends _$BroadcastStateCopyWithImpl<$Res>
    implements _$BroadcastStateCopyWith<$Res> {
  __$BroadcastStateCopyWithImpl(
      _BroadcastState _value, $Res Function(_BroadcastState) _then)
      : super(_value, (v) => _then(v as _BroadcastState));

  @override
  _BroadcastState get _value => super._value as _BroadcastState;

  @override
  $Res call({
    Object? recipients = freezed,
    Object? broadcastName = freezed,
    Object? createBroadcastFailureOrSuccessOption = freezed,
  }) {
    return _then(_BroadcastState(
      recipients: recipients == freezed
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<KahoChatUser>,
      broadcastName: broadcastName == freezed
          ? _value.broadcastName
          : broadcastName // ignore: cast_nullable_to_non_nullable
              as String,
      createBroadcastFailureOrSuccessOption:
          createBroadcastFailureOrSuccessOption == freezed
              ? _value.createBroadcastFailureOrSuccessOption
              : createBroadcastFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<BroadcastFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_BroadcastState implements _BroadcastState {
  const _$_BroadcastState(
      {required this.recipients,
      required this.broadcastName,
      required this.createBroadcastFailureOrSuccessOption});

  @override
  final List<KahoChatUser> recipients;
  @override
  final String broadcastName;
  @override
  final Option<Either<BroadcastFailure, Unit>>
      createBroadcastFailureOrSuccessOption;

  @override
  String toString() {
    return 'BroadcastState(recipients: $recipients, broadcastName: $broadcastName, createBroadcastFailureOrSuccessOption: $createBroadcastFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BroadcastState &&
            const DeepCollectionEquality()
                .equals(other.recipients, recipients) &&
            const DeepCollectionEquality()
                .equals(other.broadcastName, broadcastName) &&
            const DeepCollectionEquality().equals(
                other.createBroadcastFailureOrSuccessOption,
                createBroadcastFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipients),
      const DeepCollectionEquality().hash(broadcastName),
      const DeepCollectionEquality()
          .hash(createBroadcastFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$BroadcastStateCopyWith<_BroadcastState> get copyWith =>
      __$BroadcastStateCopyWithImpl<_BroadcastState>(this, _$identity);
}

abstract class _BroadcastState implements BroadcastState {
  const factory _BroadcastState(
      {required List<KahoChatUser> recipients,
      required String broadcastName,
      required Option<Either<BroadcastFailure, Unit>>
          createBroadcastFailureOrSuccessOption}) = _$_BroadcastState;

  @override
  List<KahoChatUser> get recipients;
  @override
  String get broadcastName;
  @override
  Option<Either<BroadcastFailure, Unit>>
      get createBroadcastFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$BroadcastStateCopyWith<_BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}
