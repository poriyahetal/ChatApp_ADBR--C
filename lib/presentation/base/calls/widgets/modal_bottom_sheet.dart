import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/recording/bloc/recordings_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MBottomSheet extends StatefulWidget {
  VoidCallback addParticipantsFunction;

  VoidCallback? showTurnOnVideoFunction;
  bool showTurnOnVideo;

  MBottomSheet({
    Key? key,
    required this.addParticipantsFunction,
    this.showTurnOnVideoFunction,
    required this.showTurnOnVideo,
  }) : super(key: key);

  @override
  _MBottomSheetState createState() => _MBottomSheetState();
}

class _MBottomSheetState extends State<MBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.showTurnOnVideo ? 200 : 160,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.keyboard_arrow_up,
              size: 50,
              color: Kolors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: widget.addParticipantsFunction,
              child: Row(
                children: [
                  const Icon(
                    Icons.person_add,
                    color: Kolors.black,
                    size: 30,
                  ),
                  const SizedBoxW15(),
                  Text(
                    context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .addParticipants,
                    style: const TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          ),
          BlocBuilder<CallsBloc, CallsState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 8,
                ),
                child: InkWell(
                  onTap: () {
                    if (state.isRecording ||
                        state.currentRoomDetails.isCallRecording) {
                      if (state.currentRoomDetails.recordedBy ==
                          Getters.getCurrentUserUid()) {
                        context.read<CallsBloc>().add(CallsEvent.stopRecording(
                            currentRoom: context
                                .read<CallsBloc>()
                                .state
                                .currentRoomDetails));
                      } else {
                        Fluttertoast.showToast(
                            msg: "You can't stop recording",
                            backgroundColor: Kolors.grey);
                      }
                    } else {
                      context.read<CallsBloc>().add(const CallsEvent.acquire());
                    }

                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: state.isRecording ||
                                state.currentRoomDetails.isCallRecording
                            ? Kolors.callEndButton
                            : Kolors.primary,
                        size: 20,
                      ),
                      const SizedBox(width: 19),
                      Text(
                        state.isRecording ||
                                state.currentRoomDetails.isCallRecording
                            ? "Stop Recording"
                            : "Record Call",
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          if (widget.showTurnOnVideo)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: widget.showTurnOnVideoFunction,
                child: Row(
                  children: [
                    const Icon(
                      Icons.videocam,
                      color: Kolors.black,
                      size: 30,
                    ),
                    const SizedBoxW15(),
                    Text(
                      context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .turnOnVideo,
                      style: const TextStyle(fontSize: 17),
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
