import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/body_scroll_view.dart';
import 'package:flutter_template/presentation/core/layout_widgets/circle_avatar_with_icon.dart';
import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key, required this.user, required this.userStory})
      : super(key: key);
  final KahoChatUser user;
  final StoriesModel userStory;

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController nameTEC;
  late TextEditingController aboutTEC;
  late String profilePictureUrl;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameTEC = TextEditingController();
    aboutTEC = TextEditingController();
    profilePictureUrl = widget.user.profilePictureUrl;
    nameTEC.text = widget.user.name;
    aboutTEC.text = widget.user.about;
    super.initState();
  }

  @override
  void dispose() {
    nameTEC.dispose();
    aboutTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        state.createOrUpdateUserOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {
                Fluttertoast.showToast(
                  msg: "Unable to edit profile. Please try again",
                  backgroundColor: Kolors.grey,
                );
              },
              (success) {
                Fluttertoast.showToast(
                  msg: "Profile updated successfully",
                  backgroundColor: Kolors.grey,
                );
                AutoRouter.of(context).pop();
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBarTitle(
            title: "Edit Profile",
          ),
          body: BodyScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    CircleAvatarWithIcon(
                      iconData: Icons.camera_alt,
                      profilePictureUrl: state.signedInUser.profilePictureUrl,
                      name: state.signedInUser.name,
                      color: state.signedInUser.userColor,
                      onTap: () {
                        AutoRouter.of(context).push(const ProfilePhotoRoute());
                      },
                    ),
                    const SizedBoxH30(),
                    TextFormField(
                      controller: nameTEC,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Kolors.primary,
                          size: 30,
                        ),
                        labelText: "Name",
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Name cannot be empty";
                        }
                        return null;
                      },
                    ),
                    const SizedBoxH20(),
                    TextFormField(
                      controller: aboutTEC,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.info,
                          color: Kolors.primary,
                          size: 30,
                        ),
                        labelText: "About you",
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "About you cannot be empty";
                        }
                        return null;
                      },
                    ),
                    const SizedBoxH20(),
                    TextFormField(
                      readOnly: true,
                      initialValue: widget.user.phoneNumber,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.call,
                          color: Kolors.primary,
                          size: 30,
                        ),
                        labelText: "Phone",
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 200,
                      child: RoundedButton(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            context.read<UserBloc>().add(
                                  UserEvent.createOrUpdateUser(
                                    widget.user.copyWith(
                                      name: nameTEC.text,
                                      about: aboutTEC.text,
                                      profilePictureUrl: profilePictureUrl,
                                    ),
                                  ),
                                );
                            context.read<StoriesBloc>().add(
                                StoriesEvent.createStories(widget.userStory
                                    .copyWith(
                                        name: nameTEC.text,
                                        profilePictureUrl: profilePictureUrl)));
                            // context.read<SettingsBloc>().add(
                            //     const SettingsEvent.setAppLanguage(
                            //         Locale('en', 'US')));
                            // context.read<SettingsBloc>().add(
                            //     const SettingsEvent.setAppLanguage(
                            //         Locale('ar', 'AE')));
                          }
                        },
                        text: "Update",
                      ),
                    )
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
