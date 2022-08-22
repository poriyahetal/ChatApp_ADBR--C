// import 'dart:convert';

// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_template/domain/calls/call_room_model.dart';
// import 'package:flutter_template/domain/recording/i_cloud_recording_facade.dart';
// import 'package:flutter_template/domain/recording/recording_failures.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';

// part 'recordings_event.dart';
// part 'recordings_state.dart';
// part 'recordings_bloc.freezed.dart';

// @injectable
// class RecordingsBloc extends Bloc<RecordingsEvent, RecordingsState> {
//   RecordingsBloc(this._iCloudRecordingFacade)
//       : super(RecordingsState.initial());

//   final ICloudRecordingFacade _iCloudRecordingFacade;

//   @override
//   Stream<RecordingsState> mapEventToState(RecordingsEvent event) async* {
//     yield* event.map(
//       acquire: (e) async* {
//         final acquire = await _iCloudRecordingFacade.acquire();
//         yield acquire.fold(
//           (failure) {
//             return state.copyWith(
//               isRecordingFailureorSuccessoption: some(left(failure)),
//             );
//           },
//           (resourceId) {
//             print("done");
//             return state.copyWith(resourceId: resourceId);
//           },
//         );
//       },
//       startRecording: (e) async* {
//         final start = await _iCloudRecordingFacade.start(
//             state.resourceId, e.callId, e.callType);
//         yield start.fold(
//           (failure) {
//             print("Start failed");
//             return state.copyWith(
//               isRecordingFailureorSuccessoption: some(left(failure)),
//             );
//           },
//           (result) {
//             print("Start Success");
//             final response = jsonDecode(result);
//             return state.copyWith(
//               sid: response['sid'] as String,
//               resourceId: response['resourceId'] as String,
//               isRecordingFailureorSuccessoption: some(right(result)),
//               isRecording: true,
//             );
//           },
//         );
       
//       },
//       stopRecording: (e) async* {
//         final stop =
//             await _iCloudRecordingFacade.stop(state.sid, state.resourceId,e.currentRoom);
//         yield stop.fold(
//           (failure) {
//             print("failed");
//             return state.copyWith(
//               isRecordingFailureorSuccessoption: some(left(failure)),
//               isRecording: false, // ? CHECK THIS LINE
//             );
//           },
//           (r) {
//             return RecordingsState.initial();
//           },
//         );
//       },
//     );
//   }
// }
