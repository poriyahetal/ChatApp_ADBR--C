// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:share_plus/share_plus.dart';

class PhoneContactTile extends StatelessWidget {
  const PhoneContactTile({
    Key? key,
    required this.contact,
  }) : super(key: key);
  final PhoneContact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contact.name),
      leading: Container(
        width: 40,
        height: 40,
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          HelperFunctions.getNameInitials(contact.name).toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Kolors.black.withOpacity(.2)),
      ),
      // subtitle: TextTranslate("About"),
      trailing: OutlinedButton(
        onPressed: () {
          context
              .read<ContactsBloc>()
              .add(ContactsEvent.inviteContact(contact));
          // Share.share(
          //     "I'm inviting you to use this awesome app https://play.google.com/store/apps/details?id=com.chat.kahochat");
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Kolors.white,
          side: const BorderSide(
            color: Kolors.primary,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child:
            Text("${context.read<SettingsBloc>().state.languageData.invite}"),
      ),
    );
  }
}
