import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  AuthFacade(
    this._firebaseAuth,
    this._firestore,
  );

  @override
  Future<Either<AuthFailure, Unit>> logOut() async {
    try {
      await _firebaseAuth.signOut();
      return right(unit);
    } catch (e) {
      return left(AuthFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithOtpAndVerificationId({
    required String verificationId,
    required String otp,
  }) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await _firebaseAuth.signInWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidOtp());
      }
      return left(AuthFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, String>> sendPhoneOtp({
    required String phoneNumber,
  }) async {
    try {
      late String verificationID;
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          verificationID = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationID = verificationId;
        },
      );
      return right(verificationID);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-phone-number') {
        return left(const AuthFailure.invalidPhoneNumber());
      } else {
        return left(AuthFailure.customError(e.toString()));
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(AuthFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> checkUserSignedInStatus() async {
    try {
      final User? user = _firebaseAuth.currentUser;
      if (user != null) {
        return right(unit);
      }
      return left(const AuthFailure.noSignedInUser());
    } catch (e) {
      return left(const AuthFailure.errorRetrievingUser());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount({
    required String otp,
    required String verificationId,
  }) async {
    try {
      final User? user = _firebaseAuth.currentUser;
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await user!.reauthenticateWithCredential(credential);
      await _firestore
          .collection('users')
          .doc(user.uid)
          .delete()
          .then((value) => print('document deleted'))
          .catchError((error) => print("Failed to delete user: $error"));
      user.delete();
      // .then((value) => {
      //       print("reAUTHENTICATION SUCCESSFULL"),
      //       ,
      //       value.user!.delete(),
      //       print("delete successful"),
      //     });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidOtp());
      } else {
        return left(AuthFailure.customError(e.toString()));
      }
    }
  }

  // @override
  // Future<Either<AuthFailure, Unit>> updatePhoneNumber(
  //     {required String oldNumberOtp,
  //     required String oldNumberVerifcationID,
  //     required String newNumberOtp,
  //     required String newNumberVerifcationID,
  //     required String newPhoneNumber}) async {
  //   try {
  //
  //     final AuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: oldNumberVerifcationID,
  //       smsCode: oldNumberOtp,
  //     );
  //     await user!.reauthenticateWithCredential(credential);
  //
  //
      // await _firestore.usersCollection
      //     .doc(user.uid)
      //     .update({'phoneNumber': newPhoneNumber})
      //     .then((value) => print("User Updated"))
      //     .catchError((error) => print("Failed to update user: $error"));
      // user = _firebaseAuth.currentUser;
      // print(user!.phoneNumber);
  //     return right(unit);

  // }
  @override
  Future<Either<AuthFailure, Unit>> updatePhoneNumber({
    required String otp,
    required String verificationID,
  }) async {
    try {
      final User? user = _firebaseAuth.currentUser;
      final PhoneAuthCredential newNumberCredential =
          PhoneAuthProvider.credential(
        verificationId: verificationID,
        smsCode: otp,
      );
      // AuthCredential credential = PhoneAuthProvider.credential(
      //     verificationId: verificationID, smsCode: otp);
      await user!.updatePhoneNumber(newNumberCredential);
      print("reAuth successful");
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      if (e.code == 'credential-already-in-use') {
        return left(const AuthFailure.numberAlreadyInUsed());
      } else if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidOtp());
      } else {
        return left(AuthFailure.customError(e.toString()));
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> reAuthUser({
    required String verificationId,
    required String otp,
  }) async {
    try {
      final User? user = _firebaseAuth.currentUser;
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await user!.reauthenticateWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidOtp());
      } else {
        return left(AuthFailure.customError(e.toString()));
      }
    }
  }
}
