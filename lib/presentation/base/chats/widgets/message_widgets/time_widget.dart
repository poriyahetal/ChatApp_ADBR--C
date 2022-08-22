import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../application/settings/settings_bloc.dart';

class TimeWidget extends StatelessWidget {
  final DateTime time;
  final bool isSentByMe;
  final bool isSeen;
  final bool? isDelivered;
  final Color color;

  const TimeWidget({
    Key? key,
    required this.time,
    required this.isSentByMe,
    required this.isSeen,
    this.isDelivered = false,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 6.0,
            left: 6.0,
          ),
          child: Text(
            DateFormat(DateFormat.HOUR_MINUTE).format(time),
            style: TextStyle(
              fontSize: 10,
              color: context.read<SettingsBloc>().state.appThemeMode ==
                      ThemeMode.dark
                  ? Colors.white
                  : color,
            ),
          ),
        ),
        if (isSentByMe)
          Icon(
            (isSeen || (isDelivered ?? false))
                ? MdiIcons.checkAll
                : MdiIcons.check,
            color: context.read<SettingsBloc>().state.appThemeMode ==
                ThemeMode.dark
                ? Colors.white:Colors.blue ,
            size: 15,
          )
      ],
    );
  }
}
