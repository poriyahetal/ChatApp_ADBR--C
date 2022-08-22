import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class LifecycleWatcher extends StatefulWidget {
  final Widget child;

  const LifecycleWatcher({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  _LifecycleWatcherState createState() => _LifecycleWatcherState();
}

class _LifecycleWatcherState extends State<LifecycleWatcher>
    with WidgetsBindingObserver {
  AppLifecycleState? _lastLifecycleState;
  // int activeSessionCount = 0;
  // bool isActive = true;
  // DateTime? dateTime;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_lastLifecycleState) {
      case AppLifecycleState.detached:
        debugPrint('detached');
        // if (context.read<UserBloc>().state.isUserSignedIn) {
        //   context.read<UserBloc>().add(
        //         UserEvent.createOrUpdateUser(
        //           context.read<UserBloc>().state.signedInUser.copyWith(
        //                 activeStatus: ActiveStatus.Offline,
        //                 lastActive: Timestamp.now(),
        //               ),
        //         ),
        //       );
        // }

        break;
      case AppLifecycleState.inactive:
        debugPrint('inactive');
        if (context.read<UserBloc>().state.isUserSignedIn) {
          //TODO: NEW EVENT
          context.read<UserBloc>().add(
                UserEvent.createOrUpdateLastActiveStatus(
                  activeStatus:
                      context.read<UserBloc>().state.activeStatus.copyWith(
                            activeStatus: ActiveStatus.Offline,
                            lastActiveMillisecondsSinceEpoch:
                                Timestamp.now().millisecondsSinceEpoch,
                          ),
                ),
              );
          // context.read<UserBloc>().add(
          //   UserEvent.createOrUpdateUser(
          //     context.read<UserBloc>().state.signedInUser.copyWith(
          //           activeStatus: ActiveStatus.Offline,
          // lastActive: Timestamp.now(),
          //         ),
          //   ),
          // );
        }
        break;
      case AppLifecycleState.paused:
        debugPrint('paused');
        if (context.read<UserBloc>().state.isUserSignedIn) {
          //TODO: NEW EVENT
          context.read<UserBloc>().add(
                UserEvent.createOrUpdateLastActiveStatus(
                  activeStatus:
                      context.read<UserBloc>().state.activeStatus.copyWith(
                            activeStatus: ActiveStatus.Offline,
                            lastActiveMillisecondsSinceEpoch:
                                Timestamp.now().millisecondsSinceEpoch,
                          ),
                ),
              );
          // context.read<UserBloc>().add(
          //       UserEvent.createOrUpdateUser(
          //         context.read<UserBloc>().state.signedInUser.copyWith(
          //               activeStatus: ActiveStatus.Offline,
          // lastActive: Timestamp.now(),
          //             ),
          //       ),
          //     );
        }

        //TODO: perform functions for exiting/pausing the app like changing user status to offline
        break;

      case AppLifecycleState.resumed:
        debugPrint('resume');
        context
            .read<SettingsBloc>()
            .add(const SettingsEvent.fetchLanguageData());
        if (context.read<UserBloc>().state.isUserSignedIn) {
          //TODO: NEW EVENT
          context.read<UserBloc>().add(
                UserEvent.createOrUpdateLastActiveStatus(
                  activeStatus: context
                      .read<UserBloc>()
                      .state
                      .activeStatus
                      .copyWith(activeStatus: ActiveStatus.Online),
                ),
              );
          // context.read<UserBloc>().add(
          //       UserEvent.createOrUpdateUser(
          //         context
          //             .read<UserBloc>()
          //             .state
          //             .signedInUser
          //             .copyWith(activeStatus: ActiveStatus.Online),
          //       ),
          //     );
        }

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.read<LocalAuthBloc>().state.isImediately &&
              context.read<LocalAuthBloc>().state.appLock == AppLock.enabled) {
            AutoRouter.of(context)
                .replace(const FingerprintVerificationRoute());
          }
        });
        context
            .read<LocalAuthBloc>()
            .add(const LocalAuthEvent.fetchLastActiveSession());
        // refresh phone contacts
        // context
        //     .read<ContactsBloc>()
        //     .add(const ContactsEvent.fetchPhoneContacts());
        break;
      //TODO: perform functions like changing user status to online
      default:
        debugPrint('start');
        if (context.read<UserBloc>().state.isUserSignedIn) {
          //TODO: NEW EVENT
          context.read<UserBloc>().add(
                UserEvent.createOrUpdateLastActiveStatus(
                  activeStatus: context
                      .read<UserBloc>()
                      .state
                      .activeStatus
                      .copyWith(activeStatus: ActiveStatus.Online),
                ),
              );
          // context.read<UserBloc>().add(
          //       UserEvent.createOrUpdateUser(
          //         context
          //             .read<UserBloc>()
          //             .state
          //             .signedInUser
          //             .copyWith(activeStatus: ActiveStatus.Online),
          //       ),
          //     );
        }
    }
    debugPrint(
      'The most recent lifecycle state this widget observed was: $_lastLifecycleState.',
    );
    return widget.child;
  }
}
