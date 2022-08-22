import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class FilterBottomToolBar extends StatelessWidget {
  FilterBottomToolBar({Key? key}) : super(key: key);
  final List<List<double>> cMatrixList = [
    ColorMatrixConstants.noFilter,
    ColorMatrixConstants.grayScale,
    ColorMatrixConstants.oldTimes,
    ColorMatrixConstants.sepium,
    ColorMatrixConstants.purple
  ];

  final List<String> matrixNames = [
    "Original",
    "Gray Scale",
    "Old Times",
    "Sepium",
    "Purple"
  ];

  ColorMatrix getMatrix(int index) {
    if (index == 1) {
      return ColorMatrix.grayScale;
    } else if (index == 2) {
      return ColorMatrix.oldTimes;
    } else if (index == 3) {
      return ColorMatrix.sepium;
    } else if (index == 4) {
      return ColorMatrix.purple;
    } else {
      return ColorMatrix.noFilter;
    }
  }

  Widget generateFilter(BuildContext context, int index) {
    final ImageEditState state = context.read<ImageEditBloc>().state;

    return GestureDetector(
      onTap: () {
        final List<ColorMatrix> tempList = [];
        tempList.addAll(state.colorMatrixes);
        tempList.removeAt(state.selectedIndex);
        tempList.insert(state.selectedIndex, getMatrix(index));
        context
            .read<ImageEditBloc>()
            .add(ImageEditEvent.setColorMatrixFilter(tempList));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          decoration: BoxDecoration(
            border: state.colorMatrixes[state.selectedIndex] == getMatrix(index)
                ? Border.all(color: Kolors.primary, width: 2.0)
                : null,
          ),
          child: Column(
            children: [
              Expanded(
                child: ColorFiltered(
                  colorFilter: ColorFilter.matrix(cMatrixList[index]),
                  child: Image.file(
                    File(state.imagePaths[state.selectedIndex]),
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 70.0,
                    // color: Colors.red,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30.0,
                width: 70.0,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
                child: Text(
                  matrixNames[index],
                  style: const TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (iContext, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                iContext.read<ImageEditBloc>().add(
                    const ImageEditEvent.setEditMode(ImageEditMode.imageEdit));
              },
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.closeFilter}",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 140,
              width: double.infinity,
              color: const Color(0xFF52595D),
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: cMatrixList.length,
                itemBuilder: (context, index) {
                  return generateFilter(context, index);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
