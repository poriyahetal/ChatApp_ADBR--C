// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_template/application/settings/settings_bloc.dart';
// import 'package:flutter_template/infrastructure/core/getters.dart';
// // import 'package:intl/intl.dart';

// class TextTranslate extends StatelessWidget {
//   const TextTranslate(
//     this.data, {
//     Key? key,
//     this.style = const TextStyle(),
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.textScaleFactor,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//   }) : super(key: key);
//   final String data;
//   final TextStyle? style;
//   final StrutStyle? strutStyle;
//   final TextAlign? textAlign;
//   final TextDirection? textDirection;
//   final Locale? locale;
//   final bool? softWrap;
//   final TextOverflow? overflow;
//   final double? textScaleFactor;
//   final int? maxLines;
//   final String? semanticsLabel;
//   final TextWidthBasis? textWidthBasis;
//   final TextHeightBehavior? textHeightBehavior;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
//       return FutureBuilder(
//         future: Getters.getTranslation(languageCode: 'en', text: data),
//         builder: (context, snapshot) {
//           return Text(
//             !snapshot.hasData ? data : snapshot.data! as String,
//             style: style,
//             strutStyle: strutStyle,
//             textAlign: textAlign,
//             textDirection: textDirection,
//             locale: locale,
//             softWrap: softWrap,
//             overflow: overflow,
//             textScaleFactor: textScaleFactor,
//             maxLines: maxLines,
//             semanticsLabel: semanticsLabel,
//             textWidthBasis: textWidthBasis,
//             textHeightBehavior: textHeightBehavior,
//           );
//         },
//       );
//     });
//   }
// }
