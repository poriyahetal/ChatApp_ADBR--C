import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_member_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:get/get.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({Key? key}) : super(key: key);

  @override
  _CreateGroupPageState createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  final TextEditingController groupNameTEC = TextEditingController();
  final TextEditingController groupDescriptionTEC = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  final List<String> colors = [
    'Colors.green',
    'Colors.yellow',
    'Colors.orange',
    'Colors.black',
    'Colors.pink',
    'Colors.red',
    'Colors.lightGreen',
    'Colors.pinkAccent',
    'Colors.cyan',
    'Colors.purple',
  ];
  final Random random = Random();
  int index = 0;
  void changeIndex() {
    setState(() => index = random.nextInt(9));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeIndex();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroupsBloc, GroupsState>(
      listener: (context, state) {
        state.createGroupFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                //AutoRouter.of(context).pop();
                Fluttertoast.showToast(
                    msg: "Group created successfully",
                    backgroundColor: Colors.grey,
                    textColor: Colors.grey[800]);
              },
            );
          },
        );
      },
      builder: (context, state) {
        return BlocConsumer<CameraBloc, CameraState>(
            listener: (context, cam_state) {
          cam_state.pickImageFailureOrSuccessOption.fold(
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
          cam_state.cropImageFailureOrSuccessOption.fold(
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
          cam_state.uploadImageFailureOrSuccessOption.fold(
            () {},
            (some) {
              some.fold(
                (failure) {},
                (success) {
                  Fluttertoast.showToast(
                    msg: "Group image changed successfully",
                    backgroundColor: Kolors.grey,
                  );
                  context.read<GroupsBloc>().add(
                      GroupsEvent.updateProfilePicture(
                          cam_state.uploadedImageUrl));
                },
              );
            },
          );
        }, builder: (context, gp_state) {
          return BlocBuilder<GroupsBloc, GroupsState>(
            builder: (context, state) {
              return SafeScaffold(
                appBar: AppBar(
                  elevation: 0.0,
                  backgroundColor: Theme.of(context).backgroundColor,
                  iconTheme: Theme.of(context).iconTheme,
                  centerTitle: false,
                  title: Text(
                      "${context.read<SettingsBloc>().state.languageData.nameThisGroup}",
                      style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                          fontSize: MediaQuery.of(context).size.width<360?16:18)),
                ),
                body: Padding(
                  padding:
                       EdgeInsets.symmetric(horizontal: 20, vertical: MediaQuery.of(context).size.width<360?5:20),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<CameraBloc>().add(
                                    const CameraEvent.pickImageFromGallery(),
                                  );
                            },
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width<360?30:35,
                              backgroundColor: Colors.grey[200],
                              backgroundImage:
                                  NetworkImage(state.setGroupPicture),
                              child:  Icon(
                                Icons.camera_alt_outlined,
                                color: Kolors.primary,
                                size: MediaQuery.of(context).size.width<360?25:30,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 120,
                            child: TextField(
                              controller: groupNameTEC,
                              style:  TextStyle(fontSize: MediaQuery.of(context).size.width<360?16:18),
                              decoration:  InputDecoration(
                                border: InputBorder.none,
                                helperStyle: TextStyle(fontSize: MediaQuery.of(context).size.width<360?16:18),
                                hintText: "Group Name",

                              ),
                              onChanged: (v) {
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // const SizedBox(
                      //   height: 25,
                      // ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                            "${context.read<SettingsBloc>().state.languageData.members}",
                            style: TextStyle(color: Colors.grey[700])),
                        subtitle: Text(
                            "${context.read<SettingsBloc>().state.languageData.youCanAddOrInviteParticipantsAfterCreatingTheGroup}"),
                      ),
                      const SizedBoxH20(),
                      const SizedBoxH20(),
                      for (final user in state.members)
                        GroupMemberTile(user: user, groupId: ''),
                      const Spacer(),
                    ],
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
                floatingActionButton: BlocBuilder<UserBloc, UserState>(
                  builder: (context, userState) {
                    return RoundedLoadingButton(
                      controller: _btnController,
                      color: Kolors.primary,
                      disabledColor: Kolors.primary.withOpacity(0.7),
                      borderRadius: 5,
                      width: MediaQuery.of(context).size.width - 40,
                      onPressed: groupNameTEC.text.length > 2
                          ? () async {
                              _btnController.start();
                              final List<String> users = [];
                              state.members.forEach((user) {
                                users.add(user.uid);
                              });
                              users.add(Getters.getCurrentUserUid());
                              context.read<GroupsBloc>().add(
                                    GroupsEvent.createGroup(
                                      GroupChatRoomModel(
                                        name: groupNameTEC.text,
                                        description: groupDescriptionTEC.text,
                                        created: Timestamp.now(),
                                        groupImageUrl: state.setGroupPicture,
                                        adminUser: userState.signedInUser,
                                        otherAdmins: [],
                                        userDetails: state.members,
                                        // lastMessage:
                                        //     MessageModel.mockTextMessageGroup(),
                                        users: users,
                                        sendMessageOnlyAdmin: false,
                                        addParticipantsOnlyAdmin: false,
                                        editGroupInfoOnlyAdmin: false,
                                        groupColor: colors[index],
                                        groupLink: '',
                                      ),
                                    ),
                                  );
                              await Future.delayed(const Duration(seconds: 5));
                              //_btnController.success();
                              AutoRouter.of(context).pushAndPopUntil(
                                  BaseRoute(selectedIndex: 1),
                                  predicate: (v) => true);
                              // Navigator.of(context).pop(context);
                              // Navigator.of(context).pop(context);
                              //Navigator.of(context).pop(context);
                            }
                          : null,
                      child: Text(
                        "${context.read<SettingsBloc>().state.languageData.CREATE}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Kolors.white,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        });
      },
    );
  }
}

class GroupFieldDialog extends StatelessWidget {
  GroupFieldDialog({
    Key? key,
    required this.hintText,
    required this.onPress,
    this.validator,
  }) : super(key: key);
  final TextEditingController tec = TextEditingController();
  final String hintText;
  final String? Function(String?)? validator;
  final Function(String) onPress;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: TextFormField(
          controller: tec,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          maxLength: 50,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Kolors.darkBlue,
              size: 30,
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          child:
              Text("${context.read<SettingsBloc>().state.languageData.cancel}"),
        ),
        TextButton(
          onPressed: () {
            if (tec.text.isNotEmpty) {
              onPress(tec.text);
              AutoRouter.of(context).pop();
            }
          },
          child:
              Text("${context.read<SettingsBloc>().state.languageData.done}"),
        ),
      ],
    );
  }
}
