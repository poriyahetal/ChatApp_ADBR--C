// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/local_auth/i_local_auth_facade.dart';
import 'package:flutter_template/domain/local_auth/local_auth_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'local_auth_bloc.freezed.dart';
part 'local_auth_event.dart';
part 'local_auth_state.dart';

@injectable
class LocalAuthBloc extends Bloc<LocalAuthEvent, LocalAuthState> {
  LocalAuthBloc(this._localAuthFacade) : super(LocalAuthState.initial());
  final ILocalAuthFacade _localAuthFacade;

  @override
  Stream<LocalAuthState> mapEventToState(
    LocalAuthEvent event,
  ) async* {
    yield* event.map(
      verifyFingerprint: (e) async* {
        // if (state.appLock == AppLock.enabled) {
          yield state.copyWith(
            verifyFingerprintFailureOrSuccessOption: none(),
            fingerPrintStatus: state.fingerPrintStatus,
            isVerified: false,
          );
          final opt = await _localAuthFacade.verifyFingerPrint();
          yield opt.fold(
            (failure) => state.copyWith(
              fingerPrintStatus: state.fingerPrintStatus,
              isVerified: false,
              verifyFingerprintFailureOrSuccessOption: some(left(failure)),
            ),
            (r) => state.copyWith(
              fingerPrintStatus: state.fingerPrintStatus,
              isVerified: true,
              verifyFingerprintFailureOrSuccessOption: some(right(unit)),
            ),
          );
        // }
      },
      checkFingerprintSupport: (e) async* {
        yield state.copyWith(
          fingerPrintSupport: FingerPrintSupport.notSupported,
        );
        final opt = await _localAuthFacade.checkFingerPrintSupport();
        yield opt.fold(
          (l) => state.copyWith(
            fingerPrintSupport: FingerPrintSupport.notSupported,
          ),
          (readSupport) => state.copyWith(
            fingerPrintSupport: readSupport,
          ),
        );
      },
      checkFingerprintStatus: (e) async* {
        yield state.copyWith(
          fingerPrintStatus: FingerPrintStatus.disabled,
          checkFingerprintStatus: none(),
        );
        final opt = await _localAuthFacade.checkFingerPrintStatus();
        yield opt.fold(
          (failure) => state.copyWith(
            fingerPrintStatus: FingerPrintStatus.disabled,
            checkFingerprintStatus: some(left(unit)),
          ),
          (readStatus) => state.copyWith(
            fingerPrintStatus: readStatus,
            checkFingerprintStatus: some(right(unit)),
          ),
        );
      },
      changeFingerprintStatus: (e) async* {
        yield state.copyWith(
          verifyFingerprintFailureOrSuccessOption: none(),
          isVerified: false,
        );
        final opt = await _localAuthFacade.changeFingerprintStatus(e.newStatus);
        final opt2 = await _localAuthFacade.enableAppLock(e.appLockStatus);
        if (opt.isRight() && opt2.isRight()) {
          yield state.copyWith(
            fingerPrintStatus: opt.getOrElse(() => state.fingerPrintStatus),
            isVerified: true,
            appLock: opt2.getOrElse(() => state.appLock),
            verifyFingerprintFailureOrSuccessOption: some(right(unit)),
          );
        }
        //  opt.fold(
        //   (failure) => state.copyWith(
        //     fingerPrintStatus: state.fingerPrintStatus,
        //     appLock: state.appLock,
        //     isVerified: false,
        //     verifyFingerprintFailureOrSuccessOption: some(left(failure)),
        //   ),
      },
      imediatelyOn: (e) async* {
        final opt = await _localAuthFacade.setLockTimer(0);
        yield opt.fold(
          (l) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: 0,
          ),
          (appLockTime) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: appLockTime,
            isImediately: e.isImediately,
            isThirtySecond: e.others,
            isOneMinute: e.others,
            isTenMinute: e.others,
          ),
        );
      },
      thirtySecond: (e) async* {
        final opt = await _localAuthFacade.setLockTimer(30);
        yield opt.fold(
          (l) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: 0,
          ),
          (appLockTime) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: appLockTime,
            isThirtySecond: e.isThirtySecond,
            isImediately: e.others,
            isOneMinute: e.others,
            isTenMinute: e.others,
          ),
        );
      },
      oneMinute: (e) async* {
        final opt = await _localAuthFacade.setLockTimer(60);
        yield opt.fold(
          (l) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: 0,
          ),
          (appLockTime) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: appLockTime,
            isOneMinute: e.isOneMinute,
            isImediately: e.others,
            isThirtySecond: e.others,
            isTenMinute: e.others,
          ),
        );
      },
      tenMinutes: (e) async* {
        final opt = await _localAuthFacade.setLockTimer(600);
        yield opt.fold(
          (l) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: 0,
          ),
          (appLockTime) => state.copyWith(
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
            timer: appLockTime,
            isTenMinute: e.isTenMinute,
            isImediately: e.others,
            isThirtySecond: e.others,
            isOneMinute: e.others,
          ),
        );
      },
      fetchAppLockTime: (e) async* {
        final opt = await _localAuthFacade.fetchAppLockTime();
        yield opt.fold(
          (failure) => state.copyWith(
            timer: 0,
            isImediately: false,
            isThirtySecond: false,
            isOneMinute: false,
            isTenMinute: false,
          ),
          (appLockTime) => state.copyWith(
            timer: appLockTime,
            isImediately: appLockTime == 0 ? true : false,
            isThirtySecond: appLockTime == 30 ? true : false,
            isOneMinute: appLockTime == 60 ? true : false,
            isTenMinute: appLockTime == 600 ? true : false,
          ),
        );
      },
      enableDisableFingerPrintAfterTimeout: (e) async* {
        if (state.appLock == AppLock.enabled) {
          print('enableDisableFingerPrintAfterTimeout => ${e.newStatus}');

          final opt = await _localAuthFacade
              .enableDisableFingerPrintAfterTimeout(e.newStatus);
          yield opt.fold(
            (failure) => state.copyWith(
              fingerPrintStatus: state.fingerPrintStatus,
              changeFingerprintStatusFailureOrSuccessOption: none(),
              verifyFingerprintFailureOrSuccessOption: none(),
            ),
            (updatedStatus) => state.copyWith(
              fingerPrintStatus: updatedStatus,
              changeFingerprintStatusFailureOrSuccessOption: none(),
              verifyFingerprintFailureOrSuccessOption: none(),
            ),
          );
        }
      },
      fetchAppLockStatus: (e) async* {
        yield state.copyWith(
          appLock: AppLock.disabled,
        );
        final opt = await _localAuthFacade.fetchAppLockStatus();
        yield opt.fold(
          (failure) => state.copyWith(
            appLock: AppLock.disabled,
          ),
          (readStatus) => state.copyWith(
            appLock: readStatus,
          ),
        );
      },
      setLastActiveSession: (e) async* {
        final opt = await _localAuthFacade.setLastActiveSession();
        yield opt.fold(
          (failure) => state.copyWith(
            fetchedDateTime: state.fetchedDateTime,
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
          ),
          (DateTime) => state.copyWith(
            fetchedDateTime: DateTime,
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
          ),
        );
      },
      fetchLastActiveSession: (e) async* {
        final opt = await _localAuthFacade.fetchLastActiveSession();
        yield opt.fold(
          (failure) => state.copyWith(
            fetchedDateTime: state.fetchedDateTime,
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
          ),
          (DateTime) => state.copyWith(
            fetchedDateTime: DateTime,
            changeFingerprintStatusFailureOrSuccessOption: none(),
            verifyFingerprintFailureOrSuccessOption: none(),
          ),
        );
      },
    );
  }
}
