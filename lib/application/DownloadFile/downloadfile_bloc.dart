import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadFileBloc {
  double _counter = 0;
  // double StreamController
  final _filehandlingStreamController = StreamController<double>();
  StreamSink<double> get _inCounter => _filehandlingStreamController.sink;
// expose data from stream
  Stream<double> get counter => _filehandlingStreamController.stream;

  final _filehandlingEventController = StreamController<DownloadFileEvent>();

  Sink<DownloadFileEvent> get filehandlingEventSink =>
      _filehandlingEventController.sink;

  DownloadFileBloc() {
    _filehandlingEventController.stream.listen(mapEventToState);
  }

  void mapEventToState(
    DownloadFileEvent event,
  ) async {
    if (event is DownloadFile) {
      final Dio dio = Dio();
      // DateTime now = DateTime.now();
      late Directory _directory;
      late String _formattedDate;
      late File _savedFile;
      // late String _name;
      late String _pathk;
      try {
        if (Platform.isAndroid) {
          print("downloading in progress");

          if (!await Permission.storage.isGranted ||
              !await Permission.photos.isGranted ||
              await Permission.accessMediaLocation.isGranted) {
            showRequestPermissionDialogue(
              context: event.context,
              title: 'Give the access to KahoChat to access the storage.',
              subtitle:
                  "we require storage permission to let user store files in storage.",
              icon: Icons.camera_alt_outlined,
              onPressed: () async {
                Navigator.pop(event.context);
                if (await Getters.requestPermission(Permission.storage) ||
                    await Getters.requestPermission(Permission.photos) ||
                    await Getters.requestPermission(
                        Permission.accessMediaLocation)) {
                  _directory = Directory(event.path);
                  print(_directory.path);
                  if (!await _directory.exists()) {
                    await _directory.create(recursive: true);
                  }
                  if (await _directory.exists()) {
                    _pathk = _directory.path;
                    // _formattedDate = DateFormat('yyyy-MM-dd – kk:mm:ss').format(now);
                    _savedFile = File(_directory.path + event.filename);
                    debugPrint("printing savfile PAth  ${_savedFile.path}");
                    await dio.download(
                      event.fileUrl,
                      _savedFile.path,
                      cancelToken: event.cancelToken,
                      onReceiveProgress: (downloaded, totalSize) {
                        _counter = downloaded / totalSize;
                        // print("printing download progress in downloadFilBloc --> $_counter");
                        _inCounter.add(_counter);
                      },
                    ).whenComplete(() {
                      _inCounter.add(0);
                      if (_counter == 1) {
                        Fluttertoast.showToast(
                            msg: 'Download successfull',
                            backgroundColor: Kolors.grey);
                      } else {
                        _inCounter.add(0);
                        _savedFile.delete();
                      }
                    });
                    // _name = "/video_$_formattedDate.mp4";
                    if (Platform.isAndroid) {
                      print(_savedFile.path);
                    }
                  }
                }
              },
            );
          } else {
            _directory = Directory(event.path);
            print(_directory.path);
            if (!await _directory.exists()) {
              await _directory.create(recursive: true);
            }
            if (await _directory.exists()) {
              _pathk = _directory.path;
              // _formattedDate = DateFormat('yyyy-MM-dd – kk:mm:ss').format(now);
              _savedFile = File(_directory.path + event.filename);
              debugPrint("printing savfile PAth  ${_savedFile.path}");
              await dio.download(
                event.fileUrl,
                _savedFile.path,
                cancelToken: event.cancelToken,
                onReceiveProgress: (downloaded, totalSize) {
                  _counter = downloaded / totalSize;
                  // print("printing download progress in downloadFilBloc --> $_counter");
                  _inCounter.add(_counter);
                },
              ).whenComplete(() {
                _inCounter.add(0);
                if (_counter == 1) {
                  Fluttertoast.showToast(
                    msg: 'Download successfull',
                    backgroundColor: Kolors.grey,
                  );
                } else {
                  _inCounter.add(0);
                  _savedFile.delete();
                }
              });
              // _name = "/video_$_formattedDate.mp4";
              if (Platform.isAndroid) {
                print(_savedFile.path);
              }
            }
          }
        }
      } catch (e) {
        print(e);
        _inCounter.add(0);
        _savedFile.delete();
      }
    }
  }

  void dispose() {
    _filehandlingEventController.close();
    _filehandlingStreamController.close();
  }

  void cancelDownload(CancelToken cancelToken) {
    cancelToken.cancel();
    _inCounter.add(0);
  }
}
