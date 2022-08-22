import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class Custom2CircleAvatar extends StatelessWidget {
  const Custom2CircleAvatar({
    Key? key,
    this.radius = 25,
    this.profilePictureUrl,
    // this.color,
    // this.name,
  }) : super(key: key);
  final String? profilePictureUrl;
  final double radius;
  // final String? name;
  // final String? color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Kolors.black,
      radius: radius,
      backgroundImage: CachedNetworkImageProvider(
        HelperFunctions.getValidProfilePictureUrl(profilePictureUrl),
      ),
    );
  }
}
