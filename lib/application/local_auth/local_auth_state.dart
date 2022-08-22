part of 'local_auth_bloc.dart';

@freezed
class LocalAuthState with _$LocalAuthState {
  const factory LocalAuthState({
    required FingerPrintSupport fingerPrintSupport,
    required FingerPrintStatus fingerPrintStatus,
    required AppLock appLock,
    required Option<Either<LocalAuthFailure, Unit>>
        verifyFingerprintFailureOrSuccessOption,
    required Option<Either<LocalAuthFailure, Unit>>
        changeFingerprintStatusFailureOrSuccessOption,
    required Option<Either<Unit, Unit>> checkFingerprintStatus,
    required bool isVerified,
    required bool isImediately,
    required bool isThirtySecond,
    required bool isOneMinute,
    required bool isTenMinute,
    required DateTime fetchedDateTime,
      required int timer,
  }) = _LocalAuthState;
  factory LocalAuthState.initial() => LocalAuthState(
        verifyFingerprintFailureOrSuccessOption: none(),
        changeFingerprintStatusFailureOrSuccessOption: none(),
        fingerPrintStatus: FingerPrintStatus.disabled,
        fingerPrintSupport: FingerPrintSupport.notSupported,
        isVerified: false,
        checkFingerprintStatus: none(),
        isImediately: false,
        isThirtySecond: false,
        isOneMinute: false,
        isTenMinute: false,
        timer: 0,
        appLock: AppLock.disabled,
        fetchedDateTime: DateTime.now(),
      );
}
