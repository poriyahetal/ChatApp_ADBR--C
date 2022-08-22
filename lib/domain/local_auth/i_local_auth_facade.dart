import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/local_auth/local_auth_failures.dart';

abstract class ILocalAuthFacade {
  Future<Either<LocalAuthFailure, FingerPrintSupport>>
      checkFingerPrintSupport();
  Future<Either<FingerPrintStatus, FingerPrintStatus>> checkFingerPrintStatus();
  Future<Either<LocalAuthFailure, Unit>> verifyFingerPrint();
  Future<Either<LocalAuthFailure, FingerPrintStatus>> changeFingerprintStatus(
    FingerPrintStatus newStatus,
  );
  Future<Either<LocalAuthFailure, int>> setLockTimer(int time);
  Future<Either<LocalAuthFailure, int>> fetchAppLockTime();
  Future<Either<LocalAuthFailure, FingerPrintStatus>> enableDisableFingerPrintAfterTimeout(
    FingerPrintStatus newStatus,
  );
   Future<Either<LocalAuthFailure, AppLock>> enableAppLock(
    AppLock newStatus,
  );
  Future<Either<AppLock, AppLock>> fetchAppLockStatus();
  Future<Either<LocalAuthFailure, DateTime>> setLastActiveSession();
    Future<Either<LocalAuthFailure, DateTime>> fetchLastActiveSession();
}
