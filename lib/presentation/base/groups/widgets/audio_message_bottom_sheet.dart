import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class AudioMessageBottomSheet extends StatefulWidget {
  @override
  _AudioMessageBottomSheetState createState() =>
      _AudioMessageBottomSheetState();
}

class _AudioMessageBottomSheetState extends State<AudioMessageBottomSheet> {
  bool _mPlayerIsInited = false;
  bool _mRecorderIsInited = false;
  bool _mplaybackReady = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        children: [
          const LinearProgressIndicator(
              color: Kolors.primary, value: 0.5, minHeight: 8),
          if (true)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close)),
                      /*StreamBuilder<RecordingDisposition>(
                        stream: _mRecorder!.onProgress,
                        builder: (context, snapshot) {
                          if(snapshot.data!=null) {
                            print("decibels ${snapshot.data!.decibels}");
                            return Text("${snapshot.data!.duration.inSeconds}");
                          }else{
                            print("no");
                            return const Text("0.00");
                          }
                        }
                      )*/
                    ],
                  ),
                ),
                Text(
                  true
                      ? "${context.read<SettingsBloc>().state.languageData.recordingInProgress}"
                      : 'Recorder is stopped',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined, color: Kolors.primary),
                ),
              ],
            )
          else
            GestureDetector(
              child: Text(
                  "${context.read<SettingsBloc>().state.languageData.clickToStartRecording}"),
            ),
        ],
      ),
    );
  }
}
