import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/utils/random_color_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rxdart/subjects.dart';

import '../../../../domain/core/constants.dart';
import '../../../core/layout_widgets/freehand_painter.dart';
import 'package:get/get.dart';

// import 'package:giphy_get/giphy_get.dart';
class TypeAStatusPage extends StatefulWidget with ChangeNotifier {
  @override
  _TypeAStatusPageState createState() => _TypeAStatusPageState();
}

class _TypeAStatusPageState extends State<TypeAStatusPage> {
  StatusColorPicker colorPicker = StatusColorPicker();
  TextEditingController statusTEC = TextEditingController();
  late bool isEmojiKeyboardOpened;
  late FocusNode textFocusNode;
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

  final pointsStream = BehaviorSubject<List<List<FreeHandModel>>>();
  // GiphyGif? gif;
  bool isGif = false;
  bool freehand = false;
  final key = GlobalKey();
  int selectedIndex = 0;
  List<List<FreeHandModel>> pointsList = [<FreeHandModel>[]];

  @override
  void initState() {
    initGif();
    isEmojiKeyboardOpened = false;
    textFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    textFocusNode.dispose();
    super.dispose();
  }

  Future initGif() async {
    String APIKEY = 'CrE4ZkaDjUkojn1CjzwVFQ6hPFY0FgV3';
  }

  int fontIndex = 0;
  TextStyle textFontStyle() {
    List<TextStyle> selectedStyle = [
      GoogleFonts.raleway(fontSize: 30, color: Colors.white),
      GoogleFonts.lato(fontSize: 30, color: Colors.white),
      GoogleFonts.roboto(fontSize: 30, color: Colors.white),
      // GoogleFonts.droidSerif(fontSize: 30, color: Colors.white),
      GoogleFonts.piedra(fontSize: 30, color: Colors.white)
    ];
    int length = selectedStyle.length;
    if (fontIndex >= length - 1) {
      fontIndex = 0;
    }
    return selectedStyle[fontIndex];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoriesBloc, StoriesState>(
      listener: (context, state) {
        state.createStoryFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {
                Fluttertoast.showToast(
                  msg: "Couldn't upload status. Please try again",
                  backgroundColor: Kolors.grey,
                );
              },
              (success) {
                AutoRouter.of(context).pop();
                Fluttertoast.showToast(
                  msg: "Status uploaded successfully",
                  backgroundColor: Kolors.grey,
                );
                context.read<UserBloc>().add(const UserEvent.getSignedInUser());
                context
                    .read<StoriesBloc>()
                    .add(const StoriesEvent.getCurrentUserStory());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return BlocBuilder<StoriesBloc, StoriesState>(
          builder: (context, userState) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: colorPicker.getColor,
                floatingActionButton: FloatingActionButton(
                  heroTag: null,
                  backgroundColor: Kolors.white,
                  onPressed: () async {
                    context
                        .read<StoriesBloc>()
                        .add(const StoriesEvent.getCurrentUserStory());
                    if (statusTEC.text.isNotEmpty) {
                      context.read<StoriesBloc>().add(
                            StoriesEvent.createTextStatus(
                              userState.myStories,
                              statusTEC.text,
                              colorPicker.getColor,
                            ),
                          );
                      Navigator.of(context).pop;
                    }
                  },
                  child:  Icon(
                    Icons.check,
                    size: MediaQuery.of(context).size.width<360?30:40,
                    color: Kolors.primary,
                  ),
                ),
                body: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: InteractiveViewer(
                        maxScale: 6.0,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const ColorFiltered(
                              colorFilter: const ColorFilter.matrix(
                                  ColorMatrixConstants.sepium),
                            ),
                            if (freehand)
                              StreamBuilder<List<List<FreeHandModel>>>(
                                stream: pointsStream,
                                builder: (context, snapshot) {
                                  return GestureDetector(
                                    onPanStart: (details) {
                                      if (freehand) {
                                        RenderBox renderBox = key.currentContext
                                            ?.findRenderObject() as RenderBox;
                                        Paint paint = Paint()
                                          ..color = Colors.red
                                          ..strokeWidth = 3.0
                                          ..strokeCap = StrokeCap.round;

                                        pointsList[selectedIndex].add(
                                            FreeHandModel(
                                                offset: renderBox.globalToLocal(
                                                    details.globalPosition),
                                                paint: paint));
                                        pointsStream.add(pointsList);
                                        print("pan has just started ooo;");
                                      }
                                    },
                                    onPanUpdate: (details) {
                                      if (freehand) {
                                        final RenderBox renderBox = key
                                            .currentContext
                                            ?.findRenderObject() as RenderBox;
                                        final Paint paint = Paint()
                                          ..color = Colors.red
                                          ..strokeWidth = 6.0
                                          ..strokeCap = StrokeCap.round;

                                        pointsList[selectedIndex].add(
                                            FreeHandModel(
                                                offset: renderBox.globalToLocal(
                                                    details.globalPosition),
                                                paint: paint));
                                        pointsStream.add(pointsList);
                                      }
                                    },
                                    onPanEnd: (details) {
                                      if (freehand) {
                                        pointsList[selectedIndex]
                                            .add(FreeHandModel.empty());
                                        pointsStream.add(pointsList);
                                      }
                                    },
                                    child: Container(
                                      color: Colors.transparent,
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: CustomPaint(
                                        painter: FreeHandPainter(
                                            pointsList: snapshot.data != null
                                                ? snapshot.data![selectedIndex]
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
                                      pointsList: pointsList[selectedIndex]),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon:  Icon(
                                Icons.close,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width<360?22:null,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isEmojiKeyboardOpened = false;
                                      fontIndex++;
                                    });
                                  },
                                  icon:  Icon(
                                    Icons.title,
                                    color: Colors.white,
                                    size: MediaQuery.of(context).size.width<360?22:null,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      textFocusNode.unfocus();
                                      isEmojiKeyboardOpened =
                                          !isEmojiKeyboardOpened;
                                      print(textFocusNode.hasFocus);
                                    });
                                  },
                                  icon:  Icon(
                                    CupertinoIcons.smiley,
                                    color: Colors.white,
                                    size: MediaQuery.of(context).size.width<360?22:null,
                                  ),
                                ),
                                // IconButton(
                                //   onPressed: () {
                                //     setState(() async{
                                //      final selectedGif = await GiphyPicker.pickGif(
                                //           context: context,
                                //           fullScreenDialog: false,
                                //           showPreviewPage: false,
                                //           decorator: GiphyDecorator(
                                //               showAppBar: false
                                //           ),
                                //           apiKey: 'CrE4ZkaDjUkojn1CjzwVFQ6hPFY0FgV3');
                                //
                                //      setState(() {
                                //        gif = selectedGif;
                                //      });
                                //      gif!.url != null ? isGif = true : isGif = false;
                                //     });
                                //
                                //      // isGif = !isGif;
                                //
                                //   },
                                //   icon: const Icon(
                                //     Icons.gif,
                                //     color: Colors.white,
                                //   ),
                                // ),

                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      colorPicker.nextColor();
                                    });
                                  },
                                  icon:  Icon(
                                    Icons.format_color_fill,
                                    color: Colors.white,
                                    size: MediaQuery.of(context).size.width<360?22:null,
                                  ),
                                ),

                                // IconButton(
                                //   onPressed: () {
                                //     setState(() {
                                //       colorPicker.nextColor();
                                //     });
                                //   },
                                //   icon: const Icon(
                                //     Icons.brush_outlined,
                                //     color: Colors.white,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        TextField(
                          cursorColor: Kolors.white,
                          controller: statusTEC,
                          autocorrect: false,
                          enableSuggestions: false,
                          autofocus: true,
                          focusNode: textFocusNode,
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          style: textFontStyle(),
                          decoration: InputDecoration(
                            fillColor: colorPicker.getColor,
                            filled: true,
                            /*hintText: "Type Something",
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white24,
                            ),*/
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const Spacer(),
                        if (isEmojiKeyboardOpened)
                          EmojiPickerKeyboard(
                            controller: statusTEC,
                            gifSource: GifSource.story,
                          )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
