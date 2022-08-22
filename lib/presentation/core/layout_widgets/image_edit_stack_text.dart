import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/stack_item_model.dart';

class StackText extends StatefulWidget {
  const StackText({
    Key? key,
    required this.text,
    required this.constraints,
    required this.id,
    required this.pageIndex,
  }) : super(key: key);
  final String text;
  final BoxConstraints constraints;
  final int id;
  final int pageIndex;
  @override
  _StackTextState createState() => _StackTextState();
}

class _StackTextState extends State<StackText> {
  // late Offset locationPoints;
  TextEditingController controller = TextEditingController();
  Offset _position = Offset.zero;
  double _initialScale = 1.0;
  double _scaleFactor = 1.0;
  double _lastRotation = 0.0;
  double _rotation = 0.0;

  @override
  void initState() {
    initScale();
    print("What is really going on?");
    super.initState();
  }

  void initScale() {
    final StackItemModel model = context
        .read<ImageEditBloc>()
        .state
        .stackItemInfoList[widget.pageIndex]
        .singleWhere((element) => element.id == widget.id);
    _initialScale = model.initialScale;
    _scaleFactor = model.scale;
    _rotation = model.rotation;
    _lastRotation = model.initialRotation;
    _position = model.offset;
  }

  @override
  Widget build(BuildContext context) {
    print("id is ${widget.id}");
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (iContext, iState) {
        return Positioned.fromRect(
          rect: Rect.fromLTWH(
            _position.dx,
            _position.dy,
            widget.constraints.maxWidth,
            widget.constraints.maxHeight,
          ),
          child: GestureDetector(
            onScaleStart: (details) {
              if (iState.imageEditActiveTool !=
                  ImageEditToolBarActiveItem.freehand) {
                iContext.read<ImageEditBloc>().add(
                    const ImageEditEvent.setEditMode(
                        ImageEditMode.stackItemDelete));
                _initialScale = _scaleFactor;
              }
            },
            onScaleEnd: (details) {
              if (iState.imageEditActiveTool !=
                  ImageEditToolBarActiveItem.freehand) {
                iContext.read<ImageEditBloc>().add(
                    const ImageEditEvent.setEditMode(ImageEditMode.imageEdit));

                // ...
                final List<List<StackItemModel>> list = [];
                list.addAll(iState.stackItemInfoList);
                final model = list[iState.selectedIndex]
                    .singleWhere((element) => element.id == widget.id);

                model.offset = _position;
                model.scale = _scaleFactor;
                model.initialScale = _initialScale;
                model.rotation = _rotation;
                model.initialRotation = _lastRotation;

                list[iState.selectedIndex]
                    .removeWhere((element) => element.id == widget.id);
                list[iState.selectedIndex].add(model);
                context
                    .read<ImageEditBloc>()
                    .add(ImageEditEvent.setStackInfoList(list));
              }
              print("scale has ended");
            },
            onScaleUpdate: (details) {
              if (iState.imageEditActiveTool !=
                  ImageEditToolBarActiveItem.freehand) {
                setState(() {
                  _position = details.focalPoint;
                  _scaleFactor = _initialScale * details.scale;
                  _rotation += details.rotation;
                  _lastRotation = details.rotation;
                });
              }
            },
            child: Transform.rotate(
              angle: _rotation * pi / 180.0,
              child: Text(
                widget.text,
                textScaleFactor: _scaleFactor,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: iState.stackItemInfoList[iState.selectedIndex]
                        .singleWhere((element) => element.id == widget.id)
                        .color),
              ),
            ),
          ),
        );
      },
    );
  }
}
