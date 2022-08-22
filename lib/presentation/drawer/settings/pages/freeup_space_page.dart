import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class FreeUpSpacePage extends StatefulWidget {
  const FreeUpSpacePage({Key? key}) : super(key: key);

  @override
  _FreeUpSpacePageState createState() => _FreeUpSpacePageState();
}

class _FreeUpSpacePageState extends State<FreeUpSpacePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FilehandlingBloc, FilehandlingState>(
      listener: (context, state) {},
      builder: (context, state) {
        print(state.checkDirExist);
        return SafeScaffold(
          appBar: AppBar(
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.manageStorage}"),
            elevation: 5,
          ),
          body: state.checkDirExist
              ? SizedBox(
                  child: ListView.builder(
                    itemCount: state.userDirList.length,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      final FileSystemEntity file = state.userDirList[index];
                      final String userName = file.path.split('/').last;
                      print(userName);
                      print(state.userDirList.length);
                      return Card(
                        elevation: 5,
                        child: ListTile(
                          leading: const Icon(Icons.folder),
                          title: Text(userName),
                          onTap: () {
                            context.read<FilehandlingBloc>().add(
                                FilehandlingEvent.getUserFilesFromStorage(
                                    userName: userName));
                            AutoRouter.of(context).push(
                              UserFileGridViewRoute(
                                userName: userName,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                )
              : Center(
                  child: Text(
                    Platform.isAndroid
                        ? "${context.read<SettingsBloc>().state.languageData.sorryNoDownloadsFound}!"
                        : 'check your photos app for downloaded video',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ),
        );
      },
    );
  }
}
