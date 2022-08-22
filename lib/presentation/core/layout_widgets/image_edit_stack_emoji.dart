import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/stack_item_model.dart';

class StackEmoji extends StatefulWidget {
  const StackEmoji(
      {Key? key,
      required this.centerOffset,
      required this.emoji,
      required this.id})
      : super(key: key);
  final Offset centerOffset;
  final String emoji;
  final int id;
  @override
  _StackEmojiState createState() => _StackEmojiState();
}

class _StackEmojiState extends State<StackEmoji> {
  // late Offset locationPoints;
  TextEditingController controller = TextEditingController();
  late ValueNotifier<Offset> positionNotifier =
      ValueNotifier<Offset>(widget.centerOffset);
  double _initialScale = 1.0;
  double _scaleFactor = 1.0;
  double _lastRotation = 0.0;
  double _rotation = 0.0;
  @override
  void initState() {
    initScale();
    super.initState();
  }

  void initScale() {
    final StackItemModel model = context
        .read<ImageEditBloc>()
        .state
        .stackItemInfoList[context.read<ImageEditBloc>().state.selectedIndex]
        .singleWhere((element) => element.id == widget.id);
    _initialScale = model.initialScale;
    _scaleFactor = model.scale;
    _rotation = model.rotation;
    _lastRotation = model.initialRotation;
    positionNotifier.value = model.offset;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (iContext, iState) {
        return ValueListenableBuilder(
          valueListenable: positionNotifier,
          builder: (context, Offset offset, child) {
            return Positioned(
              top: offset.dy,
              left: offset.dx,
              child: GestureDetector(
                onScaleStart: (details) {
                  if (iState.imageEditActiveTool !=
                      ImageEditToolBarActiveItem.freehand) {
                    _initialScale = _scaleFactor;
                    iContext.read<ImageEditBloc>().add(
                        const ImageEditEvent.setEditMode(
                            ImageEditMode.stackItemDelete));
                  }
                },
                onScaleEnd: (details) {
                  if (iState.imageEditActiveTool !=
                      ImageEditToolBarActiveItem.freehand) {
                    iContext.read<ImageEditBloc>().add(
                          const ImageEditEvent.setEditMode(
                            ImageEditMode.imageEdit,
                          ),
                        );
                    final List<List<StackItemModel>> list = [];
                    list.addAll(iState.stackItemInfoList);
                    final model = list[iState.selectedIndex]
                        .singleWhere((element) => element.id == widget.id);

                    model.offset = offset;
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
                },
                onScaleUpdate: (details) {
                  if (iState.imageEditActiveTool !=
                      ImageEditToolBarActiveItem.freehand) {
                    setState(() {
                      positionNotifier.value = details.focalPoint;
                      _scaleFactor = _initialScale * details.scale;
                      _rotation += details.rotation;
                      _lastRotation = details.rotation;
                      print("last rotation: $_lastRotation");
                      print("scale is $_scaleFactor");
                      print("rotation is $_rotation");
                    });
                  }
                },
                child: Transform.rotate(
                  angle: _rotation * pi / 180.0,
                  alignment: FractionalOffset.center,
                  child: Text(
                    widget.emoji,
                    style: const TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    textScaleFactor: _scaleFactor,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
