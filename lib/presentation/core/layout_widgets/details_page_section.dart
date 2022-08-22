import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class DetailsPageSection extends StatelessWidget {
  const DetailsPageSection({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        if (title != '')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              title,
              style: const TextStyle(color: Kolors.primary),
            ),
          ),
        body,
      ],
    );
  }
}
