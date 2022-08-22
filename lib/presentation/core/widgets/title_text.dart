import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class TitleText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  // final String fontFamily;
  final TextAlign textAlign;
  final double spacing;
  final double height;
  final bool underline;
  const TitleText({
    Key? key,
    this.text,
    this.underline = false,
    this.spacing = 1,
    this.fontSize = 12,
    this.color = Kolors.black,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.height = 1.20,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      style: TextStyle(
        decoration: underline ? TextDecoration.underline : null,
        color: color,
        height: height,
        letterSpacing: spacing,
        fontWeight: fontWeight,
        fontSize: fontSize,
        // fontFamily: fontFamily,
      ),
    );
  }
}
