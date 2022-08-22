import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class DrawerTileDivider extends StatelessWidget {
  const DrawerTileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade500,
      // indent: 20,
      // endIndent: 20,
    );
  }
}

class TileDivider extends StatelessWidget {
  const TileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade500,
      height: 10,
      thickness: 0.5,
      // indent: 65,
    );
  }
}
