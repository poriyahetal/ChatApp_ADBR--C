import 'dart:async';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/base/stories/widgets/video_view.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

List<CameraDescription>? cameras;

class VideoCapture extends StatefulWidget {
  @override
  _VideoCaptureState createState() => _VideoCaptureState();
}

class _VideoCaptureState extends State<VideoCapture> {
  CameraController? _cameraController;
  Future<void>? cameraValue;
  bool isRecording = false;
  bool flash = false;
  bool iscamerafront = true;
  double transform = 0;
  Timer? _timer;
  Stopwatch? _stopwatch;
  String recordingSeconds = '00';

  Future<void> setupCameras() async {
    cameras = await availableCameras();
    _cameraController =
        new CameraController(cameras![0], ResolutionPreset.medium);
    setState(() {
      cameraValue = _cameraController!.initialize();
    });
  }

  recordingLimit() async {
    if (isRecording && _stopwatch!.elapsedMilliseconds >= 30100) {
      _stopwatch!.stop();
      XFile videopath = await _cameraController!.stopVideoRecording();
      setState(() {
        isRecording = false;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => VideoViewPage(
                    path: videopath.path,
                  )));
    }
  }

  @override
  void initState() {
    super.initState();
    setupCameras();
    _stopwatch = Stopwatch();
    _timer = new Timer.periodic(new Duration(milliseconds: 10), (timer) {
      setState(() {
        isRecording ? _stopwatch!.start() : _stopwatch!.stop();
        recordingSeconds = (_stopwatch!.elapsedMilliseconds / 1000 % 60)
            .floor()
            .toString()
            .padLeft(2, '0');
        recordingLimit();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
    _cameraController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
              future: cameraValue,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: CameraPreview(_cameraController!));
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          isRecording
              ? Positioned(
                  top: 60,
                  left: MediaQuery.of(context).size.width * 0.40,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.fiber_manual_record_rounded,
                            color: Colors.red,
                          ),
                          Text(
                            '0:${recordingSeconds}',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ))
              : Container(),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Icon(
                            flash ? Icons.flash_on : Icons.flash_off,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () {
                            setState(() {
                              flash = !flash;
                            });
                            flash
                                ? _cameraController!
                                    .setFlashMode(FlashMode.torch)
                                : _cameraController!
                                    .setFlashMode(FlashMode.off);
                          }),
                      GestureDetector(
                        onLongPress: () async {
                          await _cameraController!.startVideoRecording();
                          setState(() {
                            isRecording = true;
                          });
                        },
                        onLongPressUp: () async {
                          XFile videopath =
                              await _cameraController!.stopVideoRecording();
                          setState(() {
                            isRecording = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => VideoViewPage(
                                        path: videopath.path,
                                      )));
                        },
                        child: isRecording
                            ? Icon(
                                Icons.radio_button_on,
                                color: Colors.red,
                                size: 80,
                              )
                            : Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.white,
                                size: 70,
                              ),
                      ),
                      IconButton(
                          icon: Transform.rotate(
                            angle: transform,
                            child: Icon(
                              Icons.flip_camera_ios,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              iscamerafront = !iscamerafront;
                              transform = transform + pi;
                            });
                            int cameraPos = iscamerafront ? 0 : 1;
                            _cameraController = CameraController(
                                cameras![cameraPos], ResolutionPreset.high);
                            cameraValue = _cameraController!.initialize();
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "${context.read<SettingsBloc>().state.languageData.holdForCapturingVideo}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
