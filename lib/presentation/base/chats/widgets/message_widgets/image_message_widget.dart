import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_bloc.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event.dart';
import 'package:flutter_template/application/uploadfile/upload_file_event_group.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/reply_text.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_group.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:path_provider/path_provider.dart';

class ImageMessageWidget extends StatefulWidget {
  const ImageMessageWidget({
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
  _ImageMessageWidgetState createState() => _ImageMessageWidgetState();
}

class _ImageMessageWidgetState extends State<ImageMessageWidget> {
  double byteTransferred = 0.0;
  double progress = 0.0;
  bool showProgress = true;
  double totalByte = 0.0;
  bool uploadTaskCancelled = false;
  final UploadFileBloc uploadFileBloc = UploadFileBloc();
  final DownloadFileBloc bloc = DownloadFileBloc();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference _storageReference = FirebaseStorage.instance.ref();
  final CancelToken cancelToken = CancelToken();
  UploadTask? uploadTask;
  File? file;
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
      File? result;
      try {
        if (file.lengthSync() > 1000000) {
          String tempPath;
          final tempDir = await getExternalStorageDirectory();
          if (file.path.endsWith(".jpg")) {
            tempPath = tempDir!.path + '/temp.jpg';
          } else if (file.path.endsWith(".jpeg")) {
            tempPath = tempDir!.path + '/temp.jpeg';
          } else if (file.path.endsWith(".webp")) {
            tempPath = tempDir!.path + '/temp.webp';
          } else {
            tempPath = tempDir!.path + '/${DateTime.now().toString()}.png';
          }
          result = await FlutterImageCompress.compressAndGetFile(
            file.path,
            tempPath,
            quality: 30,
          );
        } else {
          result = file;
        }
      } catch (e) {}
      uploadTask = fileStorageRef.putFile(result!);

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
  }

  String defaultPathGroup = "";
  Future<void> getDirect() async {
    print("send from-->${widget.message.messageModel!.sendFrom}");
    if (widget.message.messageModel!.sendFrom == SendFrom.chat) {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup = LocalStorageConstant.appFolder +
            widget.peerUser!.name +
            LocalStorageConstant.images;
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/${widget.peerUser?.name}${LocalStorageConstant.images}';
      }
    } else {
      if (context
              .read<FilehandlingBloc>()
              .state
              .enableSaveFileToGalleryStatus ==
          EnableSaveFileToGallery.enabled) {
        defaultPathGroup =
            '${LocalStorageConstant.appFolder}groups/${widget.groupId}/${LocalStorageConstant.images}';
      } else {
        final Directory? dir = await getExternalStorageDirectory();
        defaultPathGroup =
            '${dir!.path}/groups/${widget.groupId}${LocalStorageConstant.images}';
      }
      print(defaultPathGroup);
    }
    setState(() {
      file = File('$defaultPathGroup/${widget.message.messageModel!.fileName}');
    });
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

      setState(() {});
    }

    bloc.filehandlingEventSink.add(
      DownloadFile(
        path: filePath,
        fileUrl: widget.message.messageModel!.fileUrl,
        filename: widget.message.messageModel!.fileName,
        cancelToken: cancelToken,
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
    double imageHeight = 250;
    double imageWidth = 250;
    final bool isSentByMe =
        Getters.getCurrentUserUid() == widget.message.messageModel!.sender.uid;
    final bool isSeen = widget.message.messageModel!.isSeen;
    final bool isDelivered = widget.message.messageModel!.isDelivered;
    print("is seen-->${widget.message.documentId} ${isSeen}");
    final DateTime myDateTime =
        widget.message.messageModel!.timeOfSending.toDate();
    //log(defaultPathGroup);
    if (isSentByMe) {
      file = File(widget.message.messageModel!.fileLocation);
    }
    if (file?.existsSync() ?? false) {
      final fileMetaData = ImageSizeGetter.getSize(FileInput(file!));
      final aspectRatio =
          getImageSizeByAspectRatio(fileMetaData.height, fileMetaData.width);
      imageHeight = aspectRatio['height'] ?? 0;
      imageWidth = aspectRatio['width'] ?? 0;
    }
    print(imageWidth);
    if (widget.message.messageModel!.firebaseFileLocation.trim().isEmpty &&
        isSentByMe) {
      uploadFile();
    }

    dev.log("this is message-->${widget.message.messageModel}");
    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, mState) {
        return BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            if (widget.message.messageModel?.sendFrom == SendFrom.group) {
              if (!isSentByMe) {
                print(
                    "is seen in group-->${widget.message.messageModel?.seenByInGroup}");
                bool isSeen = false;
                for (final dynamic deliveredToUser
                    in widget.message.messageModel?.seenByInGroup ?? []) {
                  if (Getters.getCurrentUserUid() == deliveredToUser['uid']) {
                    isSeen = true;
                  }
                }
                if (!isSeen) {
                  context.read<GroupsBloc>().add(
                        GroupsEvent.markMessageAsSeen(
                          myUser: widget.myUser,
                          groupUid: widget.groupId,
                          messageId: widget.message.documentId.toString(),
                        ),
                      );
                }
              }
            } else {
              if (!isSentByMe) {
                if (!isSeen) {
                  context.read<ChatsBloc>().add(
                        ChatsEvent.markMessageAsSeen(
                          myUser: widget.myUser,
                          peerUser: widget.message.messageModel!.sender,
                          messageId: widget.message.documentId.toString(),
                        ),
                      );
                }
              }
            }
            return GestureDetector(
              onTap: !mState.isAppSelectionbarEnable
                  ? () {
                      print('if block');
                      if (File(widget.message.messageModel!.fileLocation)
                          .existsSync()) {
                        print('if');
                        AutoRouter.of(context).push(
                          ImageView2Route(
                            imageUrl: widget.message.messageModel!.fileUrl,
                            messageModel: widget.message,
                            chatId: widget.chatID,
                            peerUser: widget.peerUser!,
                          ),
                        );
                      } else {
                        print('else');
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageViewPageGroup(
                              imageUrl: widget.message.messageModel!.fileUrl,
                              messageModel: widget.message,
                              groupUid: widget.groupId,
                              //peerUser: widget.peerUser!,
                            ),
                          ),
                        );
                      }
                    }
                  : null,
              child: widget.message.messageModel!.type == MessageType.storyText
                  ? ReplyText(
                      message: widget.message.messageModel!,
                      myUser: widget.myUser,
                      peerUser: widget.peerUser!,
                    )
                  : Row(
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
                              width: 30,fit: BoxFit.fitWidth,
                            ),
                          ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.message.messageModel?.sendFrom ==
                                    SendFrom.group &&
                                !isSentByMe)
                              Text(
                                widget.message.messageModel?.sender.name ?? "-",
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: widget.borderRad,
                              ),
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: isSentByMe
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (isSentByMe)
                                    IconButton(
                                      onPressed: () {
                                        MessageSelectModel messageSelectModel =
                                            MessageSelectModel(
                                                documentId:
                                                    widget.message.documentId,
                                                index: 0,
                                                messageModel: widget
                                                    .message.messageModel);
                                        Map<int, MessageSelectModel> message = {
                                          0: messageSelectModel
                                        };
                                        ForwardFunction.showForwardSheet(
                                            context, message);
                                      },
                                      icon: Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(pi),
                                        child: const Icon(CupertinoIcons
                                            .arrowshape_turn_up_left_2),
                                      ),
                                    ),
                                  if (widget.isLastMessage) ...[
                                    // if (!isSentByMe)
                                    //   Transform(
                                    //     alignment: Alignment.center,
                                    //     transform: Matrix4.rotationX(math.pi),
                                    //     child: CustomPaint(
                                    //       painter: CustomShape(Colors.black),
                                    //     ),
                                    //   )
                                    // else
                                    //   const SizedBox()
                                  ],
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      // height: imageHeight,
                                      width: imageWidth,
                                      decoration: BoxDecoration(
                                          color:context
                                              .read<SettingsBloc>()
                                              .state
                                              .appThemeMode ==
                                              ThemeMode.dark
                                              ? Colors.grey.shade700
                                              :  Kolors.wallLightBlue,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Stack(
                                            children: [
                                              if (file?.existsSync() ?? false)
                                                Image.file(
                                                  file!,
                                                  height: imageHeight,
                                                  width: imageWidth,
                                                  fit: BoxFit.fill,
                                                )
                                              else
                                                Image.memory(
                                                  base64.decode(widget
                                                          .message
                                                          .messageModel!
                                                          .imageBase64Thumbnail ??
                                                      ""),
                                                  height: imageHeight,
                                                  width: imageWidth,
                                                  fit: BoxFit.fill,
                                                ),
                                              Container(
                                                height: imageHeight,
                                                width: imageWidth,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 5.0,
                                                ),
                                                margin: EdgeInsets.zero,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    end: Alignment.bottomCenter,
                                                    begin: Alignment.topCenter,
                                                    colors: [
                                                      if (File(
                                                        widget
                                                            .message
                                                            .messageModel!
                                                            .fileLocation,
                                                      ).existsSync()) ...[
                                                        Colors.transparent,
                                                        Colors.transparent,
                                                        Colors.transparent,
                                                        Colors.transparent,
                                                      ] else ...[
                                                        if (File(
                                                          '$defaultPathGroup/${widget.message.messageModel!.fileName}',
                                                        ).existsSync()) ...[
                                                          Colors.transparent,
                                                          Colors.transparent,
                                                          Colors.transparent,
                                                          Colors.transparent,
                                                        ] else ...[
                                                          Colors.black87,
                                                          Colors.black54,
                                                          Colors.black54,
                                                          Colors.black38,
                                                        ]
                                                      ],
                                                      Colors.black38,
                                                      Colors.black,
                                                    ],
                                                  ),
                                                  borderRadius:
                                                      widget.borderRad,
                                                ),
                                                child: StreamBuilder(
                                                  stream: isSentByMe
                                                      ? uploadFileBloc.counter
                                                      : bloc.counter,
                                                  initialData: 0.0,
                                                  builder:
                                                      (BuildContext context,
                                                          AsyncSnapshot<double>
                                                              snapshot) {
                                                    //print(snapshot.data);
                                                    if (progress == 1) {
                                                      Future.delayed(Duration(
                                                              milliseconds:
                                                                  500))
                                                          .then((value) =>
                                                              setState(() {}));
                                                    }
                                                    if (isSentByMe) {
                                                      if (snapshot.data !=
                                                          null) {
                                                        progress =
                                                            snapshot.data!;
                                                      }
                                                    } else {
                                                      if (snapshot.data !=
                                                          null) {
                                                        progress =
                                                            snapshot.data!;
                                                      }
                                                    }
                                                    return Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const SizedBox(
                                                            height: 25),
                                                        if (progress > 0.001 &&
                                                            progress <
                                                                0.99999) ...[
                                                          const Spacer(),
                                                          Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CircularProgressIndicator(
                                                                value: progress >
                                                                        0.02
                                                                    ? progress
                                                                    : null,
                                                                color: Kolors
                                                                    .white,
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  if (isSentByMe) {
                                                                    print(
                                                                        "cancel upload");
                                                                    // setState(() {
                                                                    //   uploadTaskCancelled = true;
                                                                    // });
                                                                    uploadFileBloc
                                                                        .cancelUpload(
                                                                            uploadTask);
                                                                    // uploadFileBloc.filehandlingEventSink.add(
                                                                    //   UploadFileToFireStorage(
                                                                    //       message: widget.message,
                                                                    //       peerUser: widget.peerUser!,
                                                                    //       myUser: widget.myUser,
                                                                    //       docRef: widget.docRef,
                                                                    //       uploadTask: uploadTask,
                                                                    //       cancelTask: true
                                                                    //   ),
                                                                    // );
                                                                  } else {
                                                                    bloc.cancelDownload(
                                                                        cancelToken);
                                                                  }
                                                                  setState(() =>
                                                                      progress =
                                                                          0);
                                                                },
                                                                child:
                                                                    const Icon(
                                                                  Icons.close,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          // const SizedBox(height: 3.0,),
                                                          // Text(
                                                          //   '${byteTransferred.toStringAsFixed(2)}/${totalByte.toStringAsFixed(2)}',
                                                          //   style:
                                                          //   const TextStyle(fontSize: 12),
                                                          // ),
                                                        ] else ...[
                                                          if (File(
                                                            widget
                                                                .message
                                                                .messageModel!
                                                                .fileLocation,
                                                          ).existsSync())
                                                            if (widget
                                                                .message
                                                                .messageModel!
                                                                .firebaseFileLocation
                                                                .trim()
                                                                .isEmpty) ...[
                                                              const Spacer(),
                                                              IconButton(
                                                                onPressed:
                                                                    () async =>
                                                                        uploadFile(),
                                                                icon: Container(
                                                                    height:
                                                                        20.0,
                                                                    width: 30.0,
                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white
                                                                            .withOpacity(
                                                                                0.3),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20.0)),
                                                                    child: const Icon(
                                                                        Icons
                                                                            .upload_outlined)),
                                                              )
                                                            ] else
                                                              const SizedBox
                                                                  .shrink()
                                                          else ...[
                                                            if (!(file
                                                                    ?.existsSync() ??
                                                                false)) ...[
                                                              const Spacer(),
                                                              IconButton(
                                                                onPressed:
                                                                    () async =>
                                                                        downloadFile(),
                                                                icon: Container(
                                                                    height:
                                                                        30.0,
                                                                    width: 70.0,
                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white
                                                                            .withOpacity(
                                                                                0.3),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                10.0)),
                                                                    child: const Icon(
                                                                        Icons
                                                                            .download_outlined)),
                                                              )
                                                            ] else ...[
                                                              const SizedBox()
                                                            ]
                                                          ]
                                                        ],
                                                        Spacer(),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            // Container(
                                                            //   constraints: const BoxConstraints(
                                                            //       maxWidth: 188,),
                                                            //   child: ParsedText(
                                                            //     style: TextStyle(
                                                            //       color: Colors.black,
                                                            //       fontSize: state.fontSize
                                                            //               .toDouble() +
                                                            //           4.0,
                                                            //     ),
                                                            //     text: widget.message.messageModel!.text,
                                                            //     parse: <MatchText>[
                                                            //       MatchText(
                                                            //         type: ParsedType.EMAIL,
                                                            //         style: TextStyle(
                                                            //           color: Colors.blue,
                                                            //           fontSize: state.fontSize
                                                            //                   .toDouble() +
                                                            //               4.0,
                                                            //         ),
                                                            //         onTap: (url) {
                                                            //           launch("mailto:$url");
                                                            //         },
                                                            //       ),
                                                            //       MatchText(
                                                            //         type: ParsedType.URL,
                                                            //         style: TextStyle(
                                                            //           color: Colors.blue,
                                                            //           fontSize: state.fontSize
                                                            //                   .toDouble() +
                                                            //               4.0,
                                                            //         ),
                                                            //         onTap: (url) async {
                                                            //           final a =
                                                            //               await canLaunch(url);
                                                            //
                                                            //           if (a) {
                                                            //             launch(url);
                                                            //           }
                                                            //         },
                                                            //       ),
                                                            //       MatchText(
                                                            //         type: ParsedType.PHONE,
                                                            //         style: TextStyle(
                                                            //           color: Colors.blue,
                                                            //           fontSize: state.fontSize
                                                            //                   .toDouble() +
                                                            //               4.0,
                                                            //         ),
                                                            //         onTap: (url) {
                                                            //           launch("tel:$url");
                                                            //         },
                                                            //       ),
                                                            //       MatchText(
                                                            //         pattern:
                                                            //             mState.searchTextVal,
                                                            //         style: TextStyle(
                                                            //           backgroundColor:
                                                            //               Colors.yellow,
                                                            //           color: Colors.black,
                                                            //           fontSize: state.fontSize
                                                            //                   .toDouble() +
                                                            //               4.0,
                                                            //         ),
                                                            //         onTap: (url) async {},
                                                            //       )
                                                            //     ],
                                                            //   ),
                                                            // ),
                                                            TimeWidget(
                                                              time: myDateTime,
                                                              isSentByMe:
                                                                  isSentByMe,
                                                              isSeen: isSeen,
                                                              isDelivered:
                                                                  isDelivered,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (widget
                                                  .message.messageModel!.text !=
                                              "")
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Text(widget
                                                  .message.messageModel!.text),
                                            )
                                        ],
                                      ),
                                    ),
                                  ),
                                  // if (!isSentByMe)
                                  //   IconButton(
                                  //     onPressed: () {
                                  //       MessageSelectModel messageSelectModel =
                                  //       MessageSelectModel(
                                  //           documentId: widget.message.documentId,
                                  //           index: 0,
                                  //           messageModel:
                                  //           widget.message.messageModel);
                                  //       Map<int, MessageSelectModel> message = {
                                  //         0: messageSelectModel
                                  //       };
                                  //       ForwardFunction.showForwardSheet(
                                  //           context, message);
                                  //     },
                                  //     icon: Transform(
                                  //       alignment: Alignment.center,
                                  //       transform: Matrix4.rotationY(pi),
                                  //       child: const Icon(
                                  //           CupertinoIcons.arrowshape_turn_up_left_2),
                                  //     ),
                                  //   ),
                                  if (widget.isLastMessage) ...[
                                    // if (isSentByMe)
                                    //   Transform(
                                    //     alignment: Alignment.center,
                                    //     transform: Matrix4.rotationX(math.pi),
                                    //     child: CustomPaint(
                                    //       painter: CustomShape(Colors.black),
                                    //     ),
                                    //   )
                                    // else
                                    //   const SizedBox()
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            );
          },
        );
      },
    );
  }

  Map<String, double> getImageSizeByAspectRatio(int height, int width) {
    print("Aspect ratio-->${height} ${width}");
    if (width > height) {
      return {
        "height": MediaQuery.of(context).size.width - 200,
        "width": MediaQuery.of(context).size.width - 150
      };
    } else {
      return {
        "height": MediaQuery.of(context).size.width - 120,
        "width": MediaQuery.of(context).size.width - 220
      };
    }
  }
}
