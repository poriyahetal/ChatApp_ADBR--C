// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/domain/filehandling/filehandling_failures.dart';
import 'package:flutter_template/domain/filehandling/i_filehandling_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFileHandlingFacade)
class FileHandlingFacade extends IFileHandlingFacade {
  @override
  Future<Either<FileHandlingFailure, EnableSaveFileToGallery>>
      enableDisableSaveFileToGallery(
          {required EnableSaveFileToGallery value}) async {
    try {
      await Storage().secureStorage.write(
            key: StorageConstants.enableSaveFileToGallery,
            value: value.toString(),
          );
      debugPrint("enableSaveFileToGallery new Status ==> ${value.toString()}");
      return right(value);
    } catch (e) {
      return left(const FileHandlingFailure.customError());
    }
  }

  @override
  Future<Either<FileHandlingFailure, List<FileSystemEntity>>>
      getUserFolderFromStorage() async {
    final List<FileSystemEntity> userDirList = [];
    final Directory dir = Directory(LocalStorageConstant.appFolder);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    if ((dir.listSync().length) > 0) {
      debugPrint('exist');
      dir.listSync().forEach((element) {
        if (element is Directory) {
          print(element.toString());
          userDirList.add(element);
          debugPrint('exist');
        }
      });
      return right(userDirList);
    } else {
      debugPrint("file not exist");
      return left(const FileHandlingFailure.fileNotFound());
    }
  }

  @override
  Future<Either<FileHandlingFailure, List<File>>> getUserFilesFromStorage(
      {required String userName}) async {
    final List<File> fileList = [];

    if (userName != 'Stories') {
      final Directory dirVideos = Directory(LocalStorageConstant.appFolder +
          userName +
          LocalStorageConstant.videos);
      final Directory dirAudios = Directory(LocalStorageConstant.appFolder +
          userName +
          LocalStorageConstant.audio);
      final Directory dirImages = Directory(LocalStorageConstant.appFolder +
          userName +
          LocalStorageConstant.images);
      final Directory dirDocuments = Directory(LocalStorageConstant.appFolder +
          userName +
          LocalStorageConstant.document);
      //retrieve video files
      if (!await dirVideos.exists()) {
        await dirVideos.create(recursive: true);
      }
      if ((dirVideos.listSync().length) > 0) {
        debugPrint('dirVideos file exist');
        dirVideos.listSync().forEach((element) {
          if (element is File) {
            print(element.toString());
            fileList.add(element);
            debugPrint('exist');
          }
        });
      }
      //retrieve audio files
      if (!await dirAudios.exists()) {
        await dirAudios.create(recursive: true);
      }
      if ((dirAudios.listSync().length) > 0) {
        debugPrint('dirAudios file exist');
        dirAudios.listSync().forEach((element) {
          if (element is File) {
            print(element.toString());
            fileList.add(element);
            debugPrint('exist');
          }
        });
      }
      //retrieve images files
      if (!await dirImages.exists()) {
        await dirImages.create(recursive: true);
      }
      if ((dirImages.listSync().length) > 0) {
        debugPrint('dirImages file exist');
        dirImages.listSync().forEach((element) {
          if (element is File) {
            print(element.toString());
            fileList.add(element);
            debugPrint('exist');
          }
        });
      }
      //retrieve docs files
      if (!await dirDocuments.exists()) {
        await dirDocuments.create(recursive: true);
      }
      if ((dirDocuments.listSync().length) > 0) {
        debugPrint('dirDocuments file exist');
        dirDocuments.listSync().forEach((element) {
          if (element is File) {
            print(element.toString());
            fileList.add(element);
            debugPrint('exist');
          }
        });
      }
    } else {
      final Directory dirStories = Directory(
          LocalStorageConstant.appFolder + LocalStorageConstant.stories);
      if (!await dirStories.exists()) {
        await dirStories.create(recursive: true);
      }
      if ((dirStories.listSync().length) > 0) {
        debugPrint('dirDocuments file exist');
        dirStories.listSync().forEach((element) {
          if (element is File) {
            print(element.toString());
            fileList.add(element);
            debugPrint('exist');
          }
        });
      }
    }
    if (fileList.isNotEmpty) {
      return right(fileList);
    } else {
      debugPrint("file not exist");
      return left(const FileHandlingFailure.fileNotFound());
    }
  }

  @override
  Future<Either<FileHandlingFailure, Unit>> deleteSelectedFiles(
      {required List<File> fileList}) async {
    try {
      fileList.forEach((element) {
        element.delete();
      });
      return right(unit);
    } catch (e) {
      return left(const FileHandlingFailure.customError());
    }
  }

  @override
  Future<Either<EnableSaveFileToGallery, EnableSaveFileToGallery>>
      getEnableDisableSaveFileToGalleryStatus() async {
    final String? enableSaveFileToGalleryStatus =
        await Storage().secureStorage.read(
              key: StorageConstants.enableSaveFileToGallery,
            );
    debugPrint(
        "enableSaveFileToGalleryStatus Status ==> ${enableSaveFileToGalleryStatus.toString()}");
    if (enableSaveFileToGalleryStatus ==
        EnableSaveFileToGallery.enabled.toString()) {
      return right(EnableSaveFileToGallery.enabled);
    } else if (enableSaveFileToGalleryStatus ==
        EnableSaveFileToGallery.disabled.toString()) {
      return left(EnableSaveFileToGallery.disabled);
    } else {
      //if no stored value is found, disable the fingerprint lock and cache it
      await Storage().secureStorage.write(
            key: StorageConstants.appLock,
            value: EnableSaveFileToGallery.disabled.toString(),
          );
      return left(EnableSaveFileToGallery.disabled);
    }
  }
}
