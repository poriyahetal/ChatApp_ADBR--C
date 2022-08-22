import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class RecordingWidget extends StatefulWidget {
  final String callId;
  const RecordingWidget({
    Key? key,
    required this.callId,
  }) : super(key: key);

  @override
  _RecordingWidgetState createState() => _RecordingWidgetState();
}

class _RecordingWidgetState extends State<RecordingWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CallsBloc, CallsState>(
      listener: (context, state) {
        // if (!state.isRecording && state.resourceId != "") {
        //   context.read<CallsBloc>().add(
        //         CallsEvent.startRecording(widget.callId, "VoiceCall"),
        //       );

        // }
        state.acquireFailureOrSuccessOpt.fold(() {}, (some) {
          some.fold(
            (l) {},
            (r) {
              context.read<CallsBloc>().add(
                    CallsEvent.startRecording(widget.callId, "VoiceCall"),
                  );
              print('printing listener');
            },
          );
        });
      },
      builder: (context, state) {
        if (state.isRecording || state.currentRoomDetails.isCallRecording) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "${context.read<SettingsBloc>().state.languageData.callIsBeingRecorded}",
                  style: const TextStyle(fontSize: 18, color: Kolors.white),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: 15,
                )
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
