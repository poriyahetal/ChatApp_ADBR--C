import 'package:flutter/material.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class MemberTile extends StatelessWidget {
  const MemberTile({
    Key? key,
    required this.member,
    required this.onChanged,
    required this.isChecked,
    required this.title,
  }) : super(key: key);
  final KahoChatUser member;
  final String title;
  final void Function(bool) onChanged;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    bool isButtonTapped = isChecked;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      visualDensity: const VisualDensity(vertical: -1.5),
      onTap: () {
        isButtonTapped = !isButtonTapped;
        onChanged(isButtonTapped);
      },
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: CustomCircleAvatar(
        name: title,
        profilePictureUrl: member.profilePictureUrl,
        color: member.userColor,
      ),
      subtitle: Text(
        "${member.countryCode} ${member.phoneNumber}",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: isButtonTapped
          ? Checkbox(
              activeColor: Colors.white,
              checkColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onChanged: (val) {
                // onChanged(val!);
              },
              value: isButtonTapped,
            )
          : const SizedBox(),
    );
  }
}
