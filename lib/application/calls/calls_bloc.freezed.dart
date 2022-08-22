// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calls_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CallsEventTearOff {
  const _$CallsEventTearOff();

  _EndCall endCurrentCall(int callDuration) {
    return _EndCall(
      callDuration,
    );
  }

  _GetAgoraToken getAgoraToken({required String agoraGeneratedToken}) {
    return _GetAgoraToken(
      agoraGeneratedToken: agoraGeneratedToken,
    );
  }

  _FetchAgoraToken fetchAgoraToken() {
    return const _FetchAgoraToken();
  }

  _StartVoiceCall startVoiceCall(KahoChatUser caller, KahoChatUser receiver) {
    return _StartVoiceCall(
      caller,
      receiver,
    );
  }

  _StartVideoCall startVideoCall(KahoChatUser caller, KahoChatUser receiver) {
    return _StartVideoCall(
      caller,
      receiver,
    );
  }

  _SetParticipantUID setParticipantUID({required int uid}) {
    return _SetParticipantUID(
      uid: uid,
    );
  }

  _AcceptCall acceptIncomingCall() {
    return const _AcceptCall();
  }

  _RejectCall rejectIncomingCall() {
    return const _RejectCall();
  }

  _callNotAnswered callNotAnswered() {
    return const _callNotAnswered();
  }

  _UpdateCallTimerBy1Second updateCallTimerBy1Second() {
    return const _UpdateCallTimerBy1Second();
  }

  _IsPeerUserOnAnotherCall isPeerUserOnAnotherCall(
      {required KahoChatUser peerUser, required CallingPage page}) {
    return _IsPeerUserOnAnotherCall(
      peerUser: peerUser,
      page: page,
    );
  }

  _IsAddCallUserOnAnotherCall isAddCallUserAcceptedCall(
      {required KahoChatUser peerUser, required String callid}) {
    return _IsAddCallUserOnAnotherCall(
      peerUser: peerUser,
      callid: callid,
    );
  }

  _UpdateCurrentRoomDetails updateCurrentRoomDetails(
      CallRoomModel roomDetails) {
    return _UpdateCurrentRoomDetails(
      roomDetails,
    );
  }

  _AddParticipants addParticipants(
      KahoChatUser caller, KahoChatUser reciever, CallRoomModel currentRoom) {
    return _AddParticipants(
      caller,
      reciever,
      currentRoom,
    );
  }

  _LeaveCall leaveCall(KahoChatUser receiver) {
    return _LeaveCall(
      receiver,
    );
  }

  _DeleteSingleUserCallHistory deleteSingleUserCallHistory(
      {required String callDocumentId}) {
    return _DeleteSingleUserCallHistory(
      callDocumentId: callDocumentId,
    );
  }

  _Acquire acquire() {
    return const _Acquire();
  }

  _StartRecording startRecording(String callId, String callType) {
    return _StartRecording(
      callId,
      callType,
    );
  }

  _StopRecording stopRecording({required CallRoomModel currentRoom}) {
    return _StopRecording(
      currentRoom: currentRoom,
    );
  }

  _ChangeUserMuteState changeUserMuteState(
      {required CallRoomModel currentRoomDetails, required bool isMuted}) {
    return _ChangeUserMuteState(
      currentRoomDetails: currentRoomDetails,
      isMuted: isMuted,
    );
  }
}

/// @nodoc
const $CallsEvent = _$CallsEventTearOff();

/// @nodoc
mixin _$CallsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallsEventCopyWith<$Res> {
  factory $CallsEventCopyWith(
          CallsEvent value, $Res Function(CallsEvent) then) =
      _$CallsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CallsEventCopyWithImpl<$Res> implements $CallsEventCopyWith<$Res> {
  _$CallsEventCopyWithImpl(this._value, this._then);

  final CallsEvent _value;
  // ignore: unused_field
  final $Res Function(CallsEvent) _then;
}

/// @nodoc
abstract class _$EndCallCopyWith<$Res> {
  factory _$EndCallCopyWith(_EndCall value, $Res Function(_EndCall) then) =
      __$EndCallCopyWithImpl<$Res>;
  $Res call({int callDuration});
}

/// @nodoc
class __$EndCallCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$EndCallCopyWith<$Res> {
  __$EndCallCopyWithImpl(_EndCall _value, $Res Function(_EndCall) _then)
      : super(_value, (v) => _then(v as _EndCall));

  @override
  _EndCall get _value => super._value as _EndCall;

  @override
  $Res call({
    Object? callDuration = freezed,
  }) {
    return _then(_EndCall(
      callDuration == freezed
          ? _value.callDuration
          : callDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EndCall implements _EndCall {
  const _$_EndCall(this.callDuration);

  @override
  final int callDuration;

  @override
  String toString() {
    return 'CallsEvent.endCurrentCall(callDuration: $callDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EndCall &&
            const DeepCollectionEquality()
                .equals(other.callDuration, callDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(callDuration));

  @JsonKey(ignore: true)
  @override
  _$EndCallCopyWith<_EndCall> get copyWith =>
      __$EndCallCopyWithImpl<_EndCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return endCurrentCall(callDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return endCurrentCall?.call(callDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (endCurrentCall != null) {
      return endCurrentCall(callDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return endCurrentCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return endCurrentCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (endCurrentCall != null) {
      return endCurrentCall(this);
    }
    return orElse();
  }
}

abstract class _EndCall implements CallsEvent {
  const factory _EndCall(int callDuration) = _$_EndCall;

  int get callDuration;
  @JsonKey(ignore: true)
  _$EndCallCopyWith<_EndCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAgoraTokenCopyWith<$Res> {
  factory _$GetAgoraTokenCopyWith(
          _GetAgoraToken value, $Res Function(_GetAgoraToken) then) =
      __$GetAgoraTokenCopyWithImpl<$Res>;
  $Res call({String agoraGeneratedToken});
}

/// @nodoc
class __$GetAgoraTokenCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$GetAgoraTokenCopyWith<$Res> {
  __$GetAgoraTokenCopyWithImpl(
      _GetAgoraToken _value, $Res Function(_GetAgoraToken) _then)
      : super(_value, (v) => _then(v as _GetAgoraToken));

  @override
  _GetAgoraToken get _value => super._value as _GetAgoraToken;

  @override
  $Res call({
    Object? agoraGeneratedToken = freezed,
  }) {
    return _then(_GetAgoraToken(
      agoraGeneratedToken: agoraGeneratedToken == freezed
          ? _value.agoraGeneratedToken
          : agoraGeneratedToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAgoraToken implements _GetAgoraToken {
  const _$_GetAgoraToken({required this.agoraGeneratedToken});

  @override
  final String agoraGeneratedToken;

  @override
  String toString() {
    return 'CallsEvent.getAgoraToken(agoraGeneratedToken: $agoraGeneratedToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAgoraToken &&
            const DeepCollectionEquality()
                .equals(other.agoraGeneratedToken, agoraGeneratedToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(agoraGeneratedToken));

  @JsonKey(ignore: true)
  @override
  _$GetAgoraTokenCopyWith<_GetAgoraToken> get copyWith =>
      __$GetAgoraTokenCopyWithImpl<_GetAgoraToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return getAgoraToken(agoraGeneratedToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return getAgoraToken?.call(agoraGeneratedToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (getAgoraToken != null) {
      return getAgoraToken(agoraGeneratedToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return getAgoraToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return getAgoraToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (getAgoraToken != null) {
      return getAgoraToken(this);
    }
    return orElse();
  }
}

abstract class _GetAgoraToken implements CallsEvent {
  const factory _GetAgoraToken({required String agoraGeneratedToken}) =
      _$_GetAgoraToken;

  String get agoraGeneratedToken;
  @JsonKey(ignore: true)
  _$GetAgoraTokenCopyWith<_GetAgoraToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchAgoraTokenCopyWith<$Res> {
  factory _$FetchAgoraTokenCopyWith(
          _FetchAgoraToken value, $Res Function(_FetchAgoraToken) then) =
      __$FetchAgoraTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchAgoraTokenCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$FetchAgoraTokenCopyWith<$Res> {
  __$FetchAgoraTokenCopyWithImpl(
      _FetchAgoraToken _value, $Res Function(_FetchAgoraToken) _then)
      : super(_value, (v) => _then(v as _FetchAgoraToken));

  @override
  _FetchAgoraToken get _value => super._value as _FetchAgoraToken;
}

/// @nodoc

class _$_FetchAgoraToken implements _FetchAgoraToken {
  const _$_FetchAgoraToken();

  @override
  String toString() {
    return 'CallsEvent.fetchAgoraToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchAgoraToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return fetchAgoraToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return fetchAgoraToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (fetchAgoraToken != null) {
      return fetchAgoraToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return fetchAgoraToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return fetchAgoraToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (fetchAgoraToken != null) {
      return fetchAgoraToken(this);
    }
    return orElse();
  }
}

abstract class _FetchAgoraToken implements CallsEvent {
  const factory _FetchAgoraToken() = _$_FetchAgoraToken;
}

/// @nodoc
abstract class _$StartVoiceCallCopyWith<$Res> {
  factory _$StartVoiceCallCopyWith(
          _StartVoiceCall value, $Res Function(_StartVoiceCall) then) =
      __$StartVoiceCallCopyWithImpl<$Res>;
  $Res call({KahoChatUser caller, KahoChatUser receiver});
}

/// @nodoc
class __$StartVoiceCallCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$StartVoiceCallCopyWith<$Res> {
  __$StartVoiceCallCopyWithImpl(
      _StartVoiceCall _value, $Res Function(_StartVoiceCall) _then)
      : super(_value, (v) => _then(v as _StartVoiceCall));

  @override
  _StartVoiceCall get _value => super._value as _StartVoiceCall;

  @override
  $Res call({
    Object? caller = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_StartVoiceCall(
      caller == freezed
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_StartVoiceCall implements _StartVoiceCall {
  const _$_StartVoiceCall(this.caller, this.receiver);

  @override
  final KahoChatUser caller;
  @override
  final KahoChatUser receiver;

  @override
  String toString() {
    return 'CallsEvent.startVoiceCall(caller: $caller, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartVoiceCall &&
            const DeepCollectionEquality().equals(other.caller, caller) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caller),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$StartVoiceCallCopyWith<_StartVoiceCall> get copyWith =>
      __$StartVoiceCallCopyWithImpl<_StartVoiceCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return startVoiceCall(caller, receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return startVoiceCall?.call(caller, receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (startVoiceCall != null) {
      return startVoiceCall(caller, receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return startVoiceCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return startVoiceCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (startVoiceCall != null) {
      return startVoiceCall(this);
    }
    return orElse();
  }
}

abstract class _StartVoiceCall implements CallsEvent {
  const factory _StartVoiceCall(KahoChatUser caller, KahoChatUser receiver) =
      _$_StartVoiceCall;

  KahoChatUser get caller;
  KahoChatUser get receiver;
  @JsonKey(ignore: true)
  _$StartVoiceCallCopyWith<_StartVoiceCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartVideoCallCopyWith<$Res> {
  factory _$StartVideoCallCopyWith(
          _StartVideoCall value, $Res Function(_StartVideoCall) then) =
      __$StartVideoCallCopyWithImpl<$Res>;
  $Res call({KahoChatUser caller, KahoChatUser receiver});
}

/// @nodoc
class __$StartVideoCallCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$StartVideoCallCopyWith<$Res> {
  __$StartVideoCallCopyWithImpl(
      _StartVideoCall _value, $Res Function(_StartVideoCall) _then)
      : super(_value, (v) => _then(v as _StartVideoCall));

  @override
  _StartVideoCall get _value => super._value as _StartVideoCall;

  @override
  $Res call({
    Object? caller = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_StartVideoCall(
      caller == freezed
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_StartVideoCall implements _StartVideoCall {
  const _$_StartVideoCall(this.caller, this.receiver);

  @override
  final KahoChatUser caller;
  @override
  final KahoChatUser receiver;

  @override
  String toString() {
    return 'CallsEvent.startVideoCall(caller: $caller, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartVideoCall &&
            const DeepCollectionEquality().equals(other.caller, caller) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caller),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$StartVideoCallCopyWith<_StartVideoCall> get copyWith =>
      __$StartVideoCallCopyWithImpl<_StartVideoCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return startVideoCall(caller, receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return startVideoCall?.call(caller, receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (startVideoCall != null) {
      return startVideoCall(caller, receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return startVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return startVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (startVideoCall != null) {
      return startVideoCall(this);
    }
    return orElse();
  }
}

abstract class _StartVideoCall implements CallsEvent {
  const factory _StartVideoCall(KahoChatUser caller, KahoChatUser receiver) =
      _$_StartVideoCall;

  KahoChatUser get caller;
  KahoChatUser get receiver;
  @JsonKey(ignore: true)
  _$StartVideoCallCopyWith<_StartVideoCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetParticipantUIDCopyWith<$Res> {
  factory _$SetParticipantUIDCopyWith(
          _SetParticipantUID value, $Res Function(_SetParticipantUID) then) =
      __$SetParticipantUIDCopyWithImpl<$Res>;
  $Res call({int uid});
}

/// @nodoc
class __$SetParticipantUIDCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$SetParticipantUIDCopyWith<$Res> {
  __$SetParticipantUIDCopyWithImpl(
      _SetParticipantUID _value, $Res Function(_SetParticipantUID) _then)
      : super(_value, (v) => _then(v as _SetParticipantUID));

  @override
  _SetParticipantUID get _value => super._value as _SetParticipantUID;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_SetParticipantUID(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetParticipantUID implements _SetParticipantUID {
  const _$_SetParticipantUID({required this.uid});

  @override
  final int uid;

  @override
  String toString() {
    return 'CallsEvent.setParticipantUID(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetParticipantUID &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$SetParticipantUIDCopyWith<_SetParticipantUID> get copyWith =>
      __$SetParticipantUIDCopyWithImpl<_SetParticipantUID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return setParticipantUID(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return setParticipantUID?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (setParticipantUID != null) {
      return setParticipantUID(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return setParticipantUID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return setParticipantUID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (setParticipantUID != null) {
      return setParticipantUID(this);
    }
    return orElse();
  }
}

abstract class _SetParticipantUID implements CallsEvent {
  const factory _SetParticipantUID({required int uid}) = _$_SetParticipantUID;

  int get uid;
  @JsonKey(ignore: true)
  _$SetParticipantUIDCopyWith<_SetParticipantUID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptCallCopyWith<$Res> {
  factory _$AcceptCallCopyWith(
          _AcceptCall value, $Res Function(_AcceptCall) then) =
      __$AcceptCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$AcceptCallCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$AcceptCallCopyWith<$Res> {
  __$AcceptCallCopyWithImpl(
      _AcceptCall _value, $Res Function(_AcceptCall) _then)
      : super(_value, (v) => _then(v as _AcceptCall));

  @override
  _AcceptCall get _value => super._value as _AcceptCall;
}

/// @nodoc

class _$_AcceptCall implements _AcceptCall {
  const _$_AcceptCall();

  @override
  String toString() {
    return 'CallsEvent.acceptIncomingCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AcceptCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return acceptIncomingCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return acceptIncomingCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (acceptIncomingCall != null) {
      return acceptIncomingCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return acceptIncomingCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return acceptIncomingCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (acceptIncomingCall != null) {
      return acceptIncomingCall(this);
    }
    return orElse();
  }
}

abstract class _AcceptCall implements CallsEvent {
  const factory _AcceptCall() = _$_AcceptCall;
}

/// @nodoc
abstract class _$RejectCallCopyWith<$Res> {
  factory _$RejectCallCopyWith(
          _RejectCall value, $Res Function(_RejectCall) then) =
      __$RejectCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$RejectCallCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$RejectCallCopyWith<$Res> {
  __$RejectCallCopyWithImpl(
      _RejectCall _value, $Res Function(_RejectCall) _then)
      : super(_value, (v) => _then(v as _RejectCall));

  @override
  _RejectCall get _value => super._value as _RejectCall;
}

/// @nodoc

class _$_RejectCall implements _RejectCall {
  const _$_RejectCall();

  @override
  String toString() {
    return 'CallsEvent.rejectIncomingCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RejectCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return rejectIncomingCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return rejectIncomingCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (rejectIncomingCall != null) {
      return rejectIncomingCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return rejectIncomingCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return rejectIncomingCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (rejectIncomingCall != null) {
      return rejectIncomingCall(this);
    }
    return orElse();
  }
}

abstract class _RejectCall implements CallsEvent {
  const factory _RejectCall() = _$_RejectCall;
}

/// @nodoc
abstract class _$callNotAnsweredCopyWith<$Res> {
  factory _$callNotAnsweredCopyWith(
          _callNotAnswered value, $Res Function(_callNotAnswered) then) =
      __$callNotAnsweredCopyWithImpl<$Res>;
}

/// @nodoc
class __$callNotAnsweredCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$callNotAnsweredCopyWith<$Res> {
  __$callNotAnsweredCopyWithImpl(
      _callNotAnswered _value, $Res Function(_callNotAnswered) _then)
      : super(_value, (v) => _then(v as _callNotAnswered));

  @override
  _callNotAnswered get _value => super._value as _callNotAnswered;
}

/// @nodoc

class _$_callNotAnswered implements _callNotAnswered {
  const _$_callNotAnswered();

  @override
  String toString() {
    return 'CallsEvent.callNotAnswered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _callNotAnswered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return callNotAnswered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return callNotAnswered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (callNotAnswered != null) {
      return callNotAnswered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return callNotAnswered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return callNotAnswered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (callNotAnswered != null) {
      return callNotAnswered(this);
    }
    return orElse();
  }
}

abstract class _callNotAnswered implements CallsEvent {
  const factory _callNotAnswered() = _$_callNotAnswered;
}

/// @nodoc
abstract class _$UpdateCallTimerBy1SecondCopyWith<$Res> {
  factory _$UpdateCallTimerBy1SecondCopyWith(_UpdateCallTimerBy1Second value,
          $Res Function(_UpdateCallTimerBy1Second) then) =
      __$UpdateCallTimerBy1SecondCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateCallTimerBy1SecondCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$UpdateCallTimerBy1SecondCopyWith<$Res> {
  __$UpdateCallTimerBy1SecondCopyWithImpl(_UpdateCallTimerBy1Second _value,
      $Res Function(_UpdateCallTimerBy1Second) _then)
      : super(_value, (v) => _then(v as _UpdateCallTimerBy1Second));

  @override
  _UpdateCallTimerBy1Second get _value =>
      super._value as _UpdateCallTimerBy1Second;
}

/// @nodoc

class _$_UpdateCallTimerBy1Second implements _UpdateCallTimerBy1Second {
  const _$_UpdateCallTimerBy1Second();

  @override
  String toString() {
    return 'CallsEvent.updateCallTimerBy1Second()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCallTimerBy1Second);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return updateCallTimerBy1Second();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return updateCallTimerBy1Second?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (updateCallTimerBy1Second != null) {
      return updateCallTimerBy1Second();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return updateCallTimerBy1Second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return updateCallTimerBy1Second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (updateCallTimerBy1Second != null) {
      return updateCallTimerBy1Second(this);
    }
    return orElse();
  }
}

abstract class _UpdateCallTimerBy1Second implements CallsEvent {
  const factory _UpdateCallTimerBy1Second() = _$_UpdateCallTimerBy1Second;
}

/// @nodoc
abstract class _$IsPeerUserOnAnotherCallCopyWith<$Res> {
  factory _$IsPeerUserOnAnotherCallCopyWith(_IsPeerUserOnAnotherCall value,
          $Res Function(_IsPeerUserOnAnotherCall) then) =
      __$IsPeerUserOnAnotherCallCopyWithImpl<$Res>;
  $Res call({KahoChatUser peerUser, CallingPage page});
}

/// @nodoc
class __$IsPeerUserOnAnotherCallCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$IsPeerUserOnAnotherCallCopyWith<$Res> {
  __$IsPeerUserOnAnotherCallCopyWithImpl(_IsPeerUserOnAnotherCall _value,
      $Res Function(_IsPeerUserOnAnotherCall) _then)
      : super(_value, (v) => _then(v as _IsPeerUserOnAnotherCall));

  @override
  _IsPeerUserOnAnotherCall get _value =>
      super._value as _IsPeerUserOnAnotherCall;

  @override
  $Res call({
    Object? peerUser = freezed,
    Object? page = freezed,
  }) {
    return _then(_IsPeerUserOnAnotherCall(
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as CallingPage,
    ));
  }
}

/// @nodoc

class _$_IsPeerUserOnAnotherCall implements _IsPeerUserOnAnotherCall {
  const _$_IsPeerUserOnAnotherCall(
      {required this.peerUser, required this.page});

  @override
  final KahoChatUser peerUser;
  @override
  final CallingPage page;

  @override
  String toString() {
    return 'CallsEvent.isPeerUserOnAnotherCall(peerUser: $peerUser, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsPeerUserOnAnotherCall &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$IsPeerUserOnAnotherCallCopyWith<_IsPeerUserOnAnotherCall> get copyWith =>
      __$IsPeerUserOnAnotherCallCopyWithImpl<_IsPeerUserOnAnotherCall>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return isPeerUserOnAnotherCall(peerUser, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return isPeerUserOnAnotherCall?.call(peerUser, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (isPeerUserOnAnotherCall != null) {
      return isPeerUserOnAnotherCall(peerUser, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return isPeerUserOnAnotherCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return isPeerUserOnAnotherCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (isPeerUserOnAnotherCall != null) {
      return isPeerUserOnAnotherCall(this);
    }
    return orElse();
  }
}

abstract class _IsPeerUserOnAnotherCall implements CallsEvent {
  const factory _IsPeerUserOnAnotherCall(
      {required KahoChatUser peerUser,
      required CallingPage page}) = _$_IsPeerUserOnAnotherCall;

  KahoChatUser get peerUser;
  CallingPage get page;
  @JsonKey(ignore: true)
  _$IsPeerUserOnAnotherCallCopyWith<_IsPeerUserOnAnotherCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsAddCallUserOnAnotherCallCopyWith<$Res> {
  factory _$IsAddCallUserOnAnotherCallCopyWith(
          _IsAddCallUserOnAnotherCall value,
          $Res Function(_IsAddCallUserOnAnotherCall) then) =
      __$IsAddCallUserOnAnotherCallCopyWithImpl<$Res>;
  $Res call({KahoChatUser peerUser, String callid});
}

/// @nodoc
class __$IsAddCallUserOnAnotherCallCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$IsAddCallUserOnAnotherCallCopyWith<$Res> {
  __$IsAddCallUserOnAnotherCallCopyWithImpl(_IsAddCallUserOnAnotherCall _value,
      $Res Function(_IsAddCallUserOnAnotherCall) _then)
      : super(_value, (v) => _then(v as _IsAddCallUserOnAnotherCall));

  @override
  _IsAddCallUserOnAnotherCall get _value =>
      super._value as _IsAddCallUserOnAnotherCall;

  @override
  $Res call({
    Object? peerUser = freezed,
    Object? callid = freezed,
  }) {
    return _then(_IsAddCallUserOnAnotherCall(
      peerUser: peerUser == freezed
          ? _value.peerUser
          : peerUser // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      callid: callid == freezed
          ? _value.callid
          : callid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsAddCallUserOnAnotherCall implements _IsAddCallUserOnAnotherCall {
  const _$_IsAddCallUserOnAnotherCall(
      {required this.peerUser, required this.callid});

  @override
  final KahoChatUser peerUser;
  @override
  final String callid;

  @override
  String toString() {
    return 'CallsEvent.isAddCallUserAcceptedCall(peerUser: $peerUser, callid: $callid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsAddCallUserOnAnotherCall &&
            const DeepCollectionEquality().equals(other.peerUser, peerUser) &&
            const DeepCollectionEquality().equals(other.callid, callid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peerUser),
      const DeepCollectionEquality().hash(callid));

  @JsonKey(ignore: true)
  @override
  _$IsAddCallUserOnAnotherCallCopyWith<_IsAddCallUserOnAnotherCall>
      get copyWith => __$IsAddCallUserOnAnotherCallCopyWithImpl<
          _IsAddCallUserOnAnotherCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return isAddCallUserAcceptedCall(peerUser, callid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return isAddCallUserAcceptedCall?.call(peerUser, callid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (isAddCallUserAcceptedCall != null) {
      return isAddCallUserAcceptedCall(peerUser, callid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return isAddCallUserAcceptedCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return isAddCallUserAcceptedCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (isAddCallUserAcceptedCall != null) {
      return isAddCallUserAcceptedCall(this);
    }
    return orElse();
  }
}

abstract class _IsAddCallUserOnAnotherCall implements CallsEvent {
  const factory _IsAddCallUserOnAnotherCall(
      {required KahoChatUser peerUser,
      required String callid}) = _$_IsAddCallUserOnAnotherCall;

  KahoChatUser get peerUser;
  String get callid;
  @JsonKey(ignore: true)
  _$IsAddCallUserOnAnotherCallCopyWith<_IsAddCallUserOnAnotherCall>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCurrentRoomDetailsCopyWith<$Res> {
  factory _$UpdateCurrentRoomDetailsCopyWith(_UpdateCurrentRoomDetails value,
          $Res Function(_UpdateCurrentRoomDetails) then) =
      __$UpdateCurrentRoomDetailsCopyWithImpl<$Res>;
  $Res call({CallRoomModel roomDetails});
}

/// @nodoc
class __$UpdateCurrentRoomDetailsCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$UpdateCurrentRoomDetailsCopyWith<$Res> {
  __$UpdateCurrentRoomDetailsCopyWithImpl(_UpdateCurrentRoomDetails _value,
      $Res Function(_UpdateCurrentRoomDetails) _then)
      : super(_value, (v) => _then(v as _UpdateCurrentRoomDetails));

  @override
  _UpdateCurrentRoomDetails get _value =>
      super._value as _UpdateCurrentRoomDetails;

  @override
  $Res call({
    Object? roomDetails = freezed,
  }) {
    return _then(_UpdateCurrentRoomDetails(
      roomDetails == freezed
          ? _value.roomDetails
          : roomDetails // ignore: cast_nullable_to_non_nullable
              as CallRoomModel,
    ));
  }
}

/// @nodoc

class _$_UpdateCurrentRoomDetails implements _UpdateCurrentRoomDetails {
  const _$_UpdateCurrentRoomDetails(this.roomDetails);

  @override
  final CallRoomModel roomDetails;

  @override
  String toString() {
    return 'CallsEvent.updateCurrentRoomDetails(roomDetails: $roomDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCurrentRoomDetails &&
            const DeepCollectionEquality()
                .equals(other.roomDetails, roomDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(roomDetails));

  @JsonKey(ignore: true)
  @override
  _$UpdateCurrentRoomDetailsCopyWith<_UpdateCurrentRoomDetails> get copyWith =>
      __$UpdateCurrentRoomDetailsCopyWithImpl<_UpdateCurrentRoomDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return updateCurrentRoomDetails(roomDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return updateCurrentRoomDetails?.call(roomDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (updateCurrentRoomDetails != null) {
      return updateCurrentRoomDetails(roomDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return updateCurrentRoomDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return updateCurrentRoomDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (updateCurrentRoomDetails != null) {
      return updateCurrentRoomDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentRoomDetails implements CallsEvent {
  const factory _UpdateCurrentRoomDetails(CallRoomModel roomDetails) =
      _$_UpdateCurrentRoomDetails;

  CallRoomModel get roomDetails;
  @JsonKey(ignore: true)
  _$UpdateCurrentRoomDetailsCopyWith<_UpdateCurrentRoomDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddParticipantsCopyWith<$Res> {
  factory _$AddParticipantsCopyWith(
          _AddParticipants value, $Res Function(_AddParticipants) then) =
      __$AddParticipantsCopyWithImpl<$Res>;
  $Res call(
      {KahoChatUser caller, KahoChatUser reciever, CallRoomModel currentRoom});
}

/// @nodoc
class __$AddParticipantsCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$AddParticipantsCopyWith<$Res> {
  __$AddParticipantsCopyWithImpl(
      _AddParticipants _value, $Res Function(_AddParticipants) _then)
      : super(_value, (v) => _then(v as _AddParticipants));

  @override
  _AddParticipants get _value => super._value as _AddParticipants;

  @override
  $Res call({
    Object? caller = freezed,
    Object? reciever = freezed,
    Object? currentRoom = freezed,
  }) {
    return _then(_AddParticipants(
      caller == freezed
          ? _value.caller
          : caller // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      reciever == freezed
          ? _value.reciever
          : reciever // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
      currentRoom == freezed
          ? _value.currentRoom
          : currentRoom // ignore: cast_nullable_to_non_nullable
              as CallRoomModel,
    ));
  }
}

/// @nodoc

class _$_AddParticipants implements _AddParticipants {
  const _$_AddParticipants(this.caller, this.reciever, this.currentRoom);

  @override
  final KahoChatUser caller;
  @override
  final KahoChatUser reciever;
  @override
  final CallRoomModel currentRoom;

  @override
  String toString() {
    return 'CallsEvent.addParticipants(caller: $caller, reciever: $reciever, currentRoom: $currentRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddParticipants &&
            const DeepCollectionEquality().equals(other.caller, caller) &&
            const DeepCollectionEquality().equals(other.reciever, reciever) &&
            const DeepCollectionEquality()
                .equals(other.currentRoom, currentRoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caller),
      const DeepCollectionEquality().hash(reciever),
      const DeepCollectionEquality().hash(currentRoom));

  @JsonKey(ignore: true)
  @override
  _$AddParticipantsCopyWith<_AddParticipants> get copyWith =>
      __$AddParticipantsCopyWithImpl<_AddParticipants>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return addParticipants(caller, reciever, currentRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return addParticipants?.call(caller, reciever, currentRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (addParticipants != null) {
      return addParticipants(caller, reciever, currentRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return addParticipants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return addParticipants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (addParticipants != null) {
      return addParticipants(this);
    }
    return orElse();
  }
}

abstract class _AddParticipants implements CallsEvent {
  const factory _AddParticipants(KahoChatUser caller, KahoChatUser reciever,
      CallRoomModel currentRoom) = _$_AddParticipants;

  KahoChatUser get caller;
  KahoChatUser get reciever;
  CallRoomModel get currentRoom;
  @JsonKey(ignore: true)
  _$AddParticipantsCopyWith<_AddParticipants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeaveCallCopyWith<$Res> {
  factory _$LeaveCallCopyWith(
          _LeaveCall value, $Res Function(_LeaveCall) then) =
      __$LeaveCallCopyWithImpl<$Res>;
  $Res call({KahoChatUser receiver});
}

/// @nodoc
class __$LeaveCallCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$LeaveCallCopyWith<$Res> {
  __$LeaveCallCopyWithImpl(_LeaveCall _value, $Res Function(_LeaveCall) _then)
      : super(_value, (v) => _then(v as _LeaveCall));

  @override
  _LeaveCall get _value => super._value as _LeaveCall;

  @override
  $Res call({
    Object? receiver = freezed,
  }) {
    return _then(_LeaveCall(
      receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as KahoChatUser,
    ));
  }
}

/// @nodoc

class _$_LeaveCall implements _LeaveCall {
  const _$_LeaveCall(this.receiver);

  @override
  final KahoChatUser receiver;

  @override
  String toString() {
    return 'CallsEvent.leaveCall(receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeaveCall &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$LeaveCallCopyWith<_LeaveCall> get copyWith =>
      __$LeaveCallCopyWithImpl<_LeaveCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return leaveCall(receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return leaveCall?.call(receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (leaveCall != null) {
      return leaveCall(receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return leaveCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return leaveCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (leaveCall != null) {
      return leaveCall(this);
    }
    return orElse();
  }
}

abstract class _LeaveCall implements CallsEvent {
  const factory _LeaveCall(KahoChatUser receiver) = _$_LeaveCall;

  KahoChatUser get receiver;
  @JsonKey(ignore: true)
  _$LeaveCallCopyWith<_LeaveCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSingleUserCallHistoryCopyWith<$Res> {
  factory _$DeleteSingleUserCallHistoryCopyWith(
          _DeleteSingleUserCallHistory value,
          $Res Function(_DeleteSingleUserCallHistory) then) =
      __$DeleteSingleUserCallHistoryCopyWithImpl<$Res>;
  $Res call({String callDocumentId});
}

/// @nodoc
class __$DeleteSingleUserCallHistoryCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$DeleteSingleUserCallHistoryCopyWith<$Res> {
  __$DeleteSingleUserCallHistoryCopyWithImpl(
      _DeleteSingleUserCallHistory _value,
      $Res Function(_DeleteSingleUserCallHistory) _then)
      : super(_value, (v) => _then(v as _DeleteSingleUserCallHistory));

  @override
  _DeleteSingleUserCallHistory get _value =>
      super._value as _DeleteSingleUserCallHistory;

  @override
  $Res call({
    Object? callDocumentId = freezed,
  }) {
    return _then(_DeleteSingleUserCallHistory(
      callDocumentId: callDocumentId == freezed
          ? _value.callDocumentId
          : callDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteSingleUserCallHistory implements _DeleteSingleUserCallHistory {
  const _$_DeleteSingleUserCallHistory({required this.callDocumentId});

  @override
  final String callDocumentId;

  @override
  String toString() {
    return 'CallsEvent.deleteSingleUserCallHistory(callDocumentId: $callDocumentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteSingleUserCallHistory &&
            const DeepCollectionEquality()
                .equals(other.callDocumentId, callDocumentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(callDocumentId));

  @JsonKey(ignore: true)
  @override
  _$DeleteSingleUserCallHistoryCopyWith<_DeleteSingleUserCallHistory>
      get copyWith => __$DeleteSingleUserCallHistoryCopyWithImpl<
          _DeleteSingleUserCallHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return deleteSingleUserCallHistory(callDocumentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return deleteSingleUserCallHistory?.call(callDocumentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (deleteSingleUserCallHistory != null) {
      return deleteSingleUserCallHistory(callDocumentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return deleteSingleUserCallHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return deleteSingleUserCallHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (deleteSingleUserCallHistory != null) {
      return deleteSingleUserCallHistory(this);
    }
    return orElse();
  }
}

abstract class _DeleteSingleUserCallHistory implements CallsEvent {
  const factory _DeleteSingleUserCallHistory({required String callDocumentId}) =
      _$_DeleteSingleUserCallHistory;

  String get callDocumentId;
  @JsonKey(ignore: true)
  _$DeleteSingleUserCallHistoryCopyWith<_DeleteSingleUserCallHistory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcquireCopyWith<$Res> {
  factory _$AcquireCopyWith(_Acquire value, $Res Function(_Acquire) then) =
      __$AcquireCopyWithImpl<$Res>;
}

/// @nodoc
class __$AcquireCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$AcquireCopyWith<$Res> {
  __$AcquireCopyWithImpl(_Acquire _value, $Res Function(_Acquire) _then)
      : super(_value, (v) => _then(v as _Acquire));

  @override
  _Acquire get _value => super._value as _Acquire;
}

/// @nodoc

class _$_Acquire implements _Acquire {
  const _$_Acquire();

  @override
  String toString() {
    return 'CallsEvent.acquire()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Acquire);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return acquire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return acquire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (acquire != null) {
      return acquire();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return acquire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return acquire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (acquire != null) {
      return acquire(this);
    }
    return orElse();
  }
}

abstract class _Acquire implements CallsEvent {
  const factory _Acquire() = _$_Acquire;
}

/// @nodoc
abstract class _$StartRecordingCopyWith<$Res> {
  factory _$StartRecordingCopyWith(
          _StartRecording value, $Res Function(_StartRecording) then) =
      __$StartRecordingCopyWithImpl<$Res>;
  $Res call({String callId, String callType});
}

/// @nodoc
class __$StartRecordingCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$StartRecordingCopyWith<$Res> {
  __$StartRecordingCopyWithImpl(
      _StartRecording _value, $Res Function(_StartRecording) _then)
      : super(_value, (v) => _then(v as _StartRecording));

  @override
  _StartRecording get _value => super._value as _StartRecording;

  @override
  $Res call({
    Object? callId = freezed,
    Object? callType = freezed,
  }) {
    return _then(_StartRecording(
      callId == freezed
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
      callType == freezed
          ? _value.callType
          : callType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartRecording implements _StartRecording {
  const _$_StartRecording(this.callId, this.callType);

  @override
  final String callId;
  @override
  final String callType;

  @override
  String toString() {
    return 'CallsEvent.startRecording(callId: $callId, callType: $callType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartRecording &&
            const DeepCollectionEquality().equals(other.callId, callId) &&
            const DeepCollectionEquality().equals(other.callType, callType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(callId),
      const DeepCollectionEquality().hash(callType));

  @JsonKey(ignore: true)
  @override
  _$StartRecordingCopyWith<_StartRecording> get copyWith =>
      __$StartRecordingCopyWithImpl<_StartRecording>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return startRecording(callId, callType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return startRecording?.call(callId, callType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (startRecording != null) {
      return startRecording(callId, callType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return startRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return startRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (startRecording != null) {
      return startRecording(this);
    }
    return orElse();
  }
}

abstract class _StartRecording implements CallsEvent {
  const factory _StartRecording(String callId, String callType) =
      _$_StartRecording;

  String get callId;
  String get callType;
  @JsonKey(ignore: true)
  _$StartRecordingCopyWith<_StartRecording> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StopRecordingCopyWith<$Res> {
  factory _$StopRecordingCopyWith(
          _StopRecording value, $Res Function(_StopRecording) then) =
      __$StopRecordingCopyWithImpl<$Res>;
  $Res call({CallRoomModel currentRoom});
}

/// @nodoc
class __$StopRecordingCopyWithImpl<$Res> extends _$CallsEventCopyWithImpl<$Res>
    implements _$StopRecordingCopyWith<$Res> {
  __$StopRecordingCopyWithImpl(
      _StopRecording _value, $Res Function(_StopRecording) _then)
      : super(_value, (v) => _then(v as _StopRecording));

  @override
  _StopRecording get _value => super._value as _StopRecording;

  @override
  $Res call({
    Object? currentRoom = freezed,
  }) {
    return _then(_StopRecording(
      currentRoom: currentRoom == freezed
          ? _value.currentRoom
          : currentRoom // ignore: cast_nullable_to_non_nullable
              as CallRoomModel,
    ));
  }
}

/// @nodoc

class _$_StopRecording implements _StopRecording {
  const _$_StopRecording({required this.currentRoom});

  @override
  final CallRoomModel currentRoom;

  @override
  String toString() {
    return 'CallsEvent.stopRecording(currentRoom: $currentRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StopRecording &&
            const DeepCollectionEquality()
                .equals(other.currentRoom, currentRoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentRoom));

  @JsonKey(ignore: true)
  @override
  _$StopRecordingCopyWith<_StopRecording> get copyWith =>
      __$StopRecordingCopyWithImpl<_StopRecording>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return stopRecording(currentRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return stopRecording?.call(currentRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (stopRecording != null) {
      return stopRecording(currentRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return stopRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return stopRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (stopRecording != null) {
      return stopRecording(this);
    }
    return orElse();
  }
}

abstract class _StopRecording implements CallsEvent {
  const factory _StopRecording({required CallRoomModel currentRoom}) =
      _$_StopRecording;

  CallRoomModel get currentRoom;
  @JsonKey(ignore: true)
  _$StopRecordingCopyWith<_StopRecording> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeUserMuteStateCopyWith<$Res> {
  factory _$ChangeUserMuteStateCopyWith(_ChangeUserMuteState value,
          $Res Function(_ChangeUserMuteState) then) =
      __$ChangeUserMuteStateCopyWithImpl<$Res>;
  $Res call({CallRoomModel currentRoomDetails, bool isMuted});
}

/// @nodoc
class __$ChangeUserMuteStateCopyWithImpl<$Res>
    extends _$CallsEventCopyWithImpl<$Res>
    implements _$ChangeUserMuteStateCopyWith<$Res> {
  __$ChangeUserMuteStateCopyWithImpl(
      _ChangeUserMuteState _value, $Res Function(_ChangeUserMuteState) _then)
      : super(_value, (v) => _then(v as _ChangeUserMuteState));

  @override
  _ChangeUserMuteState get _value => super._value as _ChangeUserMuteState;

  @override
  $Res call({
    Object? currentRoomDetails = freezed,
    Object? isMuted = freezed,
  }) {
    return _then(_ChangeUserMuteState(
      currentRoomDetails: currentRoomDetails == freezed
          ? _value.currentRoomDetails
          : currentRoomDetails // ignore: cast_nullable_to_non_nullable
              as CallRoomModel,
      isMuted: isMuted == freezed
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeUserMuteState implements _ChangeUserMuteState {
  const _$_ChangeUserMuteState(
      {required this.currentRoomDetails, required this.isMuted});

  @override
  final CallRoomModel currentRoomDetails;
  @override
  final bool isMuted;

  @override
  String toString() {
    return 'CallsEvent.changeUserMuteState(currentRoomDetails: $currentRoomDetails, isMuted: $isMuted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeUserMuteState &&
            const DeepCollectionEquality()
                .equals(other.currentRoomDetails, currentRoomDetails) &&
            const DeepCollectionEquality().equals(other.isMuted, isMuted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentRoomDetails),
      const DeepCollectionEquality().hash(isMuted));

  @JsonKey(ignore: true)
  @override
  _$ChangeUserMuteStateCopyWith<_ChangeUserMuteState> get copyWith =>
      __$ChangeUserMuteStateCopyWithImpl<_ChangeUserMuteState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int callDuration) endCurrentCall,
    required TResult Function(String agoraGeneratedToken) getAgoraToken,
    required TResult Function() fetchAgoraToken,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVoiceCall,
    required TResult Function(KahoChatUser caller, KahoChatUser receiver)
        startVideoCall,
    required TResult Function(int uid) setParticipantUID,
    required TResult Function() acceptIncomingCall,
    required TResult Function() rejectIncomingCall,
    required TResult Function() callNotAnswered,
    required TResult Function() updateCallTimerBy1Second,
    required TResult Function(KahoChatUser peerUser, CallingPage page)
        isPeerUserOnAnotherCall,
    required TResult Function(KahoChatUser peerUser, String callid)
        isAddCallUserAcceptedCall,
    required TResult Function(CallRoomModel roomDetails)
        updateCurrentRoomDetails,
    required TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)
        addParticipants,
    required TResult Function(KahoChatUser receiver) leaveCall,
    required TResult Function(String callDocumentId)
        deleteSingleUserCallHistory,
    required TResult Function() acquire,
    required TResult Function(String callId, String callType) startRecording,
    required TResult Function(CallRoomModel currentRoom) stopRecording,
    required TResult Function(CallRoomModel currentRoomDetails, bool isMuted)
        changeUserMuteState,
  }) {
    return changeUserMuteState(currentRoomDetails, isMuted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
  }) {
    return changeUserMuteState?.call(currentRoomDetails, isMuted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int callDuration)? endCurrentCall,
    TResult Function(String agoraGeneratedToken)? getAgoraToken,
    TResult Function()? fetchAgoraToken,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVoiceCall,
    TResult Function(KahoChatUser caller, KahoChatUser receiver)?
        startVideoCall,
    TResult Function(int uid)? setParticipantUID,
    TResult Function()? acceptIncomingCall,
    TResult Function()? rejectIncomingCall,
    TResult Function()? callNotAnswered,
    TResult Function()? updateCallTimerBy1Second,
    TResult Function(KahoChatUser peerUser, CallingPage page)?
        isPeerUserOnAnotherCall,
    TResult Function(KahoChatUser peerUser, String callid)?
        isAddCallUserAcceptedCall,
    TResult Function(CallRoomModel roomDetails)? updateCurrentRoomDetails,
    TResult Function(KahoChatUser caller, KahoChatUser reciever,
            CallRoomModel currentRoom)?
        addParticipants,
    TResult Function(KahoChatUser receiver)? leaveCall,
    TResult Function(String callDocumentId)? deleteSingleUserCallHistory,
    TResult Function()? acquire,
    TResult Function(String callId, String callType)? startRecording,
    TResult Function(CallRoomModel currentRoom)? stopRecording,
    TResult Function(CallRoomModel currentRoomDetails, bool isMuted)?
        changeUserMuteState,
    required TResult orElse(),
  }) {
    if (changeUserMuteState != null) {
      return changeUserMuteState(currentRoomDetails, isMuted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EndCall value) endCurrentCall,
    required TResult Function(_GetAgoraToken value) getAgoraToken,
    required TResult Function(_FetchAgoraToken value) fetchAgoraToken,
    required TResult Function(_StartVoiceCall value) startVoiceCall,
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_SetParticipantUID value) setParticipantUID,
    required TResult Function(_AcceptCall value) acceptIncomingCall,
    required TResult Function(_RejectCall value) rejectIncomingCall,
    required TResult Function(_callNotAnswered value) callNotAnswered,
    required TResult Function(_UpdateCallTimerBy1Second value)
        updateCallTimerBy1Second,
    required TResult Function(_IsPeerUserOnAnotherCall value)
        isPeerUserOnAnotherCall,
    required TResult Function(_IsAddCallUserOnAnotherCall value)
        isAddCallUserAcceptedCall,
    required TResult Function(_UpdateCurrentRoomDetails value)
        updateCurrentRoomDetails,
    required TResult Function(_AddParticipants value) addParticipants,
    required TResult Function(_LeaveCall value) leaveCall,
    required TResult Function(_DeleteSingleUserCallHistory value)
        deleteSingleUserCallHistory,
    required TResult Function(_Acquire value) acquire,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_ChangeUserMuteState value) changeUserMuteState,
  }) {
    return changeUserMuteState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
  }) {
    return changeUserMuteState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EndCall value)? endCurrentCall,
    TResult Function(_GetAgoraToken value)? getAgoraToken,
    TResult Function(_FetchAgoraToken value)? fetchAgoraToken,
    TResult Function(_StartVoiceCall value)? startVoiceCall,
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_SetParticipantUID value)? setParticipantUID,
    TResult Function(_AcceptCall value)? acceptIncomingCall,
    TResult Function(_RejectCall value)? rejectIncomingCall,
    TResult Function(_callNotAnswered value)? callNotAnswered,
    TResult Function(_UpdateCallTimerBy1Second value)? updateCallTimerBy1Second,
    TResult Function(_IsPeerUserOnAnotherCall value)? isPeerUserOnAnotherCall,
    TResult Function(_IsAddCallUserOnAnotherCall value)?
        isAddCallUserAcceptedCall,
    TResult Function(_UpdateCurrentRoomDetails value)? updateCurrentRoomDetails,
    TResult Function(_AddParticipants value)? addParticipants,
    TResult Function(_LeaveCall value)? leaveCall,
    TResult Function(_DeleteSingleUserCallHistory value)?
        deleteSingleUserCallHistory,
    TResult Function(_Acquire value)? acquire,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_ChangeUserMuteState value)? changeUserMuteState,
    required TResult orElse(),
  }) {
    if (changeUserMuteState != null) {
      return changeUserMuteState(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserMuteState implements CallsEvent {
  const factory _ChangeUserMuteState(
      {required CallRoomModel currentRoomDetails,
      required bool isMuted}) = _$_ChangeUserMuteState;

  CallRoomModel get currentRoomDetails;
  bool get isMuted;
  @JsonKey(ignore: true)
  _$ChangeUserMuteStateCopyWith<_ChangeUserMuteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CallsStateTearOff {
  const _$CallsStateTearOff();

  _CallState call(
      {required bool isCallActive,
      required CallRoomModel currentRoomDetails,
      required int callTimer,
      required bool isCallPicked,
      required String sid,
      required String resourceId,
      required String agoraGeneratedToken,
      required String cloudRecordingDirectory,
      required Option<Either<CallsFailure, String>>
          isRecordingFailureorSuccessoption,
      required bool isRecording,
      required Option<Either<CallsFailure, Unit>> callEndFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> callStartFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> acceptCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> rejectCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> leaveCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> acquireFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          checkAddedUserAcceptsCallOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          isPeerUserOnAnotherCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          chatDetailPageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          slidablePageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          callInfoPageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          callListPageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          startNewCallPageWaitingCallFailureOrSuccessOpt}) {
    return _CallState(
      isCallActive: isCallActive,
      currentRoomDetails: currentRoomDetails,
      callTimer: callTimer,
      isCallPicked: isCallPicked,
      sid: sid,
      resourceId: resourceId,
      agoraGeneratedToken: agoraGeneratedToken,
      cloudRecordingDirectory: cloudRecordingDirectory,
      isRecordingFailureorSuccessoption: isRecordingFailureorSuccessoption,
      isRecording: isRecording,
      callEndFailureOrSuccessOpt: callEndFailureOrSuccessOpt,
      callStartFailureOrSuccessOpt: callStartFailureOrSuccessOpt,
      acceptCallFailureOrSuccessOpt: acceptCallFailureOrSuccessOpt,
      rejectCallFailureOrSuccessOpt: rejectCallFailureOrSuccessOpt,
      leaveCallFailureOrSuccessOpt: leaveCallFailureOrSuccessOpt,
      acquireFailureOrSuccessOpt: acquireFailureOrSuccessOpt,
      checkAddedUserAcceptsCallOpt: checkAddedUserAcceptsCallOpt,
      isPeerUserOnAnotherCallFailureOrSuccessOpt:
          isPeerUserOnAnotherCallFailureOrSuccessOpt,
      chatDetailPageWaitingCallFailureOrSuccessOpt:
          chatDetailPageWaitingCallFailureOrSuccessOpt,
      slidablePageWaitingCallFailureOrSuccessOpt:
          slidablePageWaitingCallFailureOrSuccessOpt,
      callInfoPageWaitingCallFailureOrSuccessOpt:
          callInfoPageWaitingCallFailureOrSuccessOpt,
      callListPageWaitingCallFailureOrSuccessOpt:
          callListPageWaitingCallFailureOrSuccessOpt,
      startNewCallPageWaitingCallFailureOrSuccessOpt:
          startNewCallPageWaitingCallFailureOrSuccessOpt,
    );
  }
}

/// @nodoc
const $CallsState = _$CallsStateTearOff();

/// @nodoc
mixin _$CallsState {
  bool get isCallActive => throw _privateConstructorUsedError;
  CallRoomModel get currentRoomDetails => throw _privateConstructorUsedError;
  int get callTimer => throw _privateConstructorUsedError;
  bool get isCallPicked => throw _privateConstructorUsedError;
  String get sid => throw _privateConstructorUsedError;
  String get resourceId => throw _privateConstructorUsedError;
  String get agoraGeneratedToken => throw _privateConstructorUsedError;
  String get cloudRecordingDirectory => throw _privateConstructorUsedError;
  Option<Either<CallsFailure, String>> get isRecordingFailureorSuccessoption =>
      throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  Option<Either<CallsFailure, Unit>> get callEndFailureOrSuccessOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, Unit>> get callStartFailureOrSuccessOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, Unit>> get acceptCallFailureOrSuccessOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, Unit>> get rejectCallFailureOrSuccessOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, Unit>> get leaveCallFailureOrSuccessOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, Unit>> get acquireFailureOrSuccessOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>> get checkAddedUserAcceptsCallOpt =>
      throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>>
      get isPeerUserOnAnotherCallFailureOrSuccessOpt =>
          throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>>
      get chatDetailPageWaitingCallFailureOrSuccessOpt =>
          throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>>
      get slidablePageWaitingCallFailureOrSuccessOpt =>
          throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>>
      get callInfoPageWaitingCallFailureOrSuccessOpt =>
          throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>>
      get callListPageWaitingCallFailureOrSuccessOpt =>
          throw _privateConstructorUsedError;
  Option<Either<CallsFailure, KahoChatUser>>
      get startNewCallPageWaitingCallFailureOrSuccessOpt =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallsStateCopyWith<CallsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallsStateCopyWith<$Res> {
  factory $CallsStateCopyWith(
          CallsState value, $Res Function(CallsState) then) =
      _$CallsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isCallActive,
      CallRoomModel currentRoomDetails,
      int callTimer,
      bool isCallPicked,
      String sid,
      String resourceId,
      String agoraGeneratedToken,
      String cloudRecordingDirectory,
      Option<Either<CallsFailure, String>> isRecordingFailureorSuccessoption,
      bool isRecording,
      Option<Either<CallsFailure, Unit>> callEndFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> callStartFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> acceptCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> rejectCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> leaveCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> acquireFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>> checkAddedUserAcceptsCallOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          isPeerUserOnAnotherCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          chatDetailPageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          slidablePageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          callInfoPageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          callListPageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          startNewCallPageWaitingCallFailureOrSuccessOpt});
}

/// @nodoc
class _$CallsStateCopyWithImpl<$Res> implements $CallsStateCopyWith<$Res> {
  _$CallsStateCopyWithImpl(this._value, this._then);

  final CallsState _value;
  // ignore: unused_field
  final $Res Function(CallsState) _then;

  @override
  $Res call({
    Object? isCallActive = freezed,
    Object? currentRoomDetails = freezed,
    Object? callTimer = freezed,
    Object? isCallPicked = freezed,
    Object? sid = freezed,
    Object? resourceId = freezed,
    Object? agoraGeneratedToken = freezed,
    Object? cloudRecordingDirectory = freezed,
    Object? isRecordingFailureorSuccessoption = freezed,
    Object? isRecording = freezed,
    Object? callEndFailureOrSuccessOpt = freezed,
    Object? callStartFailureOrSuccessOpt = freezed,
    Object? acceptCallFailureOrSuccessOpt = freezed,
    Object? rejectCallFailureOrSuccessOpt = freezed,
    Object? leaveCallFailureOrSuccessOpt = freezed,
    Object? acquireFailureOrSuccessOpt = freezed,
    Object? checkAddedUserAcceptsCallOpt = freezed,
    Object? isPeerUserOnAnotherCallFailureOrSuccessOpt = freezed,
    Object? chatDetailPageWaitingCallFailureOrSuccessOpt = freezed,
    Object? slidablePageWaitingCallFailureOrSuccessOpt = freezed,
    Object? callInfoPageWaitingCallFailureOrSuccessOpt = freezed,
    Object? callListPageWaitingCallFailureOrSuccessOpt = freezed,
    Object? startNewCallPageWaitingCallFailureOrSuccessOpt = freezed,
  }) {
    return _then(_value.copyWith(
      isCallActive: isCallActive == freezed
          ? _value.isCallActive
          : isCallActive // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRoomDetails: currentRoomDetails == freezed
          ? _value.currentRoomDetails
          : currentRoomDetails // ignore: cast_nullable_to_non_nullable
              as CallRoomModel,
      callTimer: callTimer == freezed
          ? _value.callTimer
          : callTimer // ignore: cast_nullable_to_non_nullable
              as int,
      isCallPicked: isCallPicked == freezed
          ? _value.isCallPicked
          : isCallPicked // ignore: cast_nullable_to_non_nullable
              as bool,
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: resourceId == freezed
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String,
      agoraGeneratedToken: agoraGeneratedToken == freezed
          ? _value.agoraGeneratedToken
          : agoraGeneratedToken // ignore: cast_nullable_to_non_nullable
              as String,
      cloudRecordingDirectory: cloudRecordingDirectory == freezed
          ? _value.cloudRecordingDirectory
          : cloudRecordingDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      isRecordingFailureorSuccessoption: isRecordingFailureorSuccessoption ==
              freezed
          ? _value.isRecordingFailureorSuccessoption
          : isRecordingFailureorSuccessoption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, String>>,
      isRecording: isRecording == freezed
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      callEndFailureOrSuccessOpt: callEndFailureOrSuccessOpt == freezed
          ? _value.callEndFailureOrSuccessOpt
          : callEndFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      callStartFailureOrSuccessOpt: callStartFailureOrSuccessOpt == freezed
          ? _value.callStartFailureOrSuccessOpt
          : callStartFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      acceptCallFailureOrSuccessOpt: acceptCallFailureOrSuccessOpt == freezed
          ? _value.acceptCallFailureOrSuccessOpt
          : acceptCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      rejectCallFailureOrSuccessOpt: rejectCallFailureOrSuccessOpt == freezed
          ? _value.rejectCallFailureOrSuccessOpt
          : rejectCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      leaveCallFailureOrSuccessOpt: leaveCallFailureOrSuccessOpt == freezed
          ? _value.leaveCallFailureOrSuccessOpt
          : leaveCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      acquireFailureOrSuccessOpt: acquireFailureOrSuccessOpt == freezed
          ? _value.acquireFailureOrSuccessOpt
          : acquireFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      checkAddedUserAcceptsCallOpt: checkAddedUserAcceptsCallOpt == freezed
          ? _value.checkAddedUserAcceptsCallOpt
          : checkAddedUserAcceptsCallOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, KahoChatUser>>,
      isPeerUserOnAnotherCallFailureOrSuccessOpt:
          isPeerUserOnAnotherCallFailureOrSuccessOpt == freezed
              ? _value.isPeerUserOnAnotherCallFailureOrSuccessOpt
              : isPeerUserOnAnotherCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      chatDetailPageWaitingCallFailureOrSuccessOpt:
          chatDetailPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.chatDetailPageWaitingCallFailureOrSuccessOpt
              : chatDetailPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      slidablePageWaitingCallFailureOrSuccessOpt:
          slidablePageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.slidablePageWaitingCallFailureOrSuccessOpt
              : slidablePageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      callInfoPageWaitingCallFailureOrSuccessOpt:
          callInfoPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.callInfoPageWaitingCallFailureOrSuccessOpt
              : callInfoPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      callListPageWaitingCallFailureOrSuccessOpt:
          callListPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.callListPageWaitingCallFailureOrSuccessOpt
              : callListPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      startNewCallPageWaitingCallFailureOrSuccessOpt:
          startNewCallPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.startNewCallPageWaitingCallFailureOrSuccessOpt
              : startNewCallPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
    ));
  }
}

/// @nodoc
abstract class _$CallStateCopyWith<$Res> implements $CallsStateCopyWith<$Res> {
  factory _$CallStateCopyWith(
          _CallState value, $Res Function(_CallState) then) =
      __$CallStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCallActive,
      CallRoomModel currentRoomDetails,
      int callTimer,
      bool isCallPicked,
      String sid,
      String resourceId,
      String agoraGeneratedToken,
      String cloudRecordingDirectory,
      Option<Either<CallsFailure, String>> isRecordingFailureorSuccessoption,
      bool isRecording,
      Option<Either<CallsFailure, Unit>> callEndFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> callStartFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> acceptCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> rejectCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> leaveCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, Unit>> acquireFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>> checkAddedUserAcceptsCallOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          isPeerUserOnAnotherCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          chatDetailPageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          slidablePageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          callInfoPageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          callListPageWaitingCallFailureOrSuccessOpt,
      Option<Either<CallsFailure, KahoChatUser>>
          startNewCallPageWaitingCallFailureOrSuccessOpt});
}

/// @nodoc
class __$CallStateCopyWithImpl<$Res> extends _$CallsStateCopyWithImpl<$Res>
    implements _$CallStateCopyWith<$Res> {
  __$CallStateCopyWithImpl(_CallState _value, $Res Function(_CallState) _then)
      : super(_value, (v) => _then(v as _CallState));

  @override
  _CallState get _value => super._value as _CallState;

  @override
  $Res call({
    Object? isCallActive = freezed,
    Object? currentRoomDetails = freezed,
    Object? callTimer = freezed,
    Object? isCallPicked = freezed,
    Object? sid = freezed,
    Object? resourceId = freezed,
    Object? agoraGeneratedToken = freezed,
    Object? cloudRecordingDirectory = freezed,
    Object? isRecordingFailureorSuccessoption = freezed,
    Object? isRecording = freezed,
    Object? callEndFailureOrSuccessOpt = freezed,
    Object? callStartFailureOrSuccessOpt = freezed,
    Object? acceptCallFailureOrSuccessOpt = freezed,
    Object? rejectCallFailureOrSuccessOpt = freezed,
    Object? leaveCallFailureOrSuccessOpt = freezed,
    Object? acquireFailureOrSuccessOpt = freezed,
    Object? checkAddedUserAcceptsCallOpt = freezed,
    Object? isPeerUserOnAnotherCallFailureOrSuccessOpt = freezed,
    Object? chatDetailPageWaitingCallFailureOrSuccessOpt = freezed,
    Object? slidablePageWaitingCallFailureOrSuccessOpt = freezed,
    Object? callInfoPageWaitingCallFailureOrSuccessOpt = freezed,
    Object? callListPageWaitingCallFailureOrSuccessOpt = freezed,
    Object? startNewCallPageWaitingCallFailureOrSuccessOpt = freezed,
  }) {
    return _then(_CallState(
      isCallActive: isCallActive == freezed
          ? _value.isCallActive
          : isCallActive // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRoomDetails: currentRoomDetails == freezed
          ? _value.currentRoomDetails
          : currentRoomDetails // ignore: cast_nullable_to_non_nullable
              as CallRoomModel,
      callTimer: callTimer == freezed
          ? _value.callTimer
          : callTimer // ignore: cast_nullable_to_non_nullable
              as int,
      isCallPicked: isCallPicked == freezed
          ? _value.isCallPicked
          : isCallPicked // ignore: cast_nullable_to_non_nullable
              as bool,
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: resourceId == freezed
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String,
      agoraGeneratedToken: agoraGeneratedToken == freezed
          ? _value.agoraGeneratedToken
          : agoraGeneratedToken // ignore: cast_nullable_to_non_nullable
              as String,
      cloudRecordingDirectory: cloudRecordingDirectory == freezed
          ? _value.cloudRecordingDirectory
          : cloudRecordingDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      isRecordingFailureorSuccessoption: isRecordingFailureorSuccessoption ==
              freezed
          ? _value.isRecordingFailureorSuccessoption
          : isRecordingFailureorSuccessoption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, String>>,
      isRecording: isRecording == freezed
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      callEndFailureOrSuccessOpt: callEndFailureOrSuccessOpt == freezed
          ? _value.callEndFailureOrSuccessOpt
          : callEndFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      callStartFailureOrSuccessOpt: callStartFailureOrSuccessOpt == freezed
          ? _value.callStartFailureOrSuccessOpt
          : callStartFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      acceptCallFailureOrSuccessOpt: acceptCallFailureOrSuccessOpt == freezed
          ? _value.acceptCallFailureOrSuccessOpt
          : acceptCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      rejectCallFailureOrSuccessOpt: rejectCallFailureOrSuccessOpt == freezed
          ? _value.rejectCallFailureOrSuccessOpt
          : rejectCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      leaveCallFailureOrSuccessOpt: leaveCallFailureOrSuccessOpt == freezed
          ? _value.leaveCallFailureOrSuccessOpt
          : leaveCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      acquireFailureOrSuccessOpt: acquireFailureOrSuccessOpt == freezed
          ? _value.acquireFailureOrSuccessOpt
          : acquireFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, Unit>>,
      checkAddedUserAcceptsCallOpt: checkAddedUserAcceptsCallOpt == freezed
          ? _value.checkAddedUserAcceptsCallOpt
          : checkAddedUserAcceptsCallOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<CallsFailure, KahoChatUser>>,
      isPeerUserOnAnotherCallFailureOrSuccessOpt:
          isPeerUserOnAnotherCallFailureOrSuccessOpt == freezed
              ? _value.isPeerUserOnAnotherCallFailureOrSuccessOpt
              : isPeerUserOnAnotherCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      chatDetailPageWaitingCallFailureOrSuccessOpt:
          chatDetailPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.chatDetailPageWaitingCallFailureOrSuccessOpt
              : chatDetailPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      slidablePageWaitingCallFailureOrSuccessOpt:
          slidablePageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.slidablePageWaitingCallFailureOrSuccessOpt
              : slidablePageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      callInfoPageWaitingCallFailureOrSuccessOpt:
          callInfoPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.callInfoPageWaitingCallFailureOrSuccessOpt
              : callInfoPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      callListPageWaitingCallFailureOrSuccessOpt:
          callListPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.callListPageWaitingCallFailureOrSuccessOpt
              : callListPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
      startNewCallPageWaitingCallFailureOrSuccessOpt:
          startNewCallPageWaitingCallFailureOrSuccessOpt == freezed
              ? _value.startNewCallPageWaitingCallFailureOrSuccessOpt
              : startNewCallPageWaitingCallFailureOrSuccessOpt // ignore: cast_nullable_to_non_nullable
                  as Option<Either<CallsFailure, KahoChatUser>>,
    ));
  }
}

/// @nodoc

class _$_CallState implements _CallState {
  const _$_CallState(
      {required this.isCallActive,
      required this.currentRoomDetails,
      required this.callTimer,
      required this.isCallPicked,
      required this.sid,
      required this.resourceId,
      required this.agoraGeneratedToken,
      required this.cloudRecordingDirectory,
      required this.isRecordingFailureorSuccessoption,
      required this.isRecording,
      required this.callEndFailureOrSuccessOpt,
      required this.callStartFailureOrSuccessOpt,
      required this.acceptCallFailureOrSuccessOpt,
      required this.rejectCallFailureOrSuccessOpt,
      required this.leaveCallFailureOrSuccessOpt,
      required this.acquireFailureOrSuccessOpt,
      required this.checkAddedUserAcceptsCallOpt,
      required this.isPeerUserOnAnotherCallFailureOrSuccessOpt,
      required this.chatDetailPageWaitingCallFailureOrSuccessOpt,
      required this.slidablePageWaitingCallFailureOrSuccessOpt,
      required this.callInfoPageWaitingCallFailureOrSuccessOpt,
      required this.callListPageWaitingCallFailureOrSuccessOpt,
      required this.startNewCallPageWaitingCallFailureOrSuccessOpt});

  @override
  final bool isCallActive;
  @override
  final CallRoomModel currentRoomDetails;
  @override
  final int callTimer;
  @override
  final bool isCallPicked;
  @override
  final String sid;
  @override
  final String resourceId;
  @override
  final String agoraGeneratedToken;
  @override
  final String cloudRecordingDirectory;
  @override
  final Option<Either<CallsFailure, String>> isRecordingFailureorSuccessoption;
  @override
  final bool isRecording;
  @override
  final Option<Either<CallsFailure, Unit>> callEndFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, Unit>> callStartFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, Unit>> acceptCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, Unit>> rejectCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, Unit>> leaveCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, Unit>> acquireFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>> checkAddedUserAcceptsCallOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>>
      isPeerUserOnAnotherCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>>
      chatDetailPageWaitingCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>>
      slidablePageWaitingCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>>
      callInfoPageWaitingCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>>
      callListPageWaitingCallFailureOrSuccessOpt;
  @override
  final Option<Either<CallsFailure, KahoChatUser>>
      startNewCallPageWaitingCallFailureOrSuccessOpt;

  @override
  String toString() {
    return 'CallsState(isCallActive: $isCallActive, currentRoomDetails: $currentRoomDetails, callTimer: $callTimer, isCallPicked: $isCallPicked, sid: $sid, resourceId: $resourceId, agoraGeneratedToken: $agoraGeneratedToken, cloudRecordingDirectory: $cloudRecordingDirectory, isRecordingFailureorSuccessoption: $isRecordingFailureorSuccessoption, isRecording: $isRecording, callEndFailureOrSuccessOpt: $callEndFailureOrSuccessOpt, callStartFailureOrSuccessOpt: $callStartFailureOrSuccessOpt, acceptCallFailureOrSuccessOpt: $acceptCallFailureOrSuccessOpt, rejectCallFailureOrSuccessOpt: $rejectCallFailureOrSuccessOpt, leaveCallFailureOrSuccessOpt: $leaveCallFailureOrSuccessOpt, acquireFailureOrSuccessOpt: $acquireFailureOrSuccessOpt, checkAddedUserAcceptsCallOpt: $checkAddedUserAcceptsCallOpt, isPeerUserOnAnotherCallFailureOrSuccessOpt: $isPeerUserOnAnotherCallFailureOrSuccessOpt, chatDetailPageWaitingCallFailureOrSuccessOpt: $chatDetailPageWaitingCallFailureOrSuccessOpt, slidablePageWaitingCallFailureOrSuccessOpt: $slidablePageWaitingCallFailureOrSuccessOpt, callInfoPageWaitingCallFailureOrSuccessOpt: $callInfoPageWaitingCallFailureOrSuccessOpt, callListPageWaitingCallFailureOrSuccessOpt: $callListPageWaitingCallFailureOrSuccessOpt, startNewCallPageWaitingCallFailureOrSuccessOpt: $startNewCallPageWaitingCallFailureOrSuccessOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallState &&
            const DeepCollectionEquality()
                .equals(other.isCallActive, isCallActive) &&
            const DeepCollectionEquality()
                .equals(other.currentRoomDetails, currentRoomDetails) &&
            const DeepCollectionEquality().equals(other.callTimer, callTimer) &&
            const DeepCollectionEquality()
                .equals(other.isCallPicked, isCallPicked) &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality()
                .equals(other.resourceId, resourceId) &&
            const DeepCollectionEquality()
                .equals(other.agoraGeneratedToken, agoraGeneratedToken) &&
            const DeepCollectionEquality().equals(
                other.cloudRecordingDirectory, cloudRecordingDirectory) &&
            const DeepCollectionEquality().equals(
                other.isRecordingFailureorSuccessoption,
                isRecordingFailureorSuccessoption) &&
            const DeepCollectionEquality()
                .equals(other.isRecording, isRecording) &&
            const DeepCollectionEquality().equals(
                other.callEndFailureOrSuccessOpt, callEndFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.callStartFailureOrSuccessOpt,
                callStartFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.acceptCallFailureOrSuccessOpt,
                acceptCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.rejectCallFailureOrSuccessOpt,
                rejectCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.leaveCallFailureOrSuccessOpt,
                leaveCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.acquireFailureOrSuccessOpt, acquireFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.checkAddedUserAcceptsCallOpt,
                checkAddedUserAcceptsCallOpt) &&
            const DeepCollectionEquality().equals(
                other.isPeerUserOnAnotherCallFailureOrSuccessOpt,
                isPeerUserOnAnotherCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.chatDetailPageWaitingCallFailureOrSuccessOpt,
                chatDetailPageWaitingCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.slidablePageWaitingCallFailureOrSuccessOpt,
                slidablePageWaitingCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.callInfoPageWaitingCallFailureOrSuccessOpt,
                callInfoPageWaitingCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.callListPageWaitingCallFailureOrSuccessOpt,
                callListPageWaitingCallFailureOrSuccessOpt) &&
            const DeepCollectionEquality().equals(
                other.startNewCallPageWaitingCallFailureOrSuccessOpt,
                startNewCallPageWaitingCallFailureOrSuccessOpt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isCallActive),
        const DeepCollectionEquality().hash(currentRoomDetails),
        const DeepCollectionEquality().hash(callTimer),
        const DeepCollectionEquality().hash(isCallPicked),
        const DeepCollectionEquality().hash(sid),
        const DeepCollectionEquality().hash(resourceId),
        const DeepCollectionEquality().hash(agoraGeneratedToken),
        const DeepCollectionEquality().hash(cloudRecordingDirectory),
        const DeepCollectionEquality().hash(isRecordingFailureorSuccessoption),
        const DeepCollectionEquality().hash(isRecording),
        const DeepCollectionEquality().hash(callEndFailureOrSuccessOpt),
        const DeepCollectionEquality().hash(callStartFailureOrSuccessOpt),
        const DeepCollectionEquality().hash(acceptCallFailureOrSuccessOpt),
        const DeepCollectionEquality().hash(rejectCallFailureOrSuccessOpt),
        const DeepCollectionEquality().hash(leaveCallFailureOrSuccessOpt),
        const DeepCollectionEquality().hash(acquireFailureOrSuccessOpt),
        const DeepCollectionEquality().hash(checkAddedUserAcceptsCallOpt),
        const DeepCollectionEquality()
            .hash(isPeerUserOnAnotherCallFailureOrSuccessOpt),
        const DeepCollectionEquality()
            .hash(chatDetailPageWaitingCallFailureOrSuccessOpt),
        const DeepCollectionEquality()
            .hash(slidablePageWaitingCallFailureOrSuccessOpt),
        const DeepCollectionEquality()
            .hash(callInfoPageWaitingCallFailureOrSuccessOpt),
        const DeepCollectionEquality()
            .hash(callListPageWaitingCallFailureOrSuccessOpt),
        const DeepCollectionEquality()
            .hash(startNewCallPageWaitingCallFailureOrSuccessOpt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$CallStateCopyWith<_CallState> get copyWith =>
      __$CallStateCopyWithImpl<_CallState>(this, _$identity);
}

abstract class _CallState implements CallsState {
  const factory _CallState(
      {required bool isCallActive,
      required CallRoomModel currentRoomDetails,
      required int callTimer,
      required bool isCallPicked,
      required String sid,
      required String resourceId,
      required String agoraGeneratedToken,
      required String cloudRecordingDirectory,
      required Option<Either<CallsFailure, String>>
          isRecordingFailureorSuccessoption,
      required bool isRecording,
      required Option<Either<CallsFailure, Unit>> callEndFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> callStartFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> acceptCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> rejectCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> leaveCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, Unit>> acquireFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          checkAddedUserAcceptsCallOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          isPeerUserOnAnotherCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          chatDetailPageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          slidablePageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          callInfoPageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          callListPageWaitingCallFailureOrSuccessOpt,
      required Option<Either<CallsFailure, KahoChatUser>>
          startNewCallPageWaitingCallFailureOrSuccessOpt}) = _$_CallState;

  @override
  bool get isCallActive;
  @override
  CallRoomModel get currentRoomDetails;
  @override
  int get callTimer;
  @override
  bool get isCallPicked;
  @override
  String get sid;
  @override
  String get resourceId;
  @override
  String get agoraGeneratedToken;
  @override
  String get cloudRecordingDirectory;
  @override
  Option<Either<CallsFailure, String>> get isRecordingFailureorSuccessoption;
  @override
  bool get isRecording;
  @override
  Option<Either<CallsFailure, Unit>> get callEndFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, Unit>> get callStartFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, Unit>> get acceptCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, Unit>> get rejectCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, Unit>> get leaveCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, Unit>> get acquireFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>> get checkAddedUserAcceptsCallOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>>
      get isPeerUserOnAnotherCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>>
      get chatDetailPageWaitingCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>>
      get slidablePageWaitingCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>>
      get callInfoPageWaitingCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>>
      get callListPageWaitingCallFailureOrSuccessOpt;
  @override
  Option<Either<CallsFailure, KahoChatUser>>
      get startNewCallPageWaitingCallFailureOrSuccessOpt;
  @override
  @JsonKey(ignore: true)
  _$CallStateCopyWith<_CallState> get copyWith =>
      throw _privateConstructorUsedError;
}
