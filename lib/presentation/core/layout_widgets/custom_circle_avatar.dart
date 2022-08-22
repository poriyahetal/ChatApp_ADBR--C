import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

class CustomCircleAvatar extends StatefulWidget {
  const CustomCircleAvatar({
    Key? key,
    this.radius = 25,
    this.profilePictureUrl,
    required this.name,
    required this.color,
    this.isMyprofilePicture,
    this.nameFontSize = 20,
  }) : super(key: key);

  final String? profilePictureUrl;
  final String name;
  final double radius;
  final bool? isMyprofilePicture;
  final String color;
  final double nameFontSize;

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return InkResponse(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return ProfileViewDialog(
                isMyprofilePicture: widget.isMyprofilePicture ?? false,
                profilePictureUrl: HelperFunctions.getValidProfilePictureUrl(
                  widget.profilePictureUrl,
                ),
                nameFontSize: widget.nameFontSize,
                name: widget.name,
                color: widget.color,
              );
            },
          );
        },
        child: widget.profilePictureUrl ==
                        AppConstants.dummyProfilePictureUrl &&
                    widget.name != '' ||
                widget.profilePictureUrl == ''
            ? CircleAvatar(
                radius: widget.radius,
                backgroundColor: widget.color == 'Colors.red'
                    ? Colors.red[100]
                    : widget.color == 'Colors.blue'
                        ? Colors.blue[100]
                        : widget.color == 'Colors.green'
                            ? Colors.green[100]
                            : widget.color == 'Colors.yellow'
                                ? Colors.yellow[100]
                                : widget.color == 'Colors.orange'
                                    ? Colors.orange[100]
                                    : widget.color == 'Colors.lightGreen'
                                        ? Colors.lightGreen[100]
                                        : widget.color == 'Colors.pinkAccent'
                                            ? Colors.pinkAccent[100]
                                            : widget.color == 'Colors.cyan'
                                                ? Colors.cyan[100]
                                                : widget.color ==
                                                        'Colors.purple'
                                                    ? Colors.purple[100]
                                                    : Colors.grey,
                child: Text(
                  HelperFunctions.getNameInitials(widget.name).toUpperCase(),
                  style: TextStyle(
                    color: widget.color == 'Colors.red'
                        ? Colors.red
                        : widget.color == 'Colors.blue'
                            ? Colors.blue
                            : widget.color == 'Colors.green'
                                ? Colors.green
                                : widget.color == 'Colors.yellow'
                                    ? Colors.yellow
                                    : widget.color == 'Colors.orange'
                                        ? Colors.orange
                                        : widget.color == 'Colors.lightGreen'
                                            ? Colors.lightGreen
                                            : widget.color ==
                                                    'Colors.pinkAccent'
                                                ? Colors.pinkAccent
                                                : widget.color == 'Colors.cyan'
                                                    ? Colors.cyan
                                                    : widget.color ==
                                                            'Colors.purple'
                                                        ? Colors.purple
                                                        : Colors.black,
                    fontSize: widget.nameFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            : CircleAvatar(
                radius: widget.radius,
                backgroundColor: Kolors.black,
                // backgroundImage: CachedNetworkImageProvider(
                //   HelperFunctions.getValidProfilePictureUrl(
                //       widget.profilePictureUrl),
                // ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80.0),
                  child: Image.network(
                    HelperFunctions.getValidProfilePictureUrl(
                        widget.profilePictureUrl),
                  ),
                ),
              ));
  }
}

class ProfileViewDialog extends StatefulWidget {
  const ProfileViewDialog({
    Key? key,
    required this.profilePictureUrl,
    required this.isMyprofilePicture,
    required this.name,
    required this.color,
    required this.nameFontSize,
  }) : super(key: key);
  final String profilePictureUrl;
  final bool isMyprofilePicture;
  final String name;
  final String color;
  final double nameFontSize;

  @override
  State<ProfileViewDialog> createState() => _ProfileViewDialogState();
}

class _ProfileViewDialogState extends State<ProfileViewDialog> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilehandlingBloc, FilehandlingState>(
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () async {
                  if (widget.profilePictureUrl !=
                      AppConstants.dummyProfilePictureUrl) {
                    String path;
                    Directory? dir = await getExternalStorageDirectory();
                    if (state.isSaveDevice) {
                      path = LocalStorageConstant.appFolder +
                          LocalStorageConstant.profilePictureImages;
                    } else {
                      path =
                          dir!.path + LocalStorageConstant.profilePictureImages;
                    }
                    if (await File(path).exists()) {
                      await File(path).delete();
                    }
                    final DownloadFileBloc bloc = DownloadFileBloc();
                    bloc.filehandlingEventSink.add(
                      DownloadFile(
                        context: context,
                        fileUrl: widget.profilePictureUrl,
                        path: path,
                        filename: '${widget.name}.jpg',
                      ),
                    );
                    if (widget.isMyprofilePicture == true) {
                      Share.shareFiles(['$path${widget.name}.jpg']);
                    }
                  } else {
                    return showDialog(
                        context: context,
                        builder: (BuildContext) {
                          return AlertDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            content: Text(
                                "${context.read<SettingsBloc>().state.languageData.noProfilePictureUploadedYet}!"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                      "${context.read<SettingsBloc>().state.languageData.ok}"))
                            ],
                          );
                        });
                  }
                },
                icon: widget.isMyprofilePicture == true
                    ? const Icon(Icons.share)
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(CupertinoIcons.arrow_down, size: 20),
                          Divider(
                              color: Colors.white,
                              height: 2,
                              thickness: 2,
                              endIndent: 5,
                              indent: 5)
                        ],
                      ),
                color: Colors.white,
              )
            ],
            backgroundColor: Colors.black,
          ),
          body: Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: Colors.white,
              insetPadding: EdgeInsets.zero,
              child: widget.profilePictureUrl ==
                              AppConstants.dummyProfilePictureUrl &&
                          widget.name != '' ||
                      widget.profilePictureUrl == ''
                  ? Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      // radius: widget.radius,
                      color: widget.color == 'Colors.red'
                          ? Colors.red[100]
                          : widget.color == 'Colors.blue'
                              ? Colors.blue[100]
                              : widget.color == 'Colors.green'
                                  ? Colors.green[100]
                                  : widget.color == 'Colors.yellow'
                                      ? Colors.yellow[100]
                                      : widget.color == 'Colors.orange'
                                          ? Colors.orange[100]
                                          : widget.color == 'Colors.lightGreen'
                                              ? Colors.lightGreen[100]
                                              : widget.color ==
                                                      'Colors.pinkAccent'
                                                  ? Colors.pinkAccent[100]
                                                  : widget.color ==
                                                          'Colors.cyan'
                                                      ? Colors.cyan[100]
                                                      : widget.color ==
                                                              'Colors.purple'
                                                          ? Colors.purple[100]
                                                          : Colors.grey,
                      child: Center(
                        child: Text(
                          HelperFunctions.getNameInitials(widget.name)
                              .toUpperCase(),
                          style: TextStyle(
                            color: widget.color == 'Colors.red'
                                ? Colors.red
                                : widget.color == 'Colors.blue'
                                    ? Colors.blue
                                    : widget.color == 'Colors.green'
                                        ? Colors.green
                                        : widget.color == 'Colors.yellow'
                                            ? Colors.yellow
                                            : widget.color == 'Colors.orange'
                                                ? Colors.orange
                                                : widget.color ==
                                                        'Colors.lightGreen'
                                                    ? Colors.lightGreen
                                                    : widget.color ==
                                                            'Colors.pinkAccent'
                                                        ? Colors.pinkAccent
                                                        : widget.color ==
                                                                'Colors.cyan'
                                                            ? Colors.cyan
                                                            : widget.color ==
                                                                    'Colors.purple'
                                                                ? Colors.purple
                                                                : Colors.black,
                            fontSize: 100,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      height: MediaQuery.of(context).size.width ,
                      //  width: MediaQuery.of(context).size.width,
                      child: PhotoView(
                        maxScale: PhotoViewComputedScale.contained * 2,
                        minScale: PhotoViewComputedScale.covered * 1,
                        imageProvider: CachedNetworkImageProvider(
                            widget.profilePictureUrl),
                        loadingBuilder: (context, progress) => Center(
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: 20,
                            height: 20,
                            child: const CircularProgressIndicator(),
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
