import 'dart:async';
import 'dart:math';

import 'package:better_player/better_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  final String source;
  final bool? isLocal;

  const VideoPlay({Key? key, this.isLocal, required this.source})
      : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController _controller;
  int secondsOfInActivity = 3;
  late Timer timer;
  bool hideAppBar = false;
  bool fixedAppBar = false;
  bool isPaused = false;
  late BetterPlayerController _betterPlayerController;
  late ChewieController chewieController;

  void refreshTimer() {
    setState(() {
      secondsOfInActivity = 3;
      hideAppBar = false;
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    });
    const oneSecond = Duration(seconds: 1);
    timer = Timer.periodic(oneSecond, (timer) {
      if (secondsOfInActivity == 0) {
        setState(() {
          timer.cancel();
          hideAppBar = true;

          SystemChrome.setSystemUIOverlayStyle(
            const SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.transparent,
              statusBarColor: Colors.transparent,
            ),
          );
          SystemChrome.setEnabledSystemUIMode(
            SystemUiMode.manual,
            overlays: [],
          );
        });
      } else {
        setState(() {
          hideAppBar = false;
          secondsOfInActivity--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.source);
    chewieController = ChewieController(aspectRatio: _controller.value.aspectRatio,
        videoPlayerController: _controller,
        autoPlay: true,
        looping: true,
        // customControls: GestureDetector(
        //   onTap: () {
        //     if (_controller.value.isPlaying) {
        //       _controller.pause();
        //       isPaused = true;
        //     } else {
        //       _controller.play();
        //       isPaused = false;
        //     }
        //     setState(() {});
        //   },
        //   child: Center(
        //     child: AnimatedSwitcher(
        //       duration: const Duration(milliseconds: 50),
        //       reverseDuration: const Duration(milliseconds: 200),
        //       child: _controller.value.isPlaying
        //           ? const SizedBox.shrink()
        //           : Container(
        //               color: Colors.black26,
        //               child: _controller.value.isPlaying
        //                   ? Center(
        //                       child: Icon(
        //                         Icons.pause,
        //                         color: Colors.white,
        //                         size: 50.0,
        //                         semanticLabel: 'Play',
        //                       ),
        //                     )
        //                   : const Center(
        //                       child: Icon(
        //                         Icons.play_arrow,
        //                         color: Colors.white,
        //                         size: 50.0,
        //                         semanticLabel: 'Play',
        //                       ),
        //                     ),
        //             ),
        //     ),
        //   ),
        // ),
    );
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network, widget.source);

    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(),
        betterPlayerDataSource: betterPlayerDataSource);
    _controller.addListener(() {
      setState(() {});
    });
    refreshTimer();
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    chewieController.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    timer.cancel();
    super.dispose();
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours) == '00' ? '' : twoDigits(duration.inHours) + ':'}$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!_controller.value.isPlaying) {
            fixedAppBar = !fixedAppBar;
            secondsOfInActivity = 3;
          } else {
            fixedAppBar = false;
            secondsOfInActivity = 3;
          }
        });
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          appBar: fixedAppBar
              ? AppBar(
                  // backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(color: Colors.white),
                  actions: [
                    IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ForwardMessagePage(
                        //       messages: {0: widget.messageModel},
                        //     ),
                        //   ),
                        // );
                      },
                      icon: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: const Icon(LineIcons.reply),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        double left = MediaQuery.of(context).size.width;
                        double top = 0;
                        await showMenu(
                          color: Colors.white,
                          //add your color
                          context: context,
                          position: RelativeRect.fromLTRB(left, top, 0, 0),
                          items: [
                            PopupMenuItem(
                              value: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, right: 40),
                                child: Row(
                                  children: const [
                                    Icon(Icons.download_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Save to gallery",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, right: 40),
                                child: Row(
                                  children: const [
                                    Icon(Icons.share_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Share",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem(
                              value: 3,
                              child: Row(
                                children: const [
                                  Icon(CupertinoIcons.delete),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          elevation: 8.0,
                        ).then((value) {});

                        // showModalBottomSheet(
                        //   shape: const RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(5),
                        //       topRight: Radius.circular(5),
                        //     ),
                        //   ),
                        //   context: context,
                        //   builder: (builder) => Container(
                        //     height: 200,
                        //     width: MediaQuery.of(context).size.width,
                        //     padding: const EdgeInsets.symmetric(
                        //         vertical: 5, horizontal: 10),
                        //     child: Column(
                        //       children: <Widget>[
                        //         const SizedBoxH20(),
                        //         ListTile(
                        //           leading: const Icon(
                        //             CupertinoIcons.arrowshape_turn_up_right,
                        //             size: 35,
                        //           ),
                        //           title: const TextTranslate("Forward"),
                        //           onTap: () async {
                        //             Navigator.push(
                        //               context,
                        //               MaterialPageRoute(
                        //                 builder: (context) => ForwardMessagePage(
                        //                   messages: {0: messageModel},
                        //                 ),
                        //               ),
                        //             );
                        //           },
                        //         ),
                        //         ListTile(
                        //           leading: const Icon(
                        //             Icons.share,
                        //             size: 35,
                        //           ),
                        //           title: const TextTranslate("Share"),
                        //           onTap: () async {
                        //             Share.shareFiles(
                        //                 [(messageModel.messageModel!.fileLocation)],
                        //                 text: messageModel.messageModel!.text);
                        //           },
                        //         ),
                        //         ListTile(
                        //           leading: const Icon(
                        //             CupertinoIcons.delete,
                        //             size: 35,
                        //           ),
                        //           title: const TextTranslate("Delete"),
                        //           onTap: () {
                        //             showDialog(
                        //               context: context,
                        //               builder: (context) => AlertDialog(
                        //                 shape: RoundedRectangleBorder(
                        //                     borderRadius: BorderRadius.circular(5)),
                        //                 title: const TextTranslate(
                        //                     "Delete selected image ?",
                        //                     style: TextStyle(
                        //                         fontSize: 16,
                        //                         fontWeight: FontWeight.w600)),
                        //                 content: const TextTranslate(
                        //                     "This will permanently delete selected image",
                        //                     style: TextStyle(
                        //                         fontSize: 14,
                        //                         fontWeight: FontWeight.normal)),
                        //                 actions: [
                        //                   FlatButton(
                        //                     onPressed: () {
                        //                       context
                        //                           .read<ChatsBloc>()
                        //                           .add(ChatsEvent.deleteMessage(
                        //                               messages: {
                        //                                 messageModel.index!:
                        //                                     MessageSelectModel(
                        //                                         documentId:
                        //                                             messageModel
                        //                                                 .documentId,
                        //                                         index: messageModel
                        //                                             .index,
                        //                                         messageModel:
                        //                                             messageModel
                        //                                                 .messageModel)
                        //                               },
                        //                               myUser:
                        //                                   Getters.getCurrentUserUid(),
                        //                               peerUser: peerUser.uid));
                        //                       Navigator.pop(context);
                        //                       Navigator.pop(context);
                        //                       Navigator.pop(context);
                        //                     },
                        //                     textColor: Kolors.primary,
                        //                     child: const TextTranslate("Delete"),
                        //                   ),
                        //                   FlatButton(
                        //                       onPressed: () => Navigator.pop(context),
                        //                       textColor: Kolors.primary,
                        //                       child: Text(                         "${context.read<SettingsBloc>().state.languageData.cancel}")),
                        //                 ],
                        //               ),
                        //             );
                        //           },
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // );
                      },
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                )
              : !hideAppBar
                  ? AppBar(
                      // backgroundColor: Colors.white,
                      iconTheme: const IconThemeData(color: Colors.white),
                      actions: [
                        IconButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ForwardMessagePage(
                            //       messages: {0: widget.messageModel},
                            //     ),
                            //   ),
                            // );
                          },
                          icon: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(pi),
                            child: const Icon(LineIcons.reply),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            double left = MediaQuery.of(context).size.width;
                            double top = 0;
                            await showMenu(
                              color: Colors.white,
                              //add your color
                              context: context,
                              position: RelativeRect.fromLTRB(left, top, 0, 0),
                              items: [
                                PopupMenuItem(
                                  value: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 40),
                                    child: Row(
                                      children: const [
                                        Icon(Icons.download_outlined),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Save to gallery",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 40),
                                    child: Row(
                                      children: const [
                                        Icon(Icons.share_outlined),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Share",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 3,
                                  child: Row(
                                    children: const [
                                      Icon(CupertinoIcons.delete),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              elevation: 8.0,
                            ).then((value) {});
                          },
                          icon: const Icon(Icons.more_vert),
                        ),
                      ],
                    )
                  : null,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Center(
                child: Chewie(
                  controller: chewieController,
                ),
              ),
              // _ControlsOverlay(controller: _controller),
              // Stack(
              //   children: <Widget>[
              //     AnimatedSwitcher(
              //       duration: const Duration(milliseconds: 50),
              //       reverseDuration: const Duration(milliseconds: 200),
              //       child: _controller.value.isPlaying
              //           ? const SizedBox.shrink()
              //           : Container(
              //               color: Colors.black26,
              //               child: const Center(
              //                 child: Icon(
              //                   Icons.play_arrow,
              //                   color: Colors.white,
              //                   size: 100.0,
              //                   semanticLabel: 'Play',
              //                 ),
              //               ),
              //             ),
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         _controller.value.isPlaying
              //             ? hideAppBar = false
              //             : _controller.play();
              //       },
              //     ),
              //   ],
              // ),
              // if(!hideAppBar)

              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //   child: Row(
              //     children: [
              //       // String sDuration = "${_controller.value.position.inHours}:${_controller.value.position.inMinutes.remainder(60)}:${(_controller.value.position.inSeconds.remainder(60))}";
              //       Text(
              //         _printDuration(_controller.value.position),
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       Expanded(
              //           child: VideoProgressIndicator(
              //         _controller,
              //         padding: EdgeInsets.symmetric(horizontal: 20),
              //         allowScrubbing: true,
              //         colors: VideoProgressColors(playedColor: Colors.white),
              //       )),
              //       Text(
              //         _printDuration(_controller.value.duration),
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}
