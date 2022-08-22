import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    required this.child,
    required this.borderRad,
  }) : super(key: key);
  final Widget child;
  final BorderRadius borderRad;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: borderRad,
      ),
      child: child,
    );
  }
}
