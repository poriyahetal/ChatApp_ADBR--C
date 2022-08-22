// ignore_for_file: cast_nullable_to_non_nullable, deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/groups/pages/invite_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/add_members_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/edit_group_desc.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_detail_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_member_tile.dart';
import 'package:flutter_template/presentation/base/groups/widgets/group_settings_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/search_members_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/shared_media_group.dart';
import 'package:flutter_template/presentation/core/layout_widgets/details_page_action_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../../../domain/chats/message_model.dart';
import '../../../../domain/supportChat/reported_message_model.dart';
import '../../../../domain/supportChat/support_chat_model.dart';
import '../../../core/layout_widgets/decision_dialog.dart';

class GroupDetailsPage extends StatefulWidget {
  final String groupId;
  // final String inviteLink;
  const GroupDetailsPage({
    Key? key,
    required this.groupId,
    // required this.inviteLink,
  }) : super(key: key);
  @override
  _GroupDetailsPageState createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, uState) {
        return BlocListener<GroupsBloc, GroupsState>(
          listener: (context, state) {
            state.leaveGroupFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (failure) {
                    Fluttertoast.showToast(
                      msg: failure.maybeMap(
                        adminCannotLeaveGroup: (e) =>
                            "Admin cannot leave the group.",
                        orElse: () => "",
                      ),
                      backgroundColor: Kolors.grey,
                    );
                  },
                  (success) {
                    Fluttertoast.showToast(
                      msg: "Group left successfully",
                      backgroundColor: Kolors.grey,
                    );
                    AutoRouter.of(context).popUntilRoot();
                  },
                );
              },
            );
          },
          child: BlocBuilder<GroupsBloc, GroupsState>(
            builder: (context, state) {
              return SafeScaffold(
                body: GroupDetailsPageBody(
                  title: state.group.name,
                  state: state,
                  imageUrl: state.group.groupImageUrl,
                  groupId: widget.groupId,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                          context: context,
                          builder: (builder) =>
                              GroupEditPhoto(groupId: widget.groupId),
                        );
                      },
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: state.group.groupImageUrl.isEmpty
                              ? Colors.grey.shade200
                              : null,
                          image: DecorationImage(
                            image: NetworkImage(state.group.groupImageUrl),
                          ),
                        ),
                        child: state.group.groupImageUrl.isEmpty
                            ? const Icon(CupertinoIcons.camera, size: 70)
                            : null,
                      ),
                    ),
                    const SizedBoxH20(),
                    Center(
                      child: Text(
                        state.group.name.trim().isEmpty
                            ? "Group Name"
                            : state.group.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBoxH10(),
                    Center(
                      child: Text(
                        state.group.description.trim().isEmpty
                            ? "Group description"
                            : state.group.description,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    //const DetailsPageEncryptionTile(),
                    const SizedBoxH10(),
                    const Divider(
                      thickness: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .groupSharedMedia,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 75,
                            child: StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance.groupCollection
                                  .doc(widget.groupId)
                                  .messagesCollection
                                  .orderBy('timeOfSending', descending: true)
                                  .where('type', isEqualTo: "MessageType.image")
                                  .snapshots(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<QuerySnapshot> snapshot) {
                                if (snapshot.hasData) {
                                  if (snapshot.data!.docs.isEmpty) {
                                    return Center(
                                      child: Text(context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .noMediaSentYet),
                                    );
                                  }
                                  return ListView.separated(
                                    separatorBuilder: (_, __) =>
                                        const SizedBoxW10(),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context, index) {
                                      final String imageUrl =
                                          (snapshot.data!.docs[index].data()
                                                  as Map<String, dynamic>)[
                                              'fileUrl'] as String;
                                      return InkWell(
                                        onTap: () {
                                          AutoRouter.of(context).push(
                                            ImageViewRoute(
                                              imageUrl: imageUrl,
                                            ),
                                          );
                                        },
                                        child: CachedNetworkImage(
                                          imageUrl: imageUrl,
                                          height: 75,
                                          width: 75,
                                          fit: BoxFit.fill,
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: FlatButton(
                                color: Kolors.primary,
                                textColor: Colors.white,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SharedMediaGroup(
                                        groupId: widget.groupId,
                                      ),
                                    ),
                                  );
                                },
                                child: Text(context
                                    .read<SettingsBloc>()
                                    .state
                                    .languageData
                                    .viewAll),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(color: Colors.grey.shade200, height: 5),
                    GroupParticipants(
                      groupChat: state.group,
                      groupId: widget.groupId,
                      refresh: (bool value) {
                        setState(() {});
                      },
                      // inviteLink: widget.inviteLink,
                    ),
                    const Divider(
                      thickness: 5,
                    ),
                    if (state.group.adminUser.uid ==
                        Getters.getCurrentUserUid())
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                GroupSettingsPage(groupId: widget.groupId),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 6.0,
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.settings_outlined),
                              const SizedBoxW10(),
                              Text(
                                context
                                    .read<SettingsBloc>()
                                    .state
                                    .languageData
                                    .groupSettings,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const SizedBoxW10(),
                                Icon(
                                  CupertinoIcons.bell,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 28,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  context
                                      .read<SettingsBloc>()
                                      .state
                                      .languageData
                                      .mute,
                                  style: TextStyle(
                                    color: Theme.of(context).iconTheme.color,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Switch(
                              onChanged: (bool value) {
                                List<dynamic> muteUsers =
                                    uState.mutedUsersOrGroups.muteNotification;
                                if (uState.mutedUsersOrGroups.muteNotification
                                    .contains(widget.groupId)) {
                                  muteUsers.remove(widget.groupId);
                                  context.read<UserBloc>().add(
                                        UserEvent
                                            .createOrUpdateMuteUserGroupNotification(
                                          mutedMotification: uState
                                              .mutedUsersOrGroups
                                              .copyWith(
                                            muteNotification: muteUsers,
                                          ),
                                        ),
                                      );
                                } else {
                                  muteUsers.add(widget.groupId);
                                  context.read<UserBloc>().add(
                                        UserEvent
                                            .createOrUpdateMuteUserGroupNotification(
                                          mutedMotification: uState
                                              .mutedUsersOrGroups
                                              .copyWith(
                                            muteNotification: muteUsers,
                                          ),
                                        ),
                                      );
                                }
                              },
                              value: uState.mutedUsersOrGroups.muteNotification
                                  .contains(widget.groupId),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                    ),
                    DetailsPageActionTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              title: Text(
                                "${context.read<SettingsBloc>().state.languageData.doYouReallyWantToLeaveThisGroup}?",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    AutoRouter.of(context).pop();
                                  },
                                  child: Text(context
                                      .read<SettingsBloc>()
                                      .state
                                      .languageData
                                      .cancel),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    if (state.group.otherAdmins.isNotEmpty) {
                                      final String currentUserUid =
                                          Getters.getCurrentUserUid();
                                      final List<String> users =
                                          state.group.users;
                                      users.remove(currentUserUid);
                                      final GroupChatRoomModel
                                          updatedGroupDetails =
                                          state.group.copyWith(
                                        users: users,
                                      );
                                      await FirebaseFirestore
                                          .instance.groupCollection
                                          .doc(widget.groupId)
                                          .set(
                                            updatedGroupDetails.toMap(),
                                            SetOptions(
                                              merge: true,
                                            ),
                                          );
                                      context.read<GroupsBloc>().add(
                                            GroupsEvent.sendGroupNotification(
                                              message:
                                                  '${uState.signedInUser.name}|| left the Group',
                                              myUser: uState.signedInUser,
                                              groupUid: widget.groupId,
                                              groupName: state.group.name,
                                            ),
                                          );
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    } else {
                                      Fluttertoast.showToast(
                                        msg:
                                            "To leave this group assign someone as a group admin",
                                        backgroundColor: Kolors.grey,
                                      );
                                    }
                                    Navigator.pop(context);
                                  },
                                  child: Text(context
                                      .read<SettingsBloc>()
                                      .state
                                      .languageData
                                      .leave),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      text: "Leave group",
                      iconData: Icons.exit_to_app,
                    ),
                    DetailsPageActionTile(
                      onTap: () async {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            title: Text(
                                "${context.read<SettingsBloc>().state.languageData.reportUser} ?",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            content: Text(
                              context
                                  .read<SettingsBloc>()
                                  .state
                                  .languageData
                                  .theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            actions: [
                              FlatButton(
                                onPressed: () async {
                                  final doc = await FirebaseFirestore
                                      .instance.groupCollection
                                      .doc(widget.groupId)
                                      .messagesCollection
                                      .orderBy('timeOfSending',
                                          descending: true)
                                      .limit(10)
                                      .get();
                                  final List<ReportedMessageModel> lastTenMsgs =
                                      [];
                                  doc.docs.forEach((element) {
                                    final MessageModel msg =
                                        MessageModel.fromMap(element.data()
                                            as Map<String, dynamic>);
                                    final ReportedMessageModel rpmsg =
                                        ReportedMessageModel(
                                      sender: msg.sender,
                                      receiverUid: msg.receiverUid,
                                      sendFrom: msg.sendFrom,
                                      text: msg.text,
                                      type: msg.type,
                                      timeOfSending: msg
                                          .timeOfSending.millisecondsSinceEpoch,
                                      imageUrl: msg.imageUrl,
                                      isSeen: msg.isSeen,
                                      isDelivered: msg.isDelivered,
                                      fileUrl: msg.fileUrl,
                                      fileName: msg.fileName,
                                      fileLocation: msg.fileLocation,
                                      fileSize: msg.fileSize,
                                      firebaseFileLocation:
                                          msg.firebaseFileLocation,
                                    );
                                    lastTenMsgs.add(rpmsg);
                                  });
                                  final SupportChatModel suppportMessage =
                                      SupportChatModel(
                                          message:
                                              "Reported ${state.group.name}",
                                          type: "text",
                                          time: DateTime.now().toString(),
                                          seen: false,
                                          sender: FirebaseAuth
                                              .instance.currentUser!.uid,
                                          reportedMessageList: lastTenMsgs,
                                          groupChatRoomModel: state.group);
                                  print(suppportMessage.toMap());
                                  final ref = FirebaseDatabase.instance.ref();
                                  ref
                                      .child("support_chats")
                                      .child(FirebaseAuth
                                          .instance.currentUser!.uid)
                                      .child("messages")
                                      .child(Timestamp.now()
                                          .microsecondsSinceEpoch
                                          .toString())
                                      .set(
                                          json.encode(suppportMessage.toMap()));
                                  Fluttertoast.showToast(
                                    msg:
                                        'Your report action will be taken within 72 hours. You can check update on your report in help centre.',
                                    backgroundColor: Kolors.grey,
                                  );
                                  Navigator.pop(context);

                                  Fluttertoast.showToast(
                                    msg:
                                        'Your report action will be taken within 72 hours. We will update our judgement in help centre.',
                                    backgroundColor: Kolors.grey,
                                  );
                                  Navigator.pop(context);
                                },
                                textColor: Kolors.primary,
                                child: Text(
                                  context
                                      .read<SettingsBloc>()
                                      .state
                                      .languageData
                                      .report,
                                  style: const TextStyle(color: Kolors.red),
                                ),
                              ),
                              FlatButton(
                                onPressed: () => Navigator.pop(context),
                                textColor: Kolors.primary,
                                child: Text(context
                                    .read<SettingsBloc>()
                                    .state
                                    .languageData
                                    .cancel),
                              ),
                            ],
                          ),
                        );
                      },
                      text: "Report group",
                      iconData: Icons.thumb_down_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${state.group.adminUser.name} ${context.read<SettingsBloc>().state.languageData.hasCreatedThisGroupOn} ${DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY).format(state.group.created.toDate())}",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class GroupParticipants extends StatefulWidget {
  const GroupParticipants({
    Key? key,
    required this.groupChat,
    required this.groupId,
    required this.refresh,
  }) : super(key: key);
  final GroupChatRoomModel groupChat;
  final String groupId;
  final ValueChanged<bool> refresh;

  @override
  _GroupParticipantsState createState() => _GroupParticipantsState();
}

class _GroupParticipantsState extends State<GroupParticipants> {
  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    widget.groupChat.userDetails.removeWhere((element) => element.uid == widget.groupChat.adminUser.uid);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              //  color: Colors.grey.shade200,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${context.read<SettingsBloc>().state.languageData.participants} (${widget.groupChat.users.length})",
                    style: const TextStyle(
                      // color: Kolors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    constraints: const BoxConstraints(maxWidth: 20, maxHeight: 20),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchMembersPage(
                            members: widget.groupChat.userDetails),
                      ),
                    ),
                    iconSize: 20,
                    splashRadius: 20,
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            if (widget.groupChat.addParticipantsOnlyAdmin != true ||
                widget.groupChat.adminUser.uid == Getters.getCurrentUserUid()) ...[
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddMembersPage(groupId: widget.groupId),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20, bottom: 4.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        backgroundColor: Kolors.primary,
                        child: const Icon(
                          Icons.person_add_outlined,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .addParticipant,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InviteLinkPage(
                      groupChat: widget.groupChat,
                      groupId: widget.groupId,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20, bottom: 4.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        backgroundColor: Kolors.primary,
                        child: const Icon(
                          Icons.link,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .inviteViaGroupLink,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GroupMemberTile(
                user: widget.groupChat.adminUser,
                isAdmin: true,
                groupId: widget.groupId,
                onTapMakeAdmin: () {},
              ),
            ),
            for (final user in widget.groupChat.otherAdmins)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GroupMemberTile(
                  user: user,
                  groupId: widget.groupId,
                  isAdmin: true,
                  onTapMakeAdmin: () {
                    context.read<GroupsBloc>().add(
                          GroupsEvent.removeAdmins(
                            groupId: widget.groupId,
                            user: user,
                            group: widget.groupChat,
                          ),
                        );

                    context.read<GroupsBloc>().add(
                      GroupsEvent.sendGroupNotification(
                        message:
                        '${userState.signedInUser.name} removed ${user.name} as Admin',
                        myUser: userState.signedInUser,
                        groupUid: widget.groupId,
                        groupName: widget.groupChat.name,
                      ),
                    );

                    widget.refresh(true);
                    Fluttertoast.showToast(
                      msg: "${user.name} removed as from admin",
                      backgroundColor: Kolors.grey,
                    );
                    Navigator.pop(context);
                  },
                ),
              ),
            ListView.builder(
              itemCount: showAll
                  ? widget.groupChat.userDetails.length
                  : (widget.groupChat.userDetails.length > 20
                      ? 20
                      : widget.groupChat.userDetails.length),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final user = widget.groupChat.userDetails[index];
                print("user id-->${user.uid}");
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GroupMemberTile(
                    user: user,
                    groupId: widget.groupId,
                    onTapMakeAdmin: () {
                      context.read<GroupsBloc>().add(
                            GroupsEvent.makeAdmins(
                              groupId: widget.groupId,
                              user: user,
                              group: widget.groupChat,
                            ),
                          );
                      widget.refresh(true);
                      context.read<GroupsBloc>().add(
                        GroupsEvent.sendGroupNotification(
                          message:
                          '${userState.signedInUser.name} assigned ${user.name} as Admin',
                          myUser: userState.signedInUser,
                          groupUid: widget.groupId,
                          groupName: widget.groupChat.name,
                        ),
                      );


                      Fluttertoast.showToast(
                        msg: "${user.name} assign as a admin",
                        backgroundColor: Kolors.grey,
                      );
                      Navigator.pop(context);
                    },
                  ),
                );
              },
            ),
            if (!showAll && (widget.groupChat.userDetails.length > 20)) ...[
              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showAll = true;
                    });
                  },
                  child: const Text("Show all",
                      style: TextStyle(color: Kolors.primary)),
                ),
              )
            ]
          ],
        );
      }
    );
  }
}

class DetailsPageDescriptionTile extends StatelessWidget {
  const DetailsPageDescriptionTile({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.read<SettingsBloc>().state.languageData.description),
      subtitle: Text(description),
    );
  }
}
