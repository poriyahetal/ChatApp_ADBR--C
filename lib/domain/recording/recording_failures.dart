import 'package:freezed_annotation/freezed_annotation.dart';

part 'recording_failures.freezed.dart';

@freezed
class RecordingFailure with _$RecordingFailure {
  const factory RecordingFailure.statusCodeError(String error) =
      _StatusCodeError;
  const factory RecordingFailure.customError(String error) = _CustomError;
  const factory RecordingFailure.queryError(String error) = _QueryError;
}
