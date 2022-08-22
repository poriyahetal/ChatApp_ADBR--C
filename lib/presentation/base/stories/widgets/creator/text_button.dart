import 'package:flutter/material.dart';

Widget textButton({
  required Function onTap,
  required String title,
  double? size,
}) {
  return GestureDetector(
    onTap: () => onTap(),
    child: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.black.withOpacity(0.5),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: size ?? 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}
