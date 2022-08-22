import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/call_log/call_log_bloc.dart';
import 'package:flutter_template/application/calls/call_screen/call_screen_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/list_and_grid/list_and_grid_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class OnCallAppBar extends StatelessWidget with PreferredSizeWidget {
  OnCallAppBar({
    Key? key,
  }) : super(key: key);
  // static const platform = MethodChannel('deepArChannel');

  ///48 without call bar
  ///48 without call bar

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListAndGridBloc, ListAndGridState>(
      builder: (context, listAndGridState) {
        return BlocBuilder<CallLogBloc, CallLogState>(
          builder: (context, state) {
            return AppBar(
              elevation: 5,
              automaticallyImplyLeading: false,
              actions: (state.length != 0)
                  ? [
                      IconButton(
                        onPressed: () {
                          context
                              .read<CallLogBloc>()
                              .add(const CallLogEvent.deleteCallLogs());
                        },
                        icon: const Icon(
                          Icons.delete,
                          // color: Kolors.primary,
                        ),
                      ),
                    ]
                  : null,
              // backgroundColor: Colors.white,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (state.length != 0)
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.clear,
                            color: Theme.of(context).primaryIconTheme.color,
                          ),
                          onPressed: () {
                            context
                                .read<CallLogBloc>()
                                .add(const CallLogEvent.deSelectAll());
                          },
                        ),
                        Text(
                          "${state.length}",
                          style: const TextStyle(
                              color: Kolors.white, fontSize: 20),
                        ),
                      ],
                    )
                  else if (!listAndGridState.isAppSelectionbarEnable) ...[
                    BlocBuilder<CallScreenBloc, CallScreenState>(
                      builder: (context, callScreenState) {
                        return InkWell(
                          onTap: () {
                            print('ontap');
                            if (context
                                    .read<CallsBloc>()
                                    .state
                                    .currentRoomDetails
                                    .currentCall
                                    .type ==
                                CallType.audio) {
                              AutoRouter.of(context)
                                  .push(VoiceCallRoute(initalize: true));
                            } else if (context
                                    .read<CallsBloc>()
                                    .state
                                    .currentRoomDetails
                                    .currentCall
                                    .type ==
                                CallType.video) {
                              AutoRouter.of(context)
                                  .push(const VideoCallRoute());
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.only(top: 3),
                            height: 23,
                            width: double.infinity,
                            color: Kolors.navyBlue,
                            child: RichText(
                              textAlign: TextAlign.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Tap to return to call ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  if (callScreenState.callTimer != 0)
                                    TextSpan(
                                      text: StopWatchTimer.getDisplayTime(
                                        StopWatchTimer.getMilliSecFromSecond(
                                          callScreenState.callTimer,
                                        ),
                                        milliSecond: false,
                                      ),
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          Center(
                            child: Text(
                              AppConstants.appName,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Kolors.white),
                            ),
                          ),
                          const Text('                '),
                          // IconButton(
                          //  onPressed: () {
                          //  openDeepAr();
                          //  Scaffold.of(context).openDrawer();
                          //   },
                          //   icon: const Icon(
                          //     Icons.camera_alt,
                          //     color: Colors.white,
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  ] else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.block_sharp,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              toolbarHeight: 70,
            );
          },
        );
      },
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(71);
  }

  // Future<void> openDeepAr() async {
  //   try {
  //     await platform.invokeMethod('openDeepAr');
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }
  // }
}
