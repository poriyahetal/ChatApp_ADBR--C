import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class DetailsPageActionTile extends StatelessWidget {
  const DetailsPageActionTile({
    Key? key,
    required this.onTap,
    required this.text,
    required this.iconData,
  }) : super(key: key);
  final Function() onTap;
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Kolors.red,
              size: 28,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: Kolors.red, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
