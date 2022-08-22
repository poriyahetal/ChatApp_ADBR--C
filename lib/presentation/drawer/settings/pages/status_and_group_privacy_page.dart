import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';

import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:provider/src/provider.dart';
import 'package:get/get.dart';
class StatusAndGroupPrivacyPage extends StatefulWidget {
  const StatusAndGroupPrivacyPage(
      {Key? key,
      required this.pageTitle,
      required this.firstTitle,
      required this.OnChangedFunctions,
      required this.listTileCount})
      : super(key: key);
  final String pageTitle;
  final String firstTitle;
  final List<Function> OnChangedFunctions;
  final int listTileCount;

  @override
  State<StatusAndGroupPrivacyPage> createState() =>
      _StatusAndGroupPrivacyPageState();
}

class _StatusAndGroupPrivacyPageState extends State<StatusAndGroupPrivacyPage> {
  late String privacySetting;

  late String privacyDisplay;
  bool isPrivacySelect = false;
  bool isDisplayContacts = false;

  @override
  void initState() {
    privacyDisplay = context.read<SettingsBloc>().state.languageData.myContacts;
    privacySetting = context.read<SettingsBloc>().state.languageData.everyone;
    setPrivacyText();
    super.initState();
  }

  Future<dynamic> _buildPopupDialog(BuildContext context) {
    return showDialog(
        context: context, builder: (context) => SelectPrivacyOption());
  }

  Future<void> setPrivacyText() async {
    // StoriesModel story = context.read<StoriesBloc>().state.myStories;
    final DocumentSnapshot myContactSnap = await FirebaseFirestore
        .instance.contactsCollection
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .getSavy();
    final UserContacts myuserContact =
        UserContacts.fromMap(myContactSnap.data() as Map<String, dynamic>);
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.storiesCollection
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .getSavy();
    final StoriesModel mystories =
        StoriesModel.fromMap(snap.data() as Map<String, dynamic>);
    setState(() {
      privacyDisplay = mystories.storiesPrivacy.toString() ==
              'StoryPrivacy.myContacts'
          ? context.read<SettingsBloc>().state.languageData.myContacts
          : mystories.storiesPrivacy.toString() == 'StoryPrivacy.onlyShareWith'
              ? '${myuserContact.shareWith!.length} ${context.read<SettingsBloc>().state.languageData.contact} ${context.read<SettingsBloc>().state.languageData.selected}'
              : '${myuserContact.contactsExcept!.length} ${context.read<SettingsBloc>().state.languageData.contacts} excluded';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        title: Text(
            "${context.read<SettingsBloc>().state.languageData.storiesPrivacy}",style: TextStyle(fontSize: MediaQuery.of(context).size.width<360?18:null),),
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
              onTap: () {
                setState(() {
                  _buildPopupDialog(context);
                });
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${context.read<SettingsBloc>().state.languageData.whoCanSeeMyStory}",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        privacyDisplay,
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              )),
          // : DisplayContacts(),

          if (widget.listTileCount == 3)
            ListTile(
              title: Text(
                  "${context.read<SettingsBloc>().state.languageData.myContactsExcept}"),
              leading: Radio<Privacy>(
                value: Privacy.Only_my_contact,
                groupValue: Privacy.Everyone,
                onChanged: (Privacy? value) {
                  // setState(() {
                  //   context
                  //       .read<SettingsBloc>()
                  //       .add(const SettingsEvent.setAppFontSize(16));
                  //   Navigator.pop(context);
                  // });
                },
              ),
            ),
        ],
      ),
      // floatingActionButton: _okFAB(),
    );
  }
}

typedef void SelectPrivacyOptionCallback(String result);

class SelectPrivacyOption extends StatefulWidget {
  final SelectPrivacyOptionCallback? onSubmit;

  SelectPrivacyOption({this.onSubmit});

  @override
  _SelectPrivacyOptionState createState() => _SelectPrivacyOptionState();
}

class _SelectPrivacyOptionState extends State<SelectPrivacyOption> {
  late String privacyDisplay;
  Future<void> setPrivacyToMyContacts() async {
    // StoriesModel storiesModel = context.read<StoriesBloc>().state.myStories;
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.storiesCollection
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .getSavy();
    final StoriesModel mystories =
        StoriesModel.fromMap(snap.data() as Map<String, dynamic>);
    final StoryPrivacy storyPrivacy = StoryPrivacy.myContacts;
    await FirebaseFirestore.instance.storiesCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set(
          mystories.copyWith(storiesPrivacy: storyPrivacy).toMap(),
          SetOptions(merge: true),
        );
  }

  Future<void> setPrivacyRadioButton() async {
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.storiesCollection
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .getSavy();
    final StoriesModel mystories =
        StoriesModel.fromMap(snap.data() as Map<String, dynamic>);
    setState(() {
      privacyDisplay = mystories.storiesPrivacy.toString() ==
              'StoryPrivacy.myContacts'
          ? 'My Contacts'
          : mystories.storiesPrivacy.toString() == 'StoryPrivacy.onlyShareWith'
              ? 'Only Share With...'
              : 'My Contacts Except...';
    });
  }

  @override
  void initState() {
    privacyDisplay = context.read<SettingsBloc>().state.languageData.myContacts;
    setPrivacyRadioButton();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "${context.read<SettingsBloc>().state.languageData.whoCanSeeMyStory}",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width<360?16:null),
      ),
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              RadioListTile(
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.myContacts}",style: TextStyle(fontSize: MediaQuery.of(context).size.width<360?15:null),),
                groupValue: privacyDisplay,
                onChanged: (value) => setState(() {
                  privacyDisplay = value as String;
                  print(privacyDisplay);
                  setPrivacyToMyContacts();
                  // DisplayContacts();
                }),
                value:
                    '${context.read<SettingsBloc>().state.languageData.myContacts}',
              ),
              // RadioListTile(
              //   title: Text(
              //       "${context.read<SettingsBloc>().state.languageData.myContactsExcept}..."),
              //   groupValue: privacyDisplay,
              //   onChanged: (value) => setState(() {
              //     privacyDisplay = value as String;
              //     AutoRouter.of(context)
              //         .push(DisplayContacts(privacyType: 'myContactsExcept'));
              //   }),
              //   value:
              //       '${context.read<SettingsBloc>().state.languageData.myContactsExcept}...',
              // ),
              RadioListTile(
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.onlyShareWith}...",style: TextStyle(fontSize: MediaQuery.of(context).size.width<360?15:null)),
                groupValue: privacyDisplay,
                onChanged: (value) => setState(() {
                  privacyDisplay = value as String;
                  AutoRouter.of(context)
                      .push(DisplayContacts(privacyType: 'onlyShareWith'));
                }),
                value:
                    '${context.read<SettingsBloc>().state.languageData.onlyShareWith}...',
              ),
            ],
          ),
        )
      ],
    );
  }
}
