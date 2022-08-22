import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:open_file/open_file.dart';

class GridImageAndAudio extends StatefulWidget {
  const GridImageAndAudio(
      {Key? key,
      required this.file,
      required this.fileName,
      required this.mimeType,
      required this.index})
      : super(key: key);
  final String fileName;
  final File file;
  final String mimeType;
  final int index;

  @override
  State<GridImageAndAudio> createState() => _GridImageAndAudioState();
}

class _GridImageAndAudioState extends State<GridImageAndAudio> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilehandlingBloc, FilehandlingState>(
      builder: (context, state) {
        if (state.selectionMode) {
          return GridTile(
            footer: Text(
              '  ${widget.fileName}',
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
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: widget.mimeType == "audio/x-mpeg"
                        ? Container(
                            padding: const EdgeInsets.all(1.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Kolors.black,
                            ),
                            child: const Icon(
                              Icons.music_video_sharp,
                              size: 30,
                              color: Kolors.grey,
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.all(1.0),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: FileImage(widget.file),
                                  fit: BoxFit.cover),
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
              OpenFile.open(widget.file.path, type: widget.mimeType);
              // Navigator.pop(context);
            },
            onLongPress: () {
              context.read<FilehandlingBloc>().add(
                    FilehandlingEvent.changeSelection(
                      enable: true,
                      index: widget.index,
                      file: widget.file,
                    ),
                  );
              // state.selectedIndexList.add(widget.index);
              context.read<FilehandlingBloc>().add(
                    FilehandlingEvent.enableSelectionBar(
                      isSelectionBar: true,
                    ),
                  );
            },
            child: GridTile(
              footer: Text(
                '    ${widget.fileName}',
                style: const TextStyle(color: Kolors.white, fontSize: 13),
                overflow: TextOverflow.ellipsis,
              ),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: widget.mimeType == "audio/x-mpeg"
                    ? Container(
                        padding: const EdgeInsets.all(1.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Kolors.black,
                        ),
                        child: const Icon(
                          Icons.music_video_sharp,
                          size: 30,
                          color: Kolors.grey,
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white,
                          image: DecorationImage(
                              image: FileImage(widget.file), fit: BoxFit.cover),
                        ),
                      ),
              ),
            ),
          );
        }
      },
    );
  }
}
