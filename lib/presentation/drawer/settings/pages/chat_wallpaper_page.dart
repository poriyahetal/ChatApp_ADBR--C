// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

import 'wallpaper_preview_page.dart';

class ChatWallpaperPage extends StatefulWidget {
  const ChatWallpaperPage({Key? key}) : super(key: key);

  @override
  State<ChatWallpaperPage> createState() => _ChatWallpaperPageState();
}

class _ChatWallpaperPageState extends State<ChatWallpaperPage> {
  Wallpaper? wallpaperType;

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        title: Text(
            "${context.read<SettingsBloc>().state.languageData.wallpaper}"),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => WallpaperPreviewPage(
                            wallpaperType: wallpaperType!,
                          )));
              //AutoRouter.of(context).replace(ChatWallpaperPictureRoute());
            },
            child: Icon(Icons.check),
          ),
          SizedBoxW10(),
        ],
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return OrientationBuilder(
            builder: (context, orientation) {
              return GridView.builder(
                itemCount: Wallpaper.values.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.read<SettingsBloc>().add(
                            SettingsEvent.setChatWallpaper(
                              wallpaper: Wallpaper.values[index],
                            ),
                          );
                      wallpaperType = Wallpaper.values[index];
                      print(Wallpaper.values[index].toString());
                    },
                    child: GridTile(
                      header: GridTileBar(
                        leading: Icon(
                          state.chatBackgroundWallpaper ==
                                  Wallpaper.values[index]
                              ? Icons.check_circle_rounded
                              : Icons.radio_button_unchecked,
                          size: 30,
                          color: Wallpaper.defaultt == Wallpaper.values[index]
                              ? Colors.blue
                              : Colors.blue,
                        ),
                      ),
                      child: Card(
                        child: Wallpaper.values[index] == Wallpaper.image
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Colors.transparent,
                                  //       image: DecorationImage(
                                  // image: FileImage(), fit: BoxFit.cover),
                                ),
                              )
                            : Container(
                                color: Wallpaper.values[index] ==
                                        Wallpaper.defaultt
                                    ? Kolors.wallWhite
                                    : Wallpaper.values[index] == Wallpaper.blue
                                        ? Kolors.wallLightBlue
                                        : Wallpaper.values[index] ==
                                                Wallpaper.red
                                            ? Kolors.wallLightRed
                                            : Wallpaper.values[index] ==
                                                    Wallpaper.green
                                                ? Kolors.wallGreen
                                                : Wallpaper.values[index] ==
                                                        Wallpaper.pink
                                                    ? Kolors.wallPink
                                                    : Wallpaper.values[index] ==
                                                            Wallpaper.yellow
                                                        ? Kolors.wallYellow
                                                        : Wallpaper.values[
                                                                    index] ==
                                                                Wallpaper
                                                                    .darkGrey
                                                            ? Kolors
                                                                .wallDarkGrey
                                                                .withOpacity(.8)
                                                            : Wallpaper.values[
                                                                        index] ==
                                                                    Wallpaper
                                                                        .darkRed
                                                                ? Kolors
                                                                    .wallDarkRed
                                                                : Wallpaper.values[
                                                                            index] ==
                                                                        Wallpaper
                                                                            .darkBlue
                                                                    ? Kolors
                                                                        .wallDarkBlue
                                                                    : Kolors
                                                                        .wallLightBlack,
                              ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
