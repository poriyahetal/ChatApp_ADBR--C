// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/calls/calls_failures.dart';
import 'package:flutter_template/domain/calls/i_call_log_facade.dart';
import 'package:flutter_template/domain/calls/i_calls_facade.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/recording/i_cloud_recording_facade.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calls_bloc.freezed.dart';
part 'calls_event.dart';
part 'calls_state.dart';

@injectable
class CallsBloc extends Bloc<CallsEvent, CallsState> {
  CallsBloc(this._callsFacade, this._callLogFacade, this._iCloudRecordingFacade)
      : super(CallsState.initial());

  final ICallsFacade _callsFacade;
  final ICallLogFacade _callLogFacade;
  final ICloudRecordingFacade _iCloudRecordingFacade;

  @override
  Stream<CallsState> mapEventToState(
    CallsEvent event,
  ) async* {
    yield* event.map(
      startVoiceCall: (e) async* {
        debugPrint("Voice call started");
        yield* _startCallBasedOnType(
          caller: e.caller,
          receiver: e.receiver,
          type: CallType.audio,
        );
      },
      updateCallTimerBy1Second: (e) async* {
        yield state.copyWith(
          callTimer: state.callTimer + 1,
        );
      },
      endCurrentCall: (e) async* {
        if (state.isRecording) {
          yield state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
          );
          final stop = await _iCloudRecordingFacade.stop(
              state.sid, state.resourceId, state.currentRoomDetails);
          yield stop.fold(
            (failure) {
              print("failed");
              return state.copyWith(
                callEndFailureOrSuccessOpt: none(),
                callStartFailureOrSuccessOpt: none(),
                rejectCallFailureOrSuccessOpt: none(),
                acceptCallFailureOrSuccessOpt: none(),
                acquireFailureOrSuccessOpt: none(),
                isRecordingFailureorSuccessoption: some(left(failure)),
                isRecording: false, // ? CHECK THIS LINE
              );
            },
            (currentRoomDetails) {
              return state.copyWith(
                sid: "",
                resourceId: "",
                cloudRecordingDirectory:
                    currentRoomDetails.currentCall.recordingDirectory,
                isRecordingFailureorSuccessoption: none(),
                isRecording: false,
                callEndFailureOrSuccessOpt: none(),
                callStartFailureOrSuccessOpt: none(),
                rejectCallFailureOrSuccessOpt: none(),
                acceptCallFailureOrSuccessOpt: none(),
                acquireFailureOrSuccessOpt: none(),
              );
            },
          );
        }
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
          callStartFailureOrSuccessOpt: none(),
          acceptCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          rejectCallFailureOrSuccessOpt: none(),
        );
        final opt = await _callsFacade.endCall(
          state.currentRoomDetails,
          e.callDuration,
          state.cloudRecordingDirectory,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            callStartFailureOrSuccessOpt: none(),
            callEndFailureOrSuccessOpt: some(left(failure)),
            acceptCallFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
          (updatedRoomDetails) => state.copyWith(
            currentRoomDetails: updatedRoomDetails,
            isCallActive: false,
            callStartFailureOrSuccessOpt: none(),
            callEndFailureOrSuccessOpt: some(right(unit)),
            acceptCallFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
        );
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
        );
      },
      callNotAnswered: (e) async* {
        final opt =
            await _callsFacade.callNotAnswered(state.currentRoomDetails);
      },
      rejectIncomingCall: (e) async* {
        // yield state.copyWith(
        //   callEndFailureOrSuccessOpt: none(),
        //   callStartFailureOrSuccessOpt: none(),
        //   acceptrejectCallFailureOrSuccessOpt: none(),
        // );CallFailureOrSuccessOpt: none(),
        //
        final opt =
            await _callsFacade.rejectIncomingCall(state.currentRoomDetails);
        // yield opt.fold(
        //   (failure) => state.copyWith(
        //     callEndFailureOrSuccessOpt: none(),
        //     callStartFailureOrSuccessOpt: none(),
        //     acceptCallFailureOrSuccessOpt: none(),
        //     rejectCallFailureOrSuccessOpt: none(),
        //   ),
        //   (success) => state.copyWith(
        //     callEndFailureOrSuccessOpt: none(),
        //     callStartFailureOrSuccessOpt: none(),
        //     acceptCallFailureOrSuccessOpt: none(),
        //     rejectCallFailureOrSuccessOpt: none(),
        //   ),
        // );
      },
      acceptIncomingCall: (e) async* {
        // print(
        //     "******####################******************################********************** ${state.currentRoomDetails.id} ");
        // yield state.copyWith(
        //   callEndFailureOrSuccessOpt: none(),
        //   callStartFailureOrSuccessOpt: none(),
        //   acceptCallFailureOrSuccessOpt: none(),
        //   rejectCallFailureOrSuccessOpt: none(),
        //   callTimer: 0,
        // );
        print(
            "******####################******************################********************** ${state.currentRoomDetails.id} ");
        final opt =
            await _callsFacade.acceptIncomingCall(state.currentRoomDetails);
        yield opt.fold((failure) {
          print("ACCEPT INCOMING CALL FROM BLOC FALIED");
          return state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: some(left(failure)),
            acquireFailureOrSuccessOpt: none(),
          );
        }, (updatedCallRoomDetails) {
          print("ACCEPT INCOMING CALL FROM BLOC Success");
          return state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: some(right(unit)),
            acquireFailureOrSuccessOpt: none(),
            currentRoomDetails: updatedCallRoomDetails,
          );
        });
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
        );
      },
      startVideoCall: (e) async* {
        yield* _startCallBasedOnType(
          caller: e.caller,
          receiver: e.receiver,
          type: CallType.video,
        );
      },
      updateCurrentRoomDetails: (e) async* {
        yield state.copyWith(
          callStartFailureOrSuccessOpt: none(),
          callEndFailureOrSuccessOpt: none(),
          acceptCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          rejectCallFailureOrSuccessOpt: none(),
          currentRoomDetails: e.roomDetails,
          acquireFailureOrSuccessOpt: none(),
        );
      },
      addParticipants: (e) async* {
        final opt = await _callsFacade.addParticipants(
            e.caller, e.reciever, e.currentRoom);
        yield opt.fold(
          (failure) => state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
            acceptCallFailureOrSuccessOpt: some(left(failure)),
          ),
          (updatedCallRoomDetails) => state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: some(right(unit)),
            acquireFailureOrSuccessOpt: none(),
            currentRoomDetails: updatedCallRoomDetails,
          ),
        );
      },
      leaveCall: (e) async* {
        final opt =
            await _callsFacade.leaveCall(e.receiver, state.currentRoomDetails);
        yield opt.fold(
          (failure) => state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            leaveCallFailureOrSuccessOpt: some(left(failure)),
            acquireFailureOrSuccessOpt: none(),
            acceptCallFailureOrSuccessOpt: none(),
          ),
          (updatedCallRoomDetails) => state.copyWith(
            isCallActive: false,
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            leaveCallFailureOrSuccessOpt: some(right(unit)),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
            currentRoomDetails: updatedCallRoomDetails,
          ),
        );
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
        );
      },
      deleteSingleUserCallHistory: (e) async* {
        final opt = await _callLogFacade.deleteSingleUserCallHistory(
            callDocumentId: e.callDocumentId);
      },
      acquire: (e) async* {
        final acquire = await _iCloudRecordingFacade.acquire();
        yield acquire.fold(
          (failure) {
            return state.copyWith(
              callEndFailureOrSuccessOpt: none(),
              callStartFailureOrSuccessOpt: none(),
              rejectCallFailureOrSuccessOpt: none(),
              acceptCallFailureOrSuccessOpt: none(),
              acquireFailureOrSuccessOpt: some(left(failure)),
              isRecordingFailureorSuccessoption: some(left(failure)),
            );
          },
          (resourceId) {
            print("done");
            return state.copyWith(
              resourceId: resourceId,
              callEndFailureOrSuccessOpt: none(),
              callStartFailureOrSuccessOpt: none(),
              rejectCallFailureOrSuccessOpt: none(),
              isRecordingFailureorSuccessoption: none(),
              acceptCallFailureOrSuccessOpt: none(),
              acquireFailureOrSuccessOpt: some(right(unit)),
            );
          },
        );
      },
      startRecording: (e) async* {
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
          callStartFailureOrSuccessOpt: none(),
          rejectCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          acceptCallFailureOrSuccessOpt: none(),
          acquireFailureOrSuccessOpt: none(),
        );

        final start = await _iCloudRecordingFacade.start(
            state.resourceId,
            e.callId,
            e.callType,
            state.agoraGeneratedToken,
            state.currentRoomDetails);

        yield start.fold(
          (failure) {
            print("Start failed");
            return state.copyWith(
              callEndFailureOrSuccessOpt: none(),
              callStartFailureOrSuccessOpt: none(),
              rejectCallFailureOrSuccessOpt: none(),
              acceptCallFailureOrSuccessOpt: none(),
              acquireFailureOrSuccessOpt: none(),
              isRecordingFailureorSuccessoption: some(left(failure)),
            );
          },
          (result) {
            print("Start Success");
            final response = jsonDecode(result);
            return state.copyWith(
              sid: response['sid'] as String,
              resourceId: response['resourceId'] as String,
              isRecordingFailureorSuccessoption: some(right(result)),
              isRecording: true,
              callEndFailureOrSuccessOpt: none(),
              callStartFailureOrSuccessOpt: none(),
              rejectCallFailureOrSuccessOpt: none(),
              acceptCallFailureOrSuccessOpt: none(),
              acquireFailureOrSuccessOpt: none(),
            );
          },
        );
        // yield state.copyWith(isRecordingFailureorSuccessoption: none());
      },
      stopRecording: (e) async* {
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
          callStartFailureOrSuccessOpt: none(),
          rejectCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          acquireFailureOrSuccessOpt: none(),
          acceptCallFailureOrSuccessOpt: none(),
        );
        final stop = await _iCloudRecordingFacade.stop(
          state.sid,
          state.resourceId,
          state.currentRoomDetails,
        );
        yield stop.fold(
          (failure) {
            print("failed");
            return state.copyWith(
              callEndFailureOrSuccessOpt: none(),
              callStartFailureOrSuccessOpt: none(),
              acquireFailureOrSuccessOpt: none(),
              rejectCallFailureOrSuccessOpt: none(),

              acceptCallFailureOrSuccessOpt: none(),
              isRecordingFailureorSuccessoption: some(left(failure)),
              isRecording: false, // ? CHECK THIS LINE
            );
          },
          (currentRoomDetails) {
            return state.copyWith(
              sid: "",
              resourceId: "",
              cloudRecordingDirectory:
                  currentRoomDetails.currentCall.recordingDirectory,
              isRecordingFailureorSuccessoption: none(),
              isRecording: false,
              callEndFailureOrSuccessOpt: none(),
              callStartFailureOrSuccessOpt: none(),
              rejectCallFailureOrSuccessOpt: none(),
              acquireFailureOrSuccessOpt: none(),
              acceptCallFailureOrSuccessOpt: none(),
            );
          },
        );
      },
      getAgoraToken: (e) async* {
        yield state.copyWith(
          agoraGeneratedToken: e.agoraGeneratedToken,
          callEndFailureOrSuccessOpt: none(),
          callStartFailureOrSuccessOpt: none(),
          rejectCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          acceptCallFailureOrSuccessOpt: none(),
          acquireFailureOrSuccessOpt: none(),
        );
      },
      fetchAgoraToken: (e) async* {
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
          callStartFailureOrSuccessOpt: none(),
          rejectCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          acceptCallFailureOrSuccessOpt: none(),
          acquireFailureOrSuccessOpt: none(),
        );
        final opt = await _callsFacade.fetchAgoraToken();
        yield opt.fold(
          (l) => state.copyWith(
            agoraGeneratedToken: state.agoraGeneratedToken,
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
          (r) => state.copyWith(
            agoraGeneratedToken: r,
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
        );
      },
      isPeerUserOnAnotherCall: (e) async* {
        yield state.copyWith(
          callEndFailureOrSuccessOpt: none(),
          callStartFailureOrSuccessOpt: none(),
          rejectCallFailureOrSuccessOpt: none(),
          isRecordingFailureorSuccessoption: none(),
          acceptCallFailureOrSuccessOpt: none(),
          acquireFailureOrSuccessOpt: none(),
          isPeerUserOnAnotherCallFailureOrSuccessOpt: none(),
        );
        final opt =
            await _callsFacade.isPeerUserOnAnotherCall(uid: e.peerUser.uid);
        yield opt.fold(
          (l) => state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
            isPeerUserOnAnotherCallFailureOrSuccessOpt: some(left(l)),
          ),
          (peerUser) => state.copyWith(
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
            isPeerUserOnAnotherCallFailureOrSuccessOpt:
                e.page == CallingPage.chatAppBar
                    ? some(right(peerUser))
                    : none(),
            callInfoPageWaitingCallFailureOrSuccessOpt:
                e.page == CallingPage.callInfoPage
                    ? some(right(peerUser))
                    : none(),
            callListPageWaitingCallFailureOrSuccessOpt:
                e.page == CallingPage.recentCallList
                    ? some(right(peerUser))
                    : none(),
            slidablePageWaitingCallFailureOrSuccessOpt:
                e.page == CallingPage.slidableWidget
                    ? some(right(peerUser))
                    : none(),
            chatDetailPageWaitingCallFailureOrSuccessOpt:
                e.page == CallingPage.chatDetailPage
                    ? some(right(peerUser))
                    : none(),
            startNewCallPageWaitingCallFailureOrSuccessOpt:
                e.page == CallingPage.startNewCall
                    ? some(right(peerUser))
                    : none(),
          ),
        );
        yield state.copyWith(
          isPeerUserOnAnotherCallFailureOrSuccessOpt: none(),
          callInfoPageWaitingCallFailureOrSuccessOpt: none(),
          callListPageWaitingCallFailureOrSuccessOpt: none(),
          slidablePageWaitingCallFailureOrSuccessOpt: none(),
          chatDetailPageWaitingCallFailureOrSuccessOpt: none(),
          startNewCallPageWaitingCallFailureOrSuccessOpt: none(),
          acceptCallFailureOrSuccessOpt: none(),
        );
      },
      isAddCallUserAcceptedCall: (e) async* {
        final opt = await _callsFacade.isAddCallUserAcceptedCall(
            callid: e.callid, peerUser: e.peerUser);
        yield opt.fold(
          (l) => state.copyWith(
            checkAddedUserAcceptsCallOpt: some(left(l)),
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
          (r) => state.copyWith(
            checkAddedUserAcceptsCallOpt: some(right(r)),
            callEndFailureOrSuccessOpt: none(),
            callStartFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acceptCallFailureOrSuccessOpt: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
        );
        yield state.copyWith(
          checkAddedUserAcceptsCallOpt: none(),
          isPeerUserOnAnotherCallFailureOrSuccessOpt: none(),
          callInfoPageWaitingCallFailureOrSuccessOpt: none(),
          callListPageWaitingCallFailureOrSuccessOpt: none(),
          slidablePageWaitingCallFailureOrSuccessOpt: none(),
          chatDetailPageWaitingCallFailureOrSuccessOpt: none(),
          startNewCallPageWaitingCallFailureOrSuccessOpt: none(),
          acceptCallFailureOrSuccessOpt: none(),
        );
      },
      changeUserMuteState: (e) async* {
        final opt = await _callsFacade.changeUserMuteState(
          currentRoomDetails: state.currentRoomDetails,
          isMuted: e.isMuted,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            callStartFailureOrSuccessOpt: none(),
            callEndFailureOrSuccessOpt: none(),
            acceptCallFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
          (updatedRoomDetails) => state.copyWith(
            currentRoomDetails: updatedRoomDetails,
            callStartFailureOrSuccessOpt: none(),
            callEndFailureOrSuccessOpt: none(),
            acceptCallFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
        );
      },
      setParticipantUID: (e) async* {
        final opt = await _callsFacade.setParticipantUID(
          callRoomModel: state.currentRoomDetails,
          uid: e.uid,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            callStartFailureOrSuccessOpt: none(),
            callEndFailureOrSuccessOpt: none(),
            acceptCallFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
          (updatedRoomDetails) => state.copyWith(
            currentRoomDetails: updatedRoomDetails,
            callStartFailureOrSuccessOpt: none(),
            callEndFailureOrSuccessOpt: none(),
            acceptCallFailureOrSuccessOpt: none(),
            rejectCallFailureOrSuccessOpt: none(),
            isRecordingFailureorSuccessoption: none(),
            acquireFailureOrSuccessOpt: none(),
          ),
        );
      },
    );
  }

  Stream<CallsState> _startCallBasedOnType({
    required KahoChatUser caller,
    required KahoChatUser receiver,
    required CallType type,
  }) async* {
    yield state.copyWith(
      callStartFailureOrSuccessOpt: none(),
      callEndFailureOrSuccessOpt: none(),
      acceptCallFailureOrSuccessOpt: none(),
      rejectCallFailureOrSuccessOpt: none(),
      isRecordingFailureorSuccessoption: none(),
      currentRoomDetails: CallRoomModel.empty(),
      callTimer: 0,
    );
    final opt = await _callsFacade.startCall(
      caller,
      receiver,
      type,
    );
    yield opt.fold(
      (failure) => state.copyWith(
        isCallActive: false,
        callStartFailureOrSuccessOpt: some(left(failure)),
        callEndFailureOrSuccessOpt: none(),
        acceptCallFailureOrSuccessOpt: none(),
        isRecordingFailureorSuccessoption: none(),
        rejectCallFailureOrSuccessOpt: none(),
      ),
      (createdRoomDetails) => state.copyWith(
        isCallActive: true,
        currentRoomDetails: createdRoomDetails,
        callEndFailureOrSuccessOpt: none(),
        acceptCallFailureOrSuccessOpt: none(),
        isRecordingFailureorSuccessoption: none(),
        rejectCallFailureOrSuccessOpt: none(),
        callStartFailureOrSuccessOpt: some(right(unit)),
      ),
    );
  }
}
