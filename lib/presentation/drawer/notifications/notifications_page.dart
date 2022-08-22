import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/notification/notification_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
// import 'package:flutter_template/domain/notification/i_notification_facade.dart';
import 'package:flutter_template/infrastructure/notification/notification_facade.dart';
import 'package:flutter_template/presentation/core/layout_widgets/calls_notification_vibration_duration_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/calls_notification_tone_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/chats_notification_vibration_duration_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_dropdown_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_switch_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/chats_notification_tone_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/groups_notification_vibration_duration_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/groups_notification_tone_dialog.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final notificationBloc = NotificationBloc(NotificationFacade());
  // String chatsTabString = "Chats";
  // String groupsTabString = "Groups";
  // String callsTabString = "Calls";

  @override
  void initState() {
    super.initState();
    notificationBloc.add(const NotificationEvent.started());
  }

  @override
  void dispose() {
    notificationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => notificationBloc,
      child: SafeScaffold(
        appBar: AppBarTitle(
          title: context.read<SettingsBloc>().state.languageData.Notification,
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, state) {
                return TabBar(
                  indicatorColor: context.read<SettingsBloc>()
                      .state
                      .appThemeMode ==
                      ThemeMode.dark
                      ? Colors.white54
                      : Kolors.primary,
                  indicatorWeight: 3.0,
                  tabs: [
                    Tab(
                      text:
                          "${context.read<SettingsBloc>().state.languageData.chats}",
                    ),
                    Tab(
                      text:
                          "${context.read<SettingsBloc>().state.languageData.groups}",
                    ),
                    Tab(
                      text:
                          "${context.read<SettingsBloc>().state.languageData.calls}",
                    ),
                  ],
                );
              }),
              const Expanded(
                child: TabBarView(
                  children: [
                    ChatsTabContents(),
                    GroupsTabContents(),
                    CallsTabContents(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatsTabContents extends StatefulWidget {
  const ChatsTabContents({
    Key? key,
  }) : super(key: key);

  @override
  _ChatsTabContentsState createState() => _ChatsTabContentsState();
}

class _ChatsTabContentsState extends State<ChatsTabContents> {
  bool isNotificationMute = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            return CustomSwitchTile(
              title: context.read<SettingsBloc>().state.languageData.Chatmute,
              onChanged: (value) {
                final status = value
                    ? NotificationMuteStatus.enabled
                    : NotificationMuteStatus.disabled;
                context
                    .read<NotificationBloc>()
                    .add(NotificationEvent.setChatMute(status));
              },
              value: state.isChatMute == NotificationMuteStatus.enabled,
            );
          },
        ),
        // CustomDropdownTile(
        //   title: "Notification Tone",
        //   items: const ['Default', 'Two', 'Free', 'Four'],
        //   onChanged: (value) {},
        // ),
        ChatsNotificationToneDialog(
            title: context
                .read<SettingsBloc>()
                .state
                .languageData
                .notificationTone),
        ChatsNotificationVibrationDurationDialog(
          title:
              context.read<SettingsBloc>().state.languageData.notificationTone,
        ),
      ],
    );
  }
}

class GroupsTabContents extends StatefulWidget {
  const GroupsTabContents({
    Key? key,
  }) : super(key: key);

  @override
  GroupsTabContentsState createState() => GroupsTabContentsState();
}

class GroupsTabContentsState extends State<GroupsTabContents> {
  bool isNotificationMute = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            return CustomSwitchTile(
              title: context.read<SettingsBloc>().state.languageData.Groupmute,
              onChanged: (value) {
                final status = value
                    ? NotificationMuteStatus.enabled
                    : NotificationMuteStatus.disabled;
                context
                    .read<NotificationBloc>()
                    .add(NotificationEvent.setGroupMute(status));
              },
              value: state.isGroupsMute == NotificationMuteStatus.enabled,
            );
          },
        ),
        GroupsNotificationToneDialog(
            title: context
                .read<SettingsBloc>()
                .state
                .languageData
                .notificationTone),
        GroupsNotificationDurationDialog(
            title: context
                .read<SettingsBloc>()
                .state
                .languageData
                .VibrationalDuration),
      ],
    );
  }
}

class CallsTabContents extends StatefulWidget {
  const CallsTabContents({
    Key? key,
  }) : super(key: key);

  @override
  CallsTabContentsState createState() => CallsTabContentsState();
}

class CallsTabContentsState extends State<CallsTabContents> {
  bool isNotificationMute = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CallsNotificationToneDialog(
            title: context.read<SettingsBloc>().state.languageData.RingTone),
        CallsNotificationVibrationDurationDialog(
            title: context
                .read<SettingsBloc>()
                .state
                .languageData
                .VibrationalDuration),
      ],
    );
  }
}
