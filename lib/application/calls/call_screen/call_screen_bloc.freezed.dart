// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'call_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CallScreenEventTearOff {
  const _$CallScreenEventTearOff();

  _Started callStarted(RtcEngine engine, CallType callType) {
    return _Started(
      engine,
      callType,
    );
  }

  _RemoteAudioStateChanged remoteAudioStateChanged(bool muted) {
    return _RemoteAudioStateChanged(
      muted,
    );
  }

  _RemoteVideoStateChanged remoteVideoStateChanged(bool videoDisabled) {
    return _RemoteVideoStateChanged(
      videoDisabled,
    );
  }

  _SetEnableSpeakerPhone setEnableSpeakerPhone() {
    return const _SetEnableSpeakerPhone();
  }

  _MuteLocalAudioStream muteLocalAudioStream() {
    return const _MuteLocalAudioStream();
  }

  _JoinChannelSuccess joinChannelSuccess() {
    return const _JoinChannelSuccess();
  }

  _Stopped callStopped() {
    return const _Stopped();
  }

  _Minimize minimize() {
    return const _Minimize();
  }

  _Maximize maximize() {
    return const _Maximize();
  }

  _AddUser addUser(int uid) {
    return _AddUser(
      uid,
    );
  }

  _RemoveUser removeUser(int uid) {
    return _RemoveUser(
      uid,
    );
  }

  _ChangeLocalCameraState changeLocalCameraState() {
    return const _ChangeLocalCameraState();
  }

  _StartTimer startTimer(StopWatchTimer stopWatchTimer) {
    return _StartTimer(
      stopWatchTimer,
    );
  }

  _StopTimer stopTimer() {
    return const _StopTimer();
  }

  _StartDialeTone startDialeTone({required bool isDialerTonePlaying}) {
    return _StartDialeTone(
      isDialerTonePlaying: isDialerTonePlaying,
    );
  }

  _UpdateTimeByASecond updateTimeByASecond() {
    return const _UpdateTimeByASecond();
  }

  _EnableDisableToolBar enableDisableToolBar({required bool isEnabled}) {
    return _EnableDisableToolBar(
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $CallScreenEvent = _$CallScreenEventTearOff();

/// @nodoc
mixin _$CallScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallScreenEventCopyWith<$Res> {
  factory $CallScreenEventCopyWith(
          CallScreenEvent value, $Res Function(CallScreenEvent) then) =
      _$CallScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CallScreenEventCopyWithImpl<$Res>
    implements $CallScreenEventCopyWith<$Res> {
  _$CallScreenEventCopyWithImpl(this._value, this._then);

  final CallScreenEvent _value;
  // ignore: unused_field
  final $Res Function(CallScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({RtcEngine engine, CallType callType});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? engine = freezed,
    Object? callType = freezed,
  }) {
    return _then(_Started(
      engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
      callType == freezed
          ? _value.callType
          : callType // ignore: cast_nullable_to_non_nullable
              as CallType,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.engine, this.callType);

  @override
  final RtcEngine engine;
  @override
  final CallType callType;

  @override
  String toString() {
    return 'CallScreenEvent.callStarted(engine: $engine, callType: $callType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality().equals(other.callType, callType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(callType));

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return callStarted(engine, callType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return callStarted?.call(engine, callType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (callStarted != null) {
      return callStarted(engine, callType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return callStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return callStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (callStarted != null) {
      return callStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements CallScreenEvent {
  const factory _Started(RtcEngine engine, CallType callType) = _$_Started;

  RtcEngine get engine;
  CallType get callType;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoteAudioStateChangedCopyWith<$Res> {
  factory _$RemoteAudioStateChangedCopyWith(_RemoteAudioStateChanged value,
          $Res Function(_RemoteAudioStateChanged) then) =
      __$RemoteAudioStateChangedCopyWithImpl<$Res>;
  $Res call({bool muted});
}

/// @nodoc
class __$RemoteAudioStateChangedCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$RemoteAudioStateChangedCopyWith<$Res> {
  __$RemoteAudioStateChangedCopyWithImpl(_RemoteAudioStateChanged _value,
      $Res Function(_RemoteAudioStateChanged) _then)
      : super(_value, (v) => _then(v as _RemoteAudioStateChanged));

  @override
  _RemoteAudioStateChanged get _value =>
      super._value as _RemoteAudioStateChanged;

  @override
  $Res call({
    Object? muted = freezed,
  }) {
    return _then(_RemoteAudioStateChanged(
      muted == freezed
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RemoteAudioStateChanged implements _RemoteAudioStateChanged {
  const _$_RemoteAudioStateChanged(this.muted);

  @override
  final bool muted;

  @override
  String toString() {
    return 'CallScreenEvent.remoteAudioStateChanged(muted: $muted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteAudioStateChanged &&
            const DeepCollectionEquality().equals(other.muted, muted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(muted));

  @JsonKey(ignore: true)
  @override
  _$RemoteAudioStateChangedCopyWith<_RemoteAudioStateChanged> get copyWith =>
      __$RemoteAudioStateChangedCopyWithImpl<_RemoteAudioStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return remoteAudioStateChanged(muted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return remoteAudioStateChanged?.call(muted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (remoteAudioStateChanged != null) {
      return remoteAudioStateChanged(muted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return remoteAudioStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return remoteAudioStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (remoteAudioStateChanged != null) {
      return remoteAudioStateChanged(this);
    }
    return orElse();
  }
}

abstract class _RemoteAudioStateChanged implements CallScreenEvent {
  const factory _RemoteAudioStateChanged(bool muted) =
      _$_RemoteAudioStateChanged;

  bool get muted;
  @JsonKey(ignore: true)
  _$RemoteAudioStateChangedCopyWith<_RemoteAudioStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoteVideoStateChangedCopyWith<$Res> {
  factory _$RemoteVideoStateChangedCopyWith(_RemoteVideoStateChanged value,
          $Res Function(_RemoteVideoStateChanged) then) =
      __$RemoteVideoStateChangedCopyWithImpl<$Res>;
  $Res call({bool videoDisabled});
}

/// @nodoc
class __$RemoteVideoStateChangedCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$RemoteVideoStateChangedCopyWith<$Res> {
  __$RemoteVideoStateChangedCopyWithImpl(_RemoteVideoStateChanged _value,
      $Res Function(_RemoteVideoStateChanged) _then)
      : super(_value, (v) => _then(v as _RemoteVideoStateChanged));

  @override
  _RemoteVideoStateChanged get _value =>
      super._value as _RemoteVideoStateChanged;

  @override
  $Res call({
    Object? videoDisabled = freezed,
  }) {
    return _then(_RemoteVideoStateChanged(
      videoDisabled == freezed
          ? _value.videoDisabled
          : videoDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RemoteVideoStateChanged implements _RemoteVideoStateChanged {
  const _$_RemoteVideoStateChanged(this.videoDisabled);

  @override
  final bool videoDisabled;

  @override
  String toString() {
    return 'CallScreenEvent.remoteVideoStateChanged(videoDisabled: $videoDisabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteVideoStateChanged &&
            const DeepCollectionEquality()
                .equals(other.videoDisabled, videoDisabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(videoDisabled));

  @JsonKey(ignore: true)
  @override
  _$RemoteVideoStateChangedCopyWith<_RemoteVideoStateChanged> get copyWith =>
      __$RemoteVideoStateChangedCopyWithImpl<_RemoteVideoStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return remoteVideoStateChanged(videoDisabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return remoteVideoStateChanged?.call(videoDisabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (remoteVideoStateChanged != null) {
      return remoteVideoStateChanged(videoDisabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return remoteVideoStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return remoteVideoStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (remoteVideoStateChanged != null) {
      return remoteVideoStateChanged(this);
    }
    return orElse();
  }
}

abstract class _RemoteVideoStateChanged implements CallScreenEvent {
  const factory _RemoteVideoStateChanged(bool videoDisabled) =
      _$_RemoteVideoStateChanged;

  bool get videoDisabled;
  @JsonKey(ignore: true)
  _$RemoteVideoStateChangedCopyWith<_RemoteVideoStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetEnableSpeakerPhoneCopyWith<$Res> {
  factory _$SetEnableSpeakerPhoneCopyWith(_SetEnableSpeakerPhone value,
          $Res Function(_SetEnableSpeakerPhone) then) =
      __$SetEnableSpeakerPhoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetEnableSpeakerPhoneCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$SetEnableSpeakerPhoneCopyWith<$Res> {
  __$SetEnableSpeakerPhoneCopyWithImpl(_SetEnableSpeakerPhone _value,
      $Res Function(_SetEnableSpeakerPhone) _then)
      : super(_value, (v) => _then(v as _SetEnableSpeakerPhone));

  @override
  _SetEnableSpeakerPhone get _value => super._value as _SetEnableSpeakerPhone;
}

/// @nodoc

class _$_SetEnableSpeakerPhone implements _SetEnableSpeakerPhone {
  const _$_SetEnableSpeakerPhone();

  @override
  String toString() {
    return 'CallScreenEvent.setEnableSpeakerPhone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetEnableSpeakerPhone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return setEnableSpeakerPhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return setEnableSpeakerPhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (setEnableSpeakerPhone != null) {
      return setEnableSpeakerPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return setEnableSpeakerPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return setEnableSpeakerPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (setEnableSpeakerPhone != null) {
      return setEnableSpeakerPhone(this);
    }
    return orElse();
  }
}

abstract class _SetEnableSpeakerPhone implements CallScreenEvent {
  const factory _SetEnableSpeakerPhone() = _$_SetEnableSpeakerPhone;
}

/// @nodoc
abstract class _$MuteLocalAudioStreamCopyWith<$Res> {
  factory _$MuteLocalAudioStreamCopyWith(_MuteLocalAudioStream value,
          $Res Function(_MuteLocalAudioStream) then) =
      __$MuteLocalAudioStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$MuteLocalAudioStreamCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$MuteLocalAudioStreamCopyWith<$Res> {
  __$MuteLocalAudioStreamCopyWithImpl(
      _MuteLocalAudioStream _value, $Res Function(_MuteLocalAudioStream) _then)
      : super(_value, (v) => _then(v as _MuteLocalAudioStream));

  @override
  _MuteLocalAudioStream get _value => super._value as _MuteLocalAudioStream;
}

/// @nodoc

class _$_MuteLocalAudioStream implements _MuteLocalAudioStream {
  const _$_MuteLocalAudioStream();

  @override
  String toString() {
    return 'CallScreenEvent.muteLocalAudioStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MuteLocalAudioStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return muteLocalAudioStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return muteLocalAudioStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (muteLocalAudioStream != null) {
      return muteLocalAudioStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return muteLocalAudioStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return muteLocalAudioStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (muteLocalAudioStream != null) {
      return muteLocalAudioStream(this);
    }
    return orElse();
  }
}

abstract class _MuteLocalAudioStream implements CallScreenEvent {
  const factory _MuteLocalAudioStream() = _$_MuteLocalAudioStream;
}

/// @nodoc
abstract class _$JoinChannelSuccessCopyWith<$Res> {
  factory _$JoinChannelSuccessCopyWith(
          _JoinChannelSuccess value, $Res Function(_JoinChannelSuccess) then) =
      __$JoinChannelSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$JoinChannelSuccessCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$JoinChannelSuccessCopyWith<$Res> {
  __$JoinChannelSuccessCopyWithImpl(
      _JoinChannelSuccess _value, $Res Function(_JoinChannelSuccess) _then)
      : super(_value, (v) => _then(v as _JoinChannelSuccess));

  @override
  _JoinChannelSuccess get _value => super._value as _JoinChannelSuccess;
}

/// @nodoc

class _$_JoinChannelSuccess implements _JoinChannelSuccess {
  const _$_JoinChannelSuccess();

  @override
  String toString() {
    return 'CallScreenEvent.joinChannelSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _JoinChannelSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return joinChannelSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return joinChannelSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return joinChannelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return joinChannelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelSuccess implements CallScreenEvent {
  const factory _JoinChannelSuccess() = _$_JoinChannelSuccess;
}

/// @nodoc
abstract class _$StoppedCopyWith<$Res> {
  factory _$StoppedCopyWith(_Stopped value, $Res Function(_Stopped) then) =
      __$StoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StoppedCopyWithImpl<$Res> extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$StoppedCopyWith<$Res> {
  __$StoppedCopyWithImpl(_Stopped _value, $Res Function(_Stopped) _then)
      : super(_value, (v) => _then(v as _Stopped));

  @override
  _Stopped get _value => super._value as _Stopped;
}

/// @nodoc

class _$_Stopped implements _Stopped {
  const _$_Stopped();

  @override
  String toString() {
    return 'CallScreenEvent.callStopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return callStopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return callStopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (callStopped != null) {
      return callStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return callStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return callStopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (callStopped != null) {
      return callStopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements CallScreenEvent {
  const factory _Stopped() = _$_Stopped;
}

/// @nodoc
abstract class _$MinimizeCopyWith<$Res> {
  factory _$MinimizeCopyWith(_Minimize value, $Res Function(_Minimize) then) =
      __$MinimizeCopyWithImpl<$Res>;
}

/// @nodoc
class __$MinimizeCopyWithImpl<$Res> extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$MinimizeCopyWith<$Res> {
  __$MinimizeCopyWithImpl(_Minimize _value, $Res Function(_Minimize) _then)
      : super(_value, (v) => _then(v as _Minimize));

  @override
  _Minimize get _value => super._value as _Minimize;
}

/// @nodoc

class _$_Minimize implements _Minimize {
  const _$_Minimize();

  @override
  String toString() {
    return 'CallScreenEvent.minimize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Minimize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return minimize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return minimize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (minimize != null) {
      return minimize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return minimize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return minimize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (minimize != null) {
      return minimize(this);
    }
    return orElse();
  }
}

abstract class _Minimize implements CallScreenEvent {
  const factory _Minimize() = _$_Minimize;
}

/// @nodoc
abstract class _$MaximizeCopyWith<$Res> {
  factory _$MaximizeCopyWith(_Maximize value, $Res Function(_Maximize) then) =
      __$MaximizeCopyWithImpl<$Res>;
}

/// @nodoc
class __$MaximizeCopyWithImpl<$Res> extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$MaximizeCopyWith<$Res> {
  __$MaximizeCopyWithImpl(_Maximize _value, $Res Function(_Maximize) _then)
      : super(_value, (v) => _then(v as _Maximize));

  @override
  _Maximize get _value => super._value as _Maximize;
}

/// @nodoc

class _$_Maximize implements _Maximize {
  const _$_Maximize();

  @override
  String toString() {
    return 'CallScreenEvent.maximize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Maximize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return maximize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return maximize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (maximize != null) {
      return maximize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return maximize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return maximize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (maximize != null) {
      return maximize(this);
    }
    return orElse();
  }
}

abstract class _Maximize implements CallScreenEvent {
  const factory _Maximize() = _$_Maximize;
}

/// @nodoc
abstract class _$AddUserCopyWith<$Res> {
  factory _$AddUserCopyWith(_AddUser value, $Res Function(_AddUser) then) =
      __$AddUserCopyWithImpl<$Res>;
  $Res call({int uid});
}

/// @nodoc
class __$AddUserCopyWithImpl<$Res> extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$AddUserCopyWith<$Res> {
  __$AddUserCopyWithImpl(_AddUser _value, $Res Function(_AddUser) _then)
      : super(_value, (v) => _then(v as _AddUser));

  @override
  _AddUser get _value => super._value as _AddUser;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_AddUser(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddUser implements _AddUser {
  const _$_AddUser(this.uid);

  @override
  final int uid;

  @override
  String toString() {
    return 'CallScreenEvent.addUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddUser &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$AddUserCopyWith<_AddUser> get copyWith =>
      __$AddUserCopyWithImpl<_AddUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return addUser(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return addUser?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _AddUser implements CallScreenEvent {
  const factory _AddUser(int uid) = _$_AddUser;

  int get uid;
  @JsonKey(ignore: true)
  _$AddUserCopyWith<_AddUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveUserCopyWith<$Res> {
  factory _$RemoveUserCopyWith(
          _RemoveUser value, $Res Function(_RemoveUser) then) =
      __$RemoveUserCopyWithImpl<$Res>;
  $Res call({int uid});
}

/// @nodoc
class __$RemoveUserCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$RemoveUserCopyWith<$Res> {
  __$RemoveUserCopyWithImpl(
      _RemoveUser _value, $Res Function(_RemoveUser) _then)
      : super(_value, (v) => _then(v as _RemoveUser));

  @override
  _RemoveUser get _value => super._value as _RemoveUser;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_RemoveUser(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveUser implements _RemoveUser {
  const _$_RemoveUser(this.uid);

  @override
  final int uid;

  @override
  String toString() {
    return 'CallScreenEvent.removeUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveUser &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$RemoveUserCopyWith<_RemoveUser> get copyWith =>
      __$RemoveUserCopyWithImpl<_RemoveUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return removeUser(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return removeUser?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (removeUser != null) {
      return removeUser(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return removeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return removeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (removeUser != null) {
      return removeUser(this);
    }
    return orElse();
  }
}

abstract class _RemoveUser implements CallScreenEvent {
  const factory _RemoveUser(int uid) = _$_RemoveUser;

  int get uid;
  @JsonKey(ignore: true)
  _$RemoveUserCopyWith<_RemoveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLocalCameraStateCopyWith<$Res> {
  factory _$ChangeLocalCameraStateCopyWith(_ChangeLocalCameraState value,
          $Res Function(_ChangeLocalCameraState) then) =
      __$ChangeLocalCameraStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeLocalCameraStateCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$ChangeLocalCameraStateCopyWith<$Res> {
  __$ChangeLocalCameraStateCopyWithImpl(_ChangeLocalCameraState _value,
      $Res Function(_ChangeLocalCameraState) _then)
      : super(_value, (v) => _then(v as _ChangeLocalCameraState));

  @override
  _ChangeLocalCameraState get _value => super._value as _ChangeLocalCameraState;
}

/// @nodoc

class _$_ChangeLocalCameraState implements _ChangeLocalCameraState {
  const _$_ChangeLocalCameraState();

  @override
  String toString() {
    return 'CallScreenEvent.changeLocalCameraState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ChangeLocalCameraState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return changeLocalCameraState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return changeLocalCameraState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (changeLocalCameraState != null) {
      return changeLocalCameraState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return changeLocalCameraState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return changeLocalCameraState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (changeLocalCameraState != null) {
      return changeLocalCameraState(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocalCameraState implements CallScreenEvent {
  const factory _ChangeLocalCameraState() = _$_ChangeLocalCameraState;
}

/// @nodoc
abstract class _$StartTimerCopyWith<$Res> {
  factory _$StartTimerCopyWith(
          _StartTimer value, $Res Function(_StartTimer) then) =
      __$StartTimerCopyWithImpl<$Res>;
  $Res call({StopWatchTimer stopWatchTimer});
}

/// @nodoc
class __$StartTimerCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$StartTimerCopyWith<$Res> {
  __$StartTimerCopyWithImpl(
      _StartTimer _value, $Res Function(_StartTimer) _then)
      : super(_value, (v) => _then(v as _StartTimer));

  @override
  _StartTimer get _value => super._value as _StartTimer;

  @override
  $Res call({
    Object? stopWatchTimer = freezed,
  }) {
    return _then(_StartTimer(
      stopWatchTimer == freezed
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as StopWatchTimer,
    ));
  }
}

/// @nodoc

class _$_StartTimer implements _StartTimer {
  const _$_StartTimer(this.stopWatchTimer);

  @override
  final StopWatchTimer stopWatchTimer;

  @override
  String toString() {
    return 'CallScreenEvent.startTimer(stopWatchTimer: $stopWatchTimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartTimer &&
            const DeepCollectionEquality()
                .equals(other.stopWatchTimer, stopWatchTimer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(stopWatchTimer));

  @JsonKey(ignore: true)
  @override
  _$StartTimerCopyWith<_StartTimer> get copyWith =>
      __$StartTimerCopyWithImpl<_StartTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return startTimer(stopWatchTimer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return startTimer?.call(stopWatchTimer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(stopWatchTimer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class _StartTimer implements CallScreenEvent {
  const factory _StartTimer(StopWatchTimer stopWatchTimer) = _$_StartTimer;

  StopWatchTimer get stopWatchTimer;
  @JsonKey(ignore: true)
  _$StartTimerCopyWith<_StartTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StopTimerCopyWith<$Res> {
  factory _$StopTimerCopyWith(
          _StopTimer value, $Res Function(_StopTimer) then) =
      __$StopTimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$StopTimerCopyWithImpl<$Res> extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$StopTimerCopyWith<$Res> {
  __$StopTimerCopyWithImpl(_StopTimer _value, $Res Function(_StopTimer) _then)
      : super(_value, (v) => _then(v as _StopTimer));

  @override
  _StopTimer get _value => super._value as _StopTimer;
}

/// @nodoc

class _$_StopTimer implements _StopTimer {
  const _$_StopTimer();

  @override
  String toString() {
    return 'CallScreenEvent.stopTimer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StopTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return stopTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return stopTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (stopTimer != null) {
      return stopTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return stopTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return stopTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (stopTimer != null) {
      return stopTimer(this);
    }
    return orElse();
  }
}

abstract class _StopTimer implements CallScreenEvent {
  const factory _StopTimer() = _$_StopTimer;
}

/// @nodoc
abstract class _$StartDialeToneCopyWith<$Res> {
  factory _$StartDialeToneCopyWith(
          _StartDialeTone value, $Res Function(_StartDialeTone) then) =
      __$StartDialeToneCopyWithImpl<$Res>;
  $Res call({bool isDialerTonePlaying});
}

/// @nodoc
class __$StartDialeToneCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$StartDialeToneCopyWith<$Res> {
  __$StartDialeToneCopyWithImpl(
      _StartDialeTone _value, $Res Function(_StartDialeTone) _then)
      : super(_value, (v) => _then(v as _StartDialeTone));

  @override
  _StartDialeTone get _value => super._value as _StartDialeTone;

  @override
  $Res call({
    Object? isDialerTonePlaying = freezed,
  }) {
    return _then(_StartDialeTone(
      isDialerTonePlaying: isDialerTonePlaying == freezed
          ? _value.isDialerTonePlaying
          : isDialerTonePlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StartDialeTone implements _StartDialeTone {
  const _$_StartDialeTone({required this.isDialerTonePlaying});

  @override
  final bool isDialerTonePlaying;

  @override
  String toString() {
    return 'CallScreenEvent.startDialeTone(isDialerTonePlaying: $isDialerTonePlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartDialeTone &&
            const DeepCollectionEquality()
                .equals(other.isDialerTonePlaying, isDialerTonePlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isDialerTonePlaying));

  @JsonKey(ignore: true)
  @override
  _$StartDialeToneCopyWith<_StartDialeTone> get copyWith =>
      __$StartDialeToneCopyWithImpl<_StartDialeTone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return startDialeTone(isDialerTonePlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return startDialeTone?.call(isDialerTonePlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (startDialeTone != null) {
      return startDialeTone(isDialerTonePlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return startDialeTone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return startDialeTone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (startDialeTone != null) {
      return startDialeTone(this);
    }
    return orElse();
  }
}

abstract class _StartDialeTone implements CallScreenEvent {
  const factory _StartDialeTone({required bool isDialerTonePlaying}) =
      _$_StartDialeTone;

  bool get isDialerTonePlaying;
  @JsonKey(ignore: true)
  _$StartDialeToneCopyWith<_StartDialeTone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTimeByASecondCopyWith<$Res> {
  factory _$UpdateTimeByASecondCopyWith(_UpdateTimeByASecond value,
          $Res Function(_UpdateTimeByASecond) then) =
      __$UpdateTimeByASecondCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateTimeByASecondCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$UpdateTimeByASecondCopyWith<$Res> {
  __$UpdateTimeByASecondCopyWithImpl(
      _UpdateTimeByASecond _value, $Res Function(_UpdateTimeByASecond) _then)
      : super(_value, (v) => _then(v as _UpdateTimeByASecond));

  @override
  _UpdateTimeByASecond get _value => super._value as _UpdateTimeByASecond;
}

/// @nodoc

class _$_UpdateTimeByASecond implements _UpdateTimeByASecond {
  const _$_UpdateTimeByASecond();

  @override
  String toString() {
    return 'CallScreenEvent.updateTimeByASecond()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateTimeByASecond);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return updateTimeByASecond();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return updateTimeByASecond?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (updateTimeByASecond != null) {
      return updateTimeByASecond();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return updateTimeByASecond(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return updateTimeByASecond?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (updateTimeByASecond != null) {
      return updateTimeByASecond(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimeByASecond implements CallScreenEvent {
  const factory _UpdateTimeByASecond() = _$_UpdateTimeByASecond;
}

/// @nodoc
abstract class _$EnableDisableToolBarCopyWith<$Res> {
  factory _$EnableDisableToolBarCopyWith(_EnableDisableToolBar value,
          $Res Function(_EnableDisableToolBar) then) =
      __$EnableDisableToolBarCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class __$EnableDisableToolBarCopyWithImpl<$Res>
    extends _$CallScreenEventCopyWithImpl<$Res>
    implements _$EnableDisableToolBarCopyWith<$Res> {
  __$EnableDisableToolBarCopyWithImpl(
      _EnableDisableToolBar _value, $Res Function(_EnableDisableToolBar) _then)
      : super(_value, (v) => _then(v as _EnableDisableToolBar));

  @override
  _EnableDisableToolBar get _value => super._value as _EnableDisableToolBar;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_EnableDisableToolBar(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnableDisableToolBar implements _EnableDisableToolBar {
  const _$_EnableDisableToolBar({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'CallScreenEvent.enableDisableToolBar(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EnableDisableToolBar &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEnabled));

  @JsonKey(ignore: true)
  @override
  _$EnableDisableToolBarCopyWith<_EnableDisableToolBar> get copyWith =>
      __$EnableDisableToolBarCopyWithImpl<_EnableDisableToolBar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine, CallType callType) callStarted,
    required TResult Function(bool muted) remoteAudioStateChanged,
    required TResult Function(bool videoDisabled) remoteVideoStateChanged,
    required TResult Function() setEnableSpeakerPhone,
    required TResult Function() muteLocalAudioStream,
    required TResult Function() joinChannelSuccess,
    required TResult Function() callStopped,
    required TResult Function() minimize,
    required TResult Function() maximize,
    required TResult Function(int uid) addUser,
    required TResult Function(int uid) removeUser,
    required TResult Function() changeLocalCameraState,
    required TResult Function(StopWatchTimer stopWatchTimer) startTimer,
    required TResult Function() stopTimer,
    required TResult Function(bool isDialerTonePlaying) startDialeTone,
    required TResult Function() updateTimeByASecond,
    required TResult Function(bool isEnabled) enableDisableToolBar,
  }) {
    return enableDisableToolBar(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
  }) {
    return enableDisableToolBar?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine, CallType callType)? callStarted,
    TResult Function(bool muted)? remoteAudioStateChanged,
    TResult Function(bool videoDisabled)? remoteVideoStateChanged,
    TResult Function()? setEnableSpeakerPhone,
    TResult Function()? muteLocalAudioStream,
    TResult Function()? joinChannelSuccess,
    TResult Function()? callStopped,
    TResult Function()? minimize,
    TResult Function()? maximize,
    TResult Function(int uid)? addUser,
    TResult Function(int uid)? removeUser,
    TResult Function()? changeLocalCameraState,
    TResult Function(StopWatchTimer stopWatchTimer)? startTimer,
    TResult Function()? stopTimer,
    TResult Function(bool isDialerTonePlaying)? startDialeTone,
    TResult Function()? updateTimeByASecond,
    TResult Function(bool isEnabled)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (enableDisableToolBar != null) {
      return enableDisableToolBar(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) callStarted,
    required TResult Function(_RemoteAudioStateChanged value)
        remoteAudioStateChanged,
    required TResult Function(_RemoteVideoStateChanged value)
        remoteVideoStateChanged,
    required TResult Function(_SetEnableSpeakerPhone value)
        setEnableSpeakerPhone,
    required TResult Function(_MuteLocalAudioStream value) muteLocalAudioStream,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_Stopped value) callStopped,
    required TResult Function(_Minimize value) minimize,
    required TResult Function(_Maximize value) maximize,
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_RemoveUser value) removeUser,
    required TResult Function(_ChangeLocalCameraState value)
        changeLocalCameraState,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_StopTimer value) stopTimer,
    required TResult Function(_StartDialeTone value) startDialeTone,
    required TResult Function(_UpdateTimeByASecond value) updateTimeByASecond,
    required TResult Function(_EnableDisableToolBar value) enableDisableToolBar,
  }) {
    return enableDisableToolBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
  }) {
    return enableDisableToolBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? callStarted,
    TResult Function(_RemoteAudioStateChanged value)? remoteAudioStateChanged,
    TResult Function(_RemoteVideoStateChanged value)? remoteVideoStateChanged,
    TResult Function(_SetEnableSpeakerPhone value)? setEnableSpeakerPhone,
    TResult Function(_MuteLocalAudioStream value)? muteLocalAudioStream,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_Stopped value)? callStopped,
    TResult Function(_Minimize value)? minimize,
    TResult Function(_Maximize value)? maximize,
    TResult Function(_AddUser value)? addUser,
    TResult Function(_RemoveUser value)? removeUser,
    TResult Function(_ChangeLocalCameraState value)? changeLocalCameraState,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_StopTimer value)? stopTimer,
    TResult Function(_StartDialeTone value)? startDialeTone,
    TResult Function(_UpdateTimeByASecond value)? updateTimeByASecond,
    TResult Function(_EnableDisableToolBar value)? enableDisableToolBar,
    required TResult orElse(),
  }) {
    if (enableDisableToolBar != null) {
      return enableDisableToolBar(this);
    }
    return orElse();
  }
}

abstract class _EnableDisableToolBar implements CallScreenEvent {
  const factory _EnableDisableToolBar({required bool isEnabled}) =
      _$_EnableDisableToolBar;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$EnableDisableToolBarCopyWith<_EnableDisableToolBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CallScreenStateTearOff {
  const _$CallScreenStateTearOff();

  _CallScreensState call(
      {required Option<StopWatchTimer> stopWatchTimer,
      required CallType calltype,
      required bool isScreenMinimized,
      required Either<int, RtcEngine> engine,
      required bool isRemoteUserMuted,
      required bool isRemoteVideoDisabled,
      required int callTimer,
      required bool showParticipantsButton,
      required bool isRinging,
      required bool isMuted,
      required bool isDialerTonePlaying,
      required bool isSpeakerOn,
      required List<int> users,
      required bool isCameraOff,
      required bool isToolBarEnable}) {
    return _CallScreensState(
      stopWatchTimer: stopWatchTimer,
      calltype: calltype,
      isScreenMinimized: isScreenMinimized,
      engine: engine,
      isRemoteUserMuted: isRemoteUserMuted,
      isRemoteVideoDisabled: isRemoteVideoDisabled,
      callTimer: callTimer,
      showParticipantsButton: showParticipantsButton,
      isRinging: isRinging,
      isMuted: isMuted,
      isDialerTonePlaying: isDialerTonePlaying,
      isSpeakerOn: isSpeakerOn,
      users: users,
      isCameraOff: isCameraOff,
      isToolBarEnable: isToolBarEnable,
    );
  }
}

/// @nodoc
const $CallScreenState = _$CallScreenStateTearOff();

/// @nodoc
mixin _$CallScreenState {
  Option<StopWatchTimer> get stopWatchTimer =>
      throw _privateConstructorUsedError;
  CallType get calltype => throw _privateConstructorUsedError;
  bool get isScreenMinimized => throw _privateConstructorUsedError;
  Either<int, RtcEngine> get engine => throw _privateConstructorUsedError;
  bool get isRemoteUserMuted => throw _privateConstructorUsedError;
  bool get isRemoteVideoDisabled => throw _privateConstructorUsedError;
  int get callTimer => throw _privateConstructorUsedError;
  bool get showParticipantsButton => throw _privateConstructorUsedError;
  bool get isRinging => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  bool get isDialerTonePlaying => throw _privateConstructorUsedError;
  bool get isSpeakerOn => throw _privateConstructorUsedError;
  List<int> get users => throw _privateConstructorUsedError;
  bool get isCameraOff => throw _privateConstructorUsedError;
  bool get isToolBarEnable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallScreenStateCopyWith<CallScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallScreenStateCopyWith<$Res> {
  factory $CallScreenStateCopyWith(
          CallScreenState value, $Res Function(CallScreenState) then) =
      _$CallScreenStateCopyWithImpl<$Res>;
  $Res call(
      {Option<StopWatchTimer> stopWatchTimer,
      CallType calltype,
      bool isScreenMinimized,
      Either<int, RtcEngine> engine,
      bool isRemoteUserMuted,
      bool isRemoteVideoDisabled,
      int callTimer,
      bool showParticipantsButton,
      bool isRinging,
      bool isMuted,
      bool isDialerTonePlaying,
      bool isSpeakerOn,
      List<int> users,
      bool isCameraOff,
      bool isToolBarEnable});
}

/// @nodoc
class _$CallScreenStateCopyWithImpl<$Res>
    implements $CallScreenStateCopyWith<$Res> {
  _$CallScreenStateCopyWithImpl(this._value, this._then);

  final CallScreenState _value;
  // ignore: unused_field
  final $Res Function(CallScreenState) _then;

  @override
  $Res call({
    Object? stopWatchTimer = freezed,
    Object? calltype = freezed,
    Object? isScreenMinimized = freezed,
    Object? engine = freezed,
    Object? isRemoteUserMuted = freezed,
    Object? isRemoteVideoDisabled = freezed,
    Object? callTimer = freezed,
    Object? showParticipantsButton = freezed,
    Object? isRinging = freezed,
    Object? isMuted = freezed,
    Object? isDialerTonePlaying = freezed,
    Object? isSpeakerOn = freezed,
    Object? users = freezed,
    Object? isCameraOff = freezed,
    Object? isToolBarEnable = freezed,
  }) {
    return _then(_value.copyWith(
      stopWatchTimer: stopWatchTimer == freezed
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as Option<StopWatchTimer>,
      calltype: calltype == freezed
          ? _value.calltype
          : calltype // ignore: cast_nullable_to_non_nullable
              as CallType,
      isScreenMinimized: isScreenMinimized == freezed
          ? _value.isScreenMinimized
          : isScreenMinimized // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Either<int, RtcEngine>,
      isRemoteUserMuted: isRemoteUserMuted == freezed
          ? _value.isRemoteUserMuted
          : isRemoteUserMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoteVideoDisabled: isRemoteVideoDisabled == freezed
          ? _value.isRemoteVideoDisabled
          : isRemoteVideoDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      callTimer: callTimer == freezed
          ? _value.callTimer
          : callTimer // ignore: cast_nullable_to_non_nullable
              as int,
      showParticipantsButton: showParticipantsButton == freezed
          ? _value.showParticipantsButton
          : showParticipantsButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isRinging: isRinging == freezed
          ? _value.isRinging
          : isRinging // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuted: isMuted == freezed
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDialerTonePlaying: isDialerTonePlaying == freezed
          ? _value.isDialerTonePlaying
          : isDialerTonePlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpeakerOn: isSpeakerOn == freezed
          ? _value.isSpeakerOn
          : isSpeakerOn // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isCameraOff: isCameraOff == freezed
          ? _value.isCameraOff
          : isCameraOff // ignore: cast_nullable_to_non_nullable
              as bool,
      isToolBarEnable: isToolBarEnable == freezed
          ? _value.isToolBarEnable
          : isToolBarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CallScreensStateCopyWith<$Res>
    implements $CallScreenStateCopyWith<$Res> {
  factory _$CallScreensStateCopyWith(
          _CallScreensState value, $Res Function(_CallScreensState) then) =
      __$CallScreensStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<StopWatchTimer> stopWatchTimer,
      CallType calltype,
      bool isScreenMinimized,
      Either<int, RtcEngine> engine,
      bool isRemoteUserMuted,
      bool isRemoteVideoDisabled,
      int callTimer,
      bool showParticipantsButton,
      bool isRinging,
      bool isMuted,
      bool isDialerTonePlaying,
      bool isSpeakerOn,
      List<int> users,
      bool isCameraOff,
      bool isToolBarEnable});
}

/// @nodoc
class __$CallScreensStateCopyWithImpl<$Res>
    extends _$CallScreenStateCopyWithImpl<$Res>
    implements _$CallScreensStateCopyWith<$Res> {
  __$CallScreensStateCopyWithImpl(
      _CallScreensState _value, $Res Function(_CallScreensState) _then)
      : super(_value, (v) => _then(v as _CallScreensState));

  @override
  _CallScreensState get _value => super._value as _CallScreensState;

  @override
  $Res call({
    Object? stopWatchTimer = freezed,
    Object? calltype = freezed,
    Object? isScreenMinimized = freezed,
    Object? engine = freezed,
    Object? isRemoteUserMuted = freezed,
    Object? isRemoteVideoDisabled = freezed,
    Object? callTimer = freezed,
    Object? showParticipantsButton = freezed,
    Object? isRinging = freezed,
    Object? isMuted = freezed,
    Object? isDialerTonePlaying = freezed,
    Object? isSpeakerOn = freezed,
    Object? users = freezed,
    Object? isCameraOff = freezed,
    Object? isToolBarEnable = freezed,
  }) {
    return _then(_CallScreensState(
      stopWatchTimer: stopWatchTimer == freezed
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as Option<StopWatchTimer>,
      calltype: calltype == freezed
          ? _value.calltype
          : calltype // ignore: cast_nullable_to_non_nullable
              as CallType,
      isScreenMinimized: isScreenMinimized == freezed
          ? _value.isScreenMinimized
          : isScreenMinimized // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Either<int, RtcEngine>,
      isRemoteUserMuted: isRemoteUserMuted == freezed
          ? _value.isRemoteUserMuted
          : isRemoteUserMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoteVideoDisabled: isRemoteVideoDisabled == freezed
          ? _value.isRemoteVideoDisabled
          : isRemoteVideoDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      callTimer: callTimer == freezed
          ? _value.callTimer
          : callTimer // ignore: cast_nullable_to_non_nullable
              as int,
      showParticipantsButton: showParticipantsButton == freezed
          ? _value.showParticipantsButton
          : showParticipantsButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isRinging: isRinging == freezed
          ? _value.isRinging
          : isRinging // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuted: isMuted == freezed
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDialerTonePlaying: isDialerTonePlaying == freezed
          ? _value.isDialerTonePlaying
          : isDialerTonePlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpeakerOn: isSpeakerOn == freezed
          ? _value.isSpeakerOn
          : isSpeakerOn // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isCameraOff: isCameraOff == freezed
          ? _value.isCameraOff
          : isCameraOff // ignore: cast_nullable_to_non_nullable
              as bool,
      isToolBarEnable: isToolBarEnable == freezed
          ? _value.isToolBarEnable
          : isToolBarEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CallScreensState implements _CallScreensState {
  const _$_CallScreensState(
      {required this.stopWatchTimer,
      required this.calltype,
      required this.isScreenMinimized,
      required this.engine,
      required this.isRemoteUserMuted,
      required this.isRemoteVideoDisabled,
      required this.callTimer,
      required this.showParticipantsButton,
      required this.isRinging,
      required this.isMuted,
      required this.isDialerTonePlaying,
      required this.isSpeakerOn,
      required this.users,
      required this.isCameraOff,
      required this.isToolBarEnable});

  @override
  final Option<StopWatchTimer> stopWatchTimer;
  @override
  final CallType calltype;
  @override
  final bool isScreenMinimized;
  @override
  final Either<int, RtcEngine> engine;
  @override
  final bool isRemoteUserMuted;
  @override
  final bool isRemoteVideoDisabled;
  @override
  final int callTimer;
  @override
  final bool showParticipantsButton;
  @override
  final bool isRinging;
  @override
  final bool isMuted;
  @override
  final bool isDialerTonePlaying;
  @override
  final bool isSpeakerOn;
  @override
  final List<int> users;
  @override
  final bool isCameraOff;
  @override
  final bool isToolBarEnable;

  @override
  String toString() {
    return 'CallScreenState(stopWatchTimer: $stopWatchTimer, calltype: $calltype, isScreenMinimized: $isScreenMinimized, engine: $engine, isRemoteUserMuted: $isRemoteUserMuted, isRemoteVideoDisabled: $isRemoteVideoDisabled, callTimer: $callTimer, showParticipantsButton: $showParticipantsButton, isRinging: $isRinging, isMuted: $isMuted, isDialerTonePlaying: $isDialerTonePlaying, isSpeakerOn: $isSpeakerOn, users: $users, isCameraOff: $isCameraOff, isToolBarEnable: $isToolBarEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallScreensState &&
            const DeepCollectionEquality()
                .equals(other.stopWatchTimer, stopWatchTimer) &&
            const DeepCollectionEquality().equals(other.calltype, calltype) &&
            const DeepCollectionEquality()
                .equals(other.isScreenMinimized, isScreenMinimized) &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality()
                .equals(other.isRemoteUserMuted, isRemoteUserMuted) &&
            const DeepCollectionEquality()
                .equals(other.isRemoteVideoDisabled, isRemoteVideoDisabled) &&
            const DeepCollectionEquality().equals(other.callTimer, callTimer) &&
            const DeepCollectionEquality()
                .equals(other.showParticipantsButton, showParticipantsButton) &&
            const DeepCollectionEquality().equals(other.isRinging, isRinging) &&
            const DeepCollectionEquality().equals(other.isMuted, isMuted) &&
            const DeepCollectionEquality()
                .equals(other.isDialerTonePlaying, isDialerTonePlaying) &&
            const DeepCollectionEquality()
                .equals(other.isSpeakerOn, isSpeakerOn) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality()
                .equals(other.isCameraOff, isCameraOff) &&
            const DeepCollectionEquality()
                .equals(other.isToolBarEnable, isToolBarEnable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stopWatchTimer),
      const DeepCollectionEquality().hash(calltype),
      const DeepCollectionEquality().hash(isScreenMinimized),
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(isRemoteUserMuted),
      const DeepCollectionEquality().hash(isRemoteVideoDisabled),
      const DeepCollectionEquality().hash(callTimer),
      const DeepCollectionEquality().hash(showParticipantsButton),
      const DeepCollectionEquality().hash(isRinging),
      const DeepCollectionEquality().hash(isMuted),
      const DeepCollectionEquality().hash(isDialerTonePlaying),
      const DeepCollectionEquality().hash(isSpeakerOn),
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(isCameraOff),
      const DeepCollectionEquality().hash(isToolBarEnable));

  @JsonKey(ignore: true)
  @override
  _$CallScreensStateCopyWith<_CallScreensState> get copyWith =>
      __$CallScreensStateCopyWithImpl<_CallScreensState>(this, _$identity);
}

abstract class _CallScreensState implements CallScreenState {
  const factory _CallScreensState(
      {required Option<StopWatchTimer> stopWatchTimer,
      required CallType calltype,
      required bool isScreenMinimized,
      required Either<int, RtcEngine> engine,
      required bool isRemoteUserMuted,
      required bool isRemoteVideoDisabled,
      required int callTimer,
      required bool showParticipantsButton,
      required bool isRinging,
      required bool isMuted,
      required bool isDialerTonePlaying,
      required bool isSpeakerOn,
      required List<int> users,
      required bool isCameraOff,
      required bool isToolBarEnable}) = _$_CallScreensState;

  @override
  Option<StopWatchTimer> get stopWatchTimer;
  @override
  CallType get calltype;
  @override
  bool get isScreenMinimized;
  @override
  Either<int, RtcEngine> get engine;
  @override
  bool get isRemoteUserMuted;
  @override
  bool get isRemoteVideoDisabled;
  @override
  int get callTimer;
  @override
  bool get showParticipantsButton;
  @override
  bool get isRinging;
  @override
  bool get isMuted;
  @override
  bool get isDialerTonePlaying;
  @override
  bool get isSpeakerOn;
  @override
  List<int> get users;
  @override
  bool get isCameraOff;
  @override
  bool get isToolBarEnable;
  @override
  @JsonKey(ignore: true)
  _$CallScreensStateCopyWith<_CallScreensState> get copyWith =>
      throw _privateConstructorUsedError;
}
