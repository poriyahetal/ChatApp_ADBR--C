import 'package:flutter/material.dart';
import 'package:story_creator/story_creator.dart';

class StoryEditorImagePage extends StatelessWidget {
  const StoryEditorImagePage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return StoryCreator(filePath: image);
  }
}
