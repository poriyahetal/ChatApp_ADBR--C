// ignore_for_file: cancel_subscriptions, avoid_void_async, use_late_for_private_fields_and_variables, prefer_final_fields, unused_import

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data' show Uint8List;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

enum AudioState {
  isPlaying,
  isPaused,
  isStopped,
  isRecording,
  isRecordingPaused,
}

class Demo extends StatefulWidget {
  final ValueChanged<String?> onRecordingDone;
  const Demo({Key? key, required this.onRecordingDone}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Demo> {
  void Function()? onPauseResumeRecorderPressed() {
    if (recorderModule.isPaused || recorderModule.isRecording) {
      return pauseResumeRecorder;
    }
    return null;
  }

  void Function()? onStartRecorderPressed() {
    if (!_encoderSupported!) return null;
    return startStopRecorder;
  }

  FlutterSoundRecorder recorderModule = FlutterSoundRecorder();
  StreamController<Food>? recordingDataController;
  IOSink? sink;

  double? _dbLevel;
  bool? _encoderSupported = true;
  bool _isRecording = false;
  String? _path;
  StreamSubscription? _recorderSubscription;
  String _recorderTxt = '00:00:00';
  int? _recordedDuration;
  StreamSubscription? _recordingDataSubscription;

  @override
  void dispose() {
    super.dispose();
    cancelRecorderSubscriptions();
    cancelRecordingDataSubscription();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> openTheRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Microphone permission not granted');
    }

    await recorderModule.openRecorder();
    // await recorderModule.openAudioSession(
    //   focus: AudioFocus.requestFocusAndStopOthers,
    // );
  }

  Future<void> init() async {
    await openTheRecorder();
    await _initializeExample(false);
  }

  void cancelRecorderSubscriptions() {
    if (_recorderSubscription != null) {
      _recorderSubscription!.cancel();
      _recorderSubscription = null;
    }
  }

  void cancelRecordingDataSubscription() {
    if (_recordingDataSubscription != null) {
      _recordingDataSubscription!.cancel();
      _recordingDataSubscription = null;
    }
    recordingDataController = null;
    if (sink != null) {
      sink!.close();
      sink = null;
    }
  }

  void startRecorder() async {
    try {
      // Request Microphone permission if needed
      final status = await Permission.microphone.request();
      if (status != PermissionStatus.granted) {
        throw RecordingPermissionException(
          'Microphone permission not granted',
        );
      }

      var path = '';
      final tempDir = await getTemporaryDirectory();
      path =
          '${tempDir.path}/${Timestamp.now().microsecondsSinceEpoch}${ext[Codec.pcm16WAV.index]}';
      await recorderModule.startRecorder(
        toFile: path,
        codec: Codec.pcm16WAV,
      );
      recorderModule.logger.d('startRecorder');

      _recorderSubscription = recorderModule.onProgress!.listen((e) {
        final date = DateTime.fromMillisecondsSinceEpoch(
          e.duration.inMilliseconds,
          isUtc: true,
        );
        final txt = DateFormat('mm:ss:SS', 'en_GB').format(date);
        if (e.duration.inSeconds >= 59) {
          stopRecorder();
        }

        setState(() {
          _recorderTxt = txt.substring(0, 8);
          _dbLevel = e.decibels;
          _recordedDuration = e.duration.inSeconds;
        });
      });

      setState(() {
        _isRecording = true;
        _path = path;
      });
    } on Exception catch (err) {
      recorderModule.logger.e('startRecorder error: $err');
      setState(() {
        stopRecorder();
        _isRecording = false;
        cancelRecordingDataSubscription();
        cancelRecorderSubscriptions();
      });
    }
  }

  void stopRecorder() async {
    try {
      await recorderModule.stopRecorder();
      recorderModule.logger.d('stopRecorder');
      cancelRecorderSubscriptions();
      cancelRecordingDataSubscription();
    } on Exception catch (err) {
      recorderModule.logger.d('stopRecorder error: $err');
    }
    setState(() {
      _isRecording = false;
    });
  }

  void pauseResumeRecorder() async {
    try {
      if (recorderModule.isPaused) {
        await recorderModule.resumeRecorder();
      } else {
        await recorderModule.pauseRecorder();
        assert(recorderModule.isPaused);
      }
    } on Exception catch (err) {
      recorderModule.logger.e('error: $err');
    }
    setState(() {});
  }

  void startStopRecorder() {
    if (recorderModule.isRecording || recorderModule.isPaused) {
      stopRecorder();
    } else {
      startRecorder();
    }
  }

  IconData recorderAssetImage() {
    if (onStartRecorderPressed() == null) {
      return Icons.mic_off_outlined;
    }
    return (recorderModule.isStopped)
        ? Icons.mic_none_outlined
        : Icons.stop_outlined;
  }

  Future<void> _initializeExample(bool withUI) async {
    await recorderModule
        .setSubscriptionDuration(const Duration(milliseconds: 10));
    await initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        children: <Widget>[
          if (_isRecording)
            LinearProgressIndicator(
              value: 100.0 / 60.0 * (_recordedDuration ?? 1) / 100,
              minHeight: 10,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.indigo),
              backgroundColor: Colors.blue.shade100,
            )
          else
            const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.close,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12.0, bottom: 16.0),
                    child: Text(
                      _recorderTxt,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: onStartRecorderPressed(),
                    icon: Icon(
                      recorderAssetImage(),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      widget.onRecordingDone(_path);
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
