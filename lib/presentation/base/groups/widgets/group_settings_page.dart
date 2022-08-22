import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class GroupSettingsPage extends StatelessWidget {
  final String groupId;
  const GroupSettingsPage({Key? key, required this.groupId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBar(
            title: Text(
                context.read<SettingsBloc>().state.languageData.groupSettings,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: [
              ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AddParticipantsOnlyAdminPopup(
                        addParticipantsOnlyAdmin:
                            state.group.addParticipantsOnlyAdmin,
                        groupId: groupId,
                        changed: (bool value) {
                          context.read<GroupsBloc>().add(
                              GroupsEvent.addParticipantsOnlyAdmin(
                                  groupId, value));
                        },
                      );
                    },
                  );
                },
                title: Text(context
                    .read<SettingsBloc>()
                    .state
                    .languageData
                    .addParticipants),
                subtitle: state.group.addParticipantsOnlyAdmin != null
                    ? Text(state.group.addParticipantsOnlyAdmin!
                        ? context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .onlyAdmin
                        : context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .allParticipants)
                    : Text(context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .allParticipants),
              ),
              ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return EditGroupInfoOnlyAdminPopup(
                        editGroupInfoOnlyAdmin:
                            state.group.editGroupInfoOnlyAdmin,
                        groupId: groupId,
                        changed: (bool value) {
                          context.read<GroupsBloc>().add(
                              GroupsEvent.editGroupInfoOnlyAdmin(
                                  groupId, value));
                        },
                      );
                    },
                  );
                },
                title: Text(context
                    .read<SettingsBloc>()
                    .state
                    .languageData
                    .editGroupInfo),
                subtitle: state.group.editGroupInfoOnlyAdmin != null
                    ? Text(state.group.editGroupInfoOnlyAdmin!
                        ? context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .onlyAdmin
                        : context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .allParticipants)
                    : Text(context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .allParticipants),
              ),
              ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SendMessageOnlyAdminPopup(
                        sendMessageOnlyAdmin: state.group.sendMessageOnlyAdmin,
                        groupId: groupId,
                        changed: (bool value) {
                          context.read<GroupsBloc>().add(
                              GroupsEvent.sendMessageOnlyAdmin(groupId, value));
                        },
                      );
                    },
                  );
                },
                title: Text(context
                    .read<SettingsBloc>()
                    .state
                    .languageData
                    .sendMessages),
                subtitle: state.group.sendMessageOnlyAdmin != null
                    ? Text(state.group.editGroupInfoOnlyAdmin!
                        ? context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .onlyAdmin
                        : context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .allParticipants)
                    : Text(context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .allParticipants),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AddParticipantsOnlyAdminPopup extends StatefulWidget {
  final bool? addParticipantsOnlyAdmin;
  final ValueChanged<bool> changed;
  final String groupId;
  const AddParticipantsOnlyAdminPopup(
      {Key? key,
      required this.addParticipantsOnlyAdmin,
      required this.groupId,
      required this.changed})
      : super(key: key);
  @override
  _AddParticipantsOnlyAdminPopupState createState() =>
      _AddParticipantsOnlyAdminPopupState();
}

class _AddParticipantsOnlyAdminPopupState
    extends State<AddParticipantsOnlyAdminPopup> {
  bool addParticipantsOnlyAdmin = false;
  @override
  void initState() {
    addParticipantsOnlyAdmin = widget.addParticipantsOnlyAdmin ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Text(
            "${context.read<SettingsBloc>().state.languageData.whoCanAddParticipants} ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        actions: [
          TextButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: Text(context.read<SettingsBloc>().state.languageData.cancel),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                widget.changed(addParticipantsOnlyAdmin);
              });
              Navigator.pop(context);
            },
            child:
                Text("${context.read<SettingsBloc>().state.languageData.ok}"),
          ),
        ],
        content: SizedBox(
          height: 80,
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: addParticipantsOnlyAdmin,
                    onChanged: (value) {
                      setState(() {
                        addParticipantsOnlyAdmin = value!;
                      });
                    },
                  ),
                  const SizedBoxW10(),
                  Text(
                      "${context.read<SettingsBloc>().state.languageData.onlyAdmin}"),
                ],
              ),
              Row(
                children: [
                  Radio<bool>(
                    value: false,
                    groupValue: addParticipantsOnlyAdmin,
                    onChanged: (value) {
                      setState(() {
                        addParticipantsOnlyAdmin = value!;
                      });
                    },
                  ),
                  const SizedBoxW10(),
                  Text(
                      "${context.read<SettingsBloc>().state.languageData.allMembers}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditGroupInfoOnlyAdminPopup extends StatefulWidget {
  final bool? editGroupInfoOnlyAdmin;
  final ValueChanged<bool> changed;
  final String groupId;
  const EditGroupInfoOnlyAdminPopup(
      {Key? key,
      required this.editGroupInfoOnlyAdmin,
      required this.groupId,
      required this.changed})
      : super(key: key);

  @override
  _EditGroupInfoOnlyAdminPopupState createState() =>
      _EditGroupInfoOnlyAdminPopupState();
}

class _EditGroupInfoOnlyAdminPopupState
    extends State<EditGroupInfoOnlyAdminPopup> {
  bool editGroupInfoOnlyAdmin = false;
  @override
  void initState() {
    editGroupInfoOnlyAdmin = widget.editGroupInfoOnlyAdmin ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Text(
            "${context.read<SettingsBloc>().state.languageData.whoCanChangeGroupInfo} ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        actions: [
          TextButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: Text(context.read<SettingsBloc>().state.languageData.cancel),
          ),
          TextButton(
            onPressed: () {
              widget.changed(editGroupInfoOnlyAdmin);
              Navigator.pop(context);
            },
            child:
                Text("${context.read<SettingsBloc>().state.languageData.ok}"),
          ),
        ],
        content: SizedBox(
          height: 80,
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: editGroupInfoOnlyAdmin,
                    onChanged: (value) {
                      setState(() {
                        editGroupInfoOnlyAdmin = value!;
                      });
                    },
                  ),
                  const SizedBoxW10(),
                  Text(
                      "${context.read<SettingsBloc>().state.languageData.onlyAdmin}"),
                ],
              ),
              Row(
                children: [
                  Radio<bool>(
                    value: false,
                    groupValue: editGroupInfoOnlyAdmin,
                    onChanged: (value) {
                      setState(() {
                        editGroupInfoOnlyAdmin = value!;
                      });
                    },
                  ),
                  const SizedBoxW10(),
                  Text(
                      "${context.read<SettingsBloc>().state.languageData.allMembers}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SendMessageOnlyAdminPopup extends StatefulWidget {
  final bool? sendMessageOnlyAdmin;
  final ValueChanged<bool> changed;
  final String groupId;
  const SendMessageOnlyAdminPopup(
      {Key? key,
      required this.sendMessageOnlyAdmin,
      required this.groupId,
      required this.changed})
      : super(key: key);

  @override
  _SendMessageOnlyAdminPopupState createState() =>
      _SendMessageOnlyAdminPopupState();
}

class _SendMessageOnlyAdminPopupState extends State<SendMessageOnlyAdminPopup> {
  bool sendMessageOnlyAdmin = false;
  @override
  void initState() {
    sendMessageOnlyAdmin = widget.sendMessageOnlyAdmin ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Text(
            "${context.read<SettingsBloc>().state.languageData.whoCanSendMessages} ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        actions: [
          TextButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: Text(context.read<SettingsBloc>().state.languageData.cancel),
          ),
          TextButton(
            onPressed: () {
              widget.changed(sendMessageOnlyAdmin);
              Navigator.pop(context);
            },
            child:
                Text("${context.read<SettingsBloc>().state.languageData.ok}"),
          ),
        ],
        content: SizedBox(
          height: 80,
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: sendMessageOnlyAdmin,
                    onChanged: (value) {
                      setState(() {
                        sendMessageOnlyAdmin = value!;
                      });
                    },
                  ),
                  const SizedBoxW10(),
                  Text(
                      "${context.read<SettingsBloc>().state.languageData.onlyAdmin}"),
                ],
              ),
              Row(
                children: [
                  Radio<bool>(
                    value: false,
                    groupValue: sendMessageOnlyAdmin,
                    onChanged: (value) {
                      setState(() {
                        sendMessageOnlyAdmin = value!;
                      });
                    },
                  ),
                  const SizedBoxW10(),
                  Text(
                      "${context.read<SettingsBloc>().state.languageData.allMembers}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
