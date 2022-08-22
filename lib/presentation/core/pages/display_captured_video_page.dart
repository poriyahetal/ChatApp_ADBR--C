// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:video_player/video_player.dart';

class DisplayCapturedVideoPage extends StatefulWidget {
  final String videpPath;
  final Function(ImageWithCaptionModel) onCapture;

  const DisplayCapturedVideoPage({
    Key? key,
    required this.videpPath,
    required this.onCapture,
  }) : super(key: key);

  @override
  _DisplayCapturedVideoPageState createState() =>
      _DisplayCapturedVideoPageState();
}

class _DisplayCapturedVideoPageState extends State<DisplayCapturedVideoPage> {
  final TextEditingController messageTEC = TextEditingController();
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.file(File(widget.videpPath)),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return SafeScaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          // The image is stored as a file on the device. Use the `Image.file`
          // constructor with the given path to display the image.
          body: Column(
            children: [
              Expanded(
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
              const SizedBoxH10(),
              Row(
                children: [
                  Expanded(
                    child: FutureBuilder(
                        future: Getters.getTranslation(
                            languageCode: 'en', text: "Type a message..."),
                        builder: (context, gSnapshot) {
                          return TextField(
                            controller: messageTEC,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black54,
                              isDense: true,
                              hintText: !gSnapshot.hasData
                                  ? "Type a message..."
                                  : gSnapshot.data! as String,
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              // prefixIcon: IconButton(
                              //   onPressed: () {},
                              //   icon: const Icon(Icons.photo),
                              // ),
                            ),
                          );
                        }),
                  ),
                  const SizedBoxW15(),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      if (messageTEC.text.isNotEmpty) {
                        widget.onCapture(
                          ImageWithCaptionModel(
                            imagePath: widget.videpPath,
                            caption: messageTEC.text,
                          ),
                        );
                      } else {
                        messageTEC.text = '';
                        widget.onCapture(
                          ImageWithCaptionModel(
                            imagePath: widget.videpPath,
                            caption: messageTEC.text,
                          ),
                        );
                      }
                    },
                    child: const Icon(Icons.check),
                  )
                ],
              ),
              const SizedBoxH10(),
            ],
          ),
        );
      },
    );
  }
}
