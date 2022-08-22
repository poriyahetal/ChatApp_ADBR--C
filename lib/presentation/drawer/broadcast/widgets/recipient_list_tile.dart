import 'package:flutter/material.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class RecipientListTile extends StatelessWidget {
  const RecipientListTile({Key? key, required this.recipient})
      : super(key: key);
  final KahoChatUser recipient;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCircleAvatar(
        name: recipient.name,
        profilePictureUrl: recipient.profilePictureUrl,
        color: recipient.userColor,
      ),
      title: Text(recipient.name),
      subtitle: Text(recipient.about),
    );
  }
}
