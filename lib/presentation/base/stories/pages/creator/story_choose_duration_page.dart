import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/stories/creator/trimmer/video_trimmer_for_story_cubit.dart';
import 'package:flutter_template/injection.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class StoryChooseDurationPage extends StatefulWidget {
  const StoryChooseDurationPage({
    Key? key,
    required this.indexDuration,
    required this.video,
  }) : super(key: key);
  final int indexDuration;
  final File video;

  @override
  State<StoryChooseDurationPage> createState() =>
      _StoryChooseDurationPageState();
}

class _StoryChooseDurationPageState extends State<StoryChooseDurationPage> {
  final minuteController = TextEditingController();
  final secondController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Update State
    getIt<VideoTrimmerForStoryCubitEvent>()
        .read(context)
        .udpateSelectedDuration(widget.indexDuration);
    minuteController.addListener(() {
      if (minuteController.text.isNotEmpty) {
        // Update State
        getIt<VideoTrimmerForStoryCubitEvent>().read(context).updateMinute(
              int.parse(minuteController.text),
            );
      }
    });
    secondController.addListener(() {
      if (secondController.text.isNotEmpty) {
        // Update State
        getIt<VideoTrimmerForStoryCubitEvent>().read(context).updateSecond(
              int.parse(secondController.text),
            );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    minuteController.clear();
    minuteController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Choose Story Duration",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // Navigate
                AutoRouter.of(context).replace(
                  VideoTrimRoute(file: widget.video),
                );
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 24),
              // By Second
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      const Text(
                        "By Second",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      // Seconds
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            VideoTrimmerForStoryCubit.durations.length,
                            (index) {
                          final int duration =
                              VideoTrimmerForStoryCubit.durations[index];
                          return GestureDetector(
                            onTap: () {
                              // Update State
                              getIt<VideoTrimmerForStoryCubitEvent>()
                                  .read(context)
                                  .udpateSelectedDuration(index);
                            },
                            child: Center(
                              child: BlocSelector<VideoTrimmerForStoryCubit,
                                  VideoTrimmerForStoryState, int>(
                                selector: (state) => state.selectedDuration,
                                builder: (_, selectedDuration) => Text(
                                  "$duration",
                                  style: TextStyle(
                                    fontSize:
                                        (index == selectedDuration) ? 24 : 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // By Input
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      const Text(
                        "By Input",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      // Inputs
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Minute
                          Expanded(
                            child: textField(
                              controller: minuteController,
                              label: "Minute",
                              inputType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(width: 12),
                          // Second
                          Expanded(
                            child: textField(
                              controller: secondController,
                              label: "Second",
                              inputType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Keep All Duration
              BlocSelector<VideoTrimmerForStoryCubit, VideoTrimmerForStoryState,
                  int?>(
                selector: (state) => state.allDuration,
                builder: (_, allDuration) => CheckboxListTile(
                  value: allDuration != null,
                  onChanged: (_) {
                    if (allDuration == null) {
                      // Update State
                      getIt<VideoTrimmerForStoryCubitEvent>()
                          .read(context)
                          .allDuration(
                            0,
                          );
                      return;
                    }
                    // Update State
                    getIt<VideoTrimmerForStoryCubitEvent>()
                        .read(context)
                        .allDuration(null);
                  },
                  title: const Text(
                    "Keep all duration",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              // Btn Clear
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Update State
                    getIt<VideoTrimmerForStoryCubitEvent>()
                        .read(context)
                        .clearDuration();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    maximumSize: const Size(double.infinity, 48),
                    elevation: 0,
                  ),
                  child: const Text("Clear"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textField({
  required TextEditingController controller,
  required String label,
  required TextInputType inputType,
}) {
  return TextField(
    controller: controller,
    keyboardType: inputType,
    style: const TextStyle(color: Colors.red),
    decoration: InputDecoration(
      label: Text(label),
      filled: false,
      fillColor: Colors.transparent,
      labelStyle: const TextStyle(color: Colors.red),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ),
      ),
    ),
  );
}
