// ignore_for_file: directives_ordering, use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/pages/display_captured_video_page.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_template/presentation/core/pages/share_contacts_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

class BottomSheetMenuGroup extends StatefulWidget {
  final String groupUid;
  const BottomSheetMenuGroup({Key? key, required this.groupUid})
      : super(key: key);

  @override
  State<BottomSheetMenuGroup> createState() => _BottomSheetMenuGroupState();
}

class _BottomSheetMenuGroupState extends State<BottomSheetMenuGroup> {
  late TextEditingController messageTextTEC;

  @override
  void initState() {
    super.initState();
    messageTextTEC = TextEditingController();
    messageTextTEC.addListener(() {
      // setState(() {});
    });
  }

  // Future mediaFunction({required KahoChatUser signedInUser}) async {
  //   final FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['png', 'jpg', 'jpeg', 'mp4'],
  //     allowMultiple: true,
  //   );
  //   if (result != null) {
  //     List<ScreenshotController> screenshotControllers =
  //     List.generate(15, (index) => ScreenshotController());
  //
  //     await AutoRouter.of(context).push(
  //       DisplayCapturedImageRoute(
  //         screenshotController: screenshotControllers,
  //         imagePath: result.files.map((e) => e.path.toString()).toList(),
  //         onEditCapture: (imageWithCaption) {
  //           imageWithCaption.forEach((element) {
  //             if (p.extension(element.imagePath) == '.jpg' ||
  //                 p.extension(element.imagePath) == '.png'||
  //                 p.extension(element.imagePath) == '.jpeg') {
  //               context.read<GroupsBloc>().add(
  //                 GroupsEvent.sendImageMessage(
  //                   imageWithCaption: element,
  //                   groupUid: widget.groupUid,
  //                   myUser: signedInUser,
  //                 ),
  //               );
  //             } else if (p.extension(element.imagePath) == '.mp4') {
  //               // context.read<ChatsBloc>().add(
  //               //   ChatsEvent.sendVideoMessage(
  //               //     myUser: signedInuser,
  //               //     peerUser: widget.peerUser,
  //               //     imageWithCaption: element,
  //               //   ),
  //               // );
  //             } else {}
  //           });
  //           Navigator.pop(context);
  //           Navigator.pop(context);
  //         },
  //         onCapture: (imageWithCaption) {
  //           // ignore: avoid_function_literals_in_foreach_calls
  //           imageWithCaption.forEach((element) async {
  //             if (p.extension(element.imagePath) == '.jpg' ||
  //                 p.extension(element.imagePath) == '.png' ||
  //                 p.extension(element.imagePath) == '.jpeg') {
  //               Uint8List? image = await screenshotControllers[
  //               imageWithCaption.indexOf(element)]
  //                   .capture();
  //               final imagePath = await File(element.imagePath).create();
  //               await imagePath.writeAsBytes(image!);
  //
  //               context.read<GroupsBloc>().add(
  //                 GroupsEvent.sendImageMessage(
  //                   imageWithCaption: ImageWithCaptionModel(
  //                       caption: element.caption,
  //                       imagePath: imagePath.path),
  //                   groupUid: widget.groupUid,
  //                   myUser: signedInUser,
  //                 ),
  //               );
  //               Navigator.pop(context);
  //               Navigator.pop(context);
  //             } else if (p.extension(element.imagePath) == '.mp4') {
  //               context.read<GroupsBloc>().add(
  //                 GroupsEvent.sendVideoMessage(
  //                   imageWithCaption: element,
  //                   groupUid: widget.groupUid,
  //                   myUser: signedInUser,
  //                 ),
  //               );
  //             } else {}
  //           });
  //         },
  //       ),
  //     );
  //   }
  // }

  Future mediaFunction({required KahoChatUser signedInuser}) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'mp4', 'jpeg'],
      allowMultiple: true,
    );
    if (result != null) {
      List<ScreenshotController> screenshotControllers =
          List.generate(15, (index) => ScreenshotController());
      //ScreenshotController screenshotController = ScreenshotController();
      await AutoRouter.of(context).push(
        DisplayCapturedImageRoute(
          screenshotController: screenshotControllers,
          imagePath: result.files.map((e) => e.path.toString()).toList(),
          onCapture: (imageWithCaption) {
            print("on captured called");

            imageWithCaption.forEach((element) async {
              if (p.extension(element.imagePath) == '.jpg' ||
                  p.extension(element.imagePath) == '.png' ||
                  p.extension(element.imagePath) == '.jpeg') {
                Uint8List? image = await screenshotControllers[
                        imageWithCaption.indexOf(element)]
                    .capture();
                final imagePath = await File(element.imagePath).create();
                await imagePath.writeAsBytes(image!);
                //Navigator.push(context,new MaterialPageRoute(builder: (context)=>Test(image:imagePath )));
                // context.read<ChatsBloc>().add(
                //   ChatsEvent.sendImageMessage(
                //     myUser: signedInuser,
                //     peerUser: widget.peerUser,
                //     imageWithCaption: ImageWithCaptionModel(
                //         caption: element.caption,
                //         imagePath: imagePath.path),
                //   ),
                // );
                context.read<GroupsBloc>().add(
                      GroupsEvent.sendImageMessage(
                        imageWithCaption: ImageWithCaptionModel(
                            caption: element.caption,
                            imagePath: imagePath.path),
                        groupUid: widget.groupUid,
                        myUser: signedInuser,
                      ),
                    );

                print("send image path-->${imagePath.path}");
                Navigator.pop(context);
                Navigator.pop(context);
              } else if (p.extension(element.imagePath) == '.mp4') {
                context.read<GroupsBloc>().add(
                      GroupsEvent.sendVideoMessage(
                        myUser: signedInuser,
                        imageWithCaption: element,
                        groupUid: widget.groupUid,
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
                print("in edit send image path-->${element.imagePath}");
                context.read<GroupsBloc>().add(
                      GroupsEvent.sendImageMessage(
                        imageWithCaption: element,
                        groupUid: widget.groupUid,
                        myUser: signedInuser,
                      ),
                    );
              } else if (p.extension(element.imagePath) == '.mp4') {
                context.read<GroupsBloc>().add(
                      GroupsEvent.sendVideoMessage(
                        myUser: signedInuser,
                        imageWithCaption: element,
                        groupUid: widget.groupUid,
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

  Future fileFunction({required KahoChatUser signedInUser}) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      // context.read<ChatsBloc>().add(
      //   ChatsEvent.uploadFile(
      //     fileName: result.files.single.path!.split('/').last,
      //     isUploading: true,
      //   ),
      // );
      context.read<GroupsBloc>().add(
            GroupsEvent.sendFile(
                filePath: result.files.single.path!,
                groupId: widget.groupUid,
                myUser: signedInUser),
          );
      // context.read<ChatsBloc>().add(
      //   ChatsEvent.sendFile(
      //     myUser: signedInUser,
      //     peerUser: widget.peerUser,
      //     filePath: result.files.single.path!,
      //   ),
      // );

      context.read<SQLiteBloc>().add(
            SQLiteEvent.setFilePath(
              filePath: FileLocation(
                id: 0, //random value
                filename: result.files.single.path!.split('/').last,
                filepath: result.files.single.path!,
                senderUid: signedInUser.uid,
                receiverUid: "widget.peerUser.uid",
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

  void _showSheet(String groupUid) {
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
          groupUid: groupUid,
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
                    context.read<GroupsBloc>().add(
                          GroupsEvent.sendImageMessage(
                            myUser: state.signedInUser,
                            groupUid: widget.groupUid,
                            imageWithCaption: ImageWithCaptionModel(
                              caption: '',
                              imagePath: camera.croppedImagePath,
                            ),
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
                      onTap: () async {
                        if (!await Permission.camera.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            subtitle:
                                "we require Camera permission to let user make video call, capture photos and videos in our KahoChat application.",
                            title:
                                'Give the access to KahoChat to capture the photos and videos.',
                            icon: Icons.camera_alt_outlined,
                            onPressed: () async {
                              Navigator.pop(context);
                              if (await Getters.requestPermission(
                                  Permission.camera)) {
                                context.read<CameraBloc>().add(
                                      const CameraEvent.pickImageFromCamera(),
                                    );
                              }
                            },
                          );
                        } else {
                          context.read<CameraBloc>().add(
                                const CameraEvent.pickImageFromCamera(),
                              );
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
                      title: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .camera),
                      subtitle: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .takeYourPicture),
                    ),
                    ListTile(
                      onTap: () async {
                        if (!await Permission.storage.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            subtitle:
                                "We require storage permission to send or received photos, videos or audios files stored in Internal Storage.",
                            title:
                                'Give the access to KahoChat to access the photos and videos.',
                            icon: Icons.photo_outlined,
                            onPressed: () async {
                              Navigator.pop(context);
                              if (await Getters.requestPermission(
                                      Permission.storage) ||
                                  await Getters.requestPermission(
                                      Permission.storage)) {
                                mediaFunction(
                                  signedInuser: state.signedInUser,
                                );
                              }
                            },
                          );
                        } else {
                          mediaFunction(
                            signedInuser: state.signedInUser,
                          );
                        }
                      },
                      minVerticalPadding: 0,
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              Icon(Icons.photo_outlined, color: Colors.black),
                        ),
                      ),
                      title: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .media),
                      subtitle: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .sharePhotosVideos),
                    ),
                    ListTile(
                      onTap: () async {
                        if (!await Permission.storage.isGranted) {
                          showRequestPermissionDialogue(
                            context: context,
                            subtitle:
                                "We require storage permission to send or received photos, videos or audios files stored in Internal Storage.",
                            title:
                                'Give the access to KahoChat to access the files.',
                            icon: CupertinoIcons.doc,
                            onPressed: () async {
                              if (!await Permission.storage.isGranted) {
                                showRequestPermissionDialogue(
                                  context: context,
                                  title:
                                      'Give the access to KahoChat to access the files.',
                                  subtitle: "",
                                  icon: CupertinoIcons.doc,
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    if (await Getters.requestPermission(
                                        Permission.storage)) {
                                      fileFunction(
                                          signedInUser: state.signedInUser);
                                    }
                                  },
                                );
                              } else {
                                fileFunction(signedInUser: state.signedInUser);
                              }
                              // Navigator.pop(context);
                              // if (await Getters.requestPermission(
                              //     Permission.contacts)) {
                              //   final FilePickerResult? result =
                              //   await FilePicker.platform.pickFiles();
                              //   if (result != null) {
                              //     final File file =
                              //     File(result.files.single.path!);
                              //     final String fileName =
                              //         result.files.single.path!.split('/').last;
                              //     context.read<GroupsBloc>().add(
                              //       GroupsEvent.sendFile(
                              //           filePath: file.path,
                              //           groupId: widget.groupUid,
                              //           myUser: state.signedInUser),
                              //     );
                              //     Navigator.pop(context);
                              //   } else {
                              //     Fluttertoast.showToast(
                              //       msg: "no file picked",
                              //       backgroundColor: Kolors.grey,
                              //     );
                              //     Navigator.pop(context);
                              //   }
                              // }
                            },
                          );
                        } else {
                          final FilePickerResult? result =
                              await FilePicker.platform.pickFiles();
                          if (result != null) {
                            final File file = File(result.files.single.path!);
                            final String fileName =
                                result.files.single.path!.split('/').last;
                            context.read<GroupsBloc>().add(
                                  GroupsEvent.sendFile(
                                      filePath: file.path,
                                      groupId: widget.groupUid,
                                      myUser: state.signedInUser),
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
                      title: Text(
                          context.read<SettingsBloc>().state.languageData.file),
                      subtitle: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .shareFiles),
                    ),
                    ListTile(
                      onTap: () async {
                        if (await Permission.contacts.isGranted) {
                          // AutoRouter.of(context).push(
                          //   ContactPermissionRoute(
                          //     onPressed: () async {
                          //       Navigator.pop(context);
                          //       if (await Getters.requestPermission(
                          //           Permission.contacts)) {
                          //         _showSheet(widget.groupUid);
                          //       }
                          //     },
                          //   ),
                          // );
                          _showSheet(widget.groupUid);
                        } else {
                          Fluttertoast.showToast(
                            msg:
                                'Allow contact permission from app drawer then my contact tab to use this functionality',
                            backgroundColor: Kolors.grey,
                          );
                        }
                      },
                      minVerticalPadding: 0,
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.contact_page_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      title: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .contact),
                      subtitle: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .shareContacts),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      onTap: () async {
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
                                final FilePickerResult? result =
                                    await FilePicker.platform
                                        .pickFiles(type: FileType.audio);

                                if (result != null) {
                                  //final File file = File(result.files.single.path!);
                                  final String fileName =
                                      result.files.single.path!.split('/').last;
                                  /*context.read<GroupsBloc>().add(
                                GroupsEvent.uploadFile(
                                  fileName: fileName,
                                  isUploading: true,
                                ),
                              );
                          //final File file = File(result.files.single.path!);
                          context.read<GroupsBloc>().add(
                                GroupsEvent.sendAudioFile(
                                  myUser: state.signedInUser,
                                  peerUser: widget.peerUser,
                                  filePath: result.files.single.path!,
                                ),
                              );*/
                                  context.read<SQLiteBloc>().add(
                                        SQLiteEvent.setFilePath(
                                          filePath: FileLocation(
                                            id: 0, //random value
                                            filename: result.files.single.path!
                                                .split('/')
                                                .last,
                                            filepath: result.files.single.path!,
                                            senderUid: state.signedInUser.uid,
                                            receiverUid: widget.groupUid,
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
                            },
                          );
                        } else {
                          final FilePickerResult? result = await FilePicker
                              .platform
                              .pickFiles(type: FileType.audio);

                          if (result != null) {
                            //final File file = File(result.files.single.path!);
                            final String fileName =
                                result.files.single.path!.split('/').last;
                            /*context.read<GroupsBloc>().add(
                                GroupsEvent.uploadFile(
                                  fileName: fileName,
                                  isUploading: true,
                                ),
                              );
                          //final File file = File(result.files.single.path!);
                          context.read<GroupsBloc>().add(
                                GroupsEvent.sendAudioFile(
                                  myUser: state.signedInUser,
                                  peerUser: widget.peerUser,
                                  filePath: result.files.single.path!,
                                ),
                              );*/
                            context.read<SQLiteBloc>().add(
                                  SQLiteEvent.setFilePath(
                                    filePath: FileLocation(
                                      id: 0, //random value
                                      filename: result.files.single.path!
                                          .split('/')
                                          .last,
                                      filepath: result.files.single.path!,
                                      senderUid: state.signedInUser.uid,
                                      receiverUid: widget.groupUid,
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
                      },
                      leading: Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(MdiIcons.music, color: Colors.black),
                        ),
                      ),
                      title: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .audio),
                      subtitle: Text(context
                          .read<SettingsBloc>()
                          .state
                          .languageData
                          .sendAudioFiles),
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
  final String groupUid;

  const _BottomSheet({
    required this.scrollController,
    required this.bottomSheetOffset,
    required this.groupUid,
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
                    context.read<GroupsBloc>().add(
                          GroupsEvent.sendContactMessage(
                            contact: element,
                            myUser: state.signedInUser,
                            groupUid: widget.groupUid,
                          ),
                        );
                  });
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              body: DecoratedBox(
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
                            context.read<GroupsBloc>().add(
                                  GroupsEvent.sendContactMessage(
                                    contact: element,
                                    myUser: state.signedInUser,
                                    groupUid: widget.groupUid,
                                  ),
                                );
                          });
                        },
                      ),
                    ),
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
