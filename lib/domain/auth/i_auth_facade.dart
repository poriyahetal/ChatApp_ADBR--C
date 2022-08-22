import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithOtpAndVerificationId({
    required String verificationId,
    required String otp,
  });
  Future<Either<AuthFailure, String>> sendPhoneOtp({
    required String phoneNumber,
  });
  Future<Either<AuthFailure, Unit>> checkUserSignedInStatus();
  Future<Either<AuthFailure, Unit>> logOut();
  Future<Either<AuthFailure, Unit>> deleteAccount({
    required String otp,
    required String verificationId,
  });
  Future<Either<AuthFailure, Unit>> updatePhoneNumber({
    required String otp,
    required String verificationID,
  });
  Future<Either<AuthFailure, Unit>> reAuthUser({
    required String verificationId,
    required String otp,
  });
}
