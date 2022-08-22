import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_template/application/calls/call_screen/call_screen_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/calling_functions.dart';
import 'package:flutter_template/presentation/base/widgets/base_page_contents.dart';
import 'package:flutter_template/presentation/core/widgets/life_cycle_watcher.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:move_to_background/move_to_background.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class BasePage extends StatefulWidget {
  final int selectedIndex;
  const BasePage({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage>
    with SingleTickerProviderStateMixin {
  OverlayEntry? entry;
  Offset offset = const Offset(100, 300);
  late AnimationController _animationController;

  Future initializeLocalNotification() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: (String? payload) async {
        if (payload != null) {
          flutterLocalNotificationsPlugin.cancel(0);
          if (context
                  .read<CallsBloc>()
                  .state
                  .currentRoomDetails
                  .currentCall
                  .type ==
              CallType.audio) {
            AutoRouter.of(context).push(VoiceCallRoute(initalize: true));
          } else if (context
                  .read<CallsBloc>()
                  .state
                  .currentRoomDetails
                  .currentCall
                  .type ==
              CallType.video) {
            AutoRouter.of(context).push(const VideoCallRoute());
          }
          debugPrint('notification payload: $payload');
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    initContext(context);
    initializeLocalNotification();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    callStream().listen((snapshot) {
      if (snapshot.size != 0) {
        for (final doc in snapshot.docs) {
          final CallRoomModel incomingCallRoomDetails =
              CallRoomModel.fromMap(doc.data() as Map<String, dynamic>);
          final userExists = incomingCallRoomDetails.currentCall.participants
              .where(
                (element) =>
                    element.participant.uid == Getters.getCurrentUserUid() &&
                    element.type == ParticipantType.receiver &&
                    element.status == CallStatus.notAnswered,
              )
              .isNotEmpty;
          final checkUidExist = incomingCallRoomDetails.currentCall.participants
              .where(
                (element) =>
                    element.participant.uid ==
                        incomingCallRoomDetails.currentCall.sender.uid &&
                    element.type == ParticipantType.caller &&
                    element.id! > 7,
              )
              .isNotEmpty;

          print("printing user status $checkUidExist  $userExists");
          if (incomingCallRoomDetails.isCallActive &&
              userExists &&
              checkUidExist) {
            context.read<CallsBloc>().add(
                  CallsEvent.updateCurrentRoomDetails(
                    incomingCallRoomDetails,
                  ),
                );
            context.read<UserBloc>().add(
                  UserEvent.createOrUpdateUser(
                    context
                        .read<UserBloc>()
                        .state
                        .signedInUser
                        .copyWith(isOnCall: true),
                  ),
                );
            AutoRouter.of(context).push(const CallReceiverRoute());
          }
        }
      }
    });
  }

  void _insertOverlay(BuildContext context) {
    entry = OverlayEntry(builder: (context) {
      final size = MediaQuery.of(context).size;
      return Positioned(
        left: offset.dx,
        top: offset.dy,
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onPanUpdate: (details) {
              offset += details.delta;
              entry!.markNeedsBuild();
            },
            onTap: () {
              context
                  .read<CallScreenBloc>()
                  .add(const CallScreenEvent.maximize());
              _animationController.stop();
              entry!.remove();
              if (context.read<CallScreenBloc>().state.calltype ==
                  CallType.audio) {
                AutoRouter.of(context).push(VoiceCallRoute(initalize: true));
              } else {
                AutoRouter.of(context).push(const VideoCallRoute());
              }
            },
            child: SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedBuilder(
                      animation: _animationController.view,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _animationController.value / 8 + 1,
                          child: child,
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Kolors.callLogSelected,
                              borderRadius: BorderRadius.circular(50)))),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Kolors.black,
                    backgroundImage: CachedNetworkImageProvider(
                      HelperFunctions.getValidProfilePictureUrl(""),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
    return Overlay.of(context)!.insert(entry!);
  }

  void compareSession(DateTime fetchedDate, int second) {
    final DateTime dateTimeNow = DateTime.now();
    final diff = dateTimeNow.difference(fetchedDate);
    print(diff.inSeconds);
    if (diff.inSeconds > second) {
      context.read<LocalAuthBloc>().add(
            const LocalAuthEvent.enableDisableFingerPrintAfterTimeout(
              newStatus: FingerPrintStatus.enabled,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        MoveToBackground.moveTaskToBack();
        return false;
      },
      child: BlocBuilder<CallsBloc, CallsState>(
        builder: (context, state) {
          return BlocBuilder<LocalAuthBloc, LocalAuthState>(
            builder: (context, state) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (state.fingerPrintStatus == FingerPrintStatus.disabled &&
                      state.appLock == AppLock.enabled) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.fetchAppLockTime(),
                        );
                    compareSession(state.fetchedDateTime, state.timer);
                  }
                },
                onPanDown: (_) {
                  if (state.fingerPrintStatus == FingerPrintStatus.disabled &&
                      state.appLock == AppLock.enabled) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.fetchAppLockTime(),
                        );
                    compareSession(state.fetchedDateTime, state.timer);
                  }
                },
                onPanUpdate: (_) {
                  if (state.fingerPrintStatus == FingerPrintStatus.disabled &&
                      state.appLock == AppLock.enabled) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.fetchAppLockTime(),
                        );
                    compareSession(state.fetchedDateTime, state.timer);
                  }
                },
                child: LifecycleWatcher(
                  child: BlocListener<CallsBloc, CallsState>(
                    listener: (context, state) {
                      state.callStartFailureOrSuccessOpt.fold(
                        () {},
                        (some) {
                          some.fold(
                            (failure) {
                              Fluttertoast.showToast(
                                msg: failure.maybeMap(
                                  permissionNotGranted: (e) =>
                                      "Please grant camera and microphone permissions for call feature.",
                                  orElse: () =>
                                      "Couldn't start the call. Please try again.",
                                ),
                                backgroundColor: Kolors.grey,
                              );
                              context.read<UserBloc>().add(
                                    UserEvent.createOrUpdateUser(
                                      context
                                          .read<UserBloc>()
                                          .state
                                          .signedInUser
                                          .copyWith(isOnCall: false),
                                    ),
                                  );
                            },
                            (success) {
                              context.read<UserBloc>().add(
                                    UserEvent.createOrUpdateUser(
                                      context
                                          .read<UserBloc>()
                                          .state
                                          .signedInUser
                                          .copyWith(isOnCall: true),
                                    ),
                                  );
                              if (state.currentRoomDetails.currentCall.type ==
                                  CallType.audio) {
                                AutoRouter.of(context).push(
                                  VoiceCallRoute(
                                    initalize: true,
                                  ),
                                );
                              } else if (state
                                      .currentRoomDetails.currentCall.type ==
                                  CallType.video) {
                                AutoRouter.of(context)
                                    .push(const VideoCallRoute());
                              }
                            },
                          );
                        },
                      );
                    },
                    child: BlocListener<StoriesBloc, StoriesState>(
                      listener: (context, state) {
                        state.createStoryFailureOrSuccessOption.fold(
                          () {},
                          (some) {
                            some.fold(
                              (failure) {
                                Fluttertoast.showToast(
                                  msg: "Story upload failed. Please try again",
                                );
                              },
                              (success) {
                                Fluttertoast.showToast(
                                  msg: "Story uploaded successfully.",
                                  backgroundColor: Kolors.grey,
                                );
                              },
                            );
                          },
                        );
                      },
                      child: BasePageContents(
                        selectedIndex: widget.selectedIndex,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

Stream<QuerySnapshot> callStream() {
  return FirebaseFirestore.instance.callsCollection
      .where('users', arrayContains: Getters.getCurrentUserUid())
      .snapshots();
}
