import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_failures.freezed.dart';

@freezed
class ChatFailure with _$ChatFailure {
  const factory ChatFailure.customError() = CustomError;
}
