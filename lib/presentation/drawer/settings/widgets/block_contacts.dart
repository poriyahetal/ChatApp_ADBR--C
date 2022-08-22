import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/audio_player.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class BlockContacts extends StatefulWidget {
  BlockContacts({Key? key}) : super(key: key);

  @override
  _BlockContactsState createState() => _BlockContactsState();
}

class _BlockContactsState extends State<BlockContacts> {
  KahoChatUser? currentUser;
  List<KahoChatUser>? whatsappUser;
  bool isFetchingContacts = false;
  bool isKibur = false;

  Future fetchSelectUsers() async {
    List<KahoChatUser> emptyUser = [];
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.usersCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .getSavy();

    KahoChatUser myUser =
        KahoChatUser.fromMap(snap.data() as Map<String, dynamic>);
    // currentUser = myUser;
    List<KahoChatUser> wUser = context.read<ContactsBloc>().state.myContacts;
    wUser.forEach((element) {
      if (!myUser.mute!.containsKey(element.uid)) {
        emptyUser.add(element);
      }
    });
    whatsappUser = emptyUser;
    return whatsappUser;
  }

  Future fetchBlockedContacts() async {
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.usersCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .getSavy();
    KahoChatUser myUser =
        KahoChatUser.fromMap(snap.data() as Map<String, dynamic>);
    currentUser = myUser;
    setState(() {
      isFetchingContacts = true;
    });
  }

  Future selectBlockContacts(KahoChatUser user) async {
    currentUser!.mute!.putIfAbsent(user.uid, () => user.name);
    print('selectBlockContacts:${currentUser}');
    await FirebaseFirestore.instance.usersCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set(currentUser!.toMap());
  }

  @override
  void initState() {
    // TODO: implement initState
    // fetchSelectUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return snapshot.hasData
            ? Scaffold(
                appBar: AppBarTitle(
                  title: context
                      .read<SettingsBloc>()
                      .state
                      .languageData
                      .selectContacts,
                  trailing: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_outlined),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                body: ListView.builder(
                  itemBuilder: (context, index) {
                    !isFetchingContacts ? fetchBlockedContacts() : null;
                    isFetchingContacts = true;
                    return ListTile(
                      onTap: () {
                        selectBlockContacts(whatsappUser![index]);
                      },
                      title: Text(whatsappUser![index].name),
                      subtitle: Text(whatsappUser![index].about),
                      leading: CustomCircleAvatar(
                        profilePictureUrl:
                            whatsappUser![index].profilePictureUrl,
                        name: whatsappUser![index].name,
                        color: whatsappUser![index].userColor,
                      ),
                      trailing: Text(
                          "${context.read<SettingsBloc>().state.languageData.mobile}"),
                    );
                  },
                  itemCount: whatsappUser!.length,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  value: 35,
                ),
              );
      },
      future: fetchSelectUsers(),
    );
  }
}
