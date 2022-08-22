part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required String phoneNumber,
    required String otp,
    required String verificationId,
    required Option<Either<AuthFailure, Unit>> userSignInStatusOption,
    required Option<Either<AuthFailure, Unit>> deleteAccount,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>> reAuthFailureOrsuccessOption,
    required Option<Either<AuthFailure, String>> updatePhoneNumber,
    required String newPhoneNumber,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
        isLoading: false,
        authFailureOrSuccessOption: none(),
        reAuthFailureOrsuccessOption: none(),
        otp: '',
        phoneNumber: '',
        verificationId: '',
        userSignInStatusOption: none(),
        deleteAccount: none(),
        updatePhoneNumber: none(),
        newPhoneNumber: '',
      );
}
