part of 'filehandling_bloc.dart';

@freezed
class FilehandlingState with _$FilehandlingState {
  const factory FilehandlingState({
    required DownloadFileBloc downloadFileBloc,
    required EnableSaveFileToGallery enableSaveFileToGalleryStatus,
    required bool isSaveDevice,
    required bool checkFileExist,
    required bool checkDirExist,
    required List<File> fileList,
    required List<FileSystemEntity> userDirList,
    required bool isAppSelectionbarEnable,
    required List<int> selectedIndexList,
    required bool selectionMode,
    required List<File> selectedFile,
    required int selectedIndexCount,
  }) = _FilehandlingState;
  factory FilehandlingState.initial() => FilehandlingState(
        downloadFileBloc: DownloadFileBloc(),
        checkDirExist: false,
        isSaveDevice: false,
        checkFileExist: false,
        userDirList: [],
        fileList: [],
        isAppSelectionbarEnable: false,
        selectedIndexList: [],
        selectionMode: false,
        enableSaveFileToGalleryStatus: EnableSaveFileToGallery.disabled,
        selectedFile: [],
        selectedIndexCount:0,
      );
}
