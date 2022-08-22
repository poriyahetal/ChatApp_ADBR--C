// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:flutter_template/presentation/drawer/settings/pages/chat_wallpaper_view_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/wallpaper_preview_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path/path.dart' as Path;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/infrastructure/settings/settings_facade.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ChangeWallPaperPage extends StatefulWidget {
  const ChangeWallPaperPage({Key? key}) : super(key: key);

  @override
  State<ChangeWallPaperPage> createState() => _ChangeWallPaperPageState();
}

class _ChangeWallPaperPageState extends State<ChangeWallPaperPage> {
  String? imagePath;
  String bg = '';
  File? wallpaperFile;

  Future<void> saveImageToLocalStorage() async {
    final ImagePicker _picker = ImagePicker();
    final Directory appDir = Directory(
        LocalStorageConstant.appFolder + LocalStorageConstant.wallpaper);
    if (!await appDir.exists()) {
      await appDir.create(recursive: true);
    }
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    final File imageFile = File(image!.path);
    wallpaperFile = imageFile;
    final fileName = Path.basename(imageFile.path);
    await imageFile.copy(
      '${LocalStorageConstant.appFolder + LocalStorageConstant.wallpaper}/wallpaper.jpg',
    );
    setState(() {
      imagePath =
          '${LocalStorageConstant.appFolder + LocalStorageConstant.wallpaper}/wallpaper.jpg';
    });
    debugPrint('image path ${imagePath!}');
  }

  Future<void> getBg() async {
    final path = await Storage()
        .secureStorage
        .read(key: StorageConstants.storageWallpaperPath);
    try {
      bg = path!;
    } catch (e) {
      print(e);
    }
    setState(() {});
    debugPrint('bg $bg');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBg();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getBg();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingState) {
        return Scaffold(
          appBar: AppBarTitle(title: "WallPaper"),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                if (settingState.chatBackgroundWallpaper != Wallpaper.image)
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            AutoRouter.of(context)
                                .push(const ChatWallpaperRoute());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Kolors.darkBlue),
                                      color: settingState.chatBackgroundColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(1),
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 3,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Kolors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: Text(
                                      "${context.read<SettingsBloc>().state.languageData.selected}",
                                      style: TextStyle(
                                        color: Kolors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.solidColors}",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            if (await Getters.requestPermission(
                                  Permission.storage,
                                ) ||
                                await Getters.requestPermission(
                                  Permission.accessMediaLocation,
                                )) {
                              saveImageToLocalStorage().then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            WallpaperPreviewPage(
                                              wallpaperType: Wallpaper.image,
                                              wallpaperImagePath: imagePath,
                                              wallpaperFile: wallpaperFile,
                                            )));
                                // AutoRouter.of(context)
                                //     .popAndPush(const ChatWallpaperPictureRoute());
                              });
                            } else {
                              Fluttertoast.showToast(
                                msg: "Permission denied",
                                backgroundColor: Kolors.grey,
                              );
                            }
                            // if (await Getters.requestPermission(
                            //       Permission.storage,
                            //     ) ||
                            //     await Getters.requestPermission(
                            //       Permission.accessMediaLocation,
                            //     )) {
                            //   saveImageToLocalStorage().then((value) {
                            //     context.read<SettingsBloc>().add(
                            //           SettingsEvent.setChatWallpaperImage(
                            //             wallpaper: Wallpaper.image,
                            //             imagePath: imagePath!,
                            //           ),
                            //         );
                            //     imageCache!.clearLiveImages();
                            //     imageCache!.evict(true);
                            //
                            //     getBg();
                            //     Navigator.pop(context);
                            //     //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const ChatWallpaperViewPage()));
                            //   });
                            // } else {
                            //   Fluttertoast.showToast(
                            //     msg: "Permission denied",
                            //     backgroundColor: Kolors.grey,
                            //   );
                            // }
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                decoration: settingState
                                            .chatBackgroundWallpaper ==
                                        Wallpaper.image
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: FileImage(
                                            File(
                                              settingState.chatBackgroundImage,
                                            ),
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : BoxDecoration(
                                        border:
                                            Border.all(color: Kolors.darkBlue),
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.transparent,
                                      ),
                                child: const Icon(
                                  IconlyLight.image,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.customPhotos}",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                if (settingState.chatBackgroundWallpaper == Wallpaper.image)
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            if (await Getters.requestPermission(
                                  Permission.storage,
                                ) ||
                                await Getters.requestPermission(
                                  Permission.accessMediaLocation,
                                )) {
                              saveImageToLocalStorage().then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            WallpaperPreviewPage(
                                              wallpaperType: Wallpaper.image,
                                              wallpaperImagePath: imagePath,
                                              wallpaperFile: wallpaperFile,
                                            )));

                                // context.read<SettingsBloc>().add(
                                //       SettingsEvent.setChatWallpaperImage(
                                //         wallpaper: Wallpaper.image,
                                //         imagePath: imagePath!,
                                //       ),
                                //     );
                                // imageCache!.clearLiveImages();
                                // imageCache!.evict(true);
                                //
                                // getBg();
                                // Navigator.pop(context);
                                //Navigator.pop(context);
                                //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const ChatWallpaperViewPage()));
                              });
                            } else {
                              Fluttertoast.showToast(
                                msg: "Permission denied",
                                backgroundColor: Kolors.grey,
                              );
                            }
                            /*AutoRouter.of(context)
                                .push(const ChatWallpaperPictureRoute());*/
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    decoration:
                                        settingState.chatBackgroundWallpaper ==
                                                Wallpaper.image
                                            ? BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: FileImage(
                                                    File(
                                                      settingState
                                                          .chatBackgroundImage,
                                                    ),
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                            : BoxDecoration(
                                                border: Border.all(
                                                    color: Kolors.darkBlue),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.transparent,
                                              ),
                                    child: const Icon(
                                      IconlyLight.image,
                                      size: 50,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(1),
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 3,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Kolors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: Text(
                                      "${context.read<SettingsBloc>().state.languageData.selected}",
                                      style: TextStyle(
                                        color: Kolors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.customPhotos}",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            AutoRouter.of(context)
                                .push(const ChatWallpaperRoute());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Kolors.darkBlue),
                                  color: settingState.chatBackgroundColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.solidColors}",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
