import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_failures.freezed.dart';

@freezed
class GroupFailure with _$GroupFailure {
  const factory GroupFailure.customError(String error) = CustomError;
  const factory GroupFailure.adminCannotLeaveGroup() = AdminCannotLeaveGroup;
}
