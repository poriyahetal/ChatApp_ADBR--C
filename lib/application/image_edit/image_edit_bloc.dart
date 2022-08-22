import 'package:bloc/bloc.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_template/presentation/core/layout_widgets/stack_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/enums.dart';

part 'image_edit_event.dart';
part 'image_edit_state.dart';
part 'image_edit_bloc.freezed.dart';

class ImageEditBloc extends Bloc<ImageEditEvent, ImageEditState> {
  ImageEditBloc() : super(ImageEditState.initial());
  // final IContactsFacade _contactsFacade;

  @override
  Stream<ImageEditState> mapEventToState(
    ImageEditEvent event,
  ) async* {
    yield* event.map(
      setEditMode: (value) async* {
        yield state.copyWith(editMode: value.value);
      },
      updateImagePaths: (value) async* {
        yield state.copyWith(imagePaths: value.paths);
      },
      setSelectedImagePath: (value) async* {
        yield state.copyWith(selectedPath: value.path);
      },
      setSeletedIndex: (value) async* {
        yield state.copyWith(selectedIndex: value.index);
      },
      setColorMatrixFilter: (value) async* {
        yield state.copyWith(colorMatrixes: value.matrixList);
      },
      setImageEditActiveItem: (value) async* {
        yield state.copyWith(imageEditActiveTool: value.item);
      },
      setPainterColor: (value) async* {
        yield state.copyWith(painterColor: value.color);
      },
      setStackInfoList: (value) async* {
        yield state.copyWith(stackItemInfoList: value.list);
      },
    );
  }
}
