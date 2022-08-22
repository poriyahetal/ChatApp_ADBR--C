import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_log_failure.freezed.dart';

@freezed
abstract class CallLogFailure with _$CallLogFailure {
  const factory CallLogFailure.deletetionError(String error) = _DeletetionError;
}
