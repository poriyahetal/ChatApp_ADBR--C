import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/grid_image_and_audio.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/video_thumbnail.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:open_file/open_file.dart';

class UserFileGridViewPage extends StatefulWidget {
  const UserFileGridViewPage({
    Key? key,
    required this.userName,
  }) : super(key: key);

  final String userName;

  @override
  State<UserFileGridViewPage> createState() => _UserFileGridViewPageState();
}

class _UserFileGridViewPageState extends State<UserFileGridViewPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilehandlingBloc, FilehandlingState>(
      builder: (context, state) {
        return SafeScaffold(
          appBar: state.isAppSelectionbarEnable
              ? AppBar(
                  automaticallyImplyLeading: false,
                  leading: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<FilehandlingBloc>().add(
                                FilehandlingEvent.enableSelectionBar(
                                  isSelectionBar: false,
                                ),
                              );
                          context.read<FilehandlingBloc>().add(
                                FilehandlingEvent.disableSelection(
                                  enable: false,
                                ),
                              );
                        },
                        icon: const Icon(CupertinoIcons.clear),
                      ),
                      // const SizedBox(width: 30,),
                      // title:  TextTranslate(
                      Expanded(
                        child: Text(
                          '${state.selectedIndexCount}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToDeleteFile}?"),
                                content: Text(
                                    "${context.read<SettingsBloc>().state.languageData.onceDeletedItCanTBeRecovered}."),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text(
                                        "${context.read<SettingsBloc>().state.languageData.ok}"),
                                    onPressed: () {
                                      context.read<FilehandlingBloc>().add(
                                            FilehandlingEvent
                                                .deleteSelectedFiles(
                                                    fileList:
                                                        state.selectedFile,
                                                    userName: widget.userName),
                                          );
                                      context.read<FilehandlingBloc>().add(
                                            FilehandlingEvent
                                                .enableSelectionBar(
                                              isSelectionBar: false,
                                            ),
                                          );
                                      context.read<FilehandlingBloc>().add(
                                            FilehandlingEvent.disableSelection(
                                              enable: false,
                                            ),
                                          );
                                      Fluttertoast.showToast(
                                        msg: 'File deleted succesfully',
                                        backgroundColor: Kolors.grey,
                                      );
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text(
                                        "${context.read<SettingsBloc>().state.languageData.cancel}"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      },
                      icon: const Icon(CupertinoIcons.delete),
                    )
                  ],
                )
              : AppBar(
                  title: Text(
                      "${context.read<SettingsBloc>().state.languageData.media}"),
                  elevation: 5,
                ),
          body: state.checkFileExist
              ? SizedBox(
                  child: MasonryGridView.count(
                    crossAxisCount: 3,
                    // staggeredTileBuilder: (index) => StaggeredTile.count(
                    //   (index % 7 == 0) ? 2 : 1,
                    //   (index % 7 == 0) ? 2 : 1,
                    // ),
                    itemCount: state.fileList.length,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    itemBuilder: (context, index) {
                      final File file = state.fileList[index];
                      final String fileName = file.path.split('/').last;
                      final String filemime =
                          file.path.split('.').last.toLowerCase();
                      print(file.path.split('.').last.toLowerCase());

                      if (filemime == 'mp4') {
                        return Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: VideoItem(
                            file: file,
                            name: fileName,
                            index: index,
                          ),
                        );
                      } else if (filemime == 'jpg' ||
                          filemime == 'png' ||
                          filemime == 'jpeg') {
                        return GridImageAndAudio(
                          file: file,
                          fileName: fileName,
                          mimeType: "image/png",
                          index: index,
                        );
                      } else if (filemime == 'mp3' ||
                          filemime == 'wav' ||
                          filemime == 'wave') {
                        return GridImageAndAudio(
                          file: file,
                          fileName: fileName,
                          mimeType: "audio/x-mpeg",
                          index: index,
                        );
                      }
                      if (state.selectionMode) {
                        return GridTile(
                          footer: Text(
                            '  $fileName',
                            style: const TextStyle(
                                color: Kolors.white, fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                          ),
                          header: GridTileBar(
                            leading: Icon(
                              state.selectedIndexList.contains(index)
                                  ? Icons.check_circle_outline
                                  : Icons.radio_button_unchecked,
                              color: state.selectedIndexList.contains(index)
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (state.selectedIndexList.contains(index)) {
                                state.selectedIndexList.remove(index);
                                state.selectedFile.remove(file);
                                context.read<FilehandlingBloc>().add(
                                    FilehandlingEvent.updateCounts(count: 0));
                              } else {
                                state.selectedIndexList.add(index);
                                state.selectedFile.add(file);
                                context.read<FilehandlingBloc>().add(
                                    FilehandlingEvent.updateCounts(count: 0));
                              }
                            },
                            onLongPress: () {
                              context.read<FilehandlingBloc>().add(
                                    FilehandlingEvent.enableSelectionBar(
                                      isSelectionBar: false,
                                    ),
                                  );
                              context.read<FilehandlingBloc>().add(
                                    FilehandlingEvent.disableSelection(
                                      enable: false,
                                    ),
                                  );
                            },
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: (Colors.blue[50])!,
                                        width: 30.0)),
                                child: Card(
                                  elevation: 5,
                                  child: Container(
                                    padding: const EdgeInsets.all(1.0),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Kolors.black,
                                    ),
                                    child: const Icon(
                                      Icons.file_copy_sharp,
                                      size: 30,
                                      color: Kolors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return InkWell(
                          onTap: () {
                            OpenFile.open(
                              file.path,
                            );
                          },
                          onLongPress: () {
                            context.read<FilehandlingBloc>().add(
                                  FilehandlingEvent.changeSelection(
                                    enable: true,
                                    index: index,
                                    file: file,
                                  ),
                                );
                            state.selectedIndexList.add(index);
                            context.read<FilehandlingBloc>().add(
                                  FilehandlingEvent.enableSelectionBar(
                                    isSelectionBar: true,
                                  ),
                                );
                          },
                          child: GridTile(
                            footer: Text(
                              '    $fileName',
                              style: const TextStyle(
                                color: Kolors.white,
                                fontSize: 13,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.all(1.0),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Kolors.black,
                                ),
                                child: const Icon(
                                  Icons.file_copy_sharp,
                                  size: 30,
                                  color: Kolors.grey,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                )
              : Center(
                  child: Text(
                    Platform.isAndroid
                        ? "${context.read<SettingsBloc>().state.languageData.sorryNoDownloadsFound}!"
                        : 'check your photos app for downloaded video',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ),
        );
      },
    );
  }
}
