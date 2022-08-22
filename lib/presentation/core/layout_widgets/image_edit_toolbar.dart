import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_edit_stack_emoji.dart';
import 'package:flutter_template/presentation/core/layout_widgets/stack_item_model.dart';
import 'package:image_cropper/image_cropper.dart';

import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';

class ImageEditToolBar extends StatelessWidget {
  const ImageEditToolBar(
      {Key? key,
      required this.onDelete,
      required this.onCrop,
      required this.onAddToStack,
      required this.stackLastIdList})
      : super(key: key);
  final Function() onDelete;
  final Function(String path) onCrop;
  final Function(Widget item) onAddToStack;
  final List<int> stackLastIdList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (context, iState) {
        return Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
              ),
              Row(
                children: [
                  // delete should only be visible when there is more than
                  // one image or video
                  if (iState.imagePaths.length > 1)
                    IconButton(
                      onPressed: () => onDelete(),
                      icon: const Icon(Icons.delete_outlined),
                      color: Colors.white,
                    )
                  else
                    const SizedBox.shrink(),
                  IconButton(
                    onPressed: () async {
                      final CroppedFile? croppedFile = await ImageCropper()
                          .cropImage(
                              sourcePath: iState.selectedPath.trim().isEmpty
                                  ? iState.imagePaths[iState.selectedIndex]
                                  : iState.selectedPath,
                              compressQuality: 100,
                              uiSettings: [
                            AndroidUiSettings(
                              toolbarTitle: "Crop your image",
                              initAspectRatio: CropAspectRatioPreset.original,
                              lockAspectRatio: false,
                            ),
                          ]);
                      if (croppedFile != null) {
                        onCrop(croppedFile.path);
                      }
                    },
                    icon: const Icon(Icons.crop),
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (iState.imageEditActiveTool !=
                          ImageEditToolBarActiveItem.emoji) {
                        context.read<ImageEditBloc>().add(
                              const ImageEditEvent.setImageEditActiveItem(
                                ImageEditToolBarActiveItem.emoji,
                              ),
                            );
                      } else {
                        context.read<ImageEditBloc>().add(
                              const ImageEditEvent.setImageEditActiveItem(
                                ImageEditToolBarActiveItem.none,
                              ),
                            );
                      }
                      showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.black.withOpacity(.5),
                          context: context,
                          builder: (sContext) {
                            return Container(
                                margin: const EdgeInsets.only(top: 50.0),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            context.read<ImageEditBloc>().add(
                                                  const ImageEditEvent
                                                      .setImageEditActiveItem(
                                                    ImageEditToolBarActiveItem
                                                        .none,
                                                  ),
                                                );
                                            Navigator.of(sContext,
                                                    rootNavigator: true)
                                                .pop();
                                          },
                                          icon: const Icon(Icons.close,
                                              color: Colors.white)),
                                      const SizedBox(width: 20.0),
                                      const Text("Choose an emoji",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  GridView.count(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 20.0),
                                    shrinkWrap: true,
                                    crossAxisCount: 4,
                                    children: Emojis.getEmojis(
                                        context, onAddToStack, stackLastIdList),
                                  ),
                                ]));
                          });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60.0)),
                        color: iState.imageEditActiveTool ==
                                ImageEditToolBarActiveItem.emoji
                            ? iState.painterColor
                            : Colors.transparent,
                      ),
                      child: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (iState.imageEditActiveTool !=
                            ImageEditToolBarActiveItem.text) {
                          context.read<ImageEditBloc>().add(
                                const ImageEditEvent.setImageEditActiveItem(
                                  ImageEditToolBarActiveItem.text,
                                ),
                              );
                        } else {
                          context.read<ImageEditBloc>().add(
                                const ImageEditEvent.setImageEditActiveItem(
                                  ImageEditToolBarActiveItem.none,
                                ),
                              );
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(60.0)),
                          color: iState.imageEditActiveTool ==
                                  ImageEditToolBarActiveItem.text
                              ? iState.painterColor
                              : Colors.transparent,
                        ),
                        child: const Icon(
                          Icons.text_fields_outlined,
                          color: Colors.white,
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      if (iState.imageEditActiveTool !=
                          ImageEditToolBarActiveItem.freehand) {
                        context.read<ImageEditBloc>().add(
                              const ImageEditEvent.setImageEditActiveItem(
                                ImageEditToolBarActiveItem.freehand,
                              ),
                            );
                      } else {
                        context.read<ImageEditBloc>().add(
                              const ImageEditEvent.setImageEditActiveItem(
                                ImageEditToolBarActiveItem.none,
                              ),
                            );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60.0)),
                        color: iState.imageEditActiveTool ==
                                ImageEditToolBarActiveItem.freehand
                            ? iState.painterColor
                            : Colors.transparent,
                      ),
                      child:
                          const Icon(Icons.edit_outlined, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class Emojis {
  final BuildContext context;
  final Function(Widget item) onAddToStack;
  Emojis({
    required this.context,
    required this.onAddToStack,
  });

  static final List<String> emg = [
    "😊",
    "😎",
    "💍",
    "🕶️",
    "⚽",
    "❤️",
    "💔",
    "🏁",
    "♣️",
    "🎵",
    "✂️",
    "🎱",
    "🌚"
  ];

  static List<Widget> getEmojis(BuildContext context,
      Function(Widget item) onAddToStack, List<int> lastIndexList) {
    return emg
        .map((e) => GestureDetector(
              onTap: () {
                ImageEditState state = context.read<ImageEditBloc>().state;
                final height = MediaQuery.of(context).size.height;
                final width = MediaQuery.of(context).size.width;
                final offset = Offset(width / 2, height / 2);
                final List<List<StackItemModel>> stackInfoList = [];
                stackInfoList.addAll(state.stackItemInfoList);
                stackInfoList[state.selectedIndex].add(
                  StackItemModel(
                    id: lastIndexList[state.selectedIndex],
                    offset: offset,
                    scale: 1.0,
                    rotation: 0.0,
                    color: state.painterColor,
                    initialRotation: 0.0,
                    initialScale: 1.0,
                  ),
                );
                context.read<ImageEditBloc>().add(
                      ImageEditEvent.setStackInfoList(
                        stackInfoList,
                      ),
                    );
                onAddToStack(StackEmoji(
                    centerOffset: offset,
                    emoji: e,
                    id: lastIndexList[state.selectedIndex]));
                lastIndexList[
                    context.read<ImageEditBloc>().state.selectedIndex]++;
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Text(e, style: const TextStyle(fontSize: 40.0)),
            ))
        .toList();
  }
}
