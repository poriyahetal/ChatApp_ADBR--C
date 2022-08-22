import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_auth_failures.freezed.dart';

@freezed
class LocalAuthFailure with _$LocalAuthFailure {
  const factory LocalAuthFailure.fingerprintNotSupported() =
      FingerprintNotSupported;
  const factory LocalAuthFailure.invalidFingerPrint() = InvalidFingerPrint;
  const factory LocalAuthFailure.fingerPrintStatusChangeFailure() =
      FingerPrintStatusChangeFailure;
  const factory LocalAuthFailure.cancelledByUser() = CancelledByUser;
  const factory LocalAuthFailure.customError(String error) = CustomError;
}
