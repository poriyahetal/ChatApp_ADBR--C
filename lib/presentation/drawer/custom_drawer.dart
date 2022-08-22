import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/connectivity/network_connectivity.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/drawer/widgets/drawer_heading.dart';
import 'package:flutter_template/presentation/drawer/widgets/drawer_tile.dart';
import 'package:flutter_template/presentation/drawer/widgets/log_out_dialog.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class CustomDrawer extends StatefulWidget {
  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  final MyConnectivity _connectivity = MyConnectivity.instance;
  Map _source = {ConnectivityResult.none: false};

  @override
  void initState() {
    checkConnectivity();
    super.initState();
  }

  void checkConnectivity() {
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      if (mounted) {
        setState(() => _source = source as Map);
      }
    });
  }

  @override
  void dispose() {
    // _connectivity.disposeStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isActive;
    switch (_source.keys.toList()[0]) {
      case ConnectivityResult.mobile:
        isActive = true;
        break;
      case ConnectivityResult.wifi:
        isActive = true;
        break;
      case ConnectivityResult.none:
      default:
        isActive = false;
    }
    print("checking if network is active ==> $isActive");
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Drawer(
          child: Container(
            // color: state.appThemeMode == ThemeMode.dark
            //     ? Kolors.lightblack
            //     : Kolors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: Expanded(
                    child: ListView(
                      shrinkWrap: true,

                      // physics: NeverScrollableScrollPhysics(),
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MediaQuery.of(context).size.width < 360 ? const SizedBoxH10() : const SizedBoxH30(),
                        Stack(
                          children: [
                            DrawerHeading(),
                            if (context.read<UserBloc>().state.signedInUser.uid ==
                                Getters.getCurrentUserUid())
                              Positioned(
                                left: 40,
                                top: 40,
                                child: Card(
                                  // shadowColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 0,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      color: Kolors.offWhite,
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      radius: 7,
                                      backgroundColor: isActive
                                          ? Kolors.primary
                                          : Kolors.inActiveYellow,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),

                        const DrawerTileDivider(),
                        DrawerTile(
                          iconData: Icons.contact_page_outlined,
                          onTap: () async {
                            if (!await Permission.contacts.isGranted) {
                              AutoRouter.of(context).push(
                                ContactPermissionRoute(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    if (await Getters.requestPermission(
                                        Permission.contacts)) {
                                      AutoRouter.of(context)
                                          .push(const ContactsRoute());
                                      context.read<ContactsBloc>().add(
                                          ContactsEvent.fetchPhoneContacts(
                                              context: context));
                                      context.read<ContactsBloc>().add(
                                          const ContactsEvent.fetchMyContacts());
                                    }
                                  },
                                ),
                              );
                              // showContactRequestPermissionDialogue(
                              //   context: context,

                              // );
                            } else {
                              AutoRouter.of(context).push(const ContactsRoute());
                            }
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.myContacts}",
                        ),
                        DrawerTile(
                          iconData: Icons.group_add_outlined,
                          onTap: () {
                            AutoRouter.of(context).push(const SelectMembersRoute());
                            //AutoRouter.of(context).push(const CreateGroupRoute());
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.createNewGroup}",
                        ),
                        // DrawerTile(
                        //   iconData: Icons.rss_feed,
                        //   onTap: () {
                        //     AutoRouter.of(context).push(const NewBroadcastRoute());
                        //   },
                        //   title: "New Broadcast",
                        // ),
                        DrawerTile(
                          iconData: CupertinoIcons.bell,
                          onTap: () {
                            AutoRouter.of(context).push(const NotificationsRoute());
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.notifications}",
                        ),
                        DrawerTile(
                          iconData: Icons.settings_outlined,
                          onTap: () {
                            AutoRouter.of(context).push(const SettingsRoute());
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.settings}",
                        ),
                        // const Spacer(),
                        const DrawerTileDivider(),
                        DrawerTile(
                          iconData: Icons.card_giftcard,
                          onTap: () {
                            Share.share(
                                "I'm inviting you to use this awesome app https://play.google.com/store/apps/details?id=com.chat.kahochat");
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.inviteFriends}",
                        ),
                        DrawerTile(
                          iconData: Icons.help_outline_outlined,
                          onTap: () {
                            AutoRouter.of(context).push(const HelpRoute());
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.help}",
                        ),
                        DrawerTile(
                          iconData: Icons.power_settings_new_outlined,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => const LogOutDialog(),
                            );
                          },
                          title:
                              "${context.read<SettingsBloc>().state.languageData.logOut}",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBoxH10(),
                RichText(
                  text:  TextSpan(children: [
                    TextSpan(
                      text: "Ⓒ",
                      style: TextStyle(
                        // color: Kolors.black,
                        color: context.read<SettingsBloc>()
                            .state
                            .appThemeMode ==
                            ThemeMode.dark
                            ? Colors.white54
                            : Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          " ${AppConstants.appName} India. All right reserved.",
                      style: TextStyle(
                        // color: Kolors.black,
                        fontSize: 12,color: context.read<SettingsBloc>()
                          .state
                          .appThemeMode ==
                          ThemeMode.dark
                          ? Colors.white54
                          : Colors.black
                      ),
                    ),
                  ]),
                ),
                const SizedBoxH10(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
