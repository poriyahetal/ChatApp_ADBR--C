import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FreehandPaint extends StatelessWidget {
  const FreehandPaint({Key? key, required this.pointsList}) : super(key: key);
  final List<FreeHandModel> pointsList;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: FreeHandPainter(pointsList: pointsList),
    );
  }
}

class FreeHandModel {
  final Offset offset;
  final Paint paint;
  FreeHandModel({
    required this.offset,
    required this.paint,
  });

  factory FreeHandModel.empty() =>
      FreeHandModel(offset: Offset.infinite, paint: Paint());
}

class FreeHandPainter extends CustomPainter {
  final List<FreeHandModel> pointsList;
  FreeHandPainter({
    required this.pointsList,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < (pointsList.length - 1); i++) {
      if (pointsList[i].offset != Offset.infinite &&
          pointsList[i + 1].offset != Offset.infinite) {
        canvas.drawLine(pointsList[i].offset, pointsList[i + 1].offset,
            pointsList[i].paint);
      } else if (pointsList[i].offset != Offset.infinite &&
          pointsList[i + 1].offset == Offset.infinite) {
        final List<Offset> offsetList = [];
        offsetList.add(pointsList[i].offset);

        canvas.drawPoints(PointMode.points, offsetList, pointsList[i].paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
