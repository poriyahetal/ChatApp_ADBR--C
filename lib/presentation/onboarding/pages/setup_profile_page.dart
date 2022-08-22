import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/active_status_model.dart';
import 'package:flutter_template/domain/user/mute_notification.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/body_scroll_view.dart';
import 'package:flutter_template/presentation/core/layout_widgets/circle_avatar_with_icon.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';
import 'package:flutter_template/presentation/core/widgets/keyboard_visibility_builder.dart';
import 'package:flutter_template/presentation/onboarding/widgets/title_text.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../domain/chats/message_model.dart';
import '../../../domain/contacts/phone_contact_model.dart';
import '../../../infrastructure/core/firebase_cloud_messaging.dart';
import 'package:get/get.dart';
class SetupProfilePage extends StatefulWidget {
  const SetupProfilePage({Key? key, required this.countryCode})
      : super(key: key);

  final String countryCode;
  @override
  _SetupProfilePageState createState() => _SetupProfilePageState();
}

class _SetupProfilePageState extends State<SetupProfilePage> {
  final TextEditingController firstNameTEC = TextEditingController();
  final TextEditingController lastNameTEC = TextEditingController();
  final TextEditingController aboutTEC = TextEditingController();
  FocusNode firstNameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode aboutFocus = FocusNode();
  bool isEmojiKeyboardOpened = false;
  bool showEmojiIcon = false;
  bool setIntialValue = true;
  bool isFirstNameTyping = false;
  bool isLastNameTyping = false;
  bool isAboutTyping = false;
  bool isLoading = false;
  String profilePicturePath = "";
  final _formKey = GlobalKey<FormState>();
  // String azureLang = "en";
  var nameValString = "Name cannot be empty";
  var aboutValString = "About you cannot be empty";
  final List<String> colors = [
    'Colors.green',
    'Colors.yellow',
    'Colors.orange',
    'Colors.black',
    'Colors.pink',
    'Colors.red',
    'Colors.lightGreen',
    'Colors.pinkAccent',
    'Colors.cyan',
    'Colors.purple',
  ];
  final Random random = Random();
  int index = 0;
  void changeIndex() {
    setState(() => index = random.nextInt(9));
  }

  Future<bool> onBackPress() {
    if (isEmojiKeyboardOpened) {
      setState(() {
        isEmojiKeyboardOpened = false;
      });
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameFocus.addListener(onFirstNameFocusChange);
    lastNameFocus.addListener(onLastNameFocusChange);
    aboutFocus.addListener(onAboutFocusChange);
    changeIndex();
    fetchTranslationLanguage();
    resetTranslate();
  }

  @override
  void dispose() {
    super.dispose();
    firstNameFocus.removeListener(onFirstNameFocusChange);
    firstNameFocus.dispose();
    lastNameFocus.removeListener(onLastNameFocusChange);
    lastNameFocus.dispose();
    aboutFocus.removeListener(onAboutFocusChange);
    aboutFocus.dispose();
  }

  void onFirstNameFocusChange() {
    if (!firstNameFocus.hasFocus) {
      isFirstNameTyping = false;
      setState(() {});
    }
    debugPrint("Focus: ${firstNameFocus.hasFocus.toString()}");
  }
  Future<void> sendAvailabilityNotificationToContacts(
      BuildContext context) async {
    List<PhoneContact> phoneContacts =
        context.read<ContactsBloc>().state.phoneContacts;
    print("all phone contacts-->${phoneContacts}");
    for (int i = 0; i < phoneContacts.length; i++) {
      await FirebaseFirestore.instance
          .collection('users')
          .where('phoneNumber', isEqualTo: phoneContacts[i].phoneNumber)
          .get()
          .then((value) {
        value.docs.forEach((doc) {
          final KahoChatUser user =
          KahoChatUser.fromMap(doc.data());
          print("this is user-->${user.name}");
          if (user.uid != Getters.getCurrentUserUid()) {
            print("push tokens-->${user.pushToken}");
            FirebaseCloudMessaging()
                .sendMessageNotification(user.pushToken!, user.name,
                "is available on KahoChat", MessageModel.mockTextMessage(), context
                    .read<UserBloc>()
                    .state.signedInUser, user,
                messageID: "messageId")
                .onError(
                  (error, stackTrace) {},
            );
          }
        });
      });
    }
  }

  void onLastNameFocusChange() {
    if (!lastNameFocus.hasFocus) {
      isLastNameTyping = false;
      setState(() {});
    }
    debugPrint("Focus: ${lastNameFocus.hasFocus.toString()}");
  }

  void onAboutFocusChange() {
    if (!aboutFocus.hasFocus) {
      isAboutTyping = false;
      setState(() {});
    }
    debugPrint("Focus: ${aboutFocus.hasFocus.toString()}");
  }

  Future resetTranslate() async {
    nameValString =
        await Getters.getTranslation(languageCode: 'en', text: nameValString);
    aboutValString =
        await Getters.getTranslation(languageCode: 'en', text: aboutValString);
    setState(() {
      nameValString = nameValString;
      aboutValString = aboutValString;
    });
  }

  void fetchTranslationLanguage() {
    context.read<SettingsBloc>().add(const SettingsEvent.fetchAzureLanguage());
    // azureLang = context.read<SettingsBloc>().state.azureLang;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPress,
      child: KeyboardVisibilityBuilder(
        builder: (BuildContext context, Widget? child, bool isKeyboardVisible) {
          if (isKeyboardVisible) {
          } else {}
          return child!;
        },
        child: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {
            state.createOrUpdateUserOption.fold(
              () {},
              (some) {
                some.fold(
                  (failure) {
                    setState(() {
                      isLoading = false;
                    });
                    Fluttertoast.showToast(
                      msg: failure.maybeMap(
                        createUserFailure: (e) => "Unable to save info",
                        orElse: () => "Unexpected error occurred.",
                      ),
                      backgroundColor: Kolors.grey,
                    );
                  },
                  (success) async {
                    await Future.delayed(
                      const Duration(seconds: 4),
                    );
                    context
                        .read<UserBloc>()
                        .add(const UserEvent.getSignedInUser());
                    context
                        .read<StoriesBloc>()
                        .add(const StoriesEvent.getCurrentUserStory());
                    AutoRouter.of(context).popUntilRoot();
                    AutoRouter.of(context).replace(BaseRoute(selectedIndex: 0));
                  },
                );
              },
            );
          },
          builder: (context, userState) {
            if (setIntialValue) {
              if (firstNameTEC.text.isEmpty)
                firstNameTEC.text =
                    userState.signedInUser.name.split(" ").first;
              if (lastNameTEC.text.isEmpty)
                lastNameTEC.text = userState.signedInUser.name.split(" ").last;
              if (aboutTEC.text.isEmpty)
                aboutTEC.text = userState.signedInUser.about;
            }
            return SafeScaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: isEmojiKeyboardOpened
                          ? MediaQuery.of(context).size.height / 1.4
                          : isLoading
                              ? MediaQuery.of(context).size.height / 1.01
                              : MediaQuery.of(context).size.height / 1.1,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            MediaQuery.of(context).size.width<360? const SizedBoxH10():const SizedBoxH20(),
                            Text(
                              'Setup your profile',
                              style: GoogleFonts.arimo(
                                fontSize: MediaQuery.of(context).size.width<360?23:25,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const Spacer(),const SizedBoxH10(),

                            CircleAvatarWithIcon(
                              iconData: Icons.camera_alt_outlined,
                              name: userState.signedInUser.name
                                          .split(" ")
                                          .length >
                                      1
                                  ? userState.signedInUser.name.split(" ").first
                                  : userState.signedInUser.name
                                      .split(" ")
                                      .first,
                              color: userState.signedInUser.userColor,
                              profilePictureUrl:
                                  HelperFunctions.getValidProfilePictureUrl(
                                userState.signedInUser.profilePictureUrl,
                              ),
                              onTap: () {
                                showModalBottomSheet(
                                  constraints:
                                      const BoxConstraints(maxHeight: 200),
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  builder: (context) =>
                                      const ChangeProfilePhotoBottomSheet2(),
                                );
                                // AutoRouter
                                // .of(context)
                                //     .push(const ProfilePhotoRoute());
                              },
                            ),
                            const Spacer(),
                            if (firstNameTEC.text.length > 20)
                              const Text(
                                "First name cannot be more than 20 characters",
                                style: TextStyle(color: Kolors.red),
                              )
                            else
                              const SizedBox(
                                height: 18,
                              ),
                            TextFormField(
                              style:  TextStyle(
                                fontSize: MediaQuery.of(context).size.width<360?16:18,
                              ),
                              focusNode: firstNameFocus,
                              controller: firstNameTEC,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  // top: 30,
                                  left: 10,
                                  // bottom: 5,
                                  // right: 30,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Kolors.primary,
                                    width: 2.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Kolors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width<360?18:20,
                                ),
                                hintText:
                                    '${context.read<SettingsBloc>().state.languageData.firstName}',
                              ),
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                              maxLength: isFirstNameTyping ? 20 : null,
                              onChanged: (value) {
                                if (!isFirstNameTyping) {
                                  isFirstNameTyping = true;
                                  setIntialValue = false;
                                  setState(() {});
                                }
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  return "Name cannot be empty";
                                }

                                return null;
                              },
                            ),
                            // if (firstNameTEC.text.length > 20)
                            //   const Text(
                            //     "First name cannot be more than 20 characters",
                            //     style: TextStyle(color: Kolors.red),
                            //   )
                            // else
                            //   const SizedBox(
                            //     height: 18,
                            //   ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            if (!isFirstNameTyping)
                              const SizedBox(
                                height: 25,
                              ),
                            TextFormField(
                              focusNode: lastNameFocus,
                              style:  TextStyle(
                                fontSize: MediaQuery.of(context).size.width<360?16:18,
                              ),
                              onChanged: (value) {
                                if (!isLastNameTyping) {
                                  setIntialValue = false;
                                  isLastNameTyping = true;
                                  setState(() {});
                                }
                              },
                              controller: lastNameTEC,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  // top: 30,
                                  left: 10,
                                  // bottom: 5,
                                  // right: 30,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Kolors.primary,
                                    width: 2.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Kolors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width<360?18:20,
                                ),
                                hintText:
                                    "${context.read<SettingsBloc>().state.languageData.lastName} (${context.read<SettingsBloc>().state.languageData.optional})",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                      width: 2.0,
                                    )),
                              ),
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              maxLength: isLastNameTyping ? 20 : null,
                              validator: (val) {
                                // if (val!.isEmpty) {
                                //   return "Name cannot be empty";
                                // }
                                // return null;
                              },
                            ),

                            if (!isLastNameTyping)
                              const SizedBox(
                                height: 23,
                              ),
                            if (aboutTEC.text.length > 50)
                              const Text(
                                "Bio cannot be more than 50 characters",
                                style: TextStyle(color: Kolors.red),
                              ),
                            // else
                            //   const SizedBox(
                            //     height: 18,
                            //   ),
                            TextFormField(
                              focusNode: aboutFocus,
                              style:  TextStyle(
                                fontSize: MediaQuery.of(context).size.width<360?16:18,
                              ),
                              onChanged: (value) {
                                if (!isAboutTyping) {
                                  setIntialValue = false;
                                  isAboutTyping = true;
                                  setState(() {});
                                }
                              },
                              controller: aboutTEC,
                              maxLengthEnforcement: MaxLengthEnforcement
                                  .truncateAfterCompositionEnds,
                              maxLength: isAboutTyping ? 50 : null,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  return "About you cannot be empty";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  // top: 30,
                                  left: 10,
                                  // bottom: 5,
                                  // right: 30,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Kolors.primary,
                                    width: 2.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Kolors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width<360?16:20,
                                ),
                                hintText:
                                    "${context.read<SettingsBloc>().state.languageData.bio} (${context.read<SettingsBloc>().state.languageData.writeAboutYourself}",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      // context.read<SettingsBloc>().state.languageData
                                      // FocusScope.of(context).unfocus();
                                      isEmojiKeyboardOpened =
                                          !isEmojiKeyboardOpened;
                                    });
                                  },
                                  icon: Icon(
                                    isEmojiKeyboardOpened
                                        ? Icons.keyboard_outlined
                                        : Icons.emoji_emotions_outlined,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                ),
                              ),
                            ),
                            if (!isAboutTyping)
                               SizedBox(
                                height: MediaQuery.of(context).size.width<360?10:23,
                              ),

                            Container(
                              // padding: EdgeInsets.only(top: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'The Profile name and  Bio can be changed later.',
                              ),
                            ),

                            const Spacer(flex: 3),
                            // if (!isEmojiKeyboardOpened)
                          ],
                        ),
                      ),
                    ),
                    if (isEmojiKeyboardOpened)
                      EmojiPickerKeyboard(
                        controller: aboutTEC,
                        gifSource: GifSource.other,
                      )
                  ],
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: MediaQuery.of(context).viewInsets.bottom !=
                      0
                  ? null
                  : BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return isLoading
                            ? Hero(
                                tag: 'circularindicator',
                                child: Column(
                                  children: [
                                    // SizedBox(
                                    //   height: 90,
                                    // ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              1.1,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.center,
                                      children:  [
                                        SizedBox(
                                          height: MediaQuery.of(context).size.width<360?20:40,
                                          width: MediaQuery.of(context).size.width<360?20:40,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 6,
                                            color: Kolors.primary,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width<360?10:20,
                                        ),
                                        Text(
                                          'Getting started...',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width<360?16:19,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : FloatingActionButton.extended(
                                elevation: 0,
                                onPressed: () async {
                                  print(state.phoneNumber);
                                  setState(() {
                                    isLoading = true;
                                  });
                                  final FirebaseMessaging firebaseMessaging =
                                      FirebaseMessaging.instance;
                                  firebaseMessaging.getToken().then((token) {
                                    if (_formKey.currentState!.validate()) {
                                      context.read<UserBloc>().add(
                                            UserEvent.createOrUpdateUser(
                                              KahoChatUser(
                                                mute: {},
                                                uid:
                                                    Getters.getCurrentUserUid(),
                                                name:
                                                    "${firstNameTEC.text} ${lastNameTEC.text}",
                                                about: aboutTEC.text,
                                                profilePictureUrl: HelperFunctions
                                                    .getValidProfilePictureUrl(
                                                  userState.signedInUser
                                                      .profilePictureUrl,
                                                ),
                                                // activeStatus: ActiveStatus.Online,
                                                phoneNumber: state.phoneNumber,
                                                //  stories: [],
                                                pushToken: token,
                                                aboutYou: Privacy.Everyone,
                                                // lastSeen: Privacy.everyone,
                                                profilePhoto: Privacy.Everyone,
                                                userColor: colors[index],
                                                countryCode: widget.countryCode,
                                                isOnCall: false,
                                                // muteNotification: [],
                                                // lastActive: Timestamp.now(),
                                              ),
                                            ),
                                          );
                                      context.read<StoriesBloc>().add(
                                          StoriesEvent.createStories(StoriesModel(
                                              uid: Getters.getCurrentUserUid(),
                                              name: firstNameTEC.text,
                                              profilePictureUrl: HelperFunctions
                                                  .getValidProfilePictureUrl(
                                                      userState.signedInUser
                                                          .profilePictureUrl),
                                              mute: {},
                                              phoneNumber: state.phoneNumber,
                                              stories: [],
                                              storiesPrivacy:
                                                  StoryPrivacy.myContacts,
                                              unseenStories: 0)));
                                      context.read<ContactsBloc>().add(
                                            ContactsEvent.createUserContacts(
                                              UserContacts(
                                                uid:
                                                    Getters.getCurrentUserUid(),
                                                userName: firstNameTEC.text,
                                                phoneNumber: state.phoneNumber,
                                                storyContact: [],
                                                shareWith: {},
                                                contactsExcept: {},
                                              ),
                                            ),
                                          );
                                      context.read<UserBloc>().add(
                                            UserEvent
                                                .createOrUpdateLastActiveStatus(
                                              activeStatus: LastActiveStatus(
                                                activeStatus:
                                                    ActiveStatus.Online,
                                                lastSeen: Privacy.Everyone,
                                                lastActiveMillisecondsSinceEpoch:
                                                    Timestamp.now()
                                                        .millisecondsSinceEpoch,
                                              ),
                                            ),
                                          );
                                      context.read<UserBloc>().add(
                                            UserEvent
                                                .createOrUpdateMuteUserGroupNotification(
                                              mutedMotification:
                                                  MuteNotification(
                                                uid:
                                                    Getters.getCurrentUserUid(),
                                                muteNotification: [],
                                              ),
                                            ),
                                          );
                                      sendAvailabilityNotificationToContacts(context);
                                    }
                                  }).catchError((err) {
                                    Fluttertoast.showToast(
                                      msg: err.message.toString(),
                                      backgroundColor: Kolors.grey,
                                    );
                                  });
                                  await Future.delayed(
                                    Duration(seconds: 1),
                                  );
                                },
                                heroTag: 'circularindicator',
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: Kolors.primary,
                                label: Container(
                                  width:
                                      MediaQuery.of(context).size.width - 120,
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              "LET'S GO",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: Kolors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(Icons.arrow_right_alt)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                        //  Hero(
                        //     tag: 'circularindicator',
                        //     child: SizedBox(
                        //       height: 60,
                        //       width: 180,
                        //       child: RoundedButton(
                        //         // isLoading: isLoading,
                        //         onTap: () async {
                        //           setState(() {
                        //             isLoading = true;
                        //           });
                        //           final FirebaseMessaging
                        //               firebaseMessaging =
                        //               FirebaseMessaging.instance;
                        //           firebaseMessaging
                        //               .getToken()
                        //               .then((token) {
                        //             if (_formKey.currentState!.validate()) {
                        //               context.read<UserBloc>().add(
                        //                     UserEvent.createOrUpdateUser(
                        //                       KahoChatUser(
                        //                         mute: {},
                        //                         uid: Getters
                        //                             .getCurrentUserUid(),
                        //                         name:
                        //                             "${firstNameTEC.text} ${lastNameTEC.text}",
                        //                         about: aboutTEC.text,
                        //                         profilePictureUrl:
                        //                             HelperFunctions
                        //                                 .getValidProfilePictureUrl(
                        //                           userState.signedInUser
                        //                               .profilePictureUrl,
                        //                         ),
                        //                         // activeStatus: ActiveStatus.Online,
                        //                         phoneNumber:
                        //                             state.phoneNumber,
                        //                         //  stories: [],
                        //                         pushToken: token,
                        //                         aboutYou: Privacy.Everyone,
                        //                         // lastSeen: Privacy.everyone,
                        //                         profilePhoto:
                        //                             Privacy.Everyone,
                        //                         userColor: colors[index],
                        //                         countryCode:
                        //                             widget.countryCode,
                        //                         // muteNotification: [],
                        //                         // lastActive: Timestamp.now(),
                        //                       ),
                        //                     ),
                        //                   );
                        //               context.read<StoriesBloc>().add(
                        //                   StoriesEvent.createStories(StoriesModel(
                        //                       uid: Getters
                        //                           .getCurrentUserUid(),
                        //                       name: firstNameTEC.text,
                        //                       profilePictureUrl: HelperFunctions
                        //                           .getValidProfilePictureUrl(
                        //                               userState.signedInUser
                        //                                   .profilePictureUrl),
                        //                       mute: {},
                        //                       phoneNumber:
                        //                           state.phoneNumber,
                        //                       stories: [],
                        //                       storiesPrivacy:
                        //                           StoryPrivacy.myContacts,
                        //                       unseenStories: 0)));
                        //               context.read<ContactsBloc>().add(
                        //                     ContactsEvent
                        //                         .createUserContacts(
                        //                       UserContacts(
                        //                         uid: Getters
                        //                             .getCurrentUserUid(),
                        //                         userName: firstNameTEC.text,
                        //                         phoneNumber:
                        //                             state.phoneNumber,
                        //                         storyContact: [],
                        //                         shareWith: {},
                        //                         contactsExcept: {},
                        //                       ),
                        //                     ),
                        //                   );
                        //               context.read<UserBloc>().add(
                        //                     UserEvent
                        //                         .createOrUpdateLastActiveStatus(
                        //                       activeStatus:
                        //                           LastActiveStatus(
                        //                         activeStatus:
                        //                             ActiveStatus.Online,
                        //                         lastSeen: Privacy.Everyone,
                        //                         lastActiveMillisecondsSinceEpoch:
                        //                             Timestamp.now()
                        //                                 .millisecondsSinceEpoch,
                        //                       ),
                        //                     ),
                        //                   );
                        //               context.read<UserBloc>().add(
                        //                     UserEvent
                        //                         .createOrUpdateMuteUserGroupNotification(
                        //                       mutedMotification:
                        //                           MuteNotification(
                        //                         uid: Getters
                        //                             .getCurrentUserUid(),
                        //                         muteNotification: [],
                        //                       ),
                        //                     ),
                        //                   );
                        //             }
                        //           }).catchError((err) {
                        //             Fluttertoast.showToast(
                        //                 msg: err.message.toString());
                        //           });
                        //           await Future.delayed(
                        //             Duration(seconds: 1),
                        //           );
                        //         },
                        //         text: "Let's Go",
                        //       ),
                        //     ),
                        //   );
                      },
                    ),
            );
          },
        ),
      ),
    );
  }
}

class ChangeProfilePhotoBottomSheet2 extends StatelessWidget {
  const ChangeProfilePhotoBottomSheet2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraBloc, CameraState>(
      listener: (context, state) {
        state.pickImageFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                context
                    .read<CameraBloc>()
                    .add(const CameraEvent.cropPickedImage());
              },
            );
          },
        );
        state.cropImageFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                context
                    .read<CameraBloc>()
                    .add(const CameraEvent.uploadCroppedImage());
              },
            );
          },
        );
        state.uploadImageFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {},
              (success) {
                AutoRouter.of(context).pop();
                Fluttertoast.showToast(
                    msg: "Profile image changed successfully",
                    backgroundColor: Kolors.grey);
                context.read<UserBloc>().add(
                      UserEvent.updateProfilePicture(
                        state.uploadedImageUrl,
                      ),
                    );
              },
            );
          },
        );
      },
      builder: (context, state) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return BottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              onClosing: () {},
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 18),
                        child: Text(
                          "Upload a photo",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBoxH10(),
                      ListTile(
                        onTap: () {
                          context.read<CameraBloc>().add(
                                const CameraEvent.pickImageFromGallery(),
                              );
                        },
                        leading: const Icon(
                          Icons.photo_outlined,
                        ),
                        title: const Text(
                          "Open Photo Gallery",
                        ),
                      ),
                      ListTile(
                        onTap: () async {
                          if (!await Permission.camera.isGranted) {
                            showRequestPermissionDialogue(
                              context: context,
                              title:
                                  'Give the access to KahoChat to capture the photos and videos.',
                              subtitle:
                                  "we require Camera permission to let user make video call, capture photos and videos in our KahoChat application.",
                              icon: Icons.camera_alt_outlined,
                              onPressed: () {
                                Navigator.pop(context);
                                context.read<CameraBloc>().add(
                                    const CameraEvent.pickImageFromCamera());
                              },
                            );
                          } else {
                            context
                                .read<CameraBloc>()
                                .add(const CameraEvent.pickImageFromCamera());
                          }
                        },
                        leading: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                        title: const Text(
                          "Open Camera",
                        ),
                      ),
                      // ListTile(
                      //   onTap: () {
                      //     context.read<UserBloc>().add(
                      //           UserEvent.updateProfilePicture(
                      //             HelperFunctions.getValidProfilePictureUrl(
                      //               AppConstants.dummyProfilePictureUrl,
                      //             ),
                      //           ),
                      //         );
                      //     Navigator.pop(context);
                      //     Fluttertoast.showToast(
                      //         msg: "Profile image removed successfully",
                      //         backgroundColor: Kolors.grey);
                      //     // showDialog(
                      //     //     context: context,
                      //     //     builder: (context) {
                      //     //       return ProfileViewDialog(
                      //     //         profilePictureUrl: HelperFunctions.getValidProfilePictureUrl(state.signedInUser.profilePictureUrl),
                      //     //       );
                      //     //     },
                      //     // );
                      //   },
                      //   leading: const Icon(
                      //     CupertinoIcons.photo,
                      //   ),
                      //   title: const Text(
                      //     "Remove profile photo",
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
