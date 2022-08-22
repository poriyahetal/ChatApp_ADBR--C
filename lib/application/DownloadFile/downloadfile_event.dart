import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class DownloadFileEvent {}

class DownloadFile extends DownloadFileEvent {
  final String filename;
  final CancelToken? cancelToken;
  final String path;
  final String fileUrl;
  final BuildContext context;

  DownloadFile(
      {required this.path,
      required this.fileUrl,
      required this.filename,
      this.cancelToken,
      required this.context});
}
