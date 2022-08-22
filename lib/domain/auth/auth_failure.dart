import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.customError(String error) = CustomError;
  const factory AuthFailure.invalidOtp() = InvalidOtp;
  const factory AuthFailure.invalidPhoneNumber() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.errorRetrievingUser() = ErrorRetrievingUser;
  const factory AuthFailure.noSignedInUser() = NoSignedInUser;
  const factory AuthFailure.numberAlreadyInUsed() = NumberAlreadyInUsed;
}
