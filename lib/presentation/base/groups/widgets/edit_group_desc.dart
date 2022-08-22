// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GroupEditDescription extends StatefulWidget {
  final GroupsState state;
  final String groupId;
  const GroupEditDescription(
      {Key? key, required this.state, required this.groupId})
      : super(key: key);
  @override
  _GroupEditDescriptionState createState() => _GroupEditDescriptionState();
}

class _GroupEditDescriptionState extends State<GroupEditDescription> {
  bool isEmojiKeyboardOpened = false;
  final TextEditingController _groupName = TextEditingController();
  final TextEditingController _groupDesc = TextEditingController();

  @override
  initState() {
    _groupDesc.text = widget.state.groupDescription;
    _groupName.text = widget.state.groupName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const SizedBoxH10(),
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        //title:  Text("",style: TextStyle(fontSize: 16,color: Colors.grey[800],fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.read<SettingsBloc>().state.languageData.groupName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  controller: _groupName,
                  maxLength: 60,
                  maxLines: 4,
                  minLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: false,
                      isDense: true,
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Kolors.primary)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Kolors.primary)),
                      disabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Kolors.primary)),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Kolors.primary)),
                      suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              isEmojiKeyboardOpened = !isEmojiKeyboardOpened;
                            });
                          },
                          child: Icon(Icons.mood, color: Colors.grey[600]))),
                ),
                Text(
                    context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .groupDescription,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  controller: _groupDesc,
                  maxLength: 60,
                  maxLines: 4,
                  minLines: 1,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: false,
                    isDense: true,
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Kolors.primary)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Kolors.primary)),
                    disabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Kolors.primary)),
                    errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Kolors.primary)),
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          isEmojiKeyboardOpened = !isEmojiKeyboardOpened;
                        });
                      },
                      child: Icon(Icons.mood, color: Colors.grey[600]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isEmojiKeyboardOpened)
            EmojiPickerKeyboard(
              controller: _groupName,
              gifSource: GifSource.group,
            )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: FlatButton(
          color: Kolors.primary,
          height: 50,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            context.read<GroupsBloc>().add(
                  GroupsEvent.setGroupDescription(
                      _groupDesc.text, widget.groupId),
                );
            context.read<GroupsBloc>().add(
                  GroupsEvent.setGroupName(_groupName.text, widget.groupId),
                );
            setState(() {});
            Navigator.pop(context);
          },
          child: Text(context.read<SettingsBloc>().state.languageData.save),
        ),
      ),
    );
  }
}

class GroupEditPhoto extends StatelessWidget {
  final String groupId;
  const GroupEditPhoto({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraBloc, CameraState>(
      listener: (context, state) {
        state.pickImageFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                context
                    .read<CameraBloc>()
                    .add(const CameraEvent.cropPickedImage());
              },
            );
          },
        );
        state.cropImageFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                context
                    .read<CameraBloc>()
                    .add(const CameraEvent.uploadCroppedImage());
              },
            );
          },
        );
        state.uploadImageFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                AutoRouter.of(context).pop();
                Fluttertoast.showToast(
                  msg: "Group image changed successfully",
                  backgroundColor: Kolors.grey,
                );
                context.read<GroupsBloc>().add(
                      GroupsEvent.setGroupImage(
                        groupId,
                        state.uploadedImageUrl,
                      ),
                    );
              },
            );
          },
        );
      },
      builder: (context, state) {
        return BlocBuilder<GroupsBloc, GroupsState>(
          builder: (context, state) {
            return BottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              onClosing: () {},
              builder: (context) {
                return Container(
                  height: 190 + MediaQuery.of(context).padding.bottom,
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {
                          context.read<CameraBloc>().add(
                                const CameraEvent.pickImageFromGallery(),
                              );
                        },
                        leading: const Icon(CupertinoIcons.photo_on_rectangle,
                            color: Colors.black),
                        title: Text(
                            context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .openPhotoGallery,
                            style: const TextStyle(color: Colors.black)),
                      ),
                      ListTile(
                        onTap: () => context
                            .read<CameraBloc>()
                            .add(const CameraEvent.pickImageFromCamera()),
                        leading: const Icon(CupertinoIcons.photo_camera,
                            color: Colors.black),
                        title: Text(
                            context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .openCamera,
                            style: const TextStyle(color: Colors.black)),
                      ),
                      ListTile(
                        onTap: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return ProfileViewDialog(
                          //         profilePictureUrl:
                          //             HelperFunctions.getValidProfilePictureUrl(
                          //                 state.setGroupPicture),
                          //       );
                          //     });
                        },
                        leading: const Icon(CupertinoIcons.photo,
                            color: Colors.black),
                        title: Text(
                            context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .viewPhoto,
                            style: const TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
