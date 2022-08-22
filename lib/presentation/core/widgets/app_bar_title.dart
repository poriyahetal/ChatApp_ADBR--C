import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:get/get.dart';

class AppBarTitle extends StatelessWidget with PreferredSizeWidget {
  AppBarTitle({
    Key? key,
    required this.title,
    this.trailing,
  }) : super(key: key);
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // automaticallyImplyLeading: false,
      title: Text(
        title,
        style: TextStyle(
            color: Kolors.white,
            fontWeight: FontWeight.w700,
            fontSize: MediaQuery.of(context).size.width < 360 ? 18 : null),
      ),
      centerTitle: true,
      actions: [
        if (trailing != null) trailing!,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
