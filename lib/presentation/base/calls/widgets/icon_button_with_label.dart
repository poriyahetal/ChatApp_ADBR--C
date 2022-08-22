import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class IconButtonWithLabel extends StatelessWidget {
  const IconButtonWithLabel({
    Key? key,
    required this.onTap,
    required this.label,
    required this.iconData,
    this.isWhite = false,
  }) : super(key: key);
  final Function() onTap;
  final String label;
  final IconData iconData;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: onTap,
          iconSize: 30,
          icon: Icon(
            iconData,
            color: isWhite ? Colors.white : Colors.black,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isWhite ? Colors.white : Colors.black,
          ),
        )
      ],
    );
  }
}
