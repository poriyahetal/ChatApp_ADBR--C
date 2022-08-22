part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getOtp({
    required String otp,
  }) = _GetOtp;
  const factory AuthEvent.getPhoneNumber(String phoneNumber) = _GetPhoneNumber;
  const factory AuthEvent.getVerificationId(
    String verificationId,
  ) = _GetVerificationId;
  const factory AuthEvent.checkAuthStatus() = _CheckAuthStatus;
  const factory AuthEvent.logOut() = _Logout;
  const factory AuthEvent.deleteAccount({required String otp}) = _DeleteAccount;
  const factory AuthEvent.updateNumber({required String otp}) = _UpdateNumber;
  const factory AuthEvent.getNewNumber({required String newPhoneNumber}) =
      _GetNewNumber;
  const factory AuthEvent.reAuthUser({required String otp}) = _ReAuthUser;
  // const factory AuthEvent.getNewNumber() = _GetNewNumber;
}
