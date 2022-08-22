import 'package:flutter/material.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.contact,
    required this.onChanged,
    required this.isChecked,
  }) : super(key: key);
  final KahoChatUser contact;
  final void Function(bool) onChanged;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        contact.name,
        style: const TextStyle(
          color: Kolors.white,
        ),
      ),
      leading: CustomCircleAvatar(
        name: contact.name,
        profilePictureUrl: contact.profilePictureUrl,
        color: contact.userColor,
      ),
      subtitle: Text(
        contact.phoneNumber,
        style: const TextStyle(
          color: Kolors.white,
        ),
      ),
      trailing: Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onChanged: (val) {
          onChanged(val!);
        },
        value: isChecked,
      ),
    );
  }
}
