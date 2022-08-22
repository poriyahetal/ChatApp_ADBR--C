import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/test.dart';
import 'package:flutter_template/presentation/core/layout_widgets/freehand_painter.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_array.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_caption.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_edit_stack_text.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_edit_toolbar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_filter_bottom_toolbar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/layout_widgets/color_picker.dart';
import 'package:flutter_template/presentation/core/layout_widgets/stack_item_model.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:path/path.dart' as p;
import 'package:preload_page_view/preload_page_view.dart';
import 'package:rxdart/rxdart.dart';
import 'package:screenshot/screenshot.dart';
import 'package:video_player/video_player.dart';

import '../../../application/chats/chats_bloc.dart';

class DisplayCapturedImagePage extends StatefulWidget {
  final List<String> imagePath;
  final Function(List<ImageWithCaptionModel>) onCapture;
  final Function(List<ImageWithCaptionModel>)? onEditCapture;
  final List<ScreenshotController> screenshotController;

  const DisplayCapturedImagePage({
    Key? key,
    required this.imagePath,
    required this.onCapture,
    this.onEditCapture,
    required this.screenshotController,
  }) : super(key: key);

  @override
  _DisplayCapturedImagePageState createState() =>
      _DisplayCapturedImagePageState();
}

class _DisplayCapturedImagePageState extends State<DisplayCapturedImagePage> {
  late List<TextEditingController> messageTEC;
  PreloadPageController pController = PreloadPageController();
  ImageEditBloc imageEditBloc = ImageEditBloc();
  List<List<Widget>> imageStackChildren = [];
  List<List<FreeHandModel>> pointsList = [];
  final pointsStream = BehaviorSubject<List<List<FreeHandModel>>>();
  List<int> stackChildrenLastId = [];
  // GlobalKey boundaryKey = GlobalKey();

  @override
  void dispose() {
    pController.dispose();
    pointsStream.close();
    super.dispose();
  }

  @override
  void initState() {
    final List<ColorMatrix> matrixList = [];
    final List<List<StackItemModel>> stackChildInfoList = [];
    imageEditBloc.add(ImageEditEvent.updateImagePaths(widget.imagePath));
    messageTEC = widget.imagePath.map((e) => TextEditingController()).toList();

    for (int i = 0; i < widget.imagePath.length; i++) {
      matrixList.add(ColorMatrix.noFilter);
      imageStackChildren.add(<Widget>[]);
      pointsList.add(<FreeHandModel>[]);
      stackChildrenLastId.add(0);
      stackChildInfoList.add(<StackItemModel>[]);
    }
    imageEditBloc.add(ImageEditEvent.setStackInfoList(stackChildInfoList));
    // imageEditBloc.add(ImageEditEvent.updateImagePaths(pathList));
    imageEditBloc.add(ImageEditEvent.setColorMatrixFilter(matrixList));

    print("before init setup");
    super.initState();

    setPageEditMode();
  }

  void setPageEditMode() {
    if (isVideo(true)) {
      imageEditBloc
          .add(const ImageEditEvent.setEditMode(ImageEditMode.videoedit));
    } else {
      imageEditBloc
          .add(const ImageEditEvent.setEditMode(ImageEditMode.imageEdit));
    }
  }

  void delete() {
    final List<String> pathList = [];
    final List<ColorMatrix> matrixList = [];
    final List<List<StackItemModel>> stackChildInfoList = [];
    pathList.addAll(imageEditBloc.state.imagePaths);
    pathList.removeAt(imageEditBloc.state.selectedIndex);

    stackChildInfoList.addAll(imageEditBloc.state.stackItemInfoList);
    stackChildInfoList.removeAt(imageEditBloc.state.selectedIndex);
    imageEditBloc.add(ImageEditEvent.setStackInfoList(stackChildInfoList));

    messageTEC.removeAt(imageEditBloc.state.selectedIndex);
    stackChildrenLastId.removeAt(imageEditBloc.state.selectedIndex);

    // final List<ColorMatrix> matrixList = [];
    matrixList.addAll(imageEditBloc.state.colorMatrixes);
    matrixList.removeAt(imageEditBloc.state.selectedIndex);

    imageEditBloc.add(ImageEditEvent.updateImagePaths(pathList));
    imageEditBloc.add(ImageEditEvent.setColorMatrixFilter(matrixList));
    imageStackChildren.removeAt(imageEditBloc.state.selectedIndex);

    if (imageEditBloc.state.imagePaths.length - 1 ==
        pController.page!.toInt()) {
      pController.jumpToPage(imageEditBloc.state.selectedIndex - 1);
    }
    print("Selected item deleted");
  }

  void cropRefresh(String path) {
    setState(() {
      final List<String> imPaths = [];
      imPaths.addAll(imageEditBloc.state.imagePaths);
      imPaths.removeAt(imageEditBloc.state.selectedIndex);
      imPaths.insert(imageEditBloc.state.selectedIndex, path);
      imageEditBloc.add(ImageEditEvent.setSelectedImagePath(
        path,
      ));
      imageEditBloc.add(
        ImageEditEvent.updateImagePaths(imPaths),
      );
    });
  }

  void addToImageStack(Widget item) {
    setState(() {
      imageStackChildren[imageEditBloc.state.selectedIndex].add(item);
    });
  }

  bool isVideo(bool useParsedList) {
    // final bool useParsedList;
    if (useParsedList) {
      if (['.mp4', '.m4p', '.3gp', '.3gpp', '.mpeg', '.mpeg4']
          .contains(p.extension(widget.imagePath[0]))) {
        return true;
      } else {
        return false;
      }
    } else {
      if ([
        '.mp4',
        '.m4p',
        '.3gp',
        '.3gpp',
        '.mpeg',
        '.mpeg4'
      ].contains(p.extension(
          imageEditBloc.state.imagePaths[imageEditBloc.state.selectedIndex]))) {
        return true;
      } else {
        return false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return BlocProvider.value(
          value: imageEditBloc,
          child: SafeScaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                BlocBuilder<ImageEditBloc, ImageEditState>(
                  builder: (context, state) {
                    List<GlobalKey> keys = List.generate(
                        state.imagePaths.length,
                        (index) => GlobalKey(debugLabel: "key $index"));
                    List<GlobalKey> fkeys = List.generate(
                        state.imagePaths.length,
                        (index) => GlobalKey(debugLabel: "fkey $index"));
                    return PreloadPageView.builder(
                      controller: pController,
                      onPageChanged: (index) {
                        imageEditBloc
                            .add(ImageEditEvent.setSeletedIndex(index));
                        print(
                            "length of paths is ${imageEditBloc.state.imagePaths.length}");
                      },
                      itemCount: state.imagePaths.length,
                      itemBuilder: (context, index) {
                        if (isVideo(false)) {
                          print(
                              " video name ${imageEditBloc.state.imagePaths[index]}");
                          return FlickVideoPlayer(
                            flickManager: FlickManager(
                              videoPlayerController: VideoPlayerController.file(
                                File(imageEditBloc.state.imagePaths[index]),
                              ),
                            ),
                          );
                        } else {
                          print(
                              " file name ${imageEditBloc.state.imagePaths[index]}");
                          return ImageEditPage(
                            index: index,
                            imageStackChildren: imageStackChildren,
                            pointsStream: pointsStream,
                            pointsList: pointsList,
                            stackChildIdList: stackChildrenLastId,
                            screenshotController:
                                widget.screenshotController[index],
                            key: keys[index],
                            fkey: fkeys[index],
                            // boundaryKey: boundaryKey,
                          );
                        }
                      },
                    );
                  },
                ),
                // App bar here
                BlocBuilder<ImageEditBloc, ImageEditState>(
                  builder: (iContext, iState) {
                    return Align(
                      alignment: Alignment.topCenter,
                      child: iState.editMode == ImageEditMode.imageEdit
                          ? ImageEditToolBar(
                              onDelete: delete,
                              onCrop: cropRefresh,
                              onAddToStack: addToImageStack,
                              stackLastIdList: stackChildrenLastId,
                            )
                          : const NoEditToolBar(),
                    );
                  },
                ),
                // bottom toolbar
                BlocBuilder<ImageEditBloc, ImageEditState>(
                  builder: (context, state) {
                    Widget child = const SizedBox.shrink();
                    if (state.editMode == ImageEditMode.imageFilter) {
                      child = FilterBottomToolBar();
                    } else if (state.editMode ==
                        ImageEditMode.stackItemDelete) {
                      child = const StackTextBottomDelete();
                    } else if (state.imageEditActiveTool !=
                        ImageEditToolBarActiveItem.text) {
                      print("pcontroller page value is ${pController.page}");
                      child = BaseBottomToolBar(
                        imageStackList: imageStackChildren,
                        onCapture: widget.onCapture,
                        onEditCapture: widget.onEditCapture ?? (image) {},
                        textController: messageTEC[pController.page != null
                            ? pController.page!.toInt()
                            : pController.initialPage],
                        messageTEC: messageTEC,
                        pController: pController,
                        pointsList: pointsList,
                        stackChildrenLastId: stackChildrenLastId,
                      );
                    }
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: child,
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ImageEditPage extends StatefulWidget {
  const ImageEditPage({
    required this.index,
    required this.imageStackChildren,
    required this.pointsStream,
    required this.pointsList,
    required this.stackChildIdList,
    required this.screenshotController,
    required this.key,
    required this.fkey,
    // required this.boundaryKey
  });
  final int index;
  final List<List<Widget>> imageStackChildren;
  final BehaviorSubject<List<List<FreeHandModel>>> pointsStream;
  final List<List<FreeHandModel>> pointsList;
  final List<int> stackChildIdList;
  final ScreenshotController screenshotController;
  final GlobalKey key;
  final GlobalKey fkey;
  // final GlobalKey boundaryKey;
  @override
  _ImageEditPageState createState() => _ImageEditPageState();
}

class _ImageEditPageState extends State<ImageEditPage> {
  //GlobalKey key = GlobalKey();
  final TextEditingController tController = TextEditingController();
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
      builder: (context, state) {
        print("index-->${widget.index}");
        return Stack(
          children: [
            Screenshot(
              controller: widget.screenshotController,
              child: Stack(
                children: [
                  // RepaintBoundary(
                  // key: widget.boundaryKey,
                  // child:
                  GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: InteractiveViewer(
                      maxScale: 6.0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ColorFiltered(
                            colorFilter: ColorFilter.matrix(
                              getMatrix(
                                state.colorMatrixes[state.selectedIndex],
                              ),
                            ),
                            child: Image.file(
                              File(
                                state.imagePaths[state.selectedIndex],
                              ),
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                          if (state.imageEditActiveTool ==
                              ImageEditToolBarActiveItem.freehand)
                            StreamBuilder<List<List<FreeHandModel>>>(
                              stream: widget.pointsStream,
                              builder: (context, snapshot) {
                                return GestureDetector(
                                  onPanStart: (details) {
                                    if (state.imageEditActiveTool ==
                                        ImageEditToolBarActiveItem.freehand) {
                                      RenderBox renderBox = widget
                                          .key.currentContext!
                                          .findRenderObject() as RenderBox;
                                      Paint paint = Paint()
                                        ..color = state.painterColor
                                        ..strokeWidth = 3.0
                                        ..strokeCap = StrokeCap.round;

                                      widget.pointsList[state.selectedIndex]
                                          .add(FreeHandModel(
                                              offset: renderBox.globalToLocal(
                                                  details.globalPosition),
                                              paint: paint));
                                      widget.pointsStream
                                          .add(widget.pointsList);
                                      print("pan has just started ooo;");
                                    }
                                  },
                                  onPanUpdate: (details) {
                                    if (state.imageEditActiveTool ==
                                        ImageEditToolBarActiveItem.freehand) {
                                      final RenderBox renderBox = widget
                                          .key.currentContext!
                                          .findRenderObject() as RenderBox;
                                      final Paint paint = Paint()
                                        ..color = state.painterColor
                                        ..strokeWidth = 6.0
                                        ..strokeCap = StrokeCap.round;

                                      widget.pointsList[state.selectedIndex]
                                          .add(FreeHandModel(
                                              offset: renderBox.globalToLocal(
                                                  details.globalPosition),
                                              paint: paint));
                                      widget.pointsStream
                                          .add(widget.pointsList);
                                    }
                                  },
                                  onPanEnd: (details) {
                                    if (state.imageEditActiveTool ==
                                        ImageEditToolBarActiveItem.freehand) {
                                      widget.pointsList[state.selectedIndex]
                                          .add(FreeHandModel.empty());
                                      widget.pointsStream
                                          .add(widget.pointsList);
                                    }
                                  },
                                  child: Container(
                                    color: Colors.transparent,
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: CustomPaint(
                                      painter: FreeHandPainter(
                                          pointsList: snapshot.data != null
                                              ? snapshot
                                                  .data![state.selectedIndex]
                                              : []),
                                    ),
                                  ),
                                );
                              },
                            )
                          else
                            Container(
                              color: Colors.transparent,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: CustomPaint(
                                painter: FreeHandPainter(
                                    pointsList:
                                        widget.pointsList[state.selectedIndex]),
                              ),
                            ),
                          Stack(
                            alignment: Alignment.center,
                            children:
                                widget.imageStackChildren[state.selectedIndex],
                          )
                        ],
                      ),
                    ),
                  ),
                  // ),
                  if (state.imageEditActiveTool ==
                      ImageEditToolBarActiveItem.text)
                    LayoutBuilder(builder: (context, constraints) {
                      //GlobalKey fKey = GlobalKey();
                      return GestureDetector(
                        onTap: () {
                          final height = MediaQuery.of(context).size.height;
                          final width = MediaQuery.of(context).size.width;
                          final offset = Offset(width / 2, height / 2);
                          RenderBox box = widget.fkey.currentContext!
                              .findRenderObject() as RenderBox;
                          setState(() {
                            final List<List<StackItemModel>> stackInfoList = [];
                            stackInfoList.addAll(state.stackItemInfoList);
                            stackInfoList[state.selectedIndex].add(
                              StackItemModel(
                                id: widget
                                    .stackChildIdList[state.selectedIndex],
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
                            widget.imageStackChildren[state.selectedIndex].add(
                              StackText(
                                text: tController.text,
                                constraints: box.constraints,
                                id: widget
                                    .stackChildIdList[state.selectedIndex],
                                pageIndex: state.selectedIndex,
                              ),
                            );
                            widget.stackChildIdList[state.selectedIndex]++;
                          });
                          context.read<ImageEditBloc>().add(
                              const ImageEditEvent.setImageEditActiveItem(
                                  ImageEditToolBarActiveItem.none));
                        },
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.5),
                          child: Center(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(minWidth: 10.0),
                            child: IntrinsicWidth(
                              child: TextFormField(
                                key: widget.fkey,
                                controller: tController,
                                onEditingComplete: () {
                                  print("Editing has been completed");
                                  final height =
                                      MediaQuery.of(context).size.height;
                                  final width =
                                      MediaQuery.of(context).size.width;
                                  final offset = Offset(width / 2, height / 2);
                                  RenderBox box = widget.fkey.currentContext!
                                      .findRenderObject() as RenderBox;
                                  setState(() {
                                    final List<List<StackItemModel>>
                                        stackInfoList = [];
                                    stackInfoList
                                        .addAll(state.stackItemInfoList);
                                    stackInfoList[state.selectedIndex].add(
                                      StackItemModel(
                                        id: widget.stackChildIdList[
                                            state.selectedIndex],
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
                                    widget
                                        .imageStackChildren[state.selectedIndex]
                                        .add(
                                      StackText(
                                        text: tController.text,
                                        constraints: box.constraints,
                                        id: widget.stackChildIdList[
                                            state.selectedIndex],
                                        pageIndex: state.selectedIndex,
                                      ),
                                    );
                                    widget.stackChildIdList[
                                        state.selectedIndex]++;
                                  });
                                  context.read<ImageEditBloc>().add(
                                      const ImageEditEvent
                                              .setImageEditActiveItem(
                                          ImageEditToolBarActiveItem.none));
                                },
                                cursorColor: state.painterColor,
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: state.painterColor,
                                  backgroundColor: Colors.transparent,
                                ),
                                decoration: const InputDecoration(
                                    hintText: "TEXT",
                                    hintStyle: TextStyle(
                                        fontSize: 40.0, color: Colors.grey),
                                    fillColor: Colors.transparent,
                                    border: InputBorder.none),
                                autofocus: true,
                                cursorWidth: 4.0,
                              ),
                            ),
                          )),
                        ),
                      );
                    }),
                ],
              ),
            ),
            if (state.imageEditActiveTool ==
                    ImageEditToolBarActiveItem.freehand ||
                state.imageEditActiveTool == ImageEditToolBarActiveItem.text)
              const ColorPicker(),
          ],
        );
      },
    );
  }
}

class NoEditToolBar extends StatelessWidget {
  const NoEditToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ],
    );
  }
}

class StackTextBottomDelete extends StatefulWidget {
  const StackTextBottomDelete({Key? key}) : super(key: key);

  @override
  _StackTextDeleteState createState() => _StackTextDeleteState();
}

class _StackTextDeleteState extends State<StackTextBottomDelete> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200.0,
      width: double.infinity,
      child: Center(
        child: Icon(
          Icons.delete,
          color: Colors.red,
          size: 60.0,
        ),
      ),
    );
  }
}

// Image Filter Widget

class BaseBottomToolBar extends StatelessWidget {
  const BaseBottomToolBar({
    Key? key,
    required this.imageStackList,
    required this.textController,
    required this.onCapture,
    required this.onEditCapture,
    required this.pController,
    required this.pointsList,
    required this.messageTEC,
    required this.stackChildrenLastId,
  }) : super(key: key);
  final TextEditingController textController;
  final Function(List<ImageWithCaptionModel>) onCapture;
  final Function(List<ImageWithCaptionModel>) onEditCapture;
  final List<List<Widget>> imageStackList;
  final PreloadPageController pController;
  final List<List<FreeHandModel>> pointsList;
  final List<TextEditingController> messageTEC;
  final List<int> stackChildrenLastId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (iContext, iState) {
        return Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  iContext.read<ImageEditBloc>().add(
                        const ImageEditEvent.setEditMode(
                          ImageEditMode.imageFilter,
                        ),
                      );
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "${context.read<SettingsBloc>().state.languageData.filter}",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ImageCaption(
                textController: textController,
                onCapture: iState.imageEditActiveTool ==
                        ImageEditToolBarActiveItem.none
                    ? onEditCapture
                    : onCapture,
              ),
              const SizedBoxH10(),
              ImageArray(
                pController: pController,
                imageStackList: imageStackList,
                pointsList: pointsList,
                messageTEC: messageTEC,
                stackChildrenLastId: stackChildrenLastId,
              ),
              const SizedBoxH10(),
            ],
          ),
        );
      },
    );
  }
}
