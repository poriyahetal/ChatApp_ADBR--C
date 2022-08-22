import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_auth_invisible/flutter_local_auth_invisible.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/domain/local_auth/i_local_auth_facade.dart';
import 'package:flutter_template/domain/local_auth/local_auth_failures.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocalAuthFacade)
class LocalAuthFacade implements ILocalAuthFacade {
  @override
  Future<Either<LocalAuthFailure, FingerPrintSupport>>
      checkFingerPrintSupport() async {
    try {
      //Check whether the fingerprint support was already checked and cached
      final String? storedFingerprintSupport = await Storage()
          .secureStorage
          .read(key: StorageConstants.fingerPrintSupport);
      if (storedFingerprintSupport == FingerPrintSupport.supported.toString()) {
        return right(FingerPrintSupport.supported);
      } else if (storedFingerprintSupport ==
          FingerPrintSupport.notSupported.toString()) {
        return right(FingerPrintSupport.notSupported);
      }

      //If support not checked earlier, perform the check and cache it.

      final bool canCheckBiometrics =
          await LocalAuthentication.canCheckBiometrics;
      if (!canCheckBiometrics) {
        Storage().secureStorage.write(
              key: StorageConstants.fingerPrintSupport,
              value: FingerPrintSupport.notSupported.toString(),
            );
        return right(FingerPrintSupport.notSupported);
      } else {
        final List<BiometricType> availableBiometrics =
            await LocalAuthentication.getAvailableBiometrics();

        if (availableBiometrics.contains(BiometricType.fingerprint)) {
          Storage().secureStorage.write(
                key: StorageConstants.fingerPrintSupport,
                value: FingerPrintSupport.supported.toString(),
              );
          return right(FingerPrintSupport.supported);
        } else {
          Storage().secureStorage.write(
                key: StorageConstants.fingerPrintSupport,
                value: FingerPrintSupport.notSupported.toString(),
              );
          return right(FingerPrintSupport.notSupported);
        }
      }
    } on PlatformException catch (e) {
      //If any exception occurs, disable support for fingerprint
      Storage().secureStorage.write(
            key: StorageConstants.fingerPrintSupport,
            value: FingerPrintSupport.notSupported.toString(),
          );
      return left(const LocalAuthFailure.fingerprintNotSupported());
    }
  }

  @override
  Future<Either<LocalAuthFailure, Unit>> verifyFingerPrint() async {
    // try {
    await LocalAuthentication.stopAuthentication();
    await Future.delayed(const Duration(milliseconds: 300));
    final bool didAuthenticate = await LocalAuthentication.authenticate(
      localizedReason: 'Please authenticate to open app',
      biometricOnly: true,
    );
    if (didAuthenticate) {
      return right(unit);
    } else {
      // SystemNavigator.pop();
      return left(const LocalAuthFailure.invalidFingerPrint());
    }
    // } catch (e) {
    //   return left(LocalAuthFailure.customError(e.toString()));
    // }
  }

  @override
  Future<Either<LocalAuthFailure, FingerPrintStatus>> changeFingerprintStatus(
    FingerPrintStatus newStatus,
  ) async {
    await LocalAuthentication.stopAuthentication();
    await Future.delayed(const Duration(milliseconds: 300));
    final bool didAuthenticate = await LocalAuthentication.authenticate(
      localizedReason: 'Please authenticate to open app',
      biometricOnly: true,
      stickyAuth: false,
      useErrorDialogs: true,
    );
    if (didAuthenticate) {
      try {
        await Storage().secureStorage.write(
              key: StorageConstants.fingerPrintStatus,
              value: newStatus.toString(),
            );
        debugPrint("Fingerprint Status ==> ${newStatus.toString()}");
        return right(newStatus);
      } catch (e) {
        return left(const LocalAuthFailure.fingerPrintStatusChangeFailure());
      }
    } else {
      return left(const LocalAuthFailure.invalidFingerPrint());
    }
  }

  @override
  Future<Either<FingerPrintStatus, FingerPrintStatus>>
      checkFingerPrintStatus() async {
    // try {
    //Check whether the fingerprint status was already checked and cached
    final String? storedFingerprintStatus = await Storage()
        .secureStorage
        .read(key: StorageConstants.fingerPrintStatus);
    debugPrint("Fingerprint Status ==> ${storedFingerprintStatus.toString()}");
    if (storedFingerprintStatus == FingerPrintStatus.enabled.toString()) {
      return right(FingerPrintStatus.enabled);
    } else if (storedFingerprintStatus ==
        FingerPrintStatus.disabled.toString()) {
      return left(FingerPrintStatus.disabled);
    } else {
      //if no stored value is found, disable the fingerprint lock and cache it
      await Storage().secureStorage.write(
            key: StorageConstants.fingerPrintStatus,
            value: FingerPrintStatus.disabled.toString(),
          );
      return left(FingerPrintStatus.disabled);
    }
    // } catch (e) {
    //   return left(LocalAuthFailure.customError(e.toString()));
    // }
  }

  @override
  Future<Either<LocalAuthFailure, int>> setLockTimer(int time) async {
    try {
      Storage()
          .secureStorage
          .write(key: StorageConstants.lockTime, value: time.toString());
      debugPrint("Changed app lock time ===> ${time.toString()}");
      return right(time);
    } catch (e) {
      return left(LocalAuthFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<LocalAuthFailure, int>> fetchAppLockTime() async {
    try {
      final readLockTime =
          await Storage().secureStorage.read(key: StorageConstants.lockTime);
      debugPrint("Read lock time ===> $readLockTime");
      if (readLockTime != null) {
        final int lockTime = int.tryParse(readLockTime) ?? 0;
        debugPrint("parshed lock time ===> $readLockTime");
        return right(lockTime);
      }
      return right(0);
    } catch (e) {
      debugPrint(e.toString());
      return left(LocalAuthFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<LocalAuthFailure, FingerPrintStatus>>
      enableDisableFingerPrintAfterTimeout(
    FingerPrintStatus newStatus,
  ) async {
    try {
      await Storage().secureStorage.write(
            key: StorageConstants.fingerPrintStatus,
            value: newStatus.toString(),
          );
      debugPrint("Fingerprint Status ==> ${newStatus.toString()}");
      return right(newStatus);
    } catch (e) {
      return left(const LocalAuthFailure.fingerPrintStatusChangeFailure());
    }
  }

  @override
  Future<Either<LocalAuthFailure, AppLock>> enableAppLock(
      AppLock newStatus) async {
    try {
      await Storage().secureStorage.write(
            key: StorageConstants.appLock,
            value: newStatus.toString(),
          );
      debugPrint("AppLock new Status ==> ${newStatus.toString()}");
      return right(newStatus);
    } catch (e) {
      return left(const LocalAuthFailure.fingerPrintStatusChangeFailure());
    }
  }

  @override
  Future<Either<AppLock, AppLock>> fetchAppLockStatus() async {
    final String? storedAppLockStatus =
        await Storage().secureStorage.read(key: StorageConstants.appLock);
    debugPrint("AppLock Status ==> ${storedAppLockStatus.toString()}");
    if (storedAppLockStatus == AppLock.enabled.toString()) {
      return right(AppLock.enabled);
    } else if (storedAppLockStatus == AppLock.disabled.toString()) {
      return left(AppLock.disabled);
    } else {
      //if no stored value is found, disable the fingerprint lock and cache it
      await Storage().secureStorage.write(
            key: StorageConstants.appLock,
            value: AppLock.disabled.toString(),
          );
      return left(AppLock.disabled);
    }
  }

  @override
  Future<Either<LocalAuthFailure, DateTime>> setLastActiveSession() async {
    try {
      final DateTime dateTime = DateTime.now();
      await Storage().secureStorage.write(
            key: StorageConstants.inActiveSession,
            value: dateTime.toIso8601String(),
          );
      debugPrint('set active time ==>');
      return right(dateTime);
    } catch (e) {
      return left(LocalAuthFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<LocalAuthFailure, DateTime>> fetchLastActiveSession() async {
    try {
     
      final String? fetchLastActiveSession = await Storage()
          .secureStorage
          .read(key: StorageConstants.inActiveSession);
      if (fetchLastActiveSession != null) {
        DateTime? dateTime = DateTime.tryParse(fetchLastActiveSession);
        debugPrint('fetch active time ==> ${dateTime}');
        return right(dateTime!);
      }
        return left(LocalAuthFailure.customError("error while last active season"));
    } catch (e) {
      return left(LocalAuthFailure.customError(e.toString()));
    }
  }
}
