import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
    required this.iconData,
    required this.title,
  }) : super(key: key);
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Kolors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            iconData,
            color: Kolors.white,
            size: 40,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Kolors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
