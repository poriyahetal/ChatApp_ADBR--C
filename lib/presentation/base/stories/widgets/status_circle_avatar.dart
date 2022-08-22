import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom2_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class StatusCircleAvatar extends StatelessWidget {
  const StatusCircleAvatar({
    Key? key,
    required this.imageUrl,
    required this.isStatusAvailable,
  }) : super(key: key);
  final String imageUrl;
  final bool isStatusAvailable;

  @override
  Widget build(BuildContext context) {
    return isStatusAvailable
        ? Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.darkBlue,
            ),
            padding: const EdgeInsets.all(3),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Kolors.white,
              ),
              padding: const EdgeInsets.all(2),
              child: Custom2CircleAvatar(
                profilePictureUrl: imageUrl,
                // color: '',
                // name: 'Elii',
              ),
            ),
          )
        : Custom2CircleAvatar(
            profilePictureUrl: imageUrl,
            // color: '',
            // name: 'Elii',
          );
  }
}
