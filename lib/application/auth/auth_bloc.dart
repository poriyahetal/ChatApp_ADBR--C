// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      getNewNumber: (e) async* {
        yield state.copyWith(
          newPhoneNumber: e.newPhoneNumber,
          isLoading: false,
          authFailureOrSuccessOption: none(),
        );
      },
      updateNumber: (e) async* {
        yield state.copyWith(
          isLoading: true,
          otp: e.otp,
          updatePhoneNumber: none(),
        );
        final opt = await _authFacade.updatePhoneNumber(
          otp: e.otp,
          verificationID: state.verificationId,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            updatePhoneNumber: some(left(failure)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            updatePhoneNumber: some(right(state.phoneNumber)),
            verificationId: '',
          ),
        );
        // final opt = await _authFacade.updatePhoneNumber(
        //     oldNumberOtp: e.oldNumberOtp,
        //     oldNumberVerifcationID: state.verificationId,
        //     newNumberOtp: e.newNumberOtp,
        //     newNumberVerifcationID: state.newNumberVerificationId,
        //     newPhoneNumber: state.newPhoneNumber);

        // yield opt.fold(
        //     (failure) => state.copyWith(
        //           isLoading: false,
        //           updatePhoneNumber: some(left(failure)),
        //         ),
        //     (r) => state.copyWith(
        //         isLoading: false,
        //         updatePhoneNumber: some(right(state.newPhoneNumber))));
      },
      deleteAccount: (e) async* {
        yield state.copyWith(
          isLoading: true,
          otp: e.otp,
          deleteAccount: none(),
        );
        final opt = await _authFacade.deleteAccount(
          otp: e.otp,
          verificationId: state.verificationId,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            deleteAccount: some(
              left(failure),
            ),
          ),
          (r) => state.copyWith(
            deleteAccount: some(right(unit)),
            isLoading: false,
            verificationId: '',
            otp: '',
            phoneNumber: '',
          ),
        );
        yield state.copyWith(
          deleteAccount: none(),
        );
      },
      getOtp: (e) async* {
        yield state.copyWith(
          isLoading: true,
          otp: e.otp,
          authFailureOrSuccessOption: none(),
        );
        final opt = await _authFacade.signInWithOtpAndVerificationId(
          verificationId: state.verificationId,
          otp: e.otp,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            authFailureOrSuccessOption: some(left(failure)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            authFailureOrSuccessOption: some(right(unit)),
            verificationId: '',
          ),
        );
      },
      getPhoneNumber: (e) async* {
        yield state.copyWith(
          // isLoading: true,
          phoneNumber: e.phoneNumber,
          authFailureOrSuccessOption: none(),
        );
        // final opt = await _authFacade.sendPhoneOtp(phoneNumber: e.phoneNumber);
        // yield opt.fold(
        //   (failure) => state.copyWith(
        //     isLoading: false,
        //     authFailureOrSuccessOption: some(left(failure)),
        //   ),
        //   (verificationId) => state.copyWith(
        //     isLoading: false,
        //     verificationId: verificationId,
        //     authFailureOrSuccessOption: some(right(unit)),
        //   ),
        // );
      },
      logOut: (e) async* {
        yield state.copyWith(
          isLoading: true,
          authFailureOrSuccessOption: none(),
        );
        final opt = await _authFacade.logOut();
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            authFailureOrSuccessOption: some(left(failure)),
          ),
          (r) => state.copyWith(
            isLoading: false,

            authFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      getVerificationId: (e) async* {
        yield state.copyWith(
          verificationId: e.verificationId,
          isLoading: false,
          authFailureOrSuccessOption: none(),
        );
      },
      checkAuthStatus: (e) async* {
        yield state.copyWith(
          userSignInStatusOption: none(),
          authFailureOrSuccessOption: none(),
        );
        final opt = await _authFacade.checkUserSignedInStatus();
        yield opt.fold(
          (failure) => state.copyWith(
            userSignInStatusOption: some(left(failure)),
            authFailureOrSuccessOption: none(),
          ),
          (success) => state.copyWith(
            userSignInStatusOption: some(right(unit)),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      reAuthUser: (e) async* {
        yield state.copyWith(
          otp: e.otp,
          isLoading: true,
          authFailureOrSuccessOption: none(),
        );
        final opt = await _authFacade.reAuthUser(
          verificationId: state.verificationId,
          otp: e.otp,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            authFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            authFailureOrSuccessOption: some(right(unit)),
            verificationId: '',
          ),
        );
      },
    );
  }
}
