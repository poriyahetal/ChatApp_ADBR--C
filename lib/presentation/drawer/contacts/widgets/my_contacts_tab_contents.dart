import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/widgets/start_call_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/my_contact_list_tile.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyContactsTabContents extends StatelessWidget {
  MyContactsTabContents({
    this.isCalling = false,
    Key? key,
  }) : super(key: key);
  bool isCalling;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactsBloc, ContactsState>(
      listener: (context, state) {
        state.fetchMyContactFailureOrSuccessOption.fold(
          () => null,
          (some) => some.fold(
            (failure) {
              Fluttertoast.showToast(
                msg: "Unable to load contacts. Please retry",
                backgroundColor: Kolors.grey,
              );
            },
            (r) => null,
          ),
        );
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            context
                .read<ContactsBloc>()
                .add(ContactsEvent.fetchPhoneContacts(context: context));
            context
                .read<ContactsBloc>()
                .add(const ContactsEvent.fetchMyContacts());
          },
          child: state.myContacts.isEmpty
              ? ListView(
                  children: [
                    const SizedBoxH30(),
                    Text(
                      "${context.read<SettingsBloc>().state.languageData.noPhoneContactsPleaseAddAContactInYourPhonebook}.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              : ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  itemCount: state.myContacts.length,
                  itemBuilder: (context, index) {
                    String displayNameOrNumber;
                    final String phoneContactNumberOrName =
                        Getters.checkLocalContact(
                      phoneContacts:
                          context.read<ContactsBloc>().state.phoneContacts,
                      phoneNumber: state.myContacts[index].phoneNumber,
                    );
                    if (phoneContactNumberOrName == '') {
                      displayNameOrNumber = state.myContacts[index].phoneNumber;
                    } else {
                      displayNameOrNumber = phoneContactNumberOrName;
                    }
                    if (isCalling) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: StartNewCallTile(
                          peerUser: state.myContacts[index],
                          displayNameOrNumber: phoneContactNumberOrName,
                        ),
                      );
                    }
                    return MyContactListTile(
                      user: state.myContacts[index],
                      phoneContactNumberOrName: phoneContactNumberOrName,
                    );
                  },
                ),
        );
      },
    );
  }
}
