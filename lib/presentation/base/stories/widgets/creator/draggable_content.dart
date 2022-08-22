import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';

class DraggableContent extends StatelessWidget {
  const DraggableContent({
    Key? key,
    required this.content,
  }) : super(key: key);
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Matrix4> notifier = ValueNotifier(Matrix4.identity());
    return MatrixGestureDetector(
      onMatrixUpdate: (m, tm, sm, rm) {
        notifier.value = m;
      },
      child: AnimatedBuilder(
        animation: notifier,
        builder: (_, __) => Transform(
          transform: notifier.value,
          child: content,
        ),
      ),
    );
  }
}
