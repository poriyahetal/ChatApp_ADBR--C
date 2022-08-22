import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

class ImageView2Page extends StatefulWidget {
  final String imageUrl;
  final MessageSelectModel messageModel;
  final KahoChatUser peerUser;
  final String chatId;

  const ImageView2Page({
    Key? key,
    required this.imageUrl,
    required this.messageModel,
    required this.chatId,
    required this.peerUser,
  }) : super(key: key);

  @override
  State<ImageView2Page> createState() => _ImageView2PageState();
}

class _ImageView2PageState extends State<ImageView2Page> {
  int secondsOfInActivity = 3;
  late Timer timer;
  bool hideAppBar = false;

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
        if (mounted) {
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
            secondsOfInActivity--;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    timer.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

// //Setting SystmeUIMode
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
//         overlays: [SystemUiOverlay.top]);

    refreshTimer();
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.red,
    // );
    return BlocBuilder<ChatsBloc, ChatsState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          appBar: hideAppBar
              ? null
              : AppBar(
                  backgroundColor: Kolors.black.withOpacity(.3),
                  iconTheme: const IconThemeData(color: Colors.white),
                  actions: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForwardMessagePage(
                              messages: {0: widget.messageModel},
                            ),
                          ),
                        );
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
                        ).then((value) {
                          print(value);
                          if (value == 1) {
                            print('download');
                            final DownloadFileBloc bloc = DownloadFileBloc();
                            bloc.filehandlingEventSink.add(DownloadFile(
                                context: context,
                                path: LocalStorageConstant.appFolder +
                                    LocalStorageConstant.images,
                                fileUrl: widget.imageUrl,
                                filename: DateTime.now().toString() + '.jpg'));
                            Fluttertoast.showToast(
                              msg: 'Download successfull',
                              backgroundColor: Kolors.grey,
                            );
                          }
                          if (value == 2) {
                            print('share');
                            Share.shareFiles([
                              (widget.messageModel.messageModel!.fileLocation)
                            ], text: widget.messageModel.messageModel!.text);
                          }
                          if (value == 3) {
                            print('delete');
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                title: Text(
                                    "${context.read<SettingsBloc>().state.languageData.deleteSelectedImage} ?",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                content: Text(
                                    "${context.read<SettingsBloc>().state.languageData.thisWillPermanentlyDeleteSelectedImage}",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      context
                                          .read<ChatsBloc>()
                                          .add(ChatsEvent.deleteMessageEveryone(
                                              messages: {
                                                widget.messageModel.index!:
                                                    MessageSelectModel(
                                                        documentId: widget
                                                            .messageModel
                                                            .documentId,
                                                        index: widget
                                                            .messageModel.index,
                                                        messageModel: widget
                                                            .messageModel
                                                            .messageModel)
                                              },
                                              myUser:
                                                  Getters.getCurrentUserUid(),
                                              peerUser: widget.peerUser.uid));
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    textColor: Kolors.primary,
                                    child: Text(
                                      "${context.read<SettingsBloc>().state.languageData.delete}",
                                    ),
                                  ),
                                  FlatButton(
                                      onPressed: () => Navigator.pop(context),
                                      textColor: Kolors.primary,
                                      child: Text(context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .cancel)),
                                ],
                              ),
                            );
                          }
                        });

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
                ),
          body: Stack(
            children: [
              InteractiveViewer(
                child: Container(
                  color: Kolors.black,
                  child: Center(
                    child: GestureDetector(
                      onTap: () => refreshTimer(),
                      // child: PhotoView(
                      //   imageProvider: CachedNetworkImageProvider(widget.imageUrl),
                      //   //maxScale: PhotoViewComputedScale.contained * 2,
                      //   //minScale: PhotoViewComputedScale.covered * 1,
                      // ),
                      child: CachedNetworkImage(
                        imageUrl: widget.imageUrl,
                        // width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              // if (!hideAppBar)
              //   Container(
              //     height: 100,
              //     child: AppBar(
              //       backgroundColor: Colors.black.withOpacity(0.5),
              //       iconTheme: const IconThemeData(color: Colors.white),
              //       actions: [
              //         IconButton(
              //           onPressed: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => ForwardMessagePage(
              //                   messages: {0: widget.messageModel},
              //                 ),
              //               ),
              //             );
              //           },
              //           icon: Transform(
              //             alignment: Alignment.center,
              //             transform: Matrix4.rotationY(pi),
              //             child: const Icon(LineIcons.reply),
              //           ),
              //         ),
              //         IconButton(
              //           onPressed: () async {
              //             double left = MediaQuery.of(context).size.width;
              //             double top = 0;
              //             await showMenu(
              //               color: Colors.white,
              //               //add your color
              //               context: context,
              //               position: RelativeRect.fromLTRB(left, top, 0, 0),
              //               items: [
              //                 PopupMenuItem(
              //                   value: 1,
              //                   child: Padding(
              //                     padding: const EdgeInsets.only(
              //                         left: 0, right: 40),
              //                     child: Row(
              //                       children: const [
              //                         Icon(Icons.download_outlined),
              //                         SizedBox(
              //                           width: 10,
              //                         ),
              //                         Text(
              //                           "Save to gallery",
              //                           style: TextStyle(color: Colors.black),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //                 PopupMenuItem(
              //                   value: 2,
              //                   child: Padding(
              //                     padding: const EdgeInsets.only(
              //                         left: 0, right: 40),
              //                     child: Row(
              //                       children: const [
              //                         Icon(Icons.share_outlined),
              //                         SizedBox(
              //                           width: 10,
              //                         ),
              //                         Text(
              //                           "Share",
              //                           style: TextStyle(color: Colors.black),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //                 PopupMenuItem(
              //                   value: 3,
              //                   child: Row(
              //                     children: const [
              //                       Icon(CupertinoIcons.delete),
              //                       SizedBox(
              //                         width: 10,
              //                       ),
              //                       Text(
              //                         "Delete",
              //                         style: TextStyle(color: Colors.black),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //               elevation: 8.0,
              //             ).then((value) {
              //               print(value);
              //               if (value == 1) {
              //                 print('download');
              //                 final DownloadFileBloc bloc =
              //                     DownloadFileBloc();
              //                 bloc.filehandlingEventSink.add(DownloadFile(
              //                     context: context,
              //                     path: LocalStorageConstant.appFolder +
              //                         LocalStorageConstant.images,
              //                     fileUrl: widget.imageUrl,
              //                     filename:
              //                         DateTime.now().toString() + '.jpg'));
              //                 Fluttertoast.showToast(
              //                   msg: 'Download successfull',
              //                   backgroundColor: Kolors.grey,
              //                 );
              //               }
              //               if (value == 2) {
              //                 print('share');
              //                 Share.shareFiles([
              //                   (widget
              //                       .messageModel.messageModel!.fileLocation)
              //                 ],
              //                     text:
              //                         widget.messageModel.messageModel!.text);
              //               }
              //               if (value == 3) {
              //                 print('delete');
              //                 showDialog(
              //                   context: context,
              //                   builder: (context) => AlertDialog(
              //                     shape: RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(5)),
              //                     title: Text(
              //                         "${context.read<SettingsBloc>().state.languageData.deleteSelectedImage} ?",
              //                         style: const TextStyle(
              //                             fontSize: 16,
              //                             fontWeight: FontWeight.w600)),
              //                     content: Text(
              //                         "${context.read<SettingsBloc>().state.languageData.thisWillPermanentlyDeleteSelectedImage}",
              //                         style: const TextStyle(
              //                             fontSize: 14,
              //                             fontWeight: FontWeight.normal)),
              //                     actions: [
              //                       FlatButton(
              //                         onPressed: () {
              //                           context
              //                               .read<ChatsBloc>()
              //                               .add(ChatsEvent
              //                                   .deleteMessageEveryone(
              //                                       messages: {
              //                                     widget.messageModel.index!:
              //                                         MessageSelectModel(
              //                                             documentId: widget
              //                                                 .messageModel
              //                                                 .documentId,
              //                                             index: widget
              //                                                 .messageModel
              //                                                 .index,
              //                                             messageModel: widget
              //                                                 .messageModel
              //                                                 .messageModel)
              //                                   },
              //                                       myUser: Getters
              //                                           .getCurrentUserUid(),
              //                                       peerUser:
              //                                           widget.peerUser.uid));
              //                           Navigator.pop(context);
              //                           Navigator.pop(context);
              //                           Navigator.pop(context);
              //                         },
              //                         textColor: Kolors.primary,
              //                         child: Text(
              //                           "${context.read<SettingsBloc>().state.languageData.delete}",
              //                         ),
              //                       ),
              //                       FlatButton(
              //                           onPressed: () =>
              //                               Navigator.pop(context),
              //                           textColor: Kolors.primary,
              //                           child: Text(context
              //                               .read<SettingsBloc>()
              //                               .state
              //                               .languageData
              //                               .cancel)),
              //                     ],
              //                   ),
              //                 );
              //               }
              //             });

              //             // showModalBottomSheet(
              //             //   shape: const RoundedRectangleBorder(
              //             //     borderRadius: BorderRadius.only(
              //             //       topLeft: Radius.circular(5),
              //             //       topRight: Radius.circular(5),
              //             //     ),
              //             //   ),
              //             //   context: context,
              //             //   builder: (builder) => Container(
              //             //     height: 200,
              //             //     width: MediaQuery.of(context).size.width,
              //             //     padding: const EdgeInsets.symmetric(
              //             //         vertical: 5, horizontal: 10),
              //             //     child: Column(
              //             //       children: <Widget>[
              //             //         const SizedBoxH20(),
              //             //         ListTile(
              //             //           leading: const Icon(
              //             //             CupertinoIcons.arrowshape_turn_up_right,
              //             //             size: 35,
              //             //           ),
              //             //           title: const TextTranslate("Forward"),
              //             //           onTap: () async {
              //             //             Navigator.push(
              //             //               context,
              //             //               MaterialPageRoute(
              //             //                 builder: (context) => ForwardMessagePage(
              //             //                   messages: {0: messageModel},
              //             //                 ),
              //             //               ),
              //             //             );
              //             //           },
              //             //         ),
              //             //         ListTile(
              //             //           leading: const Icon(
              //             //             Icons.share,
              //             //             size: 35,
              //             //           ),
              //             //           title: const TextTranslate("Share"),
              //             //           onTap: () async {
              //             //             Share.shareFiles(
              //             //                 [(messageModel.messageModel!.fileLocation)],
              //             //                 text: messageModel.messageModel!.text);
              //             //           },
              //             //         ),
              //             //         ListTile(
              //             //           leading: const Icon(
              //             //             CupertinoIcons.delete,
              //             //             size: 35,
              //             //           ),
              //             //           title: const TextTranslate("Delete"),
              //             //           onTap: () {
              //             //             showDialog(
              //             //               context: context,
              //             //               builder: (context) => AlertDialog(
              //             //                 shape: RoundedRectangleBorder(
              //             //                     borderRadius: BorderRadius.circular(5)),
              //             //                 title: const TextTranslate(
              //             //                     "Delete selected image ?",
              //             //                     style: TextStyle(
              //             //                         fontSize: 16,
              //             //                         fontWeight: FontWeight.w600)),
              //             //                 content: const TextTranslate(
              //             //                     "This will permanently delete selected image",
              //             //                     style: TextStyle(
              //             //                         fontSize: 14,
              //             //                         fontWeight: FontWeight.normal)),
              //             //                 actions: [
              //             //                   FlatButton(
              //             //                     onPressed: () {
              //             //                       context
              //             //                           .read<ChatsBloc>()
              //             //                           .add(ChatsEvent.deleteMessage(
              //             //                               messages: {
              //             //                                 messageModel.index!:
              //             //                                     MessageSelectModel(
              //             //                                         documentId:
              //             //                                             messageModel
              //             //                                                 .documentId,
              //             //                                         index: messageModel
              //             //                                             .index,
              //             //                                         messageModel:
              //             //                                             messageModel
              //             //                                                 .messageModel)
              //             //                               },
              //             //                               myUser:
              //             //                                   Getters.getCurrentUserUid(),
              //             //                               peerUser: peerUser.uid));
              //             //                       Navigator.pop(context);
              //             //                       Navigator.pop(context);
              //             //                       Navigator.pop(context);
              //             //                     },
              //             //                     textColor: Kolors.primary,
              //             //                     child: const TextTranslate("Delete"),
              //             //                   ),
              //             //                   FlatButton(
              //             //                       onPressed: () => Navigator.pop(context),
              //             //                       textColor: Kolors.primary,
              //             //                       child: Text(                         "${context.read<SettingsBloc>().state.languageData.cancel}")),
              //             //                 ],
              //             //               ),
              //             //             );
              //             //           },
              //             //         ),
              //             //       ],
              //             //     ),
              //             //   ),
              //             // );
              //           },
              //           icon: const Icon(Icons.more_vert),
              //         ),
              //       ],
              //     ),
              //   ),
            ],
          ),
        );
      },
    );
  }
}
