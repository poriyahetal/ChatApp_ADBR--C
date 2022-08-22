part of 'call_log_bloc.dart';

@freezed
class CallLogEvent with _$CallLogEvent {
  const factory CallLogEvent.select(
      {required String callLogId, required List<CallModel> callLogs}) = _Select;
  const factory CallLogEvent.unSelect(
      {required String callLogId,
      required List<CallModel> callLogs}) = _UnSelect;
  const factory CallLogEvent.deleteOneCallLogs(
      {required List<CallModel> callLogs}) = _DeleteOneCallLogs;
  const factory CallLogEvent.deleteCallLogs() = _DeleteCallLogs;
  const factory CallLogEvent.deSelectAll() = _DeSelectAll;
}
