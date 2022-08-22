import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class MyContactListTile extends StatelessWidget {
  const MyContactListTile({
    Key? key,
    required this.user,
    required this.phoneContactNumberOrName,
  }) : super(key: key);
  final KahoChatUser user;
  final String phoneContactNumberOrName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      onTap: () {
        AutoRouter.of(context).push(ChattingRoute(peerUser: user));
      },
      title: Text(
        phoneContactNumberOrName,
        style: const TextStyle(fontWeight: FontWeight.w700),
      ),
      leading: CustomCircleAvatar(
        name: phoneContactNumberOrName.contains("+")
            ? user.name
            : phoneContactNumberOrName,
        profilePictureUrl: user.profilePictureUrl,
        color: user.userColor,
      ),
      subtitle: Text("${user.countryCode} ${user.phoneNumber}"),
    );
  }
}
