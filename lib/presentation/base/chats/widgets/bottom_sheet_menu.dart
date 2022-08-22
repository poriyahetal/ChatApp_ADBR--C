// ignore_for_file: avoid_function_literals_in_foreach_calls, use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/pages/share_contacts_page.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

class BottomSheetMenu extends StatefulWidget {
  final KahoChatUser peerUser;
  const BottomSheetMenu({Key? key, required this.peerUser}) : super(key: key);

  @override
  State<BottomSheetMenu> createState() => _BottomSheetMenuState();
}

class _BottomSheetMenuState extends State<BottomSheetMenu> {
  late TextEditingController messageTextTEC;

  @override
  void initState() {
    super.initState();
    messageTextTEC = TextEditingController();
    messageTextTEC.addListener(() {
      // setState(() {});
    });
  }

  Future audioFunction({required KahoChatUser signedInUser}) async {
    final FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.audio);

    if (result != null) {
      //final File file = File(result.files.single.path!);
      final String fileName = result.files.single.path!.split('/').last;
      context.read<ChatsBloc>().add(
            ChatsEvent.uploadFile(
              fileName: fileName,
              isUploading: true,
            ),
          );
      //final File file = File(result.files.single.path!);
      context.read<ChatsBloc>().add(
            ChatsEvent.sendAudioFile(
              myUser: signedInUser,
              peerUser: widget.peerUser,
              filePath: result.files.single.path!,
            ),
          );
      context.read<SQLiteBloc>().add(
            SQLiteEvent.setFilePath(
              filePath: FileLocation(
                id: 0, //random value
                filename: result.files.single.path!.split('/').last,
                filepath: result.files.single.path!,
                senderUid: signedInUser.uid,
                receiverUid: widget.peerUser.uid,
              ),
            ),
          );
      Navigator.pop(context);
    } else {
      Fluttertoast.showToast(
        msg: "no file picked",
        backgroundColor: Kolors.grey,
      );
      Navigator.pop(context);
    }
  }

  Future fileFunction({required KahoChatUser signedInUser}) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      context.read<ChatsBloc>().add(
            ChatsEvent.uploadFile(
              fileName: result.files.single.path!.split('/').last,
              isUploading: true,
            ),
          );
      context.read<ChatsBloc>().add(
            ChatsEvent.sendFile(
              myUser: signedInUser,
              peerUser: widget.peerUser,
              filePath: result.files.single.path!,
            ),
          );

      context.read<SQLiteBloc>().add(
            SQLiteEvent.setFilePath(
              filePath: FileLocation(
                id: 0, //random value
                filename: result.files.single.path!.split('/').last,
                filepath: result.files.single.path!,
                senderUid: signedInUser.uid,
                receiverUid: widget.peerUser.uid,
              ),
            ),
          );
      Navigator.pop(context);
    } else {
      Fluttertoast.showToast(
        msg: "no file picked",
        backgroundColor: Kolors.grey,
      );
      Navigator.pop(context);
    }
  }

  Future mediaFunction({required KahoChatUser signedInuser}) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'mp4', 'jpeg'],
      allowMultiple: true,
    );

    // final ImagePicker _picker = ImagePicker();
    //
    // final List<XFile>? result = await _picker.pickMultiImage();

    if (result == null) {
      return;
    }

    if (result != null) {
      List<ScreenshotController> screenshotControllers =
          List.generate(15, (index) => ScreenshotController());
      //ScreenshotController screenshotController = ScreenshotController();
      await AutoRouter.of(context).push(
        DisplayCapturedImageRoute(
          screenshotController: screenshotControllers,
          imagePath: result.files.map((e) => e.path.toString()).toList(),
          onCapture: (imageWithCaption) {
            imageWithCaption.forEach((element) async {
              if (p.extension(element.imagePath) == '.jpg' ||
                  p.extension(element.imagePath) == '.png' ||
                  p.extension(element.imagePath) == '.jpeg') {
                print("on captured called");
                Uint8List? image = await screenshotControllers[
                        imageWithCaption.indexOf(element)]
                    .capture();
                final imagePath = await File(element.imagePath).create();
                await imagePath.writeAsBytes(image!);
                //Navigator.push(context,new MaterialPageRoute(builder: (context)=>Test(image:imagePath )));
                context.read<ChatsBloc>().add(
                      ChatsEvent.sendImageMessage(
                        myUser: signedInuser,
                        peerUser: widget.peerUser,
                        imageWithCaption: ImageWithCaptionModel(
                            caption: element.caption,
                            imagePath: imagePath.path),
                      ),
                    );
                Navigator.pop(context);
                Navigator.pop(context);
              } else if (p.extension(element.imagePath) == '.mp4') {
                context.read<ChatsBloc>().add(
                      ChatsEvent.sendVideoMessage(
                        myUser: signedInuser,
                        peerUser: widget.peerUser,
                        imageWithCaption: element,
                      ),
                    );
              } else {}
            });
          },
          onEditCapture: (imageWithCaption) {
            print("edit image called");
            imageWithCaption.forEach((element) {
              if (p.extension(element.imagePath) == '.jpg' ||
                  p.extension(element.imagePath) == '.png' ||
                  p.extension(element.imagePath) == '.jpeg') {
                context.read<ChatsBloc>().add(
                      ChatsEvent.sendImageMessage(
                        myUser: signedInuser,
                        peerUser: widget.peerUser,
                        imageWithCaption: element,
                      ),
                    );
              } else if (p.extension(element.imagePath) == '.mp4') {
                print("mp4 in on edit capture");
                context.read<ChatsBloc>().add(
                      ChatsEvent.sendVideoMessage(
                        myUser: signedInuser,
                        peerUser: widget.peerUser,
                        imageWithCaption: element,
                      ),
                    );
              } else {}
            });
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
      );
    }
  }

  Future camerFunction({required KahoChatUser signedInuser}) async {
    final cameras = await availableCameras();
    print("camera called");
    AutoRouter.of(context).push(
      CameraRoute(
        camera: cameras,
        onCapture: (imageWithCaption) {
          context.read<ChatsBloc>().add(
                ChatsEvent.sendImageMessage(
                  myUser: signedInuser,
                  peerUser: widget.peerUser,
                  imageWithCaption: imageWithCaption,
                ),
              );
          messageTextTEC.clear();
          setState(() {});
          Navigator.pop(context);
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget sheetIcon({
    required IconData icon,
    required Color color,
    required String text,
    required Function() onTap,
  }) {
    return Column(
      children: <Widget>[
        RawMaterialButton(
          onPressed: onTap,
          shape: const CircleBorder(),
          fillColor: color,
          constraints: const BoxConstraints.tightFor(
            height: 60,
            width: 60,
          ),
          elevation: 6,
          child: Icon(
            icon,
            color: Kolors.white,
            size: 30,
          ),
        ),
        const SizedBoxH10(),
        Text(text),
      ],
    );
  }

  void _showSheet(KahoChatUser peerUser) {
    showFlexibleBottomSheet<void>(
      isCollapsible: true,
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: (context, controller, offset) {
        return _BottomSheet(
          scrollController: controller,
          bottomSheetOffset: offset,
          peerUser: peerUser,
        );
      },
      anchors: [0, 0.5, 0.975],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return BlocConsumer<CameraBloc, CameraState>(
          listener: (context, camera) {
            camera.pickImageFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (failure) {},
                  (success) {
                    context
                        .read<CameraBloc>()
                        .add(const CameraEvent.cropPickedImage());
                  },
                );
              },
            );
            camera.cropImageFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (failure) {},
                  (success) {
                    context
                        .read<CameraBloc>()
                        .add(const CameraEvent.uploadCroppedImage());
                  },
                );
              },
            );
            camera.uploadImageFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (failure) {},
                  (success) {
                    AutoRouter.of(context).pop();
                    context.read<ChatsBloc>().add(
                          ChatsEvent.sendImageMessage(
                            myUser: state.signedInUser,
                            peerUser: widget.peerUser,
                            imageWithCaption: ImageWithCaptionModel(
                                caption: '',
                                imagePath: camera.croppedImagePath),
                          ),
                        );
                    messageTextTEC.clear();
                    setState(() {});
                  },
                );
              },
            );
          },
          builder: (context, camera) {
            return SizedBox(
              height: 365 + MediaQuery.of(context).padding.bottom,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    ListTile(
                      //dont use those camera things
                      onTap: () async {
                        if (!await Permission.camera.isGranted &&
                            !await Permission.microphone.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            title:
                                'Give the access to KahoChat to capture the photos and videos.',
                            subtitle:
                                "we require Camera permission to let user make video call, capture photos and videos in our KahoChat application.",
                            icon: Icons.camera_alt_outlined,
                            onPressed: () async {
                              Navigator.pop(context);
                              if (await Getters.requestPermission(
                                      Permission.camera) &&
                                  await Getters.requestPermission(
                                      Permission.microphone)) {
                                camerFunction(signedInuser: state.signedInUser);
                              }
                            },
                          );
                        } else {
                          camerFunction(signedInuser: state.signedInUser);
                        }
                      },
                      minVerticalPadding: 0,
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.camera_alt_outlined,
                              color: Colors.black),
                        ),
                      ),
                      title: const Text("Camera"),
                      subtitle: const Text("Take your picture"),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      onTap: () async {
                        if (!await Permission.storage.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            title:
                                'Give the access to KahoChat to access the photos and videos.',
                            subtitle:
                                "we require Camera permission to let user make video call, capture photos and videos in our KahoChat application.",
                            icon: Icons.photo_outlined,
                            onPressed: () async {
                              Navigator.pop(context);
                              if (await Getters.requestPermission(
                                  Permission.storage)) {
                                mediaFunction(signedInuser: state.signedInUser);
                              } else {
                                Fluttertoast.showToast(
                                    msg: 'Permision not accepted',
                                    backgroundColor: Kolors.grey);
                              }
                            },
                          );
                        } else {
                          mediaFunction(signedInuser: state.signedInUser);
                        }
                      },
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              Icon(Icons.photo_outlined, color: Colors.black),
                        ),
                      ),
                      title: const Text("Media"),
                      subtitle: const Text("Share photos & videos"),
                    ),
                    ListTile(
                      onTap: () async {
                        if (!await Permission.storage.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            title:
                                'Give the access to KahoChat to access the files.',
                            subtitle:
                                "We require storage permission to send or received photos, videos or audios files stored in Internal Storage.",
                            icon: CupertinoIcons.doc,
                            onPressed: () async {
                              Navigator.pop(context);
                              if (await Getters.requestPermission(
                                  Permission.storage)) {
                                fileFunction(signedInUser: state.signedInUser);
                              }
                            },
                          );
                        } else {
                          fileFunction(signedInUser: state.signedInUser);
                        }
                      },
                      minVerticalPadding: 0,
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.doc, color: Colors.black),
                        ),
                      ),
                      title: const Text("File"),
                      subtitle: const Text("Share files"),
                    ),
                    ListTile(
                      onTap: () async {
                        if (await Permission.contacts.isGranted) {
                          _showSheet(widget.peerUser);
                          // AutoRouter.of(context).push(ContactPermissionRoute(
                          //   onPressed: () async {
                          //     Navigator.pop(context);
                          //     if (await Getters.requestPermission(
                          //         Permission.contacts)) {
                          //       _showSheet(widget.peerUser);
                          //     }
                          //   },
                          // ));
                        } else {
                          Fluttertoast.showToast(
                            msg:
                                'Allow contact permission from app drawer then my contact tab to use this functionality',
                            backgroundColor: Kolors.grey,
                          );
                        }

                        // Navigator.push(context, MaterialPageRoute(builder: (context) =>ShareContactsPage(
                        //   onShared: (v) {
                        //     v.forEach((element) {
                        //       context.read<ChatsBloc>().add(
                        //         ChatsEvent.sendContactMessage(
                        //           contact: element,
                        //           myUser: state.signedInUser,
                        //           peerUser: widget.peerUser,
                        //         ),
                        //       );
                        //     });
                        //     Navigator.pop(context);
                        //   },
                        // )));

                        // showModalBottomSheet(
                        //   // enableDrag: true,
                        //     isScrollControlled: true,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.vertical(
                        //         top: Radius.circular(15),
                        //       ),
                        //     ),
                        //     clipBehavior: Clip.antiAliasWithSaveLayer,
                        //
                        //     context: context, builder: (context){
                        //   return
                        //     DraggableScrollableSheet(
                        //       initialChildSize: 0.75, //set this as you want
                        //       maxChildSize: 0.75, //set this as you want
                        //       minChildSize: 0.75, //set this as you want
                        //       expand: true,
                        //       builder: (BuildContext context, scrollController){
                        //         return ShareContactsPage(
                        //           onShared: (v) {
                        //             v.forEach((element) {
                        //               context.read<ChatsBloc>().add(
                        //                 ChatsEvent.sendContactMessage(
                        //                   contact: element,
                        //                   myUser: state.signedInUser,
                        //                   peerUser: widget.peerUser,
                        //                 ),
                        //               );
                        //             });
                        //             Navigator.pop(context);
                        //           },
                        //         );
                        //       },
                        //     // height: MediaQuery.of(context).size.height*0.60,
                        //     //   heightFactor: 0.9,
                        //
                        //   );
                        // });
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ShareContactsPage(
                        //               onShared: (v) {
                        //                 v.forEach((element) {
                        //                   context.read<ChatsBloc>().add(
                        //                         ChatsEvent.sendContactMessage(
                        //                           contact: element,
                        //                           myUser: state.signedInUser,
                        //                           peerUser: widget.peerUser,
                        //                         ),
                        //                       );
                        //                 });
                        //                 Navigator.pop(context);
                        //               },
                        //             )));
                      },
                      minVerticalPadding: 0,
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.contact_page_outlined,
                              color: Colors.black),
                        ),
                      ),
                      title: const Text("Contact"),
                      subtitle: const Text("Share contacts"),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      onTap: () async {
                        // if (!await Permission.storage.isGranted) {
                        //   showRequestPermissionDialogue(
                        //     context: context,
                        //     title:
                        //         'Give the access to KahoChat to access the photos and videos.',
                        //     icon: Icons.camera_alt_outlined,
                        //     onPressed: () async {
                        //       Navigator.pop(context);
                        //       if (await Getters.requestPermission(
                        //           Permission.storage)) {}
                        //     },
                        //   );
                        // } else {}
                        if (!await Permission.storage.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            title:
                                'Give the access to KahoChat to access the phone audio files.',
                            subtitle:
                                "We require storage permission to send or received photos, videos or audios files stored in Internal Storage.",
                            icon: MdiIcons.music,
                            onPressed: () async {
                              Navigator.pop(context);
                              if (await Getters.requestPermission(
                                  Permission.storage)) {
                                audioFunction(signedInUser: state.signedInUser);
                              }
                            },
                          );
                        } else {
                          audioFunction(signedInUser: state.signedInUser);
                        }
                      },
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(MdiIcons.music, color: Colors.black),
                        ),
                      ),
                      title: const Text("Audio"),
                      subtitle: const Text("Send audio files "),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _BottomSheet extends StatefulWidget {
  final ScrollController scrollController;
  final double bottomSheetOffset;
  final KahoChatUser peerUser;

  const _BottomSheet({
    required this.scrollController,
    required this.bottomSheetOffset,
    required this.peerUser,
    Key? key,
  }) : super(key: key);

  @override
  __BottomSheetState createState() => __BottomSheetState();
}

class __BottomSheetState extends State<_BottomSheet> {
  List<KahoChatUser> listUsers = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: SafeArea(
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: Kolors.primary,
                child: const Icon(
                  Icons.send,
                ),
                onPressed: () {
                  listUsers.forEach((element) {
                    context.read<ChatsBloc>().add(
                          ChatsEvent.sendContactMessage(
                            contact: element,
                            myUser: state.signedInUser,
                            peerUser: widget.peerUser,
                          ),
                        );
                  });
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              body: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  controller: widget.scrollController,
                  children: [
                    // Text(
                    //   'position $bottomSheetOffset',
                    //   style: Theme.of(context).textTheme.headline6,
                    // ),
                    SizedBox(
                        height: widget.bottomSheetOffset > 0.50
                            ? MediaQuery.of(context).size.height * 0.975
                            : MediaQuery.of(context).size.height * 0.70,
                        child: ShareContactsPage(
                          showFloatingButton: false,
                          onSelectChange: (v) {
                            setState(() {
                              listUsers = v;
                            });
                          },
                          onShared: (v) {
                            v.forEach((element) {
                              context.read<ChatsBloc>().add(
                                    ChatsEvent.sendContactMessage(
                                      contact: element,
                                      myUser: state.signedInUser,
                                      peerUser: widget.peerUser,
                                    ),
                                  );
                            });
                          },
                        )),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
