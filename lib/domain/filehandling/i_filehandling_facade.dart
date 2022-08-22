import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/filehandling/filehandling_failures.dart';

abstract class IFileHandlingFacade {
  Future<Either<FileHandlingFailure, EnableSaveFileToGallery>>
      enableDisableSaveFileToGallery({required EnableSaveFileToGallery value});
  Future<Either<FileHandlingFailure, List<FileSystemEntity>>>
      getUserFolderFromStorage();
  Future<Either<FileHandlingFailure, List<File>>> getUserFilesFromStorage(
      {required String userName,});
  Future<Either<FileHandlingFailure, Unit>> deleteSelectedFiles(
      {required List<File> fileList,});
       Future<Either<EnableSaveFileToGallery, EnableSaveFileToGallery>>
      getEnableDisableSaveFileToGalleryStatus();
}
