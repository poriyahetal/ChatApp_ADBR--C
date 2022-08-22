import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/base/calls/widgets/icon_button_with_label.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class ProfilePhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        return BlocBuilder<CameraBloc, CameraState>(
          builder: (context, state) {
            return SafeScaffold(
              backgroundColor: Kolors.black,
              appBar: AppBar(
                title: Text(
                  "${context.read<SettingsBloc>().state.languageData.profilePhoto}",
                  style: TextStyle(color: Kolors.white),
                ),
                backgroundColor: Kolors.black,
                actions: [
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              const ChangeProfilePhotoBottomSheet(),
                        );
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Share.share(
                        "Checkout my ${AppConstants.appName} profile picture : ${HelperFunctions.getValidProfilePictureUrl(userState.signedInUser.profilePictureUrl)}",
                      );
                    },
                    icon: const Icon(Icons.share),
                  ),
                ],
              ),
              body: Center(
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : CachedNetworkImage(
                        imageUrl: HelperFunctions.getValidProfilePictureUrl(
                          userState.signedInUser.profilePictureUrl,
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

class ChangeProfilePhotoBottomSheet extends StatelessWidget {
  const ChangeProfilePhotoBottomSheet({
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
              onClosing: () {},
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${context.read<SettingsBloc>().state.languageData.profilePhoto}",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBoxH20(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButtonWithLabel(
                            onTap: () async {
                              context.read<UserBloc>().add(
                                    UserEvent.createOrUpdateUser(
                                      state.signedInUser
                                          .copyWith(profilePictureUrl: ""),
                                    ),
                                  );
                            },
                            label: "Remove\nphoto",
                            iconData: Icons.delete,
                          ),
                          const SizedBoxW15(),
                          IconButtonWithLabel(
                            onTap: () async {
                              context.read<CameraBloc>().add(
                                    const CameraEvent.pickImageFromGallery(),
                                  );
                            },
                            label:
                                "${context.read<SettingsBloc>().state.languageData.fromGallery.split('from').last}",
                            iconData: Icons.photo,
                          ),
                          const SizedBoxW15(),
                          IconButtonWithLabel(
                            onTap: () {
                              context
                                  .read<CameraBloc>()
                                  .add(const CameraEvent.pickImageFromCamera());
                            },
                            label:
                                "${context.read<SettingsBloc>().state.languageData.camera}",
                            iconData: Icons.camera_alt,
                          ),
                        ],
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
