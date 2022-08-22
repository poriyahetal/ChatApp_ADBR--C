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
class SelectedVideoThumbnail extends StatefulWidget {
  File file;

  SelectedVideoThumbnail({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  _SelectedVideoThumbnailState createState() => _SelectedVideoThumbnailState();
}

class _SelectedVideoThumbnailState extends State<SelectedVideoThumbnail> {
  late File file;
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
    return GridTile(
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            border: Border.all(
          color: (Colors.blue[50])!,
        )),
        child: FutureBuilder<Uint8List>(
          future: futureThumbnail,
          builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
            if (ConnectionState.done == snapshot.connectionState) {
              return Container(
                height: 50.0,
                width: 50.0,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.memory(
                      snapshot.data!,
                      filterQuality: FilterQuality.none,
                    ),
                    Icon(
                      Icons.play_circle_fill,
                      size: 25,
                      color: Kolors.white.withOpacity(.5),
                    ),
                  ],
                ),
              );
            } else {
              return const CircularProgressIndicator(
                color: Kolors.grey,
              );
            }
          },
        ),
      ),
    );
  }
}
