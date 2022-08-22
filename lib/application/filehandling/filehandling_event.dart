part of 'filehandling_bloc.dart';

@freezed
class FilehandlingEvent with _$FilehandlingEvent {
  const factory FilehandlingEvent.downloadFile() = _downloadFile;

  const factory FilehandlingEvent.enableDisableSaveToGallery({
    required EnableSaveFileToGallery value,
  }) = _EnableDisableSaveToGallery;
    const factory FilehandlingEvent.getEnableDisableSaveToGalleryStatus() = _GetEnableDisableSaveToGalleryStatus;
  
  const factory FilehandlingEvent.getUserFolderFromStorage() = _GetUserFolderFromStorage;
  const factory FilehandlingEvent.getUserFilesFromStorage({required String userName}) = _GetUserFilesFromStorage;
  const factory FilehandlingEvent.deleteSelectedFiles({required List<File> fileList,required String userName}) = _DeleteSelectedFiles;
    factory FilehandlingEvent.enableSelectionBar({
    required bool isSelectionBar,
  }) = EnableSelectionBar;
  factory FilehandlingEvent.changeSelection({
    required bool enable,
    required File file,
    required int index,
  }) = ChangeSelection;
  factory FilehandlingEvent.disableSelection({
    required bool enable,
  }) = DisableSelection;
  factory FilehandlingEvent.updateCounts({
     required int count,
  }) = UpdateCounts;
}
