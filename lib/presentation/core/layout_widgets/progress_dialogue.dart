import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

Future<dynamic> showProgressingDialogue(
    {required BuildContext context, required String text}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          content: SizedBox(
            height: 200,
            width: 300,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(
                  color: Kolors.primary,
                ),
                const SizedBoxH10(),
                Text(
                  "$text...",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBoxH10(),
              ],
            ),
          ),
        ),
      );
    },
  );
}
