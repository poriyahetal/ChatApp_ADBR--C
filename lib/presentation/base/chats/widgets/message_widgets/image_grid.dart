import 'dart:developer';
import 'dart:io';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
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
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/custom_shape.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/time_widget.dart';
import 'package:flutter_template/presentation/base/chats/widgets/reply_text.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_2.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_group.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;

class ImageGrid extends StatefulWidget {
  const ImageGrid({
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
  final List<MessageSelectModel> message;
  final KahoChatUser myUser;
  final KahoChatUser? peerUser;
  final BorderRadius borderRad;
  final String docRef;
  final String chatID;
  final String groupId;
  final bool isLastMessage;

  @override
  _ImageGridState createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  double byteTransferred = 0.0;
  double progress = 0.0;
  bool showProgress = true;
  double totalByte = 0.0;

  final UploadFileBloc uploadFileBloc = UploadFileBloc();
  final DownloadFileBloc bloc = DownloadFileBloc();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference _storageReference = FirebaseStorage.instance.ref();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getDirect();
    if (widget.message.first.messageModel!.fileUrl == '') {
      uploadFile();
    }
    // TODO: implement initState
  }

  Future<dynamic> uploadFile() async {
    if (widget.message.first.messageModel!.sendFrom == SendFrom.chat) {
      setState(() {
        showProgress = true;
        progress = 0.01;
      });
      log('uplod for chat');
      uploadFileBloc.filehandlingEventSink.add(
        UploadFileToFireStorage(
          message: widget.message.first,
          peerUser: widget.peerUser!,
          myUser: widget.myUser,
          docRef: widget.docRef,
        ),
      );
    } else {
      setState(() {
        progress = 0.01;
      });
      if (widget.message.first.messageModel!.sender.uid ==
          Getters.getCurrentUserUid()) {
        if (widget.message.first.messageModel!.firebaseFileLocation.trim().isEmpty) {
          uploadFileBloc.filehandlingEventSink.add(
            UploadFileToFireStorageGroup(
              message: widget.message.first,
              groupUid: widget.message.first.messageModel!.receiverUid,
              myUser: widget.myUser,
              docRef: widget.message.first.documentId.toString(),
            ),
          );
        }
      } else {
        if (!widget.message.first.messageModel!.isSeen) {
          context.read<GroupsBloc>().add(GroupsEvent.setReadUnread(
            groupUid: widget.groupId,
            myUser: widget.myUser,
            messageID: widget.message.first.documentId.toString(),),);
        }
      }
    }
  }

  String defaultPathGroup = "";
  Future<void> getDirect() async {
    if (widget.message.first.messageModel!.sendFrom == SendFrom.chat) {
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
        '${dir!.path}/${widget.peerUser!.name}${LocalStorageConstant.images}';
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
  }

  Future<void> downloadFile() async {
    setState(() {
      showProgress = true;
      totalByte = widget.message.first.messageModel!.fileSize.toDouble();
    });
    String filePath = "";
    if (widget.message.first.messageModel!.sendFrom == SendFrom.chat) {
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
        fileUrl: widget.message.first.messageModel!.fileUrl,
        filename: widget.message.first.messageModel!.fileName,context: context,
      ),
    );
    if (widget.message.first.messageModel!.sendFrom == SendFrom.chat) {
      await _firestore.chatCollection
          .doc(widget.myUser.uid)
          .chatUsersCollection
          .doc(widget.peerUser!.uid)
          .messagesCollection
          .doc(widget.message.first.documentId)
          .update(
        {
          'fileLocation': filePath + widget.message.first.messageModel!.fileName,
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
        Getters.getCurrentUserUid() == widget.message.first.messageModel!.sender.uid;
    final bool isSeen = widget.message.first.messageModel!.isSeen;
    final DateTime myDateTime =
    widget.message.first.messageModel!.timeOfSending.toDate();
    log(defaultPathGroup);
    final file = File(widget.message.first.messageModel!.fileLocation);
    if(file.existsSync()){
      final fileMetaData = ImageSizeGetter.getSize(FileInput(file));
      final aspectRatio = getImageSizeByAspectRatio(fileMetaData.height, fileMetaData.width);
      imageHeight = aspectRatio['height']??0;
      imageWidth = aspectRatio['width']??0;
    }

    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, mState) {
        return BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: !mState.isAppSelectionbarEnable
                  ? () {
                if (File(widget.message.first.messageModel!.fileLocation)
                    .existsSync()) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ImageView2Page(
                        imageUrl: widget.message.first.messageModel!.fileUrl,
                        messageModel: widget.message.first,
                        chatId: widget.chatID,
                        peerUser: widget.peerUser!,
                      ),
                    ),
                  );
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ImageViewPageGroup(
                        imageUrl: widget.message.first.messageModel!.fileUrl,
                        messageModel: widget.message.first,
                        groupUid: widget.groupId,
                        //peerUser: widget.peerUser!,
                      ),
                    ),
                  );
                }
              }
                  : null,
              child: widget.message.first.messageModel!.type == MessageType.storyText
                  ? ReplyText(
                message: widget.message.first.messageModel!,
                myUser: widget.myUser,
                peerUser: widget.peerUser!,
              )
                  : Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: widget.borderRad,
                ),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: isSentByMe
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if(widget.isLastMessage)...[
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
                    Container(
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: widget.borderRad,
                        image: File(widget.message.first.messageModel!.fileLocation,)
                            .existsSync()
                            ? DecorationImage(
                          image: FileImage(
                            File(widget.message.first.messageModel!
                                .fileLocation,),
                          ),
                          fit: BoxFit.cover,
                        )
                            : DecorationImage(
                          image: NetworkImage(
                            widget.message.first.messageModel!.fileUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        height: imageHeight,
                        width: imageWidth,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8.0,
                        ),
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter,
                            colors: [
                              if (File(widget
                                  .message.first.messageModel!.fileLocation,)
                                  .existsSync()) ...[
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                              ] else ...[
                                if (File(
                                  '$defaultPathGroup/${widget.message.first.messageModel!.fileName}',)
                                    .existsSync()) ...[
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
                          borderRadius: widget.borderRad,
                        ),
                        child: StreamBuilder(
                          stream: isSentByMe
                              ? uploadFileBloc.counter
                              : bloc.counter,
                          initialData: 0.0,
                          builder: (BuildContext context,
                              AsyncSnapshot<double> snapshot) {
                            //print(snapshot.data);
                            if (isSentByMe) {
                              if (snapshot.data != null) {
                                progress = snapshot.data!;
                              }
                            } else {
                              if (snapshot.data != null) {
                                progress = snapshot.data!;
                              }
                            }
                            return Container(
                              color: Colors.blue,
                            );
                            // return Column(
                            //   mainAxisAlignment:
                            //   MainAxisAlignment.center,
                            //   children: [
                            //     const SizedBox(height: 25),
                            //     if (progress > 0.001 &&
                            //         progress < 0.99999) ...[
                            //       const Spacer(),
                            //       SizedBox(
                            //         height: 22,
                            //         width: 22,
                            //         child: CircularProgressIndicator(
                            //           value: progress > 0.02
                            //               ? progress
                            //               : null,
                            //           color: Kolors.white,
                            //         ),
                            //       ),
                            //       const SizedBox(height: 3.0,),
                            //       Text(
                            //         '${byteTransferred.toStringAsFixed(2)}/${totalByte.toStringAsFixed(2)}',
                            //         style:
                            //         const TextStyle(fontSize: 12),
                            //       ),
                            //     ] else ...[
                            //       if (File(widget.message.first.messageModel!
                            //           .fileLocation,)
                            //           .existsSync())
                            //         if (widget.message.first.messageModel!
                            //             .firebaseFileLocation
                            //             .trim()
                            //             .isEmpty)
                            //         //if empty firebaseFileLocation thenitis going to be upload
                            //           IconButton(
                            //             icon: const Icon(Icons.upload),
                            //             onPressed: () async =>
                            //                 uploadFile(),
                            //           )
                            //         else
                            //           const SizedBox.shrink()
                            //       else ...[
                            //         if (!File(
                            //           '$defaultPathGroup/${widget.message.first.messageModel!.fileName}',)
                            //             .existsSync()) ...[
                            //           const Spacer(),
                            //           IconButton(
                            //             onPressed: () async =>
                            //                 downloadFile(),
                            //             icon:
                            //             const Icon(Icons.download_outlined),
                            //           )
                            //         ] else ...[
                            //           const SizedBox()
                            //         ]
                            //       ]
                            //     ],
                            //     Spacer(),
                            //     Row(
                            //       crossAxisAlignment:
                            //       CrossAxisAlignment.end,
                            //       mainAxisAlignment:
                            //       MainAxisAlignment.end,
                            //       children: [
                            //         Container(
                            //           constraints: const BoxConstraints(
                            //             maxWidth: 188,),
                            //           child: ParsedText(
                            //             style: TextStyle(
                            //               color: Colors.black,
                            //               fontSize: state.fontSize
                            //                   .toDouble() +
                            //                   4.0,
                            //             ),
                            //             text: widget
                            //                 .message.first.messageModel!.text,
                            //             parse: <MatchText>[
                            //               MatchText(
                            //                 type: ParsedType.EMAIL,
                            //                 style: TextStyle(
                            //                   color: Colors.blue,
                            //                   fontSize: state.fontSize
                            //                       .toDouble() +
                            //                       4.0,
                            //                 ),
                            //                 onTap: (url) {
                            //                   launch("mailto:$url");
                            //                 },
                            //               ),
                            //               MatchText(
                            //                 type: ParsedType.URL,
                            //                 style: TextStyle(
                            //                   color: Colors.blue,
                            //                   fontSize: state.fontSize
                            //                       .toDouble() +
                            //                       4.0,
                            //                 ),
                            //                 onTap: (url) async {
                            //                   final a =
                            //                   await canLaunch(url);
                            //
                            //                   if (a) {
                            //                     launch(url);
                            //                   }
                            //                 },
                            //               ),
                            //               MatchText(
                            //                 type: ParsedType.PHONE,
                            //                 style: TextStyle(
                            //                   color: Colors.blue,
                            //                   fontSize: state.fontSize
                            //                       .toDouble() +
                            //                       4.0,
                            //                 ),
                            //                 onTap: (url) {
                            //                   launch("tel:$url");
                            //                 },
                            //               ),
                            //               MatchText(
                            //                 pattern:
                            //                 mState.searchTextVal,
                            //                 style: TextStyle(
                            //                   backgroundColor:
                            //                   Colors.yellow,
                            //                   color: Colors.black,
                            //                   fontSize: state.fontSize
                            //                       .toDouble() +
                            //                       4.0,
                            //                 ),
                            //                 onTap: (url) async {},
                            //               )
                            //             ],
                            //           ),
                            //         ),
                            //         TimeWidget(
                            //           time: myDateTime,
                            //           isSentByMe: isSentByMe,
                            //           isSeen: isSeen,
                            //           color: Colors.white,)
                            //       ],
                            //     ),
                            //   ],
                            // );
                          },),
                      ),
                    ),
                    if(widget.isLastMessage)...[
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
            );
          },
        );
      },
    );
  }

  Map<String,double> getImageSizeByAspectRatio(int height,int width){
    print("Aspect ratio-->${height/width}");
    if(height/width > 1.4 || height/width<1.6){
      return {"height" : 200 , "width" : 350};
    }else if(height/width > 1.2 || height/width<1.4){
      return {"height" : 220 , "width" : 350};
    }else if(height/width > 1.6 || height/width<1.9){
      return {"height" : 180 , "width" : 350};
    }else{
      return {"height" : 250 , "width" : 250};
    }
  }
}
