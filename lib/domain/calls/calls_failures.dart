import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calls_failures.freezed.dart';

@freezed
abstract class CallsFailure with _$CallsFailure {
  const factory CallsFailure.permissionNotGranted() = _PermissionNotGranted;
  const factory CallsFailure.customError(String error) = _CustomError;
  const factory CallsFailure.statusCodeError(String error) = _StatusCodeError;
  const factory CallsFailure.queryError(String error) = _QueryError;
  const factory CallsFailure.addedUserUnableToResponse(KahoChatUser addedUser) =
      _AddedUserUnableToResponse;
      const factory CallsFailure.addedUserAcceptedCall() =_AddedUserAcceptedCall;
}
