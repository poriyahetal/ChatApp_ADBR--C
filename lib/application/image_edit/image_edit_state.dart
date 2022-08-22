part of 'image_edit_bloc.dart';

@freezed
class ImageEditState with _$ImageEditState {
  const factory ImageEditState({
    required ImageEditMode editMode,
    required String selectedPath,
    required int selectedIndex,
    required List<String> imagePaths,
    required List<ColorMatrix> colorMatrixes,
    required ImageEditToolBarActiveItem imageEditActiveTool,
    required Color painterColor,
    required List<List<StackItemModel>> stackItemInfoList,
  }) = _ImageEditState;
  factory ImageEditState.initial() => ImageEditState(
      editMode: ImageEditMode.noActivity,
      selectedPath: "",
      selectedIndex: 0,
      imagePaths: [],
      colorMatrixes: [],
      imageEditActiveTool: ImageEditToolBarActiveItem.none,
      painterColor: Color(0xFF0000FF),
      stackItemInfoList: []);
}
