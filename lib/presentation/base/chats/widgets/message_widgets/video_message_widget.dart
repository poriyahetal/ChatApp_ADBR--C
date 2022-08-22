import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event_group.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/pages/video_view_page.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class VideoMessageWidget extends StatefulWidget {
  const VideoMessageWidget({
    Key? key,
    required this.message,
    required this.myUser,
    required this.peerUser,
    required this.docRef,
    required this.borderRad,
    required this.chatID,
    required this.groupId,
    required this.isLastMessage,
  }) : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;
  final bool isLastMessage;

  @override
  State<VideoMessageWidget> createState() => _VideoMessageWidgetState();
}

class _VideoMessageWidgetState extends State<VideoMessageWidget> {
  final DownloadFileBloc bloc = DownloadFileBloc();
  double progress = 0.0;
  final UploadFileBloc uploadFileBloc = UploadFileBloc();
  final Reference _storageReference = FirebaseStorage.instance.ref();
  final CancelToken cancelToken = CancelToken();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UploadTask? uploadTask;
  bool showProgress = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getDirect();
    if (widget.message.messageModel!.fileUrl == '') {
      uploadFile();
    }
    // TODO: implement initState
  }

  Future<dynamic> uploadFile() async {
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
      setState(() {
        showProgress = true;
        progress = 0.01;
      });
      //log('uplod for chat');

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
      setState(() {
        showProgress = true;
        progress = 0.01;
      });
      if (widget.message.messageModel!.sender.uid ==
          Getters.getCurrentUserUid()) {
        if (widget.message.messageModel!.firebaseFileLocation.trim().isEmpty) {
          uploadFileBloc.filehandlingEventSink.add(
            UploadFileToFireStorageGroup(
                message: widget.message,
                groupUid: widget.message.messageModel!.receiverUid,
                myUser: widget.myUser,
                docRef: widget.message.documentId.toString(),
                uploadTask: uploadTask,
                cancelTask: false),
          );
        }
      } else {
        if (!widget.message.messageModel!.isSeen) {
          context.read<GroupsBloc>().add(
                GroupsEvent.setReadUnread(
                  groupUid: widget.groupId,
                  myUser: widget.myUser,
                  messageID: widget.message.documentId.toString(),
                ),
              );
        }
      }
    }
  }

  String defaultPathGroup = "";
  Future<void> getDirect() async {
    if (widget.message.messageModel!.sendFrom == SendFrom.chat) {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup = LocalStorageConstant.appFolder +
            widget.peerUser!.name +
            LocalStorageConstant.videos;
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/${widget.peerUser!.name}${LocalStorageConstant.videos}';
      }
    } else {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup =
            '${LocalStorageConstant.appFolder}groups/${widget.groupId}/${LocalStorageConstant.videos}';
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/groups/${widget.groupId}${LocalStorageConstant.videos}';
      }
      print(defaultPathGroup);
    }
  }

  Future<void> downloadFile() async {
    setState(() {
      //showProgress = true;
      //totalByte = widget.message.messageModel!.fileSize.toDouble();
    });
    String filePath = "";
    if (widget.message.messageModel!.sendFrom == SendFrom.chat) {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        filePath = LocalStorageConstant.appFolder +
            widget.peerUser!.name +
            LocalStorageConstant.images;
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        filePath =
            '${dir!.path}/${widget.peerUser!.name}${LocalStorageConstant.images}';
      }
    } else {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        filePath =
            '${LocalStorageConstant.appFolder}groups/${widget.groupId}${LocalStorageConstant.images}';
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        filePath =
            '${dir!.path}/groups/${widget.groupId}${LocalStorageConstant.images}';
      }
    }

    bloc.filehandlingEventSink.add(
      DownloadFile(
        path: filePath,
        fileUrl: widget.message.messageModel!.fileUrl,
        filename: widget.message.messageModel!.fileName,
        context: context,
      ),
    );
    if (widget.message.messageModel!.sendFrom == SendFrom.chat) {
      await _firestore.chatCollection
          .doc(widget.myUser.uid)
          .chatUsersCollection
          .doc(widget.peerUser!.uid)
          .messagesCollection
          .doc(widget.message.documentId)
          .update(
        {
          'fileLocation': filePath + widget.message.messageModel!.fileName,
        },
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("in video");
    bool isPortrait = true;
    final bool isSentByMe =
        Getters.getCurrentUserUid() == widget.message.messageModel!.sender.uid;
    final bool isSeen = widget.message.messageModel!.isSeen;
    final bool isDelivered = widget.message.messageModel!.isDelivered;

    VideoPlayerController videoPlayerController =
        VideoPlayerController.network('');

    if (videoPlayerController.value.size.height <
        videoPlayerController.value.size.width) {
      isPortrait = false;
    }

    final DateTime myDateTime =
        widget.message.messageModel!.timeOfSending.toDate();
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
    return BlocConsumer<SQLiteBloc, SQLiteState>(
      listener: (context, state) {
        state.getFileLocationFailureOrSuccessOption.fold(
          () => null,
          (some) => some.fold(
            (l) {
              Fluttertoast.showToast(
                msg: 'File not found',
                backgroundColor: Kolors.grey,
              );
            },
            (filepath) {
              OpenFile.open(filepath);
            },
          ),
        );
      },
      builder: (context, state) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, uState) {
            return BlocBuilder<MessageSelectBloc, MessageSelectState>(
              builder: (context, mState) {
                return BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: isSentByMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        if (widget.message.messageModel?.sendFrom ==
                                SendFrom.group &&
                            !isSentByMe)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              widget.message.messageModel?.sender
                                      .profilePictureUrl ??
                                  "",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: isSentByMe
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            if (widget.message.messageModel?.sendFrom ==
                                    SendFrom.group &&
                                !isSentByMe)
                              Text(
                                widget.message.messageModel?.sender.name ?? "-",
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            SizedBox(
                              width: 295,
                              child: GestureDetector(
                                onTap: !mState.isAppSelectionbarEnable
                                    ? () async {
                                        // if (isSentByMe) {
                                        //   context.read<SQLiteBloc>().add(
                                        //         SQLiteEvent.getFilePath(
                                        //           filePath: FileLocation(
                                        //             id: 0, //random value
                                        //             filename: widget.message
                                        //                 .messageModel!.fileName,
                                        //             filepath: '',
                                        //             senderUid:
                                        //                 uState.signedInUser.uid,
                                        //             receiverUid:
                                        //                 widget.peerUser?.uid ??
                                        //                     "",
                                        //           ),
                                        //         ),
                                        //       );
                                        // } else {
                                        if (File(widget.message.messageModel!
                                                .fileLocation)
                                            .existsSync()) {
                                          final _f = File(widget.message
                                              .messageModel!.fileLocation);
                                          if (await _f.exists()) {
                                            OpenFile.open(widget.message
                                                .messageModel!.fileLocation);
                                          } else {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    VideoPlayerScreen(
                                                  videoUrl: widget.message
                                                      .messageModel!.fileUrl,
                                                  peerUser: widget.peerUser!,
                                                  messageModel: widget.message,
                                                ),
                                              ),
                                            );
                                          }
                                        }
                                        // }
                                      }
                                    : null,
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: widget.borderRad),
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      if (widget.isLastMessage) ...[
                                        if (!isSentByMe)
                                          Transform(
                                            alignment: Alignment.center,
                                            transform:
                                                Matrix4.rotationX(math.pi),
                                            child: CustomPaint(
                                              painter: CustomShape(isSentByMe
                                                  ? Colors.blue.shade100
                                                  : Colors.grey.shade200),
                                            ),
                                          )
                                        else
                                          const SizedBox()
                                      ],
                                      Container(
                                        margin: EdgeInsets.zero,
                                        decoration: BoxDecoration(
                                          borderRadius: widget.borderRad,
                                          border: Border.all(
                                              color: widget
                                                          .message
                                                          .messageModel!
                                                          .deletedForEveryone !=
                                                      true
                                                  ? Colors.transparent
                                                  : Colors.black),
                                          image: widget.message.messageModel
                                                      ?.imageBase64Thumbnail !=
                                                  null
                                              ? DecorationImage(
                                                  image: MemoryImage(
                                                    base64.decode(
                                                      widget
                                                              .message
                                                              .messageModel
                                                              ?.imageBase64Thumbnail ??
                                                          "",
                                                    ),
                                                  ),
                                                  fit: BoxFit.fitHeight,
                                                )
                                              : null,
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 8.0),
                                          margin: EdgeInsets.zero,
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              end: Alignment.bottomCenter,
                                              begin: Alignment.topCenter,
                                              colors: [
                                                Colors.transparent,
                                                Colors.transparent,
                                                Colors.transparent,
                                                Colors.transparent,
                                                Colors.black38,
                                                Colors.black,
                                              ],
                                            ),
                                            borderRadius: widget.borderRad,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              if (widget.message.messageModel!
                                                      .deletedForEveryone !=
                                                  true)
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment: isSentByMe
                                                      ? CrossAxisAlignment.end
                                                      : CrossAxisAlignment.end,
                                                  children: [
                                                    SizedBox(
                                                      height: 250,
                                                      width: 180,
                                                      child: Row(
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                "${((widget.message.messageModel?.fileSize ?? 0) / (1024 * 1024)).toStringAsFixed(1)} MB",
                                                                style: const TextStyle(
                                                                    color: Kolors
                                                                        .white,
                                                                    fontSize:
                                                                        12.0),
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment: isSentByMe
                                                          ? CrossAxisAlignment
                                                              .end
                                                          : CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ParsedText(
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: state
                                                                    .fontSize
                                                                    .toDouble() +
                                                                4.0,
                                                          ),
                                                          text: widget
                                                              .message
                                                              .messageModel!
                                                              .text,
                                                          parse: <MatchText>[
                                                            MatchText(
                                                              type: ParsedType
                                                                  .EMAIL,
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: state
                                                                        .fontSize
                                                                        .toDouble() +
                                                                    4.0,
                                                              ),
                                                              onTap: (url) {
                                                                launch(
                                                                    "mailto:$url");
                                                              },
                                                            ),
                                                            MatchText(
                                                              type: ParsedType
                                                                  .URL,
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: state
                                                                        .fontSize
                                                                        .toDouble() +
                                                                    4.0,
                                                              ),
                                                              onTap:
                                                                  (url) async {
                                                                final a =
                                                                    await canLaunch(
                                                                        url);

                                                                if (a) {
                                                                  launch(url);
                                                                }
                                                              },
                                                            ),
                                                            MatchText(
                                                              type: ParsedType
                                                                  .PHONE,
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: state
                                                                        .fontSize
                                                                        .toDouble() +
                                                                    4.0,
                                                              ),
                                                              onTap: (url) {
                                                                launch("tel:");
                                                              },
                                                            ),
                                                            MatchText(
                                                              pattern: mState
                                                                  .searchTextVal,
                                                              style: TextStyle(
                                                                backgroundColor:
                                                                    Colors
                                                                        .yellow,
                                                                color: Colors
                                                                    .black,
                                                                fontSize: state
                                                                        .fontSize
                                                                        .toDouble() +
                                                                    4.0,
                                                              ),
                                                              onTap:
                                                                  (url) async {},
                                                            ),
                                                          ],
                                                        ),
                                                        TimeWidget(
                                                          time: myDateTime,
                                                          isSentByMe:
                                                              isSentByMe,
                                                          isSeen: isSeen,
                                                          isDelivered:
                                                              isDelivered,
                                                          color: Colors.white,
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              else
                                                Row(
                                                  children: [
                                                    Text(
                                                      isSentByMe
                                                          ? "${context.read<SettingsBloc>().state.languageData.youDeletedThisMessage}."
                                                          : "${context.read<SettingsBloc>().state.languageData.thisMessageWasDeleted}.",
                                                      style: isSentByMe
                                                          ? TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontSize: state
                                                                  .fontSize
                                                                  .toDouble(),
                                                            )
                                                          : Theme.of(context)
                                                              .textTheme
                                                              .bodyText2,
                                                    ),
                                                    const SizedBoxW10(),
                                                    Column(
                                                      crossAxisAlignment: isSentByMe
                                                          ? CrossAxisAlignment
                                                              .end
                                                          : CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBoxH10(),
                                                        Text(
                                                          DateFormat(DateFormat
                                                                  .HOUR24_MINUTE)
                                                              .format(
                                                                  myDateTime),
                                                          //DateFormat.yMMMd().add_jm().format(myDateTime),
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ],
                                                    ),
                                                    if (isSentByMe)
                                                      if (isSeen)
                                                        const Icon(
                                                          MdiIcons.checkAll,
                                                          color: Colors.black,
                                                          size: 18,
                                                        )
                                                      else
                                                        const Icon(
                                                          MdiIcons.check,
                                                          color: Colors.black,
                                                          size: 18,
                                                        ),
                                                  ],
                                                ),

                                              StreamBuilder(
                                                  stream: isSentByMe
                                                      ? uploadFileBloc.counter
                                                      : bloc.counter,
                                                  initialData: 0.0,
                                                  builder:
                                                      (BuildContext context,
                                                          AsyncSnapshot<double>
                                                              snapshot) {
                                                    print(
                                                        "status-->${snapshot.data}");
                                                    if (isSentByMe) {
                                                      if (snapshot.data !=
                                                          null) {
                                                        progress = snapshot
                                                            .data! as double;
                                                      }
                                                    } else {
                                                      if (snapshot.data !=
                                                          null) {
                                                        progress = snapshot
                                                            .data! as double;
                                                      }
                                                    }
                                                    print(
                                                        "path is-->${widget.message.messageModel!.firebaseFileLocation}");

                                                    return Column(
                                                      children: [
                                                        if (progress > 0.00 &&
                                                            progress <
                                                                0.99999) ...[
                                                          SizedBox(
                                                              height: 40,
                                                              width: 40,
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  const Icon(Icons
                                                                      .close),
                                                                  CircularProgressIndicator(
                                                                    value: progress !=
                                                                            0.0
                                                                        ? progress
                                                                        : null,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ],
                                                              )),
                                                        ] else ...[
                                                          if (File(widget
                                                                  .message
                                                                  .messageModel!
                                                                  .fileLocation)
                                                              .existsSync())
                                                            if (widget
                                                                .message
                                                                .messageModel!
                                                                .firebaseFileLocation
                                                                .trim()
                                                                .isEmpty) ...[
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                child:
                                                                    IconButton(
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .upload_outlined),
                                                                  onPressed:
                                                                      () async =>
                                                                          uploadFile(),
                                                                ),
                                                              ),
                                                            ] else ...[
                                                              // IconButton(
                                                              //   onPressed:
                                                              //       () {
                                                              //     Navigator.push(
                                                              //         context,
                                                              //         MaterialPageRoute(
                                                              //             builder: (context) => VideoPlayerScreen(
                                                              //               videoUrl: widget.message.messageModel!.fileUrl,
                                                              //               peerUser: widget.peerUser!,
                                                              //               messageModel: widget.message,
                                                              //             )));
                                                              //   },
                                                              //   icon: const Icon(
                                                              //       CupertinoIcons
                                                              //           .play_circle,
                                                              //       size:
                                                              //       50,
                                                              //       color:
                                                              //       Kolors.white),
                                                              // ),
                                                              // Spacer(),
                                                            ]
                                                          else ...[
                                                            if (!File(
                                                                    '$defaultPathGroup/${widget.message.messageModel!.fileName}')
                                                                .existsSync()) ...[
                                                              IconButton(
                                                                onPressed:
                                                                    () async =>
                                                                        downloadFile(),
                                                                icon: const Icon(
                                                                    Icons
                                                                        .download_outlined),
                                                              ),
                                                            ] else ...[
                                                              IconButton(
                                                                onPressed:
                                                                    () async {
                                                                  OpenFile.open(
                                                                      '$defaultPathGroup/${widget.message.messageModel!.fileName}');
                                                                },
                                                                icon: const Icon(
                                                                    Icons
                                                                        .file_present_rounded),
                                                              ),
                                                            ]
                                                          ]
                                                        ],
                                                      ],
                                                    );
                                                  })
                                              // IconButton(
                                              //   onPressed: () {},
                                              //   icon: const Icon(
                                              //       CupertinoIcons
                                              //           .play_circle,
                                              //       size: 50,
                                              //       color: Colors
                                              //           .black87),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      if (widget.isLastMessage) ...[
                                        if (isSentByMe)
                                          Transform(
                                            alignment: Alignment.center,
                                            transform:
                                                Matrix4.rotationX(math.pi),
                                            child: CustomPaint(
                                              painter: CustomShape(isSentByMe
                                                  ? Colors.blue.shade100
                                                  : Colors.grey.shade200),
                                            ),
                                          )
                                        else
                                          const SizedBox()
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
