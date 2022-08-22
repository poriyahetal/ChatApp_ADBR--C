import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/call_log/call_log_bloc.dart';
import 'package:flutter_template/application/list_and_grid/list_and_grid_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarMain extends StatelessWidget with PreferredSizeWidget {
  AppBarMain({
    Key? key,
  }) : super(key: key);
  // static const platform = MethodChannel('deepArChannel');
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
                  else if (!listAndGridState.isAppSelectionbarEnable)
                    Container(
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
                                  fontSize: MediaQuery.of(context).size.width<360?18:20,
                                  color: Kolors.white),
                            ),
                          ),
                          // Text('                '),
                          IconButton(
                            onPressed: () {
                              (CameraDeepArController.checkPermissions()
                                      as Future<dynamic>)
                                  .then((_) {
                                // Navigate
                                AutoRouter.of(context)
                                    .push(const StoryCreatorRoute());
                              });
                            },
                            icon:  Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width<360?22:null,
                            ),
                          ),
                        ],
                      ),
                    )
                  else
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
  Size get preferredSize => const Size.fromHeight(48);

  // Future<void> openDeepAr() async {
  //   try {
  //     await platform.invokeMethod('openDeepAr');
  //   } on PlatformException catch (e) {
  //     print(e);
  //   }
  // }
}
