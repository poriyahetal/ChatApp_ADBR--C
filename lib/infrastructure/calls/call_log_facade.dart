import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/calls/call_log_failure.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/i_call_log_facade.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICallLogFacade)
class CallLogFacade implements ICallLogFacade {
  final FirebaseFirestore _firestore;

  CallLogFacade(this._firestore);
  @override
  Future<Either<CallLogFailure, Unit>> deleteCallLog(
      List<CallModel> callIds) async {
    try {
      for (final callId in callIds) {
        print(callId.callId);
        await _firestore.callsHistoryCollection
            .doc(callId.callId)
            .delete()
            .onError((error, stackTrace) => print("unable to delete"));
      }
      return right(unit);
    } catch (e) {
      return left(CallLogFailure.deletetionError(e.toString()));
    }
  }

  @override
  Future<Either<CallLogFailure, Unit>> deleteSingleUserCallHistory(
      {required String callDocumentId}) async {
    try {
      final collection = FirebaseFirestore.instance.callsHistoryCollection;
      final callLog = await collection.getSavy();

      for (final callId in callLog.docs) {
        await callId.reference
            .delete()
            .then((value) {})
            .onError((error, stackTrace) {
          debugPrint(error.toString());
          Fluttertoast.showToast(
            msg: 'unable to delete call logs',
            backgroundColor: Kolors.grey,
          );
        });
      }

      Fluttertoast.showToast(
        msg: 'Call log deleted successfully',
        backgroundColor: Kolors.grey,
      );

      return right(unit);
    } catch (e) {
      return left(CallLogFailure.deletetionError(e.toString()));
    }
  }
}
