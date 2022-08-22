import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:get/get.dart';
class CircleAvatarWithIcon extends StatelessWidget {
  const CircleAvatarWithIcon({
    Key? key,
    required this.iconData,
    required this.onTap,
    this.profilePictureUrl,
    required this.name,
    required this.color,
  }) : super(key: key);
  final IconData iconData;
  final String? profilePictureUrl;
  final Function() onTap;
  final String name;
  final String color;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomCircleAvatar(
            radius:
            MediaQuery.of(context).size.width<360?40:60,
            name: name,
            nameFontSize: 20,
            color: color,
            profilePictureUrl:
                HelperFunctions.getValidProfilePictureUrl(profilePictureUrl),
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.primary,
            ),
            padding: const EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Kolors.white,
              size: iconData == Icons.close ? 14 : 20,
            ),
          ),
        ],
      ),
    );
  }
}
