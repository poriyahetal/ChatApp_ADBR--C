import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/utils/ui_constants.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onClick,
    required this.name,
    required this.color,
    this.actions,
    required this.onClickMore,
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final String subtitle;
  final String name;
  final String color;
  final Function() onClick;
  final List<Widget>? actions;
  final Function() onClickMore;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      leadingWidth: 70,
      elevation: 10,
      leading: InkWell(
        onTap: () {
          AutoRouter.of(context).pop();
        },
        child: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            const Icon(Icons.arrow_back),
            const SizedBox(
              width: 2,
            ),
            Hero(
              tag: UiConstants.appbarAvatarHeroTag,
              child: imageUrl == AppConstants.dummyProfilePictureUrl ||
                      imageUrl == ''
                  ? CircleAvatar(
                      radius: 16,
                      backgroundColor: color == 'Colors.red'
                          ? Colors.red.withOpacity(.2)
                          : color == 'Colors.blue'
                              ? Colors.blue.withOpacity(.2)
                              : color == 'Colors.green'
                                  ? Colors.green.withOpacity(.2)
                                  : color == 'Colors.yellow'
                                      ? Colors.yellow.withOpacity(.2)
                                      : color == 'Colors.orange'
                                          ? Colors.orange.withOpacity(.2)
                                          : color == 'Colors.lightGreen'
                                              ? Colors.lightGreen
                                                  .withOpacity(.2)
                                              : color == 'Colors.pinkAccent'
                                                  ? Colors.pinkAccent
                                                      .withOpacity(.2)
                                                  : color == 'Colors.cyan'
                                                      ? Colors.cyan
                                                          .withOpacity(.2)
                                                      : color == 'Colors.purple'
                                                          ? Colors.purple
                                                              .withOpacity(.2)
                                                          : Colors.black
                                                              .withOpacity(.2),
                      child: Text(
                        HelperFunctions.getNameInitials(name).toUpperCase(),
                        style: TextStyle(
                          color: color == 'Colors.red'
                              ? Colors.red
                              : color == 'Colors.blue'
                                  ? Colors.blue
                                  : color == 'Colors.green'
                                      ? Colors.green
                                      : color == 'Colors.yellow'
                                          ? Colors.yellow
                                          : color == 'Colors.orange'
                                              ? Colors.orange
                                              : color == 'Colors.lightGreen'
                                                  ? Colors.lightGreen
                                                  : color == 'Colors.pinkAccent'
                                                      ? Colors.pinkAccent
                                                      : color == 'Colors.cyan'
                                                          ? Colors.cyan
                                                          : color ==
                                                                  'Colors.purple'
                                                              ? Colors.purple
                                                              : Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 18,
                      backgroundImage: imageUrl.isNotEmpty
                          ? CachedNetworkImageProvider(imageUrl)
                          : null,
                      child: imageUrl.isNotEmpty
                          ? null
                          : Icon(Icons.group, color: Colors.grey[500]),
                    ),
            ),
          ],
        ),
      ),
      titleSpacing: 0,
      title: ListTile(
        contentPadding: const EdgeInsets.all(5),
        onTap: onClick,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
            ),
            Text(subtitle,
                style: const TextStyle(
                    color: Colors.white, fontSize: 12, height: 0.9)),
          ],
        ),
      ),
      actions: [
        ...?actions,
        IconButton(
          onPressed: onClickMore,
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
