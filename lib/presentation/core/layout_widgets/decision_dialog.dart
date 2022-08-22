import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

Future<bool> showDecisionDialog({
  required BuildContext context,
  required String title,
}) async {
  bool result = false;
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              result = false;
            },
            child: Text(
                "${context.read<SettingsBloc>().state.languageData.cancel}"),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              result = true;
            },
            child: Text(
                "${context.read<SettingsBloc>().state.languageData.confirm}"),
          ),
        ],
      );
    },
  );

  return result;
}
