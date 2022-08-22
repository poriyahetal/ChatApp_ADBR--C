// ignore_for_file: prefer_final_locals

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/emoji_picker.dart';
import 'package:flutter_template/presentation/drawer/custom_drawer.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ViewProfilePage extends StatelessWidget {
  const ViewProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName = TextEditingController();

    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return BlocBuilder<StoriesBloc, StoriesState>(
          builder: (context, storyState) {
            return SafeScaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).backgroundColor,
                iconTheme: Theme.of(context).iconTheme,
                elevation: 0.0,
                // backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  "${context.read<SettingsBloc>().state.languageData.profile}",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).iconTheme.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView(
                    children: [
                      if (state.isLoading)
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: CircularProgressIndicator(),
                        )
                      else
                        CustomCircleAvatar(
                          radius: 40,
                          name: state.signedInUser.name,
                          isMyprofilePicture: true,
                          color: state.signedInUser.userColor,
                          profilePictureUrl:
                              state.signedInUser.profilePictureUrl,
                        ),
                      // ignore: deprecated_member_use
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [Spacer(),
                          FlatButton(

                            onPressed: () {
                              showModalBottomSheet(
                                constraints: const BoxConstraints(maxHeight: 200),
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
                            },
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "${context.read<SettingsBloc>().state.languageData.editPhoto}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),Spacer()
                        ],
                      ),
                      // const SizedBoxH30(),
                      GestureDetector(
                        onTap: () {
                          final chrs = state.signedInUser.name.split(" ");
                          firstName.text = chrs.first;
                          lastName.text = chrs.length > 1 ? chrs.last : "";
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Scaffold(
                                appBar: AppBar(
                                  backgroundColor:
                                      Theme.of(context).backgroundColor,
                                  iconTheme: Theme.of(context).iconTheme,
                                  elevation: 0.0,
                                  leading: const SizedBoxH10(),
                                  centerTitle: true,
                                  title: Text(
                                    "${context.read<SettingsBloc>().state.languageData.name}",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width <
                                                  360
                                              ? 14
                                              : 16,
                                      color: Theme.of(context).iconTheme.color,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  actions: [
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                                body: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    // vertical: 25,
                                  ),
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  // color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "${context.read<SettingsBloc>().state.languageData.firstName}"),
                                      TextFormField(
                                        controller: firstName,
                                        maxLength: 20,
                                        onChanged: (v) {
                                          if (v.length >= 20) {
                                            Fluttertoast.showToast(
                                              msg:
                                                  'You exceeded maximum length of 20 characters',
                                              backgroundColor: Kolors.grey,
                                            );
                                          }
                                        },
                                        decoration: InputDecoration(
                                          fillColor:
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? Colors.grey.shade800
                                                  : Colors.grey[200],
                                          counterText: "",
                                          filled: true,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                      const SizedBoxH20(),
                                      Text(
                                          "${context.read<SettingsBloc>().state.languageData.lastName} (${context.read<SettingsBloc>().state.languageData.optional})"),
                                      TextFormField(
                                        controller: lastName,
                                        maxLength: 20,
                                        onChanged: (v) {
                                          if (v.length >= 20) {
                                            Fluttertoast.showToast(
                                              msg:
                                                  'You exceeded maximum length of 20 characters',
                                              backgroundColor: Kolors.grey,
                                            );
                                          }
                                        },
                                        decoration: InputDecoration(
                                          fillColor:
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? Colors.grey.shade800
                                                  : Colors.grey[200],
                                          filled: true,
                                          counterText: "",
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                bottomNavigationBar: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 10,
                                  ),
                                  child: FlatButton(
                                    color: Kolors.primary,
                                    height: 50,
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    onPressed: () {
                                      // context.read<StoriesBloc>().add(StoriesEvent.getCurrentUserStory());
                                      context.read<UserBloc>().add(
                                            UserEvent.createOrUpdateUser(
                                              state.signedInUser.copyWith(
                                                name:
                                                    "${firstName.text} ${lastName.text}",
                                              ),
                                            ),
                                          );
                                      final forprint = storyState.myStories;
                                      print(forprint);

                                      // context.read<StoriesBloc>().add(
                                      //  StoriesEvent.createStories(
                                      //    storyState.myStories.copyWith(
                                      //      name: "${firstName.text} ${lastName.text}",
                                      //    )
                                      //  )
                                      // );
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                        "${context.read<SettingsBloc>().state.languageData.save}"),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "${context.read<SettingsBloc>().state.languageData.name}",
                            style: TextStyle(
                              fontSize: 13,
                              // color: Colors.grey,
                            ),
                          ),
                          subtitle: Text(
                            state.signedInUser.name,
                            style: TextStyle(
                              fontSize: 16,
                              color: context
                                          .read<SettingsBloc>()
                                          .state
                                          .appThemeMode ==
                                      ThemeMode.dark
                                  ? Colors.white54
                                  : Colors.grey[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(
                              CupertinoIcons.person,
                              color:context
                                  .read<SettingsBloc>()
                                  .state
                                  .appThemeMode ==
                                  ThemeMode.dark
                                  ? Colors.white54
                                  :  Colors.grey[800],
                              size: MediaQuery.of(context).size.width < 360
                                  ? 14
                                  : 30,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return BioEdit(state: state);
                            },
                          );
                          //AutoRouter.of(context).push(EditProfileRoute(user: state.signedInUser));
                        },
                        child: ListTile(
                          title: Text(
                            "${context.read<SettingsBloc>().state.languageData.bio} (${context.read<SettingsBloc>().state.languageData.writeAboutYourself})",
                            style: TextStyle(
                              fontSize: 13,
                              // color: Colors.grey,
                            ),
                          ),
                          subtitle: Text(
                            state.signedInUser.about,
                            style: TextStyle(
                              fontSize: 16,
                              color:context
                                  .read<SettingsBloc>()
                                  .state
                                  .appThemeMode ==
                                  ThemeMode.dark
                                  ? Colors.white54
                                  :  Colors.grey[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                              'assets/icons/editing.png',
                              color:context
                                  .read<SettingsBloc>()
                                  .state
                                  .appThemeMode ==
                                  ThemeMode.dark
                                  ? Colors.white54
                                  :  Colors.grey[800],
                              height: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class BioEdit extends StatefulWidget {
  final UserState state;

  const BioEdit({Key? key, required this.state}) : super(key: key);

  @override
  _BioEditState createState() => _BioEditState();
}

class _BioEditState extends State<BioEdit> {
  bool isEmojiKeyboardOpened = false;
  TextEditingController bio = TextEditingController();

  @override
  initState() {
    bio.text = widget.state.signedInUser.about;
    super.initState();
  }

  bool maxlengthExcedec = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0.0,
        leading: const SizedBoxH10(),
        // backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "${context.read<SettingsBloc>().state.languageData.bio}",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).iconTheme.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "${context.read<SettingsBloc>().state.languageData.writeAboutYourself}"),
                TextFormField(
                  controller: bio,
                  maxLength: 50,
                  maxLines: 4,
                  minLines: 1,
                  onChanged: (v) {
                    if (v.length >= 60) {
                      Fluttertoast.showToast(
                        msg: 'You exceeded maximum length of 60 characters',
                        backgroundColor: Kolors.grey,
                      );
                      setState(() {
                        maxlengthExcedec = true;
                      });
                    } else {
                      setState(() {
                        maxlengthExcedec = false;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: false,
                    isDense: true,
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Kolors.primary),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Kolors.primary),
                    ),
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Kolors.primary),
                    ),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Kolors.primary),
                    ),
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          isEmojiKeyboardOpened = !isEmojiKeyboardOpened;
                        });
                      },
                      child: Icon(Icons.mood, color: Colors.grey[600]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isEmojiKeyboardOpened)
            EmojiPickerKeyboard(
              controller: bio,
              gifSource: GifSource.other,
            )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: FlatButton(
          color: Kolors.primary,
          height: 50,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            context.read<UserBloc>().add(
                  UserEvent.createOrUpdateUser(
                    widget.state.signedInUser.copyWith(
                      about: bio.text,
                    ),
                  ),
                );
            Navigator.pop(context);
          },
          child:
              Text("${context.read<SettingsBloc>().state.languageData.save}"),
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
                  backgroundColor: Kolors.grey,
                );
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
                  topRight: const Radius.circular(10),
                ),
              ),
              onClosing: () {},
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {
                          context.read<CameraBloc>().add(
                                const CameraEvent.pickImageFromGallery(),
                              );
                        },
                        leading: Icon(
                          IconlyLight.image,
                        ),
                        title: Text(
                          "${context.read<SettingsBloc>().state.languageData.openPhotoGallery}",
                        ),
                      ),
                      ListTile(
                        onTap: () => context
                            .read<CameraBloc>()
                            .add(const CameraEvent.pickImageFromCamera()),
                        leading: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                        title: Text(
                          "${context.read<SettingsBloc>().state.languageData.openCamera}",
                        ),
                      ),
                      if (context
                              .read<UserBloc>()
                              .state
                              .signedInUser
                              .profilePictureUrl !=
                          AppConstants.dummyProfilePictureUrl)
                        ListTile(
                          onTap: () {
                            context.read<UserBloc>().add(
                                  UserEvent.updateProfilePicture(
                                    HelperFunctions.getValidProfilePictureUrl(
                                      AppConstants.dummyProfilePictureUrl,
                                    ),
                                  ),
                                );
                            Navigator.pop(context);
                            Fluttertoast.showToast(
                              msg: "Profile image removed successfully",
                              backgroundColor: Kolors.grey,
                            );
                            // showDialog(
                            //     context: context,
                            //     builder: (context) {
                            //       return ProfileViewDialog(
                            //         profilePictureUrl: HelperFunctions.getValidProfilePictureUrl(state.signedInUser.profilePictureUrl),
                            //       );
                            //     },
                            // );
                          },
                          leading: const Icon(
                            CupertinoIcons.delete,
                          ),
                          title: Text(
                            "${context.read<SettingsBloc>().state.languageData.removeProfilePhoto}",
                          ),
                        ),
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
