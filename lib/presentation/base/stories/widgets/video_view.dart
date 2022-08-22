import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_trimmer/video_trimmer.dart';

import '../../../core/layout_widgets/sized_boxes.dart';

// class VideoViewPage extends StatefulWidget {
//   const VideoViewPage({required this.path});
//
//   final String path;
//
//   @override
//   _VideoViewPageState createState() => _VideoViewPageState();
// }
//
// class _VideoViewPageState extends State<VideoViewPage> {
//   VideoPlayerController? _controller;
//   TextEditingController _captionController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.file(File(widget.path))
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//
//
//   }
//
//   @override
//   void dispose() {
//     _captionController.dispose();
//     _controller!.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         actions: [
//         ],
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height - 150,
//               child: _controller!.value.isInitialized
//                   ? AspectRatio(
//                       aspectRatio: _controller!.value.aspectRatio,
//                       child: VideoPlayer(_controller!),
//                     )
//                   : Container(),
//             ),
//             Positioned(
//               bottom: 0,
//               child: Container(
//                 color: Colors.black38,
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
//                 child: TextField(
//                   controller: _captionController,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 17,
//                   ),
//                   maxLines: 6,
//                   minLines: 1,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderSide:
//                       const BorderSide(color: Colors.white),
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     hintText: "Add Caption....",
//                     fillColor: Colors.grey.withOpacity(0.5),
//                     // prefixIcon: Icon(
//                     //   Icons.add_photo_alternate,
//                     //   color: Colors.white,
//                     //   size: 27,
//                     // ),
//                     hintStyle: TextStyle(
//                       color: Colors.white,
//                       fontSize: 17,
//                     ),
//                     suffixIcon: IconButton(
//                       onPressed: () async {
//                         final videoInfo = FlutterVideoInfo();
//                         String videoFilePath = widget.path;
//                         var info = await videoInfo.getVideoInfo(videoFilePath);
//                         context.read<StoriesBloc>().add(
//                             StoriesEvent.createVideoStatus(
//                                 context.read<StoriesBloc>().state.myStories,
//                                 _captionController.text,
//                                 widget.path,
//                                 info!.duration!));
//                         Navigator.pop(context);
//                         Navigator.pop(context);
//                       },
//                       icon: CircleAvatar(
//                         radius: 30,
//                         backgroundColor: Kolors.primary,
//                         child: Icon(
//                           Icons.check,
//                           color: Colors.white,
//                           size: 27,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     _controller!.value.isPlaying
//                         ? _controller!.pause()
//                         : _controller!.play();
//                   });
//                 },
//                 child: CircleAvatar(
//                   radius: 33,
//                   backgroundColor: Colors.black38,
//                   child: Icon(
//                     _controller!.value.isPlaying
//                         ? Icons.pause
//                         : Icons.play_arrow,
//                     color: Colors.white,
//                     size: 50,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class VideoViewPage extends StatefulWidget {
  final String path;

  VideoViewPage({required this.path});

  @override
  _VideoViewPageState createState() => _VideoViewPageState();
}

class _VideoViewPageState extends State<VideoViewPage> {
  final Trimmer _trimmer = Trimmer(

  );
  TextEditingController _captionController = TextEditingController();
  double _startValue = 0.0;
  double _endValue = 0.0;

  bool _isPlaying = false;
  bool _progressVisibility = false;

  Future<String?> _saveVideo() async {
    setState(() {
      _progressVisibility = true;
    });

    String? _value;

    await _trimmer
        .saveTrimmedVideo(startValue: _startValue, endValue: _endValue, onSave: (String? outputPath) async {
      final videoInfo = FlutterVideoInfo();
      String videoFilePath = widget.path;
      var info = await videoInfo.getVideoInfo(videoFilePath);
      print("duration:${info!.duration}");
      context.read<StoriesBloc>().add(
          StoriesEvent.createVideoStatus(
              context.read<StoriesBloc>().state.myStories,
              _captionController.text,
              outputPath??"",
              _endValue - _startValue));
    })
        .then((value) {
      setState(() {
        _progressVisibility = false;
        //_value = value;
      });
    });

    return _value;
  }

  void _loadVideo() {
    _trimmer.loadVideo(videoFile: File(widget.path));
    }

  @override
  void initState() {
    super.initState();

    _loadVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Video Trimmer"),
      // ),
      body: BlocBuilder<StoriesBloc, StoriesState>(
        builder: (context, storyState) {
          if(storyState.uploadProgress == 1.0){
            Future.delayed(Duration(milliseconds: 200,)).then((value){

            });

          }
          return SafeArea(
            child: GestureDetector(
              onTap: () async {
                bool playbackState = await _trimmer.videPlaybackControl(
                  startValue: _startValue,
                  endValue: _endValue,
                );
                setState(() {
                  _isPlaying = playbackState;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(bottom: 30.0),
                color: Colors.black,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        const SizedBoxH20(),
                        Visibility(
                          visible: _progressVisibility,
                          child: const LinearProgressIndicator(
                            backgroundColor: Colors.red,
                          ),
                        ),
                        Center(
                          child: TrimEditor(
                            trimmer: _trimmer,
                            viewerHeight: 50.0,
                            viewerWidth: MediaQuery.of(context).size.width,
                            //maxVideoLength: Duration(seconds: 30),
                            onChangeStart: (value) {
                              _startValue = value;
                            },
                            onChangeEnd: (value) {
                              _endValue = value;
                            },
                            onChangePlaybackState: (value) {
                              setState(() {
                                _isPlaying = value;
                              });
                            },
                          ),
                        ),
                        // ElevatedButton(
                        //   onPressed: _progressVisibility
                        //       ? null
                        //       : () async {
                        //     _saveVideo();
                        //   },
                        //   child: const Text("SAVE"),
                        // ),
                        Expanded(
                          child: VideoViewer(trimmer: _trimmer),
                        ),
                        const SizedBoxH10(),
                        Positioned(
                          bottom: 0,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: _captionController,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                  maxLines: 6,
                                  minLines: 1,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    hintText: "Add Caption....",
                                    fillColor: Colors.grey.withOpacity(0.5),
                                    contentPadding: const EdgeInsets.symmetric(vertical : 5.0,horizontal: 20.0),
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBoxW10(),
                              InkWell(
                                onTap: ()=>_saveVideo(),
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Kolors.primary,
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    if(!_isPlaying)
                      const Center(
                        child:  Icon(
                          Icons.play_arrow,
                          size: 70.0,
                          color: Colors.white,
                        ),
                      ),
                    if(storyState.uploadProgress > 0.00 &&
                        storyState.uploadProgress < 0.99999)
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}