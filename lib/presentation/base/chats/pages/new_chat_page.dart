// ignore_for_file: unused_local_variable, use_named_constants

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/progress_dialogue.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/my_contact_list_tile.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
class NewChatPage extends StatefulWidget {
  const NewChatPage({Key? key}) : super(key: key);

  @override
  _NewChatPageState createState() => _NewChatPageState();
}

class _NewChatPageState extends State<NewChatPage> {
  late String number;
  Country? _selectedCountry;
  KahoChatUser? mUser;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _selectedCountry = const Country("India", "flags/ind.png", "IN", "+91");
  }

  Future<void> _onPressedShowBottomSheet() async {
    final country = await showCountryPickerDialog(
      context,
      cornerRadius: 5,
      title: const Text(
        "Select Country",
        style: TextStyle(fontSize: 14),
      ),
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<UserBloc>().add(const UserEvent.setSearchInitial());
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBar(centerTitle: true,
            title: Text(
              context.read<SettingsBloc>().state.languageData.InviteANewChat,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  ?.copyWith(fontSize: MediaQuery.of(context).size.width<360?20:22, color: Colors.white),
            ),
          ),
          floatingActionButton:
              BlocBuilder<ChatsBloc, ChatsState>(builder: (cContext, cState) {
            return BlocBuilder<ContactsBloc, ContactsState>(
                builder: (coContext, coState) {
              return FloatingActionButton.extended(
                heroTag: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () async {
                  if (!state.isButtonEnable) {
                    if (!cState.isNewPeer) {
                    } else {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        // barrierColor: Color(0x00ffffff),
                        builder: (_) {
                          return AlertDialog(
                            elevation: 0,
                            alignment: Alignment.center,
                            backgroundColor: const Color(0x00ffffff),
                            content: Container(
                              // color: Colors.black54,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Center(
                                    child: const CircularProgressIndicator(
                                      color: Kolors.primary,
                                    ),
                                  ),
                                  const SizedBoxH10(),
                                  Text(
                                    "${context.read<SettingsBloc>().state.languageData.inviting}...",
                                    // textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Kolors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  const SizedBoxH10(),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      await Future.delayed(const Duration(seconds: 2), () {
                        context.read<ChatsBloc>().add(
                              ChatsEvent.sendTextMessage(
                                myUser:
                                    context.read<UserBloc>().state.signedInUser,
                                peerUser: mUser!,
                                message: "👋",
                              ),
                            );

                        context.read<ChatsBloc>().add(
                              const ChatsEvent.setIsNewPeer(
                                isNew: false,
                              ),
                            );
                        // sendInvite();
                        context.read<ChatsBloc>().add(
                              ChatsEvent.sendInvite(
                                peerUser: mUser!,
                                myUser:
                                    context.read<UserBloc>().state.signedInUser,
                              ),
                            );
                        context.read<ChatsBloc>().add(
                              ChatsEvent.fetchInviteStatus(
                                  peerUser: mUser!,
                                  myUser: context
                                      .read<UserBloc>()
                                      .state
                                      .signedInUser),
                            );
                        Navigator.pop(context);
                        AutoRouter.of(
                          context,
                        ).pop();
                        AutoRouter.of(
                          context,
                        ).pop();
                        context
                            .read<UserBloc>()
                            .add(UserEvent.searchUser(number: number));
                        if (mUser != null) {
                          AutoRouter.of(context)
                              .push(ChattingRoute(peerUser: mUser!));
                        }
                      });
                    }
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please select a valid contact.",
                        backgroundColor: Kolors.grey);
                  }
                },
                backgroundColor: Kolors.primary,
                label: Container(
                  width: MediaQuery.of(context).size.width - 120,
                  alignment: Alignment.center,
                  child: Text(
                    context
                        .read<SettingsBloc>()
                        .state
                        .languageData
                        .inviteToChat,
                    style:  TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.width<360?13:15,
                      color: Kolors.white,
                    ),
                  ),
                ),
              );
            });
          }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 10.0,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "${context.read<SettingsBloc>().state.languageData.searchThePhoneNumberToFindTheContactsAndStartChattingWithoutSavingTheContact}.",
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 5),
                width: MediaQuery.of(context).size.width - 75,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Kolors.primary),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: _onPressedShowBottomSheet,
                      child: Container(
                        color: Theme.of(context).backgroundColor,
                        child: Container(
                          height: MediaQuery.of(context).size.width<360?30:60,
                          padding:  EdgeInsets.all(MediaQuery.of(context).size.width<360?1:3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 4,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                              Text(
                                "${_selectedCountry!.callingCode}",
                                style:  TextStyle(
                                  fontSize: MediaQuery.of(context).size.width<360?16:18,
                                  color: Kolors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBoxW10(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        scrollPadding: EdgeInsets.zero,
                        textAlign: TextAlign.start,
                        decoration:  InputDecoration(
                          // contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                          counterText: "",
                          hintText: "Phone Number",
                          hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width<360?18:null),
                          helperStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width<360?19:21,
                            wordSpacing: 4,
                          ),
                        ),
                        maxLength: 10,
                        style: const TextStyle(
                          fontSize: 21,
                          wordSpacing: 4,
                        ),
                        onChanged: (value) {
                          if (value.length == 10) {
                            FocusScope.of(context).unfocus();
                            number = value;
                            context
                                .read<ContactsBloc>()
                                .add(const ContactsEvent.fetchMyContacts());
                            final List<String> contactsUid = context
                                .read<ContactsBloc>()
                                .state
                                .myContacts
                                .map((user) => user.phoneNumber)
                                .toList();

                            if (contactsUid.contains(value)) {
                              Fluttertoast.showToast(
                                  msg:
                                      "This number already exist in your phone contacts",
                                  backgroundColor: Kolors.grey);
                              // if (mUser != null) {
                              //   AutoRouter.of(context)
                              //       .push(ChattingRoute(peerUser: mUser!));
                              // }
                            } else {
                              context
                                  .read<UserBloc>()
                                  .add(UserEvent.searchUser(number: number));
                            }

                            // number = _selectedCountry!.callingCode + value;

                          } else {
                            context
                                .read<UserBloc>()
                                .add(const UserEvent.disableButton());
                            mUser = null;
                            context
                                .read<UserBloc>()
                                .add(const UserEvent.setRadioGroupValue(-1));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              if (state.searchInitial)
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const Center(
                    child: Text(''),
                  ),
                )
              else if (state.isLoading)
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    // horizontal: 20,
                    vertical: 20,
                  ),
                  itemBuilder: (context, index) {
                    if (state.myContacts.isNotEmpty) {
                      String displayNameOrNumber;
                      final String phoneContactNumberOrName =
                          Getters.checkLocalContact(
                        phoneContacts:
                            context.read<ContactsBloc>().state.phoneContacts,
                        phoneNumber: state.myContacts[index].phoneNumber,
                      );
                      if (phoneContactNumberOrName == '') {
                        displayNameOrNumber = state.myContacts[index].name;
                      } else {
                        displayNameOrNumber = phoneContactNumberOrName;
                      }
                      context.read<ChatsBloc>().add(
                            ChatsEvent.fetchIsNewPeer(
                                myUser: state.signedInUser,
                                peerUser: state.myContacts[index]),
                          );

                      // return MyContactListTile(
                      //   user: state.myContacts[index],
                      //   phoneContactNumberOrName: displayNameOrNumber,
                      // );
                      return newContactListTile(
                        index,
                        state.myContacts[index],
                        displayNameOrNumber,
                      );
                    } else {
                      print("no user found");
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Center(
                          child: Text(
                            "${context.read<SettingsBloc>().state.languageData.ThisPhoneNumberDoesnTExistInKahoChat}.",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }
                  },
                  separatorBuilder: (_, __) => const TileDivider(),
                  itemCount: 1,
                ),
            ],
          ),
        );
      },
    );
  }

  Widget newContactListTile(
      int index, KahoChatUser user, String phoneContactNumberOrName) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 40.0),
          onTap: () {
            // AutoRouter.of(context).push(ChattingRoute(peerUser: user));
            mUser = user;
            if (state.radioGroupValue != index) {
              context.read<UserBloc>().add(UserEvent.setRadioGroupValue(index));
              context.read<UserBloc>().add(const UserEvent.enableButton());
            } else {
              context
                  .read<UserBloc>()
                  .add(const UserEvent.setRadioGroupValue(-1));
              context.read<UserBloc>().add(const UserEvent.disableButton());
            }
          },
          title: Text(
            phoneContactNumberOrName,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          leading: user.name.isNotEmpty &&
                  (user.profilePictureUrl.isEmpty ||
                      user.profilePictureUrl ==
                          AppConstants.dummyProfilePictureUrl)
              ? CustomCircleAvatar(
                  name: phoneContactNumberOrName.contains("+")
                      ? user.name
                      : phoneContactNumberOrName,
                  profilePictureUrl: user.profilePictureUrl,
                  color: user.userColor,
                )

              //  CircleAvatar(
              //     radius: 25,
              //     backgroundColor: Kolors.wallLightBlue,
              //     child: Center(
              //       child: Text(
              //         phoneContactNumberOrName == ''
              //             ? user.name.toUpperCase().substring(0, 2)
              //             : phoneContactNumberOrName
              //                 .toUpperCase()
              //                 .substring(0, 2),
              //         style: const TextStyle(
              //           fontWeight: FontWeight.w700,
              //           color: Kolors.black,
              //         ),
              //       ),
              //     ),
              //   )
              : CustomCircleAvatar(
                  profilePictureUrl: user.profilePictureUrl,
                  color: user.userColor,
                  name: user.name,
                ),
          subtitle: Text("${user.countryCode} ${user.phoneNumber}"),
          trailing: Radio(
            value: index,
            groupValue: state.radioGroupValue,
            onChanged: (value) {},
          ),
        );
      },
    );
  }
}

class NewChatTile extends StatelessWidget {
  const NewChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Kolors.lightGrey,
        child: Text("NU", style: const TextStyle(color: Colors.black)),
      ),
      title: Text(
          "${context.read<SettingsBloc>().state.languageData.userNotFound}"),
    );
  }
}
