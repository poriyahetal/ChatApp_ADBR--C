import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/calls/calls_failures.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/recording/i_cloud_recording_facade.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICloudRecordingFacade)
class CloudRecordingFacade implements ICloudRecordingFacade {
  final FirebaseFirestore _firestore;

  CloudRecordingFacade(this._firestore);
  static String customerID = "8d23b10489484b9d8098e7132db3ad55";
  static String customerSecret = "2e51dbaf10cd4e64913d24d4f7718b70";

  final String accessChannel = "temp";
  final String recordingUID = "123";
  final String modeType = "mix";

  final String basicAuth =
      'Basic ${base64Encode(utf8.encode('$customerID:$customerSecret'))}';

  final String storageAccountName = "appcallsrecordings";
  final String containerName = "adbrchatapprecording";
  final accessKey =
      "RXbtjYiW0F/LzWQozoOGCNpVRcKhpsuUGan87kvTSA7m7GUxH76Cb5qXyLY+0Cxq5XWH2padYm6a+AStSC8eCA==";
  final String directory = "Recordings";

  @override
  Future<Either<CallsFailure, String>> acquire() async {
    try {
      final response = await http.post(
        Uri.parse(
            "https://api.agora.io/v1/apps/${ApiConstants.agoraAppId}/cloud_recording/acquire"),
        headers: <String, String>{
          "Content-Type": "application/json",
          "authorization": basicAuth
        },
        body: jsonEncode(
          {"cname": accessChannel, "uid": recordingUID, "clientRequest": {}},
        ),
      );
      if (response.statusCode == 200) {
        print("ACQUIRED");
        print(response.body);
        final resourceIdMap = jsonDecode(response.body);
        final String resourceId = resourceIdMap["resourceId"] as String;
        return right(resourceId);
      }
      print(response.body);
      return left(const CallsFailure.statusCodeError("Invalid status code"));
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Couldn't start recording. Please try again",
        backgroundColor: Kolors.grey,
      );
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, String>> start(
    String resourceId,
    String callId,
    String callType,
    String token,
    CallRoomModel roomDetails,
  ) async {
    final String date =
        "${DateTime.now().year}${DateTime.now().month}${DateTime.now().day}";
    final String time =
        "${DateTime.now().hour}${DateTime.now().minute}${DateTime.now().second}";
    final String id = callId.replaceAll("-", "");
    print("##################################### $callId");
    try {
      final response = await http.post(
        Uri.parse(
            "https://api.agora.io/v1/apps/${ApiConstants.agoraAppId}/cloud_recording/resourceid/$resourceId/mode/$modeType/start"),
        headers: <String, String>{
          "Content-Type": "application/json",
          "authorization": basicAuth
        },
        body: jsonEncode({
          "cname": accessChannel,
          "uid": recordingUID,
          "clientRequest": {
            "token": token,
            "recordingConfig": {
              "channelType": 0,
              "streamTypes": 2,
              "audioProfile": 1,
              "videoStreamType": 0,
              "maxIdleTime": 120,
              "transcodingConfig": {
                "width": 360,
                "height": 640,
                "fps": 30,
                "bitrate": 600,
                "maxResolutionUid": "1",
                "mixedVideoLayout": 1
              }
            },
            "storageConfig": {
              "vendor": 5,
              "region": 1,
              "bucket": containerName,
              "accessKey": storageAccountName,
              "secretKey": accessKey,
              "fileNamePrefix": [directory, id, callType, date, time]
            },
            'recordingFileConfig': {
              'avFileType': ['hls', 'mp4']
            }
          }
        }),
      );
      if (response.statusCode == 200) {
        print("RECORDING STARTED");
        print(response.body);
        final recordingStartedBy = Getters.getCurrentUserUid();
        print(recordingStartedBy);
        final CallRoomModel updatedRoomDetails = roomDetails.copyWith(
          isCallRecording: true,
          recordedBy: recordingStartedBy,
        );
        await _firestore.callsCollection
            .doc(updatedRoomDetails.currentCall.callId)
            .set(
              updatedRoomDetails.toMap(),
              SetOptions(merge: true),
            );
        return right(response.body);
      }
      print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
      print("print call resource ==> ${response.body}");
      return left(const CallsFailure.statusCodeError("Invalid Status code"));
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Couldn't start recording. Please try again",
        backgroundColor: Kolors.grey,
      );
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, CallRoomModel>> stop(
      String sid, String resourceId, CallRoomModel roomDetails) async {
    try {
      final response = await http.post(
        Uri.parse(
          "https://api.agora.io/v1/apps/${ApiConstants.agoraAppId}/cloud_recording/resourceid/$resourceId/sid/$sid/mode/$modeType/stop",
        ),
        headers: <String, String>{
          "Content-Type": "application/json",
          "authorization": basicAuth
        },
        body: jsonEncode(
          {"cname": accessChannel, "uid": recordingUID, "clientRequest": {}},
        ),
      );
      if (response.statusCode == 200) {
        print("RECORDING STOPPED");
        print(response.body);

        final responseToMap = jsonDecode(response.body);

        final String fileName = responseToMap['serverResponse']['fileList'][0]
            ['fileName'] as String;
        print(fileName);
        final CallModel currentCall = roomDetails.currentCall.copyWith(
          recordingDirectory: fileName,
        );
        final CallRoomModel updatedRoomDetails = roomDetails.copyWith(
          currentCall: currentCall,
          isCallRecording: false,
        );
        await _firestore.callsCollection
            .doc(updatedRoomDetails.currentCall.callId)
            .set(
              updatedRoomDetails.toMap(),
              SetOptions(merge: true),
            );
        // await _firestore.callsCollection
        //     .doc(currentRoom.currentCall.callId)
        //     .callsHistoryCollection
        //     .doc()
        //     .set(
        //       currentRoom.lastCall!
        //           .copyWith(
        //             recordingDirectory: fileName,
        //           )
        //           .toMap(),
        //       SetOptions(merge: true),
        //     );
        // await _firestore.callsCollection.doc(currentRoom.id).set(
        //       currentRoom.toMap(),
        //       SetOptions(merge: true),
        //     );
        print("print call resource ==> ${responseToMap}");
        return right(updatedRoomDetails);
      }

      print(response.body);

      return left(
        CallsFailure.statusCodeError(
          "Invalid status code ${response.statusCode}",
        ),
      );
    } catch (e) {
      return left(CallsFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CallsFailure, String>> query(
    String sid,
    String resourceId,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(
          "https://api.agora.io/v1/apps/${ApiConstants.agoraAppId}/cloud_recording/resourceid/$resourceId/sid/$sid/mode/$modeType/query",
        ),
        headers: <String, String>{
          "Content-Type": "application/json",
          "authorization": basicAuth
        },
      );
      if (response.statusCode == 200) {
        print("QUERY");
        print(response.body);
        return right(response.body);
      }

      print(response.body);
      return left(
        CallsFailure.queryError(
          "Invalid status code ${response.statusCode}",
        ),
      );
    } catch (e) {
      return left(CallsFailure.customError(e.toString()));
    }
  }
}
