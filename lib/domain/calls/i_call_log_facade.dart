import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/calls/call_log_failure.dart';
import 'package:flutter_template/domain/calls/call_model.dart';

abstract class ICallLogFacade {
  Future<Either<CallLogFailure, Unit>> deleteCallLog(
      List<CallModel> callLogIds);
  Future<Either<CallLogFailure, Unit>> deleteSingleUserCallHistory(
      {required String callDocumentId});
}
