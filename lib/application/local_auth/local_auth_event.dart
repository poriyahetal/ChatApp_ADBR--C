part of 'local_auth_bloc.dart';

@freezed
class LocalAuthEvent with _$LocalAuthEvent {
  const factory LocalAuthEvent.verifyFingerprint() = _VerifyFingerprint;
  const factory LocalAuthEvent.checkFingerprintSupport() =
      _CheckFingerprintSupport;
  const factory LocalAuthEvent.checkFingerprintStatus() =
      _CheckFingerprintStatus;
  const factory LocalAuthEvent.enableDisableFingerPrintAfterTimeout({
    required FingerPrintStatus newStatus,
  }) = _EnableDisableFingerPrintAfterTimeout;
  const factory LocalAuthEvent.changeFingerprintStatus(
    FingerPrintStatus newStatus,
    AppLock appLockStatus,
  ) = _ChangeFingerprintStatus;
  const factory LocalAuthEvent.imediatelyOn({
    required bool isImediately,
    required bool others,
  }) = _imediatelyOn;
  const factory LocalAuthEvent.thirtySecond({
    required bool isThirtySecond,
    required bool others,
  }) = _thirtySecond;
  const factory LocalAuthEvent.oneMinute({
    required bool isOneMinute,
    required bool others,
  }) = _oneMinute;
  const factory LocalAuthEvent.tenMinutes({
    required bool isTenMinute,
    required bool others,
  }) = _tenMinutes;
  const factory LocalAuthEvent.fetchAppLockTime() = _fetchAppLockTime;
  const factory LocalAuthEvent.fetchAppLockStatus() = _FetchAppLockStatus;
  const factory LocalAuthEvent.setLastActiveSession() = _SetLastActiveSession;
   const factory LocalAuthEvent.fetchLastActiveSession() = _FetchLastActiveSession;
}
