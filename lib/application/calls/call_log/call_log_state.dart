part of 'call_log_bloc.dart';

@freezed
class CallLogState with _$CallLogState {
  const factory CallLogState({
    required List<String> calls,
    required List<CallModel> callLogs,
    required int length,
    required Option<CallLogFailure> deletionSuccessorFailure,
  }) = CallsLogState;
  factory CallLogState.initial() => CallLogState(
        calls: [],
        length: 0,
        deletionSuccessorFailure: none(),
        callLogs: [],
      );
}
