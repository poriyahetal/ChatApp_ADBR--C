import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event_group.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/video_play.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FileMessage extends StatefulWidget {
  const FileMessage(
      {Key? key,
      required this.message,
      required this.myUser,
      this.peerUser,
      required this.docRef,
      required this.borderRad,
      required this.chatID,
      required this.groupId,
      required this.isLastMessage,
      this.isForwardedMessage = false})
      : super(key: key);
  final MessageSelectModel message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;
  final bool isLastMessage;
  final bool? isForwardedMessage;

  @override
  State<FileMessage> createState() => _FileMessageState();
}

class _FileMessageState extends State<FileMessage> {
  double byteTransferred = 0.0;
  double progress = 0.0;
  bool showProgress = false;
  double totalByte = 0.0;
  final Reference _storageReference = FirebaseStorage.instance.ref();
  final CancelToken cancelToken = CancelToken();
  final UploadFileBloc uploadFileBloc = UploadFileBloc();
  final DownloadFileBloc bloc = DownloadFileBloc();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UploadTask? uploadTask;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    if (File(widget.message.messageModel!.fileLocation).existsSync()) {
      setState(() {});
    }
    getDirect();
    if (widget.message.messageModel!.fileUrl == '') {
      uploadFile();
    }
    super.initState();
    // TODO: implement initState
  }

  Future<dynamic> uploadFile() async {
    if (true) {
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
    } else {
      setState(() {
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
            ),
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
            LocalStorageConstant.document;
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/${widget.peerUser!.name}${LocalStorageConstant.document}';
      }
    } else {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup =
            '${LocalStorageConstant.appFolder}groups/${widget.groupId}/${LocalStorageConstant.document}';
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/groups/${widget.groupId}${LocalStorageConstant.document}';
      }
      print(defaultPathGroup);
    }
  }

  Future<void> downloadFile() async {
    setState(() {
      showProgress = true;
      totalByte = widget.message.messageModel!.fileSize.toDouble();
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
            LocalStorageConstant.document;
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        filePath =
            '${dir!.path}/${widget.peerUser!.name}${LocalStorageConstant.document}';
      }
    } else {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        filePath =
            '${LocalStorageConstant.appFolder}groups/${widget.groupId}${LocalStorageConstant.document}';
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        filePath =
            '${dir!.path}/groups/${widget.groupId}${LocalStorageConstant.document}';
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
          'fileLocation': filePath + widget.message.messageModel!.fileLocation,
        },
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("is forwarded by me-->${widget.isForwardedMessage}");
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

    return Row(
      mainAxisAlignment:
          isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
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
              shape: RoundedRectangleBorder(borderRadius: widget.borderRad),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: isSentByMe
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (widget.isLastMessage) ...[
                    if (!isSentByMe)
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
                      const SizedBox()
                  ],
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: widget.borderRad,
                      color: isSentByMe
                          ? Colors.blue.shade100
                          : Colors.grey.shade200,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        OpenFile.open(
                          widget.message.messageModel!.fileLocation,
                        );
                      },
                      child: StreamBuilder(
                          stream: isSentByMe
                              ? uploadFileBloc.counter
                              : bloc.counter,
                          initialData: 0.0,
                          builder: (BuildContext context,
                              AsyncSnapshot<double> snapshot) {
                            if (isSentByMe) {
                              if (snapshot.data != null) {
                                progress = snapshot.data! * 100;
                              }
                            } else {
                              if (snapshot.data != null) {
                                progress = snapshot.data! * 100;
                              }
                            }
                            return Row(
                              children: <Widget>[
                                // FileIcon('.mp3'),
                                //  const SizedBoxW10(),
                                if (progress > 0.00 && progress <= 99.9999) ...[
                                  // Column(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: <Widget>[
                                  //     Padding(
                                  //       padding: const EdgeInsets.only(right: 10),
                                  //       child: SizedBox(
                                  //         height: 40,
                                  //         width: 40,
                                  //         child: CircularProgressIndicator(

                                  //           value: progress != 0.0 ? progress : null,
                                  //           color: Colors.blue,
                                  //         ),
                                  //       ),
                                  //     ),

                                  //     // const SizedBox(
                                  //     //   height: 23,
                                  //     // ),
                                  //     // Text(
                                  //     //   '${byteTransferred.toStringAsFixed(2)}/${totalByte.toStringAsFixed(2)}',
                                  //     //   style: const TextStyle(fontSize: 12),
                                  //     // ),
                                  //   ],
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CircularPercentIndicator(
                                      lineWidth: 4,
                                      radius: 25.0,
                                      //backgroundColor: Colors.blueAccent,
                                      //fillColor: Colors.blueAccent,
                                      percent: progress / 100,
                                      //center: Text(progress.toStringAsFixed(1) + '%'),
                                      center: IconButton(
                                        icon: const Icon(Icons.close),
                                        onPressed: () {},
                                      ),
                                      progressColor: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 200,
                                    //  height: MediaQuery.of(context).size.height*0.065,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              widget.message.messageModel!
                                                          .fileName.length >
                                                      19
                                                  ? widget.message.messageModel!
                                                      .fileName
                                                      .substring(0, 19)
                                                  : widget.message.messageModel!
                                                      .fileName,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '${(widget.message.messageModel!.fileSize / (1024 * 1024)).toStringAsFixed(2)} MB',
                                              style:
                                                  const TextStyle(fontSize: 10),
                                            ),
                                            TimeWidget(
                                                time: widget.message
                                                    .messageModel!.timeOfSending
                                                    .toDate(),
                                                isSentByMe: isSentByMe,
                                                isSeen: widget.message
                                                    .messageModel!.isSeen,
                                                color: Colors.black),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ] else ...[
                                  if (File(widget
                                          .message.messageModel!.fileLocation)
                                      .existsSync()) ...[
                                    if (widget.message.messageModel!
                                        .firebaseFileLocation
                                        .trim()
                                        .isEmpty) ...[
                                      IconButton(
                                        icon: const Icon(
                                          Icons.upload,
                                          color: Colors.blueAccent,
                                        ),
                                        onPressed: () async => uploadFile(),
                                      )
                                    ] else ...[
                                      // Padding(
                                      //   padding: const EdgeInsets.only(right: 10),
                                      //   child: CircleAvatar(
                                      //     maxRadius: 25,
                                      //     backgroundColor: Colors.blueAccent,
                                      //     child: IconButton(
                                      //       onPressed: () async {
                                      //         OpenFile.open(
                                      //             widget.message.messageModel!.fileLocation,);
                                      //       },
                                      //       icon: const Icon(Icons.document_scanner,color: Colors.white  ,),
                                      //     ),
                                      //   ),
                                      // ),
                                      if (widget.message.messageModel!.fileName
                                          .contains('.pdf')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  widget.message.messageModel!
                                                      .fileLocation,
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.filePdf,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.docx')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  widget.message.messageModel!
                                                      .fileLocation,
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.fileWord,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.mp4')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          VideoPlay(
                                                            source: widget
                                                                .message
                                                                .messageModel!
                                                                .fileLocation,isLocal: true,
                                                          )),
                                                );
                                                // OpenFile.open(
                                                //   widget.message.messageModel!
                                                //       .fileLocation,
                                                // );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.play,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.mp3')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  widget.message.messageModel!
                                                      .fileLocation,
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.music,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.jpg')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          // child: CircleAvatar(
                                          //   maxRadius: 25,
                                          //   backgroundColor: Colors.blueAccent,
                                          //   child: IconButton(
                                          //     onPressed: () async {
                                          //       OpenFile.open(
                                          //         widget.message.messageModel!
                                          //             .fileLocation,
                                          //       );
                                          //     },
                                          //     icon: const FaIcon(
                                          //       FontAwesomeIcons.image,
                                          //       color: Colors.white,
                                          //     ),
                                          //   ),
                                          // ),
                                          child: CircleAvatar(
                                              maxRadius: 25,
                                              backgroundColor:
                                                  Colors.blueAccent,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                child: Image.memory(
                                                  base64.decode(widget
                                                          .message
                                                          .messageModel!
                                                          .imageBase64Thumbnail ??
                                                      ""),
                                                  cacheHeight: 50,
                                                  cacheWidth: 50,
                                                ),
                                              )),
                                        )
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.png')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                              maxRadius: 25,
                                              backgroundColor:
                                                  Colors.blueAccent,
                                              // child: IconButton(
                                              //   onPressed: () async {
                                              //     OpenFile.open(
                                              //       widget.message.messageModel!
                                              //           .fileLocation,
                                              //     );
                                              //   },
                                              //   icon: const FaIcon(
                                              //     FontAwesomeIcons.image,
                                              //     color: Colors.white,
                                              //   ),
                                              // ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: MemoryImage(
                                                        base64.decode(widget
                                                                .message
                                                                .messageModel!
                                                                .imageBase64Thumbnail ??
                                                            ""),
                                                      ),
                                                    )),
                                                height: 50,
                                                width: 50,
                                              )),
                                        )
                                      ] else ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  widget.message.messageModel!
                                                      .fileLocation,
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.file,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ]
                                    ]
                                  ] else ...[
                                    if (!File(
                                      '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                    ).existsSync()) ...[
                                      IconButton(
                                        onPressed: () async => downloadFile(),
                                        icon: const FaIcon(
                                          FontAwesomeIcons.fileDownload,
                                          color: Colors.blueAccent,
                                        ),
                                      )
                                    ] else ...[
                                      if (widget.message.messageModel!.fileName
                                          .contains('.pdf')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.filePdf,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.docx')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.fileWord,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.mp4')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          VideoPlay(
                                                            source: '$defaultPathGroup/${widget.message.messageModel!.fileName}',isLocal: true,
                                                          )),
                                                );
                                                // OpenFile.open(
                                                //   '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                // );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.play,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.mp3')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.music,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.jpg')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                print(
                                                    '$defaultPathGroup/${widget.message.messageModel!.fileName}');
                                                OpenFile.open(
                                                  '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.image,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          //    Container(
                                          //   decoration: BoxDecoration(

                                          //     borderRadius: BorderRadius.circular(40),
                                          //   image: DecorationImage(
                                          //     fit: BoxFit.cover,
                                          //     image: NetworkImage('${widget.message.messageModel!.fileUrl}'),)),
                                          //   height: 50,
                                          //   width: 50,

                                          // )
                                        ),
                                      ] else if (widget
                                          .message.messageModel!.fileName
                                          .contains('.png')) ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () async {
                                                OpenFile.open(
                                                  '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                );
                                              },
                                              icon: const FaIcon(
                                                FontAwesomeIcons.image,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ] else ...[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                                onPressed: () async {
                                                  OpenFile.open(
                                                    widget.message.messageModel!
                                                        .fileLocation,
                                                  );
                                                },
                                                icon: const FaIcon(
                                                    FontAwesomeIcons.file,
                                                    color: Colors.white)),
                                          ),
                                        )
                                      ]
                                    ]
                                  ],
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 200,
                                    //  height: MediaQuery.of(context).size.height*0.065,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            widget.message.messageModel!
                                                    .fileName
                                                    .contains('.mp4')
                                                ? Icon(
                                                    Icons.videocam_outlined,
                                                    size: 22,
                                                  )
                                                : FaIcon(
                                                    getIconByFileExtension(
                                                        widget
                                                            .message
                                                            .messageModel!
                                                            .fileName),
                                                    color: Colors.black87,
                                                    size: 18.0,
                                                  ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            Expanded(
                                              child: Text(
                                                widget.message.messageModel!
                                                            .fileName.length >
                                                        19
                                                    ? "${widget.message.messageModel!.fileName.substring(0, 19)}...${widget.message.messageModel!.fileName.split(".").last}"
                                                    : widget.message
                                                        .messageModel!.fileName,
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '${(widget.message.messageModel!.fileSize / (1024 * 1024)).toStringAsFixed(2)} MB',
                                              style:
                                                  const TextStyle(fontSize: 10),
                                            ),
                                            if (!(widget.isForwardedMessage ??
                                                false))
                                              TimeWidget(
                                                time: widget.message
                                                    .messageModel!.timeOfSending
                                                    .toDate(),
                                                isSentByMe: isSentByMe,
                                                isSeen: widget.message
                                                    .messageModel!.isSeen,
                                                color: Colors.black,
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                              ],
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
                      const SizedBox()
                  ],
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  IconData getIconByFileExtension(String fileName) {
    if (fileName.contains(".pdf")) {
      return FontAwesomeIcons.filePdf;
    } else if (fileName.contains(".jpg") || fileName.contains(".png")) {
      return FontAwesomeIcons.image;
    } else if (fileName.contains(".docx")) {
      return FontAwesomeIcons.fileWord;
    } else if (fileName.contains(".mp4")) {
      return Icons.videocam_outlined;
    } else if (fileName.contains(".mp3")) {
      return FontAwesomeIcons.music;
    } else if (fileName.contains(".apk")) {
      return FontAwesomeIcons.android;
    } else {
      return FontAwesomeIcons.file;
    }
  }
}
