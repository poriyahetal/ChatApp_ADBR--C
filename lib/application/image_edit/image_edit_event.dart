part of 'image_edit_bloc.dart';

@freezed
class ImageEditEvent with _$ImageEditEvent {
  const factory ImageEditEvent.setEditMode(ImageEditMode value) = _SetEditMode;
  const factory ImageEditEvent.updateImagePaths(List<String> paths) =
      _UpdateImagePaths;
  const factory ImageEditEvent.setSelectedImagePath(String path) =
      _SetSelectedImagePath;
  const factory ImageEditEvent.setSeletedIndex(int index) = _SetSelectedIndex;
  const factory ImageEditEvent.setColorMatrixFilter(
      List<ColorMatrix> matrixList) = _SetColorMatrixFilter;
  const factory ImageEditEvent.setImageEditActiveItem(
      ImageEditToolBarActiveItem item) = _SetImageEditActiveItem;
  const factory ImageEditEvent.setPainterColor(Color color) = _SetPainterColor;
  const factory ImageEditEvent.setStackInfoList(
      List<List<StackItemModel>> list) = _SetStackInfoList;
}
