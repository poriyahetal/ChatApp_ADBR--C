import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/freehand_painter.dart';
import 'package:flutter_template/presentation/core/layout_widgets/selected_video_thumbnail.dart';
import 'package:flutter_template/presentation/core/layout_widgets/stack_item_model.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:preload_page_view/preload_page_view.dart';

class ImageArray extends StatelessWidget {
  const ImageArray(
      {Key? key,
      required this.pController,
      required this.imageStackList,
      required this.pointsList,
      required this.messageTEC,
      required this.stackChildrenLastId})
      : super(key: key);
  final PreloadPageController pController;
  final List<List<Widget>> imageStackList;
  final List<List<FreeHandModel>> pointsList;
  final List<TextEditingController> messageTEC;
  final List<int> stackChildrenLastId;
  List<double> getMatrix(ColorMatrix matrix) {
    switch (matrix) {
      case ColorMatrix.noFilter:
        return ColorMatrixConstants.noFilter;
      case ColorMatrix.grayScale:
        return ColorMatrixConstants.grayScale;
      case ColorMatrix.sepium:
        return ColorMatrixConstants.sepium;
      case ColorMatrix.oldTimes:
        return ColorMatrixConstants.oldTimes;
      case ColorMatrix.purple:
        return ColorMatrixConstants.purple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (context, iState) {
        final List<Widget> wList = [];

        for (int i = 0; i < iState.imagePaths.length; i++) {
          wList.add(
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2.0,
              ),
              child: GestureDetector(
                onTap: () {
                  pController.animateToPage(
                    i,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: iState.selectedIndex == i
                        ? Border.all(
                            color: Kolors.primary,
                            width: 2.0,
                          )
                        : null,
                  ),
                  child: ColorFiltered(
                    colorFilter:
                        ColorFilter.matrix(getMatrix(iState.colorMatrixes[i])),
                    child: iState.imagePaths[i].split('.').last.contains('mp4')
                        ? SelectedVideoThumbnail(
                            file: File(iState.imagePaths[i]))
                        : Image.file(
                            File(iState.imagePaths[i]),
                            height: 50.0,
                            width: 50.0,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ),
          );
        }
        wList.add(
          GestureDetector(
            onTap: () {
              // final FilePickerResult? result =
              // await
              FilePicker.platform
                  .pickFiles(
                type: FileType.custom,
                allowedExtensions: ['jpg', 'png', 'mp4'],
                allowMultiple: true,
              )
                  .then((result) {
                if (result != null) {
                  final List<String> pathList = [];
                  pathList.addAll(iState.imagePaths);
                  pathList.addAll(
                    result.files.map((e) => e.path.toString()).toList(),
                  );
                  final List<ColorMatrix> matrixList = [];
                  matrixList.addAll(iState.colorMatrixes);
                  matrixList.addAll(
                    result.files.map((e) => ColorMatrix.noFilter).toList(),
                  );
                  context
                      .read<ImageEditBloc>()
                      .add(ImageEditEvent.updateImagePaths(pathList));
                  context
                      .read<ImageEditBloc>()
                      .add(ImageEditEvent.setColorMatrixFilter(matrixList));
                  final List<List<StackItemModel>> stackChildInfoList = [];
                  stackChildInfoList.addAll(iState.stackItemInfoList);
                  result.files.forEach((element) {
                    imageStackList.add(<Widget>[]);
                    pointsList.add(<FreeHandModel>[]);
                    messageTEC.add(TextEditingController());
                    stackChildInfoList.add(<StackItemModel>[]);
                    stackChildrenLastId.add(0);
                  });
                  context
                      .read<ImageEditBloc>()
                      .add(ImageEditEvent.setStackInfoList(stackChildInfoList));
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
        return SizedBox(
          height: 50.0,
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: wList,
          ),
        );
      },
    );
  }
}
