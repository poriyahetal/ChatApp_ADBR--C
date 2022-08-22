import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:open_file/open_file.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

// ignore: must_be_immutable
class VideoItem extends StatefulWidget {
  File file;
  String name;
  int index;

  VideoItem(
      {Key? key, required this.file, required this.name, required this.index})
      : super(key: key);

  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late File file;
  late String fileName;
  late Future<Uint8List> futureThumbnail;

  Future<Uint8List> getThumbnail() async {
    Uint8List bytes;
    bytes = (await VideoThumbnail.thumbnailData(
      video: file.path,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 300,
      quality: 20,
    ))!;
    return bytes;
  }

  @override
  void initState() {
    // TODO: implement initState
    fileName = widget.name;
    file = widget.file;
    super.initState();
    futureThumbnail = getThumbnail();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilehandlingBloc, FilehandlingState>(
      builder: (context, state) {
        if (state.selectionMode) {
          return GridTile(
            footer: Text(
              '  $fileName',
              style: const TextStyle(color: Kolors.black, fontSize: 13),
              overflow: TextOverflow.ellipsis,
            ),
            header: GridTileBar(
              leading: Icon(
                state.selectedIndexList.contains(widget.index)
                    ? Icons.check_circle_outline
                    : Icons.radio_button_unchecked,
                color: state.selectedIndexList.contains(widget.index)
                    ? Colors.green
                    : Colors.black,
              ),
            ),
            child: InkWell(
              onTap: () {
                // setState(() {
                if (state.selectedIndexList.contains(widget.index)) {
                  state.selectedIndexList.remove(widget.index);
                  state.selectedFile.remove(widget.file);
                  context
                      .read<FilehandlingBloc>()
                      .add(FilehandlingEvent.updateCounts(count: 0));
                } else {
                  state.selectedIndexList.add(widget.index);
                  state.selectedFile.add(widget.file);
                  context
                      .read<FilehandlingBloc>()
                      .add(FilehandlingEvent.updateCounts(count: 0));
                }
                // });
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
                      border:
                          Border.all(color: (Colors.blue[50])!, width: 30.0)),
                  child: FutureBuilder<Uint8List>(
                    future: futureThumbnail,
                    builder: (BuildContext context,
                        AsyncSnapshot<Uint8List> snapshot) {
                      if (ConnectionState.done == snapshot.connectionState) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.memory(
                                snapshot.data!,
                              ),
                              Icon(
                                Icons.play_circle_fill,
                                size: 50,
                                color: Kolors.white.withOpacity(.5),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            color: Kolors.grey,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          );
        } else {
          return InkWell(
            onTap: () {
              OpenFile.open(file.path, type: "video/mp4");
            },
            onLongPress: () {
              context.read<FilehandlingBloc>().add(
                    FilehandlingEvent.changeSelection(
                      enable: true,
                      index: widget.index,
                      file: widget.file,
                    ),
                  );
              context.read<FilehandlingBloc>().add(
                    FilehandlingEvent.enableSelectionBar(
                      isSelectionBar: true,
                    ),
                  );
            },
            child: GridTile(
              footer: Text(
                '  $fileName',
                style: const TextStyle(color: Kolors.white, fontSize: 13),
                overflow: TextOverflow.ellipsis,
              ),
              child: FutureBuilder<Uint8List>(
                future: futureThumbnail,
                builder:
                    (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
                  if (ConnectionState.done == snapshot.connectionState) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Kolors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.memory(
                            snapshot.data!,
                          ),
                          Icon(
                            Icons.play_circle_fill,
                            size: 50,
                            color: Kolors.white.withOpacity(.5),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(
                        color: Kolors.grey,
                      ),
                    );
                  }
                },
              ),
            ),
          );
        }
      },
    );
  }
}
