import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/drawer/contacts/widgets/phone_contact_tile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';

class PhoneContactsTabContents extends StatelessWidget {
  const PhoneContactsTabContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactsBloc, ContactsState>(
      listener: (context, state) {
        state.fetchPhoneContactFailureOrSuccessOption.fold(
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
          },
          child: state.isLoading
              ? Shimmer.fromColors(
                  baseColor: Kolors.lightGrey,
                  highlightColor: Kolors.white,
                  child: ListView.separated(
                    separatorBuilder: (_, __) => const SizedBoxH10(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    itemCount: state.phoneContacts.length,
                    itemBuilder: (context, index) {
                      if (state.phoneContacts[index] == null) {
                        return Container();
                      }
                      return PhoneContactTile(
                        contact: state.phoneContacts[index],
                      );
                    },
                  ),
                )
              : state.phoneContacts.isEmpty
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
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      itemCount: state.phoneContacts.length,
                      itemBuilder: (context, index) {
                        if (state.phoneContacts[index] == null) {
                          return Container();
                        }
                        return PhoneContactTile(
                          contact: state.phoneContacts[index],
                        );
                      },
                    ),
        );
      },
    );
  }
}
