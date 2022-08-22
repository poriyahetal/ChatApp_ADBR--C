import 'package:flutter/material.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TitleTextTranslate extends StatelessWidget {
  const TitleTextTranslate({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TitleText(text: text);
  }
}
