import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/base/calls/pages/new_call.dart';
import 'package:flutter_template/presentation/base/calls/widgets/recent_calls_list.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:get/get.dart';

import '../../../application/settings/settings_bloc.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CallsPageContents();
  }
}

class CallsPageContents extends StatefulWidget {
  const CallsPageContents({
    Key? key,
  }) : super(key: key);

  @override
  _CallsPageContentsState createState() => _CallsPageContentsState();
}

class _CallsPageContentsState extends State<CallsPageContents> {
  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body:
          // SizedBoxH20(),
          const RecentsCallsList(),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        backgroundColor:context.read<SettingsBloc>().state.appThemeMode ==
            ThemeMode.dark
            ? Colors.white30
            : Kolors.primary,
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) {
                return const NewCall();
              },
            ),
          );
        },
        child:  Icon(
          Icons.add_ic_call_outlined,color: context.read<SettingsBloc>()
            .state
            .appThemeMode ==
            ThemeMode.dark
            ? Colors.white
            : null
        ),
      ),
    );
  }
}
