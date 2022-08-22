import 'dart:io';
import 'dart:math' as math;
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../application/settings/settings_bloc.dart';
import '../../../../../application/uploadfile/upload_file_event_group.dart';
import '../../../../core/theme/colors.dart';

typedef Fn = void Function();

class AudioMessageWidget extends StatefulWidget {
  AudioMessageWidget(
      {Key? key,
      required this.message,
      required this.myUser,
      this.peerUser,
      required this.docRef,
      required this.borderRad,
      required this.chatID,
      required this.isLastMessage,
      this.groupId,
      this.accessedFromShareMedia = false})
      : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final bool isLastMessage;
  final String? groupId;
  bool? accessedFromShareMedia;

  @override
  State<AudioMessageWidget> createState() => _AudioMessageWidgetState();
}

class _AudioMessageWidgetState extends State<AudioMessageWidget> {
  double byteTransferred = 0.0;
  double progress = 0.0;
  double totalByte = 0.0;
  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  bool isplaying = false;
  bool audioplayed = false;
  AudioPlayer? audioPlayer;
  Duration? duration;
  List<double> barHeights = [];
  Duration? position = const Duration(seconds: 0);

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FlutterSoundPlayer? _mPlayer = FlutterSoundPlayer();

  final UploadFileBloc uploadFileBloc = UploadFileBloc();
  final DownloadFileBloc bloc = DownloadFileBloc();
  bool _mPlayerIsInited = false;
  final Reference _storageReference = FirebaseStorage.instance.ref();
  final CancelToken cancelToken = CancelToken();
  UploadTask? uploadTask;
  bool showProgress = false;

  void setBarHeights() {
    Random rnd;
    int min = 5;
    int max = 25;
    rnd = new Random();
    for (int i = 0; i < 30; i++) {
      barHeights.add(min + rnd.nextInt(max - min).toDouble());
    }
  }

  @override
  void dispose() {
    // stopPlayer();
    // Be careful : you must `close` the audio session when you have finished with it.
    //_mPlayer!.closeAudioSession();
    _mPlayer = null;

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    duration = Duration.zero;
    initPlayer();
    setBarHeights();
    // _mPlayer!.openAudioSession().then((value) {
    //   setState(() {
    //     _mPlayerIsInited = true;
    //   });
    // });
  }

  Future initPlayer() async {
    audioPlayer = new AudioPlayer();
    // play();
    // setState(() {
    //   isplaying = true;
    // });
    try {
      await audioPlayer!.setUrl(widget.message.messageModel!.fileLocation);
    } catch (e) {
      await audioPlayer!.setUrl(widget.message.messageModel!.fileUrl);
    }
    audioPlayer!.onAudioPositionChanged.listen((Duration p) {
      print('Current_position: $p');
      print('pos:${p} dur:${duration}');
      setState(() {
        position = p;

        if (p.inMilliseconds >= duration!.inMilliseconds - 100) {
          isplaying = false;
          position = Duration(seconds: 0);
        }
      });
    });
    audioPlayer!.onDurationChanged.listen((Duration d) {
      print('Max duration: $d');
      setState(() => duration = d);
    });
  }

  Future<dynamic> uploadFile() async {
    setState(() {
      showProgress = true;
      progress = 0.01;
    });
    //log('uplod for chat');
    final String fileName =
        widget.message.messageModel!.fileLocation.split('/').last;
    final String firebaseStoreageLocation =
        "${Getters.getCurrentUserUid()}/${DateTime.now()}";
    final Reference fileStorageRef =
        _storageReference.fileStorageCollection.child(
      "$firebaseStoreageLocation/$fileName",
    );
    final File file = File(widget.message.messageModel!.fileLocation);
    uploadTask = fileStorageRef.putFile(file);

    if (widget.message.messageModel!.sendFrom == SendFrom.chat) {
      uploadFileBloc.filehandlingEventSink.add(
        UploadFileToFireStorage(
            message: widget.message,
            peerUser: widget.peerUser!,
            myUser: widget.myUser,
            docRef: widget.docRef,
            uploadTask: uploadTask,
            cancelTask: false),
      );
    } else {
      if (widget.message.messageModel!.firebaseFileLocation.trim().isEmpty) {
        uploadFileBloc.filehandlingEventSink.add(
          UploadFileToFireStorageGroup(
              message: widget.message,
              groupUid: widget.message.messageModel!.receiverUid,
              myUser: widget.myUser,
              docRef: widget.docRef,
              uploadTask: uploadTask,
              cancelTask: false),
        );
      }
    }
  }

  Future<void> downloadFile() async {
    String filePath;
    if (context.read<FilehandlingBloc>().state.enableSaveFileToGalleryStatus ==
        EnableSaveFileToGallery.enabled) {
      filePath = LocalStorageConstant.appFolder +
          "${widget.peerUser?.name}" +
          LocalStorageConstant.audio;
    } else {
      final Directory? dir = await getExternalStorageDirectory();
      filePath =
          dir!.path + '/${widget.peerUser?.name}' + LocalStorageConstant.audio;
    }
    await _firestore.chatCollection
        .doc(widget.myUser.uid)
        .chatUsersCollection
        .doc(widget.peerUser?.uid)
        .messagesCollection
        .doc(widget.docRef)
        .update(
      {
        'fileLocation': filePath + widget.message.messageModel!.fileName,
      },
    );
    if (!File(widget.message.messageModel!.fileLocation).existsSync()) {
      bloc.filehandlingEventSink.add(
        DownloadFile(
          path: filePath,
          fileUrl: widget.message.messageModel!.fileUrl,
          filename: widget.message.messageModel!.fileName,
          context: context,
        ),
      );
    }
  }

  // -------  Here is the code to playback a remote file -----------------------

  // Future<void> play() async {
  //   await _mPlayer!.startPlayer(
  //     fromURI: widget.message.messageModel!.firebaseFileLocation,
  //     codec: Codec.aacMP4,
  //     whenFinished: () {
  //       setState(() {});
  //     },
  //   );
  //   setState(() {});
  // }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    audioPlayer!.seek(newDuration);
  }

  play() async {
    int result =
        await audioPlayer!.play(widget.message.messageModel!.fileLocation);
    // if (result == 1) {
    //   // success
    // }
  }

  // Future<void> stopPlayer() async {
  //   if (_mPlayer != null) {
  //     await _mPlayer!.stopPlayer();
  //   }
  // }

  // Fn? getPlaybackFn() {
  //   if (!_mPlayerIsInited) {
  //     return null;
  //   }
  //   return _mPlayer!.isStopped
  //       ? play
  //       : () {
  //           stopPlayer().then((value) => setState(() {}));
  //         };
  // }

  Widget getMessagwWidget(MessageType type) {
    switch (type) {
      default:
        {
          return Container();
        }
    }
  }

  Widget durationWidget(int audioDuration) {
    String hours = '';
    String minutes = '';
    String seconds = '';
    hours = audioDuration >= 3600
        ? ((audioDuration / (60 * 60)) % 60)
                .floor()
                .toString()
                .padLeft(2, '0') +
            ':'
        : '';
    minutes = ((audioDuration / 60) % 60).floor().toString().padLeft(2, '0');
    seconds = (audioDuration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '${hours}${minutes}:${seconds}',
      style: TextStyle(fontSize: 10),
    );
  }

  String durationText(int audioDuration) {
    String hours = '';
    String minutes = '';
    String seconds = '';
    hours = audioDuration >= 3600
        ? ((audioDuration / (60 * 60)) % 60)
                .floor()
                .toString()
                .padLeft(2, '0') +
            ':'
        : '';
    minutes = ((audioDuration / 60) % 60).floor().toString().padLeft(2, '0');
    seconds = (audioDuration % 60).floor().toString().padLeft(2, '0');
    return '${hours}${minutes}:${seconds}';
  }

  Future sliderData() async {
    return await widget.message.messageModel!.fileLocation;
  }

  @override
  Widget build(BuildContext context) {
    final bool isSentByMe =
        Getters.getCurrentUserUid() == widget.message.messageModel!.sender.uid;
    if (context.read<ChatsBloc>().state.fileName ==
        widget.message.messageModel!.fileName) {
      if (context.read<ChatsBloc>().state.isUploading) {
        uploadFile();
        context.read<ChatsBloc>().add(
              const ChatsEvent.setUploadFileFalse(
                isUploading: false,
                fileName: '',
              ),
            );
      }
    }
    return widget.accessedFromShareMedia ?? false
        ? Container(
            color: Kolors.wallLightBlue,
            child: InkWell(
              onTap: () async {
                if (File(widget.message.messageModel!.fileLocation)
                    .existsSync()) {
                  OpenFile.open(widget.message.messageModel!.fileLocation);
                  // getPlaybackFn();
                } else {
                  downloadFile();
                }
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.music,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: durationWidget(duration!.inSeconds),
                  ),
                ],
              ),
            ),
          )
        : Row(
            mainAxisAlignment:
                isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (widget.message.messageModel?.sendFrom == SendFrom.group &&
                  !isSentByMe)
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    widget.message.messageModel?.sender.profilePictureUrl ?? "",
                    height: 30,
                    width: 30,
                  ),
                ),
              const SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.message.messageModel?.sendFrom == SendFrom.group &&
                      !isSentByMe)
                    Text(
                      widget.message.messageModel?.sender.name ?? "-",
                      style: const TextStyle(fontSize: 12.0),
                    ),
                  Card(
                    elevation: 0,
                    shape:
                        RoundedRectangleBorder(borderRadius: widget.borderRad),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: isSentByMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // if (widget.isLastMessage)
                          ...[
                          if (!isSentByMe)
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationX(math.pi),
                              child: CustomPaint(
                                painter: CustomShape(isSentByMe
                                    ?context.read<SettingsBloc>().state.appThemeMode ==
                                    ThemeMode.dark
                                    ? Colors.blue.shade700: Colors.blue.shade100
                                    : context.read<SettingsBloc>().state.appThemeMode ==
                                    ThemeMode.dark
                                    ? Colors.grey.shade700:Colors.grey.shade200),
                              ),
                            )
                          else
                            const SizedBox(),
                        ],
                        Container(
                          // width: MediaQuery.of(context).size.width -100,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 7.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: widget.borderRad,
                            color: isSentByMe
                                ? context
                                            .read<SettingsBloc>()
                                            .state
                                            .appThemeMode ==
                                        ThemeMode.dark
                                    ? Colors.blue.shade700
                                    : Colors.blue.shade100
                                : context
                                            .read<SettingsBloc>()
                                            .state
                                            .appThemeMode ==
                                        ThemeMode.dark
                                    ? Colors.grey.shade700
                                    : Colors.grey.shade200,
                          ),
                          child: GestureDetector(
                            child: StreamBuilder(
                                stream: isSentByMe
                                    ? uploadFileBloc.counter
                                    : bloc.counter,
                                initialData: 0.0,
                                builder: (BuildContext context,
                                    AsyncSnapshot<double> snapshot) {
                                  print(snapshot.data);
                                  if (isSentByMe) {
                                    if (snapshot.data != null) {
                                      progress = snapshot.data! as double;
                                    }
                                  } else {
                                    if (snapshot.data != null) {
                                      progress = snapshot.data! as double;
                                    }
                                  }

                                  return Container(
                                    width: 225,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            right: 10,
                                            top: 11.5,
                                            child: Center(
                                              child: SizedBox(
                                                width: 150,
                                                child: Row(
                                                    children: barHeights
                                                        .map((height) =>
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          1.0),
                                                              child: Container(
                                                                color: context.read<SettingsBloc>().state.appThemeMode ==
                                                                    ThemeMode.dark
                                                                    ? Colors.white54:Colors
                                                                    .black54,
                                                                height: height,
                                                                width: 3.0,
                                                              ),
                                                            ))
                                                        .toList()),
                                              ),
                                            )),
                                        Positioned(
                                          right: 7,
                                          top: 11.5,

                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              // SizedBox(height:30),
                                              // Container(
                                              // right: 5,
                                              // bottom: 12,
                                              FutureBuilder(
                                                builder: (context, snapshot) {
                                                  return snapshot.hasData
                                                      ? SliderTheme(
                                                          data: SliderTheme.of(
                                                                  context)
                                                              .copyWith(
                                                            activeTrackColor:
                                                                Colors.grey
                                                                    .shade800,
                                                            inactiveTrackColor:
                                                                Colors.grey
                                                                    .shade400,
                                                            trackHeight: 0.0,
                                                            thumbColor: context
                                                                .read<SettingsBloc>()
                                                                .state
                                                                .appThemeMode ==
                                                                ThemeMode.dark
                                                                ? Colors.white70
                                                                : Colors
                                                                .grey.shade800,
                                                            thumbShape:
                                                                RoundSliderThumbShape(
                                                                    enabledThumbRadius:
                                                                        7.0),
                                                            overlayColor: Colors
                                                                .purple
                                                                .withAlpha(32),
                                                            overlayShape:
                                                                RoundSliderOverlayShape(
                                                                    overlayRadius:
                                                                        14.0),
                                                          ),
                                                          child: Slider(
                                                              min: 0,
                                                              max: duration!
                                                                  .inSeconds
                                                                  .toDouble(),
                                                              divisions:
                                                                  maxduration,
                                                              label:
                                                                  currentpostlabel,
                                                              value: position!
                                                                  .inSeconds
                                                                  .toDouble(),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  seekToSecond(value
                                                                      .toInt());
                                                                  value = value;
                                                                  currentpostlabel =
                                                                      durationText(
                                                                          value
                                                                              .toInt());
                                                                });
                                                              }),
                                                        )
                                                      : SliderTheme(
                                                          data: SliderTheme.of(
                                                                  context)
                                                              .copyWith(
                                                            activeTrackColor:
                                                                Colors.grey
                                                                    .shade800,
                                                            inactiveTrackColor:
                                                                Colors.grey
                                                                    .shade400,
                                                            trackHeight: 0.0,
                                                            thumbColor: context
                                                                .read<SettingsBloc>()
                                                                .state
                                                                .appThemeMode ==
                                                                ThemeMode.dark
                                                                ? Colors.white70
                                                                :  Colors
                                                                .grey.shade800,
                                                            thumbShape:
                                                                RoundSliderThumbShape(
                                                                    enabledThumbRadius:
                                                                        7.0),
                                                            overlayColor: Colors
                                                                .purple
                                                                .withAlpha(32),
                                                            overlayShape:
                                                                RoundSliderOverlayShape(
                                                                    overlayRadius:
                                                                        14.0),
                                                          ),
                                                          child: Slider(
                                                              min: 0,
                                                              max: 60,
                                                              divisions:
                                                                  maxduration,
                                                              label:
                                                                  currentpostlabel,
                                                              value: 0,
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {});
                                                              }),
                                                        );
                                                },
                                                future: sliderData(),
                                              ),
                                              // ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Row(
                                                  children: [
                                                    FutureBuilder(
                                                      builder:
                                                          (context, snapshot) {
                                                        return snapshot.hasData
                                                            ? Container(
                                                                // right: 150,
                                                                // bottom: 0,
                                                                child: durationWidget(
                                                                    duration!
                                                                        .inSeconds))
                                                            : Container(
                                                                child: Text(
                                                                  '00:00',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              );
                                                      },
                                                      future: sliderData(),
                                                    ),
                                                    SizedBox(
                                                      width: 80,
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            height: 2,
                                                            ),
                                                        TimeWidget(
                                                            time: widget
                                                                .message
                                                                .messageModel!
                                                                .timeOfSending
                                                                .toDate(),
                                                            isSentByMe:
                                                                isSentByMe,
                                                            isSeen: widget
                                                                .message
                                                                .messageModel!
                                                                .isSeen,
                                                            color: Colors.black),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            // Stack(
                                            //   children: [
                                            //     CustomCircleAvatar(
                                            //       name: '',
                                            //       profilePictureUrl: widget.peerUser.profilePictureUrl,
                                            //       color: widget.peerUser.userColor,
                                            //       radius: 25,
                                            //     ),
                                            //     Positioned(
                                            //       left: 34,
                                            //       bottom: 0,
                                            //       child: Icon(Icons.mic, color: Colors.grey.shade800, size: 22,),
                                            //     ),
                                            //   ],
                                            // ),
                                            // const SizedBoxW10(),
                                            Column(
                                              children: [
                                                Container(
                                                  // width: MediaQuery.of(context).size.width - 180,
                                                  child: Row(
                                                    children: [
                                                      // Icon(Icons.play_arrow, size: 35,),
                                                      if (progress > 0.00 &&
                                                          progress < 0.99999)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 10),
                                                          child:
                                                              CircularPercentIndicator(
                                                            lineWidth: 4,
                                                            radius: 20.0,
                                                            //backgroundColor: Colors.blueAccent,
                                                            //fillColor: Colors.blueAccent,
                                                            percent:
                                                                progress / 100,
                                                            //center: Text(progress.toStringAsFixed(1) + '%'),
                                                            center: IconButton(
                                                              icon: const Icon(
                                                                  Icons.close),
                                                              onPressed: () {},
                                                            ),
                                                            progressColor:
                                                                Colors
                                                                    .blueAccent,
                                                          ),
                                                        )
                                                      else ...[
                                                        if (File(widget
                                                                .message
                                                                .messageModel!
                                                                .fileLocation)
                                                            .existsSync())
                                                          if (widget
                                                                  .message
                                                                  .messageModel!
                                                                  .firebaseFileLocation ==
                                                              '')
                                                            IconButton(
                                                              icon: const Icon(
                                                                  Icons.upload_outlined),
                                                              onPressed:
                                                                  () async =>
                                                                      uploadFile(),
                                                            )
                                                          else
                                                            widget
                                                                        .message
                                                                        .messageModel!
                                                                        .type ==
                                                                    MessageType
                                                                        .audio
                                                                ? IconButton(
                                                                    onPressed:
                                                                        () {
                                                                      // play();
                                                                      !isplaying
                                                                          ? play()
                                                                          : audioPlayer!
                                                                              .pause();
                                                                      setState(
                                                                          () {
                                                                        isplaying =
                                                                            !isplaying;
                                                                      });
                                                                      // OpenFile.open(widget
                                                                      //     .message.messageModel!.fileLocation);
                                                                    },
                                                                    icon: isplaying
                                                                        ? Icon(
                                                                            Icons.pause,
                                                                            size:
                                                                                35,
                                                                          )
                                                                        : Icon(Icons.play_arrow, size: 35),
                                                                  )
                                                                : const SizedBox
                                                                    .shrink()
                                                        else
                                                          IconButton(
                                                            onPressed:
                                                                () async {
                                                              if (File(widget
                                                                      .message
                                                                      .messageModel!
                                                                      .fileLocation)
                                                                  .existsSync()) {
                                                                OpenFile.open(widget
                                                                    .message
                                                                    .messageModel!
                                                                    .fileLocation);
                                                                // getPlaybackFn();
                                                              } else {
                                                                downloadFile();
                                                              }
                                                            },
                                                            icon: Icon(File(widget
                                                                        .message
                                                                        .messageModel!
                                                                        .fileLocation)
                                                                    .existsSync()
                                                                ? Icons
                                                                    .play_circle
                                                                : Icons
                                                                    .download_outlined),
                                                          )
                                                      ],

                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '',
                                                            textWidthBasis:
                                                                TextWidthBasis
                                                                    .parent,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  SizedBoxH20(),
                                                                  // Text(
                                                                  //   '${(widget.message.messageModel!.fileSize / (1024 * 1024)).toStringAsFixed(2)} MB',
                                                                  //   style: const TextStyle(fontSize: 10),
                                                                  // ),
                                                                ],
                                                              )
                                                              // Text(
                                                              //   '${(widget.message.messageModel!.fileSize / (1024 * 1024)).toStringAsFixed(2)} MB',
                                                              //   style: const TextStyle(fontSize: 10),
                                                              // ),
                                                              // TimeWidget(
                                                              //     time: widget
                                                              //         .message.messageModel!.timeOfSending
                                                              //         .toDate(),
                                                              //     isSentByMe: isSentByMe,
                                                              //     isSeen: widget.message.messageModel!.isSeen,
                                                              //     color: Colors.black),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                        if (widget.isLastMessage) ...[
                          if (isSentByMe)
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationX(math.pi),
                              child: CustomPaint(
                                painter: CustomShape(isSentByMe
                                    ? Colors.blue.shade100
                                    : Colors.grey.shade200),
                              ),
                            )
                          else
                            const SizedBox(),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
