import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_switch_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/src/provider.dart';

class StorageTabContents extends StatelessWidget {
  const StorageTabContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilehandlingBloc, FilehandlingState>(
      builder: (context, state) {
        return Column(
          children: [
            CustomSwitchTile(
              value: state.enableSaveFileToGalleryStatus ==
                  EnableSaveFileToGallery.enabled,
              title:
                  "${context.read<SettingsBloc>().state.languageData.Doyouwanttovisitall} \n ${context.read<SettingsBloc>().state.languageData.mediainyourgallery}",
              onChanged: (value) {
                EnableSaveFileToGallery enableSaveFileToGallery;
                if (value) {
                  enableSaveFileToGallery = EnableSaveFileToGallery.enabled;
                } else {
                  enableSaveFileToGallery = EnableSaveFileToGallery.disabled;
                }
                context.read<FilehandlingBloc>().add(
                      FilehandlingEvent.enableDisableSaveToGallery(
                          value: enableSaveFileToGallery),
                    );
              },
            ),
            const TileDivider(),
            ListTile(
              onTap: () async {
                if (Platform.isAndroid) {
                  if (!await Permission.camera.isGranted &&
                      !await Permission.microphone.isGranted) {
                    showRequestPermissionDialogue(
                      context: context,
                      title:
                          'Give the access to KahoChat to access the storage.',
                      subtitle:
                          "we require storage permission to let user store files and read in storage.",
                      icon: Icons.camera_alt_outlined,
                      onPressed: () async {
                        Navigator.pop(context);
                        if (await Getters.requestPermission(
                              Permission.storage,
                            ) ||
                            await Getters.requestPermission(
                              Permission.accessMediaLocation,
                            )) {
                          context.read<FilehandlingBloc>().add(
                              const FilehandlingEvent
                                  .getUserFolderFromStorage());
                          AutoRouter.of(context).push(const FreeUpSpaceRoute());
                        } else {
                          Fluttertoast.showToast(
                            msg:
                                'Enable permission to browse your storage data',
                            backgroundColor: Kolors.grey,
                            // textColor: Kolors.toasterTextColor,
                          );
                        }
                      },
                    );
                  } else {
                    context.read<FilehandlingBloc>().add(
                        const FilehandlingEvent.getUserFolderFromStorage());
                    AutoRouter.of(context).push(const FreeUpSpaceRoute());
                  }
                  //   if (await Getters.requestPermission(Permission.storage) ||
                  //       await Getters.requestPermission(
                  //         Permission.accessMediaLocation,
                  //       )) {
                  //     context.read<FilehandlingBloc>().add(
                  //         const FilehandlingEvent.getUserFolderFromStorage());
                  //     AutoRouter.of(context).push(const FreeUpSpaceRoute());
                  //   } else {
                  //     Fluttertoast.showToast(
                  //       msg: 'Enable permission to browse your storage data',
                  //       backgroundColor: Kolors.grey,
                  //       // textColor: Kolors.toasterTextColor,
                  //     );
                  //   }
                  // } else {
                  //   Fluttertoast.showToast(
                  //     msg: 'not supported',
                  //     backgroundColor: Kolors.grey,
                  //     // textColor: Kolors.toasterTextColor,
                  //   );
                }
              },
              leading: const Icon(Icons.storage_outlined),
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.freeUpSpace}"),
            ),
          ],
        );
      },
    );
  }
}
