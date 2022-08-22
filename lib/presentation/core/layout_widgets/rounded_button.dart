import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.isLoading = false,
  }) : super(key: key);
  final Function() onTap;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 15,
        ),
        backgroundColor: Kolors.primary,
      ),
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(
              text,
              style: const TextStyle(color: Kolors.white),
            ),
    );
  }
}
