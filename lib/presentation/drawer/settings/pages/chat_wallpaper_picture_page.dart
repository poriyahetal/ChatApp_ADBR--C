// ignore_for_file: library_prefixes

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;
import 'package:permission_handler/permission_handler.dart';

class ChatWallpaperPicturePage extends StatefulWidget {
  const ChatWallpaperPicturePage({Key? key}) : super(key: key);

  @override
  _ChatWallpaperPicturePageState createState() =>
      _ChatWallpaperPicturePageState();
}

class _ChatWallpaperPicturePageState extends State<ChatWallpaperPicturePage> {
  String? imagePath;
  String bg = '';
  Future<void> saveImageToLocalStorage() async {
    final ImagePicker _picker = ImagePicker();
    final Directory appDir = Directory(
        LocalStorageConstant.appFolder + LocalStorageConstant.wallpaper);
    if (!await appDir.exists()) {
      await appDir.create(recursive: true);
    }
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    final File imageFile = File(image!.path);
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
    setState(() {
      bg = path!;
    });
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
  void didUpdateWidget(covariant ChatWallpaperPicturePage oldWidget) {
    getBg();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarTitle(title: "Change WallPaper"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settingState) {
          debugPrint('wallpaper path ${settingState.chatBackgroundImage}');
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: size.width * .7,
                    height: size.height * .7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Kolors.lightGrey,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 40,
                          width: size.width,
                          decoration: const BoxDecoration(
                            color: Kolors.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Kolors.white,
                                ),
                                child: const Icon(Icons.account_circle),
                              ),
                              const SizedBoxW10(),
                              Text(
                                "${context.read<SettingsBloc>().state.languageData.contactName}",
                                style: const TextStyle(
                                  color: Kolors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              // width: size.width * .,
                              height: size.height * .64,
                              decoration: settingState.chatBackgroundImage !=
                                          '' &&
                                      settingState.chatBackgroundWallpaper ==
                                          Wallpaper.image
                                  ? BoxDecoration(
                                      image: DecorationImage(
                                        image: FileImage(
                                          File(bg),
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : BoxDecoration(
                                      color: settingState.chatBackgroundColor,
                                    ),
                            ),
                            Positioned(
                              top: 30,
                              right: 1,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .4,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.transparent,
                                  child: Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 8.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue.shade100,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 70,
                              left: 1,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .4,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.transparent,
                                  child: Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 8.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade200,
                                      // : Colors.grey.shade200,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: size.width * .55,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Kolors.grey,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.emoji_emotions_outlined,
                                            ),
                                            Text(
                                                "${context.read<SettingsBloc>().state.languageData.typeAMessage}..."),
                                            const Icon(Icons.mic_none),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Kolors.primary,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Kolors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBoxH10(),
                TextButton(
                  onPressed: () async {
                    if (await Getters.requestPermission(
                          Permission.storage,
                        ) ||
                        await Getters.requestPermission(
                          Permission.accessMediaLocation,
                        )) {
                      saveImageToLocalStorage().then((value) {
                        context.read<SettingsBloc>().add(
                              SettingsEvent.setChatWallpaperImage(
                                wallpaper: Wallpaper.image,
                                imagePath: imagePath!,
                              ),
                            );
                        imageCache.clearLiveImages();
                        imageCache.evict(true);

                        getBg();

                        AutoRouter.of(context)
                            .popAndPush(const ChatWallpaperPictureRoute());
                      });
                    } else {
                      Fluttertoast.showToast(
                        msg: "Permission denied",
                        backgroundColor: Kolors.grey,
                      );
                    }
                  },
                  child: Text(
                    "${context.read<SettingsBloc>().state.languageData.selectPicture}",
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
