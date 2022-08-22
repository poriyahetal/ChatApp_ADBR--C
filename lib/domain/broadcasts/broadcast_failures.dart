import 'package:freezed_annotation/freezed_annotation.dart';
part 'broadcast_failures.freezed.dart';

@freezed
class BroadcastFailure with _$BroadcastFailure{
  const factory BroadcastFailure.customError(String error) = CustomError;
}