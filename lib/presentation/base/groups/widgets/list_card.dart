import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.child, required this.onTap})
      : super(key: key);
  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Kolors.grey,
          ),
        ),
        // height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: child,
      ),
    );
  }
}
