import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:rxdart/rxdart.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/image_edit/image_edit_bloc.dart';
import '../../../../domain/core/enums.dart';
import '../../../../infrastructure/core/getters.dart';
import '../../../core/layout_widgets/color_picker.dart';
import '../../../core/layout_widgets/freehand_painter.dart';
import '../../../core/layout_widgets/image_array.dart';
import '../../../core/layout_widgets/image_edit_stack_text.dart';
import '../../../core/layout_widgets/image_filter_bottom_toolbar.dart';
import '../../../core/layout_widgets/stack_item_model.dart';
import '../../../core/pages/display_captured_image_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/image_edit_toolbar.dart';

import '../../../core/widgets/text_translate.dart';
import 'package:screenshot/screenshot.dart';
import 'package:gallery_saver/gallery_saver.dart';

class StoryImageView extends StatefulWidget {
  final List<String> imagePath;
  final Function(List<ImageWithCaptionModel>) onCapture;
  final StoriesModel userStories;
  final bool isGif;
  final String gifUrl;
  final double duration;

  const StoryImageView({
    Key? key,
    required this.imagePath,
    required this.onCapture,
    required this.userStories,
    required this.isGif,
    required this.gifUrl,
    required this.duration,
  }) : super(key: key);

  @override
  _StoryImageViewState createState() => _StoryImageViewState();
}

class _StoryImageViewState extends State<StoryImageView> {
  late List<TextEditingController> messageTEC;
  late List<String> selectedImagePath;
  PreloadPageController pController = PreloadPageController();
  List<List<Widget>> imageStackChildren = [];
  List<List<FreeHandModel>> pointsList = [];
  final pointsStream = BehaviorSubject<List<List<FreeHandModel>>>();
  List<int> stackChildrenLastId = [];
  ImageEditBloc imageEditBloc = ImageEditBloc();
  bool isVideo = false;
  int currentIndex = 0;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  void dispose() {
    pController.dispose();
    pointsStream.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    messageTEC = widget.imagePath.map((e) => TextEditingController()).toList();
    selectedImagePath = widget.imagePath;

    final List<ColorMatrix> matrixList = [];
    final List<List<StackItemModel>> stackChildInfoList = [];
    imageEditBloc.add(ImageEditEvent.updateImagePaths(widget.imagePath));
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
    setPageEditMode();
  }

  void setPageEditMode() {
    if (isVideo) {
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

  @override
  Widget build(BuildContext context) {
    print('gif:${widget.isGif}');
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return BlocProvider.value(
            value: imageEditBloc,
            // BlocBuilder<UserBloc, UserState>(
            //   builder: (context, state) {});
            child: SafeScaffold(
              body: Stack(
                children: [
                  BlocBuilder<ImageEditBloc, ImageEditState>(
                    builder: (context, imageState) {
                      return PreloadPageView.builder(
                        controller: pController,
                        itemCount: imageState.imagePaths.length,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                          imageEditBloc
                              .add(ImageEditEvent.setSeletedIndex(index));
                          print(
                              "length of paths is ${imageEditBloc.state.imagePaths.length}");
                        },
                        itemBuilder: (context, index) {
                          return SafeScaffold(
                            backgroundColor: Colors.black,
                            // appBar: AppBar(
                            //   backgroundColor: Colors.black,
                            //   title: !widget.isGif ? Text("${index + 1}/${selectedImagePath.length}") : Container(),
                            //   actions: [
                            //     !widget.isGif ? IconButton(
                            //       onPressed: () async {
                            //         final File? croppedFile = await ImageCropper.cropImage(
                            //           sourcePath: selectedImagePath[index],
                            //           compressQuality: 100,
                            //           androidUiSettings: const AndroidUiSettings(
                            //             toolbarTitle: "Crop your image",
                            //             initAspectRatio: CropAspectRatioPreset.original,
                            //             lockAspectRatio: false,
                            //           ),
                            //         );
                            //         if (croppedFile != null) {
                            //           setState(() {
                            //             selectedImagePath[index] = croppedFile.path;
                            //           }) ;
                            //         }
                            //       },
                            //       icon: const Icon(Icons.crop),
                            //     ) : Container(),
                            //     // IconButton(
                            //     //   onPressed: () {},
                            //     //   icon: const Icon(Icons.emoji_emotions_outlined),
                            //     // ),
                            //     // IconButton(
                            //     //   onPressed: () {},
                            //     //   icon: const Icon(Icons.text_fields),
                            //     // ),
                            //     // IconButton(
                            //     //   onPressed: () {},
                            //     //   icon: const Icon(Icons.edit),
                            //     // ),
                            //   ],
                            // ),
                            body: Column(
                              children: [
                                Expanded(
                                    child: EditStoryImage(
                                  index: index,
                                  imageStackChildren: imageStackChildren,
                                  pointsStream: pointsStream,
                                  pointsList: pointsList,
                                  stackChildIdList: stackChildrenLastId,
                                  imagePath: widget.imagePath,
                                  // boundaryKey: boundaryKey,
                                )),

                                const SizedBoxH10(),
                                // Row(
                                //   children: [
                                //     Expanded(
                                //       child: TextField(
                                //         controller: messageTEC[index],
                                //         style: const TextStyle(
                                //             color: Colors.white),
                                //         decoration: InputDecoration(
                                //           filled: true,
                                //           fillColor: Colors.black54,
                                //           isDense: true,
                                //           hintText: "Add a Caption...",
                                //           hintStyle: const TextStyle(
                                //               color: Colors.white),
                                //           border: OutlineInputBorder(
                                //             borderSide: const BorderSide(
                                //                 color: Colors.white),
                                //             borderRadius:
                                //                 BorderRadius.circular(50),
                                //           ),
                                //           enabledBorder: OutlineInputBorder(
                                //             borderSide: const BorderSide(
                                //                 color: Colors.white),
                                //             borderRadius:
                                //                 BorderRadius.circular(50),
                                //           ),
                                //           focusedBorder: OutlineInputBorder(
                                //             borderSide: const BorderSide(
                                //                 color: Colors.white),
                                //             borderRadius:
                                //                 BorderRadius.circular(50),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //     const SizedBoxW15(),
                                //     FloatingActionButton(
                                //       heroTag: null,
                                //       onPressed: () async {
                                //         final List<ImageWithCaptionModel> list =
                                //             [];
                                //         for (var i = 0;
                                //             i < selectedImagePath.length;
                                //             i++) {
                                //           final _catch = ImageWithCaptionModel(
                                //             imagePath: selectedImagePath[i],
                                //             caption: messageTEC[i].text,
                                //           );
                                //           list.add(_catch);
                                //         }
                                //         widget.onCapture(list);
                                //         widget.isGif
                                //             ? context.read<StoriesBloc>().add(
                                //                 StoriesEvent.createGifStatus(
                                //                     widget.userStories,
                                //                     list,
                                //                     widget.duration))
                                //             : context.read<StoriesBloc>().add(
                                //                   StoriesEvent
                                //                       .createImageStatus(
                                //                     widget.userStories,
                                //                     list,
                                //                   ),
                                //                 );
                                //         // context.read<StoriesBloc>().add(
                                //         //     StoriesEvent.getCurrentUserStory());
                                //         Navigator.pop(context);
                                //         Navigator.pop(context);
                                //       },
                                //       child: const Icon(Icons.check),
                                //     )
                                //   ],
                                // ),
                                const SizedBoxH10(),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
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
                        child = StoryBottomBar(
                          imageStackList: imageStackChildren,
                          onCapture: widget.onCapture,
                          textController: messageTEC[pController.page != null
                              ? pController.page!.toInt()
                              : pController.initialPage],
                          messageTEC: messageTEC,
                          pController: pController,
                          pointsList: pointsList,
                          stackChildrenLastId: stackChildrenLastId,
                          userStories: widget.userStories,
                          isGif: widget.isGif,
                          duration: widget.duration,
                          gifUrl: widget.gifUrl,
                          imagePath: widget.imagePath,
                          index: currentIndex,
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
            ));
      },
    );
  }
}

class StoryBottomBar extends StatelessWidget {
  const StoryBottomBar(
      {Key? key,
      required this.imageStackList,
      required this.textController,
      required this.onCapture,
      required this.pController,
      required this.pointsList,
      required this.messageTEC,
      required this.stackChildrenLastId,
      required this.imagePath,
      required this.userStories,
      required this.isGif,
      required this.gifUrl,
      required this.duration,
      required this.index})
      : super(key: key);
  final TextEditingController textController;
  final Function(List<ImageWithCaptionModel>) onCapture;
  final List<List<Widget>> imageStackList;
  final PreloadPageController pController;
  final List<List<FreeHandModel>> pointsList;
  final List<TextEditingController> messageTEC;
  final List<int> stackChildrenLastId;
  final List<String> imagePath;
  final StoriesModel userStories;
  final bool isGif;
  final String gifUrl;
  final double duration;
  final int index;

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
                      style: TextStyle(fontSize: 16.0, color: Colors.white)),
                ),
              ),
              StoryCaption(
                textController: textController,
                onCapture: onCapture,
                gifUrl: gifUrl,
                duration: duration,
                isGif: isGif,
                imagePath: imagePath,
                userStories: userStories,
                index: index,
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

class StoryCaption extends StatefulWidget {
  const StoryCaption(
      {Key? key,
      required this.textController,
      required this.onCapture,
      required this.imagePath,
      required this.userStories,
      required this.isGif,
      required this.gifUrl,
      required this.duration,
      required this.index})
      : super(key: key);

  final TextEditingController textController;
  final Function(List<ImageWithCaptionModel>) onCapture;
  final List<String> imagePath;
  final StoriesModel userStories;
  final bool isGif;
  final String gifUrl;
  final double duration;
  final int index;

  @override
  State<StoryCaption> createState() => _StoryCaptionState();
}

class _StoryCaptionState extends State<StoryCaption> {
  late List<TextEditingController> messageTEC;

  @override
  void initState() {
    messageTEC = widget.imagePath.map((e) => TextEditingController()).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (iContext, iState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                child: FutureBuilder(
                    future: Getters.getTranslation(
                        languageCode: 'en', text: "Add Caption..."),
                    builder: (context, gSnapshot) {
                      return TextField(
                        controller: messageTEC[widget.index],
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF52595D),
                          isDense: true,
                          hintText: !gSnapshot.hasData
                              ? "Type a message..."
                              : gSnapshot.data! as String,
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBoxW15(),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  // List<String> capList = [];
                  // String firstElement = "first Element";
                  // capList.add(firstElement);
                  // context
                  //     .read<StoriesBloc>()
                  //     .add(StoriesEvent.addImageCaption(capList));

                  final List<ImageWithCaptionModel> list = [];
                  for (var i = 0; i < iState.imagePaths.length; i++) {
                    final _catch = ImageWithCaptionModel(
                      imagePath: widget.imagePath[i],
                      caption: messageTEC[i].text,
                    );
                    list.add(_catch);
                  }
                  widget.onCapture(list);
                  widget.isGif
                      ? context.read<StoriesBloc>().add(
                          StoriesEvent.createGifStatus(
                              widget.userStories, list, widget.duration))
                      : context.read<StoriesBloc>().add(
                            StoriesEvent.createImageStatus(
                              widget.userStories,
                              list,
                            ),
                          );
                  // context.read<StoriesBloc>().add(
                  //     StoriesEvent.getCurrentUserStory());
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Icon(Icons.send),
              )
            ],
          ),
        );
      },
    );
  }
}

class ShowScreenshot extends StatelessWidget {
  ShowScreenshot({required this.imageFile});

  Uint8List imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Image.memory(
        imageFile,
      ),
    );
  }
}

class EditStoryImage extends StatefulWidget {
  const EditStoryImage({
    Key? key,
    required this.index,
    required this.imageStackChildren,
    required this.pointsStream,
    required this.pointsList,
    required this.stackChildIdList,
    required this.imagePath,
    // required this.boundaryKey
  }) : super(key: key);
  final int index;
  final List<List<Widget>> imageStackChildren;
  final BehaviorSubject<List<List<FreeHandModel>>> pointsStream;
  final List<List<FreeHandModel>> pointsList;
  final List<int> stackChildIdList;
  final List<String> imagePath;

  // final GlobalKey boundaryKey;
  @override
  _EditStoryImageState createState() => _EditStoryImageState();
}

class _EditStoryImageState extends State<EditStoryImage> {
  GlobalKey key = GlobalKey();
  final TextEditingController tController = TextEditingController();
  late List<ScreenshotController> screenshotController;

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
  void initState() {
    screenshotController =
        widget.imagePath.map((e) => ScreenshotController()).toList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageEditBloc, ImageEditState>(
      builder: (context, state) {
        print('lengt:${state.imagePaths}');
        return Container(
          key: key,
          child: Stack(
            children: [
              // RepaintBoundary(
              // key: widget.boundaryKey,
              // child:
              BlocListener<StoriesBloc, StoriesState>(
                listener: (context, state) {
                  print("Screenshot has been taken");
                  print('List:${state.addedImageCaption}');
                  if (state.addScreenshotImage == true) {
                    //   final directory = (await getApplicationDocumentsDirectory ()).path; //from path_provide package
                    // String fileName = DateTime.now().microsecondsSinceEpoch.toString();
                    // String path = '$directory';
                    // print('path:$path');
                    // screenshotController.captureAndSave(
                    // path ,//set path where screenshot will be saved
                    // fileName:fileName
                    // );

                    List<Uint8List> imageList = [];
                    // for(int i=0; i<widget.imagePath.length; i++){
                    screenshotController[widget.index]
                        .capture()
                        .then((Uint8List? image) {
                      // File file = File.fromRawPath(image!);
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text('Image saved to gallery.'),
                      //   ),
                      // );
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ShowScreenshot(imageFile: image!)));
                      // imageList.add(image!);
                    }).catchError((err) => print(err));
                    // }

                    context
                        .read<StoriesBloc>()
                        .add(StoriesEvent.completeScreenshot());
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Screenshot(
                    controller: screenshotController[widget.index],
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
                                      RenderBox renderBox = key.currentContext!
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
                                      final RenderBox renderBox =
                                          key.currentContext!.findRenderObject()
                                              as RenderBox;
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
                                  child: SizedBox.expand(
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
                ),
              ),
              // ),
              if (state.imageEditActiveTool == ImageEditToolBarActiveItem.text)
                LayoutBuilder(builder: (context, constraints) {
                  GlobalKey fKey = GlobalKey();
                  return GestureDetector(
                    onTap: () {
                      final height = MediaQuery.of(context).size.height;
                      final width = MediaQuery.of(context).size.width;
                      final offset = Offset(width / 2, height / 2);
                      RenderBox box =
                          fKey.currentContext!.findRenderObject() as RenderBox;
                      setState(() {
                        final List<List<StackItemModel>> stackInfoList = [];
                        stackInfoList.addAll(state.stackItemInfoList);
                        stackInfoList[state.selectedIndex].add(
                          StackItemModel(
                            id: widget.stackChildIdList[state.selectedIndex],
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
                            id: widget.stackChildIdList[state.selectedIndex],
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
                            key: fKey,
                            controller: tController,
                            onEditingComplete: () {
                              print("Editing has been completed");
                              final height = MediaQuery.of(context).size.height;
                              final width = MediaQuery.of(context).size.width;
                              final offset = Offset(width / 2, height / 2);
                              RenderBox box = fKey.currentContext!
                                  .findRenderObject() as RenderBox;
                              setState(() {
                                final List<List<StackItemModel>> stackInfoList =
                                    [];
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
                                widget.imageStackChildren[state.selectedIndex]
                                    .add(
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
              if (state.imageEditActiveTool ==
                      ImageEditToolBarActiveItem.freehand ||
                  state.imageEditActiveTool == ImageEditToolBarActiveItem.text)
                const ColorPicker(),
            ],
          ),
        );
      },
    );
  }
}
