import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/calls/calls_failures.dart';
import 'package:flutter_template/domain/recording/recording_failures.dart';

abstract class ICloudRecordingFacade {
  Future<Either<CallsFailure, String>> acquire();
  Future<Either<CallsFailure, String>> start(
    String resourceId,
    String callId,
    String callType,
    String token,
    CallRoomModel roomDetails,
  );
  Future<Either<CallsFailure, CallRoomModel>> stop(
      String sid, String resourceId, CallRoomModel roomDetails);
  Future<Either<CallsFailure, String>> query(String sid, String resourceId);
}
