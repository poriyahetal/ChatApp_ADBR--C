import 'package:flutter/material.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:get_time_ago/get_time_ago.dart';

class MemberTileReadUnread extends StatelessWidget {
  const MemberTileReadUnread({
    Key? key,
    required this.member,
    required this.isRead,
    required this.time,
  }) : super(key: key);
  final KahoChatUser member;
  final bool isRead;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      visualDensity: const VisualDensity(vertical: -1.5),
      title: Text(
        member.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: CustomCircleAvatar(
        name: member.name,
        profilePictureUrl: member.profilePictureUrl,
        color: member.userColor,
      ),
      subtitle: Text(
        GetTimeAgo.parse(time),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      //trailing: Icon(Icons.cabin),
    );
  }
}
