import 'dart:io';
import 'dart:typed_data';

import 'package:dart_now_time_filename/dart_now_time_filename.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/application/stories/creator/caption/caption_text_for_story_cubit.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:tapioca/tapioca.dart';

const _localPath = "/storage/emulated/0/";

void filterFromColor({
  required Color? color,
  required File video,
  required Function onLoading,
  required Function onSuccess,
  required Function onError,
  required CaptionTextForStoryState captionState,
  required Function(String) saveTo,
}) {
  final fileName = NowFilename.gen(prefix: 'video-', ext: '.mp4');
  final localPath = _localPath + fileName;
  try {
    onLoading.call();
    final tapiocaBalls = (captionState.text != null && color != null)
        ? [
            TapiocaBall.filterFromColor(color),
            TapiocaBall.textOverlay(
              captionState.text!,
              captionState.positionX.toInt() + 56,
              captionState.positionY.toInt() - 128,
              captionState.size.toInt() + 72,
              captionState.textColor,
            )
          ]
        : (captionState.text != null && color == null)
            ? [
                TapiocaBall.textOverlay(
                  captionState.text!,
                  captionState.positionX.toInt() + 56,
                  captionState.positionY.toInt() - 128,
                  captionState.size.toInt() + 72,
                  captionState.textColor,
                )
              ]
            : [
                TapiocaBall.filterFromColor(color!),
              ];
    final cup = Cup(Content(video.path), tapiocaBalls);
    cup.suckUp(localPath).then((_) async {
      saveTo.call(localPath);
      onSuccess.call();
      return;
    });
  } on PlatformException {
    debugPrint("error!!!!");
    onError.call();
  }
}

void deleteFile(File file) {
  file.exists().then(
    (there) {
      if (there) {
        file.delete();
      }
    },
  );
}

Future<void> saveImageToLocal(Uint8List? image) async {
  if (image != null) {
    final fileName = NowFilename.gen(prefix: 'photo-', ext: '.png');
    final File imgFile = File(_localPath + fileName);
    imgFile.writeAsBytes(image);
  }
}

void saveVideoToLocal(String path) {
  GallerySaver.saveVideo(path);
}
