import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';

class ImageCaption extends StatelessWidget {
  const ImageCaption(
      {Key? key, required this.textController, required this.onCapture})
      : super(key: key);

  final TextEditingController textController;
  final Function(List<ImageWithCaptionModel>) onCapture;
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
                    future: Getters.getTranslation(languageCode: 'en', text: "Type a message..."),
                    builder: (context, gSnapshot) {
                      return TextField(
                        controller: textController,
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
                  final List<ImageWithCaptionModel> list = [];
                  for (var i = 0; i < iState.imagePaths.length; i++) {
                    print(iState.imagePaths[i]);
                    final _catch = ImageWithCaptionModel(
                      imagePath: iState.imagePaths[i],
                      caption: textController.text,
                    );
                    list.add(_catch);
                  }
                  onCapture(list);
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
