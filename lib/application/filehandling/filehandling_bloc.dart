import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/filehandling/i_filehandling_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'filehandling_bloc.freezed.dart';
part 'filehandling_event.dart';
part 'filehandling_state.dart';

@injectable
class FilehandlingBloc extends Bloc<FilehandlingEvent, FilehandlingState> {
  FilehandlingBloc(this._fileHandlingFacade)
      : super(FilehandlingState.initial());

  final IFileHandlingFacade _fileHandlingFacade;

  @override
  Stream<FilehandlingState> mapEventToState(
    FilehandlingEvent event,
  ) async* {
    yield* event.map(
      downloadFile: (_) async* {},
      enableDisableSaveToGallery: (e) async* {
        final opt = await _fileHandlingFacade.enableDisableSaveFileToGallery(
            value: e.value);
        yield opt.fold(
          (l) => state.copyWith(
            enableSaveFileToGalleryStatus: state.enableSaveFileToGalleryStatus,
          ),
          (newStatus) => state.copyWith(
            enableSaveFileToGalleryStatus: newStatus,
          ),
        );
      },
      getEnableDisableSaveToGalleryStatus: (e) async* {
        final opt =
            await _fileHandlingFacade.getEnableDisableSaveFileToGalleryStatus();
        yield opt.fold(
          (l) => state.copyWith(
            enableSaveFileToGalleryStatus: state.enableSaveFileToGalleryStatus,
          ),
          (newStatus) => state.copyWith(
            enableSaveFileToGalleryStatus: newStatus,
          ),
        );
      },
      getUserFolderFromStorage: (e) async* {
        yield state.copyWith(
          checkFileExist: false,
        );

        final opt = await _fileHandlingFacade.getUserFolderFromStorage();

        yield opt.fold(
          (l) => state.copyWith(
            checkDirExist: false,
            userDirList: [],
          ),
          (fileList) => state.copyWith(
            checkDirExist: true,
            userDirList: fileList,
          ),
        );
      },
      getUserFilesFromStorage: (e) async* {
        final opt = await _fileHandlingFacade.getUserFilesFromStorage(
            userName: e.userName);
        yield opt.fold(
          (l) => state.copyWith(
            checkFileExist: false,
            fileList: [],
          ),
          (fileList) => state.copyWith(
            checkFileExist: true,
            fileList: fileList,
          ),
        );
      },
      deleteSelectedFiles: (e) async* {
        final opt =
            await _fileHandlingFacade.deleteSelectedFiles(fileList: e.fileList);
        final opt2 = await _fileHandlingFacade.getUserFilesFromStorage(
            userName: e.userName);
        yield opt2.fold(
          (l) => state.copyWith(
            checkFileExist: false,
            fileList: [],
          ),
          (fileList) => state.copyWith(
            checkFileExist: true,
            fileList: fileList,
          ),
        );
      },
      enableSelectionBar: (e) async* {
        yield state.copyWith(
          isAppSelectionbarEnable: e.isSelectionBar,
          selectedIndexCount: 0,
        );
        state.selectedIndexList.clear();
      },
      changeSelection: (e) async* {
        state.selectedFile.add(e.file);
        state.selectedIndexList.add(e.index);
        yield state.copyWith(
            selectionMode: e.enable,
            selectedIndexList: state.selectedIndexList,
            selectedIndexCount: state.selectedIndexList.length);
      },
      disableSelection: (e) async* {
        yield state.copyWith(selectionMode: e.enable);
        state.selectedFile.clear();
        state.selectedIndexList.clear();
      },
      updateCounts: (e) async* {
        yield state.copyWith(
            selectedIndexCount: state.selectedIndexList.length);
      },
    );
  }
}
