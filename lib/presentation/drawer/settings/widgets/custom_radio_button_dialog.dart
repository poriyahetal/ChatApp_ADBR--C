// ignore_for_file: file_names
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/pages/share_contacts_page.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomRadioButtonDialog extends StatelessWidget {
  const CustomRadioButtonDialog({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return ListTile(
          title: Text(title),
          onTap: () {
            // Privacy privacy;
            // if (title == "Last seen") {
            //   privacy = state.lastSeenPrivacy;
            // } else if (title == "Profile photo") {
            //   privacy = state.profilePhotoPrivacy;
            // } else {
            //   privacy = state.aboutYouPrivacy;
            // }
            showDialog(
              context: context,
              builder: (context) => MyForm(
                title: title,
              ),
            );
          },
          subtitle: Text(
            title == "Last seen"
                ? state.lastSeenPrivacy.toString() == Privacy.No_one.toString()
                    ? context.read<SettingsBloc>().state.languageData.noOne
                    : state.lastSeenPrivacy.toString() ==
                            Privacy.Everyone.toString()
                        ? context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .everyone
                        : context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .onlyMyContact
                : title == "Profile photo"
                    ? state.profilePhotoPrivacy.toString() ==
                            Privacy.No_one.toString()
                        ? context.read<SettingsBloc>().state.languageData.noOne
                        : state.profilePhotoPrivacy.toString() ==
                                Privacy.Everyone.toString()
                            ? context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .everyone
                            : context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .onlyMyContact
                    : state.aboutYouPrivacy.toString() ==
                            Privacy.No_one.toString()
                        ? context.read<SettingsBloc>().state.languageData.noOne
                        : state.lastSeenPrivacy.toString() ==
                                Privacy.Everyone.toString()
                            ? context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .everyone
                            : context
                                .read<SettingsBloc>()
                                .state
                                .languageData
                                .onlyMyContact,
          ),
        );
      },
    );
  }
}

class MyForm extends StatefulWidget {
  final String title;

  const MyForm({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  void _showSheet() {
    showFlexibleBottomSheet<void>(
      isCollapsible: true,
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: (context, controller, offset) {
        return _BottomSheet(
          scrollController: controller,
          bottomSheetOffset: offset,
        );
      },
      anchors: [0, 0.5, 0.975],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SimpleDialog(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 27,
                top: 8,
              ),
              child: Text(
                widget.title,
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyText1!
                    .copyWith(fontSize: 22),
              ),
            ),
            ListTile(
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.everyone}"),
              leading: Radio<Privacy>(
                value: Privacy.Everyone,
                groupValue: widget.title == "Last seen"
                    ? state.lastSeenPrivacy
                    : widget.title == "Profile photo"
                        ? state.profilePhotoPrivacy
                        : state.aboutYouPrivacy,
                onChanged: (Privacy? value) {
                  debugPrint(value.toString());
                  if (widget.title == "Last seen") {
                    debugPrint('lastseen');
                    //TODO: NEW EVENT
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateLastActiveStatus(
                            activeStatus: state.activeStatus.copyWith(
                              lastSeen: value,
                            ),
                          ),
                        );
                    // context.read<UserBloc>().add(
                    //       UserEvent.createOrUpdateUser(
                    //         state.signedInUser.copyWith(lastSeen: value),
                    //       ),
                    //     );
                  } else if (widget.title == "Profile photo") {
                    debugPrint('profilePhoto');
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            state.signedInUser.copyWith(profilePhoto: value),
                          ),
                        );
                  } else {
                    debugPrint('aboutYou');
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            state.signedInUser.copyWith(aboutYou: value),
                          ),
                        );
                  }
                },
              ),
            ),
            ListTile(
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.onlyMyContact}"),
              leading: Radio<Privacy>(
                value: Privacy.Only_my_contact,
                groupValue: widget.title == "Last seen"
                    ? state.lastSeenPrivacy
                    : widget.title == "Profile photo"
                        ? state.profilePhotoPrivacy
                        : state.aboutYouPrivacy,
                onChanged: (Privacy? value) {
                  debugPrint(value.toString());
                  if (widget.title == "Last seen") {
                    debugPrint('lastseen');
                    //TODO: NEW EVENT
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateLastActiveStatus(
                            activeStatus: state.activeStatus.copyWith(
                              lastSeen: value,
                            ),
                          ),
                        );
                    // context.read<UserBloc>().add(
                    //       UserEvent.createOrUpdateUser(
                    //         state.signedInUser.copyWith(lastSeen: value),
                    //       ),
                    //     );
                  } else if (widget.title == "Profile photo") {
                    debugPrint('profilePhoto');
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            state.signedInUser.copyWith(profilePhoto: value),
                          ),
                        );
                  } else {
                    debugPrint('aboutYou');
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            state.signedInUser.copyWith(aboutYou: value),
                          ),
                        );
                  }
                },
              ),
            ),
            ListTile(
              title: widget.title == "Groups"
                  ? Text(
                      "${context.read<SettingsBloc>().state.languageData.myContactsExcept}")
                  : Text(
                      "${context.read<SettingsBloc>().state.languageData.noOne}"),
              leading: Radio<Privacy>(
                value: Privacy.No_one,
                groupValue: widget.title == "Last seen"
                    ? state.lastSeenPrivacy
                    : widget.title == "Profile photo"
                        ? state.profilePhotoPrivacy
                        : state.aboutYouPrivacy,
                onChanged: (Privacy? value) async {
                  debugPrint(value.toString());
                  if (widget.title == "Last seen") {
                    debugPrint('lastseen');
                    //TODO: NEW EVENT
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateLastActiveStatus(
                            activeStatus: state.activeStatus.copyWith(
                              lastSeen: value,
                            ),
                          ),
                        );
                    // context.read<UserBloc>().add(
                    //       UserEvent.createOrUpdateUser(
                    //         state.signedInUser.copyWith(lastSeen: value),
                    //       ),
                    //     );
                  } else if (widget.title == "Profile photo") {
                    debugPrint('profilePhoto');
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            state.signedInUser.copyWith(profilePhoto: value),
                          ),
                        );
                  } else if (widget.title == "Groups") {
                    debugPrint('Groups');
                    if (await Permission.contacts.isGranted) {
                      _showSheet();
                      // AutoRouter.of(context).push(ContactPermissionRoute(
                      //   onPressed: () async {
                      //     Navigator.pop(context);
                      //     if (await Getters.requestPermission(
                      //         Permission.contacts)) {
                      //       _showSheet();
                      //     }
                      //   },
                      // ));
                    } else {
                      Fluttertoast.showToast(
                        msg:
                            'Allow contact permission from app drawer then my contact tab to use this functionality',
                        backgroundColor: Kolors.grey,
                      );
                    }
                  } else {
                    debugPrint('aboutYou');
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            state.signedInUser.copyWith(aboutYou: value),
                          ),
                        );
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _BottomSheet extends StatefulWidget {
  final ScrollController scrollController;
  final double bottomSheetOffset;

  const _BottomSheet({
    required this.scrollController,
    required this.bottomSheetOffset,
    Key? key,
  }) : super(key: key);

  @override
  __BottomSheetState createState() => __BottomSheetState();
}

class __BottomSheetState extends State<_BottomSheet> {
  List<KahoChatUser> listUsers = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: SafeArea(
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: Kolors.primary,
                child: const Icon(
                  Icons.send,
                ),
                onPressed: () {
                  listUsers.forEach((element) {
                    //dowork
                  });
                },
              ),
              body: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  controller: widget.scrollController,
                  children: [
                    // Text(
                    //   'position $bottomSheetOffset',
                    //   style: Theme.of(context).textTheme.headline6,
                    // ),
                    SizedBox(
                      height: widget.bottomSheetOffset > 0.50
                          ? MediaQuery.of(context).size.height * 0.975
                          : MediaQuery.of(context).size.height * 0.70,
                      child: ShareContactsPage(
                        selectContactsOnly: true,
                        showFloatingButton: false,
                        onSelectChange: (v) {
                          setState(() {
                            listUsers = v;
                          });
                        },
                        onShared: (v) {
                          v.forEach((element) {
                            //do work
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
