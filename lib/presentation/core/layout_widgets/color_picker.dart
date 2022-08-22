import "package:flutter/material.dart";
import 'package:flutter_template/application/image_edit/image_edit_bloc.dart';
import 'package:provider/provider.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({Key? key}) : super(key: key);

  double calculatePercent(BuildContext context, Offset localPosition) {
    return localPosition.dy / 240;
  }

  double hueFromPercent(double percent) {
    return percent * 360;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTapDown: (details) {
            // details.localPosition
            print(
                "color picker has been clicked on \n value: ${details.localPosition}");
            final color = HSLColor.fromAHSL(
                    1.0,
                    hueFromPercent(
                        calculatePercent(context, details.localPosition)),
                    1.0,
                    0.5)
                .toColor();
            context
                .read<ImageEditBloc>()
                .add(ImageEditEvent.setPainterColor(color));
          },
          onPanUpdate: (details) {
            print(
                "color picker has been clicked on \n value: ${details.localPosition}");
            double hueValue = hueFromPercent(
                calculatePercent(context, details.localPosition));
            final color = HSLColor.fromAHSL(
                    1.0, hueValue >= 0.0 ? hueValue : 0.0, 1.0, 0.5)
                .toColor();
            context
                .read<ImageEditBloc>()
                .add(ImageEditEvent.setPainterColor(color));
          },
          child: Container(
            margin: const EdgeInsets.only(right: 20.0),
            height: 240.0,
            width: 20.0,
            decoration: const BoxDecoration(boxShadow: [BoxShadow()]),
            child: CustomPaint(
              painter: ColorPickerPainter(),
            ),
          ),
        ),
      );
    });
  }
}

class ColorPickerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final colorGradientShader = LinearGradient(colors: [
      // Color(0xFFFF0000),
      // Color(0xFF00FF00),

      const HSLColor.fromAHSL(1.0, 0.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 51.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 102.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 153.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 204.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 255.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 306.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 360.0, 1.0, 0.5).toColor(),
      // const HSLColor.fromAHSL(1.0, 51.0, 1.0, 1.0).toColor(), //white
      // const HSLColor.fromAHSL(1.0, 0.0, 1.0, 0.0).toColor(), //black
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .createShader(Offset.zero & size);
    final paint = Paint()..shader = colorGradientShader;
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
