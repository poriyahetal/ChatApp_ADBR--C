import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/domain/contacts/story_contact.dart';
import 'package:flutter_template/domain/contacts/user_contacts_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:provider/src/provider.dart';

class DisplayContacts extends StatefulWidget {
  // const DisplayContacts({Key? key}) : super(key: key);
  DisplayContacts({required this.privacyType});

  final String privacyType;

  @override
  _DisplayContactsState createState() => _DisplayContactsState();
}

class _DisplayContactsState extends State<DisplayContacts> {
  bool isChecked = false;
  Map<String, bool> checkBoxValue = {};
  UserContacts? userContacts;
  bool isCopyingContacts = false;
  bool isMarked = false;
  bool isSearch = false;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _searchTextController = TextEditingController();

  Future<void> setCheckBox(bool isCopying) async {
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.contactsCollection
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .getSavy();
    // snap.forEach((doc) {
    final UserContacts myuserContact =
        UserContacts.fromMap(snap.data() as Map<String, dynamic>);
    userContacts = myuserContact;
    List<StoryContact> myStoryContacts = myuserContact.storyContact!;
    print(myStoryContacts);
    setState(() {
      List<KahoChatUser> userList =
          context.read<ContactsBloc>().state.myContacts;
      userList.forEach((element) {
        if (widget.privacyType == 'onlyShareWith') {
          checkBoxValue[element.name] =
              userContacts!.shareWith!.keys.contains(element.uid)
                  ? true
                  : false;
        } else {
          checkBoxValue[element.name] =
              userContacts!.contactsExcept!.keys.contains(element.uid)
                  ? true
                  : false;
        }
      });
      // print('checkValue:$checkBoxValue');
    });
  }

  Future<void> setCheckBoxToFirebase() async {
    await FirebaseFirestore.instance.contactsCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set(userContacts!.toMap());

    StoryPrivacy storyPrivacy = widget.privacyType == 'onlyShareWith'
        ? StoryPrivacy.onlyShareWith
        : StoryPrivacy.myContactsExcept;
    final DocumentSnapshot snap = await FirebaseFirestore
        .instance.storiesCollection
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .getSavy();
    final StoriesModel mystories =
        StoriesModel.fromMap(snap.data() as Map<String, dynamic>);
    await FirebaseFirestore.instance.storiesCollection
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set(mystories.copyWith(storiesPrivacy: storyPrivacy).toMap(),
            SetOptions(merge: true));
  }

  void addAndRemoveCheckBox(KahoChatUser user) {
    if (widget.privacyType == 'onlyShareWith') {
      if (userContacts!.shareWith!.containsKey(user.uid)) {
        userContacts!.shareWith!.removeWhere((key, value) => key == user.uid);
      } else {
        userContacts!.shareWith!.putIfAbsent(user.uid, () => 'sharewith');
      }
    } else {
      if (userContacts!.contactsExcept!.containsKey(user.uid)) {
        userContacts!.contactsExcept!
            .removeWhere((key, value) => key == user.uid);
      } else {
        userContacts!.contactsExcept!
            .putIfAbsent(user.uid, () => 'contactsExcept');
      }
    }
  }

  void checkAllUsers(List<KahoChatUser> users) {
    if (widget.privacyType == 'onlyShareWith') {
      userContacts!.shareWith!
          .removeWhere((key, value) => value == 'sharewith');
    } else {
      userContacts!.contactsExcept!
          .removeWhere((key, value) => value == 'contactsExcept');
    }
    users.forEach((element) {
      print('names:${element.name}');
      if (widget.privacyType == 'onlyShareWith') {
        if (isMarked) {
          userContacts!.shareWith!
              .removeWhere((key, value) => key == element.uid);
        } else {
          userContacts!.shareWith!.putIfAbsent(element.uid, () => 'sharewith');
        }
      } else {
        if (isMarked) {
          userContacts!.contactsExcept!
              .removeWhere((key, value) => key == element.uid);
        } else {
          userContacts!.contactsExcept!
              .putIfAbsent(element.uid, () => 'contactsExcept');
        }
      }
      if (widget.privacyType == 'onlyShareWith') {
        checkBoxValue[element.name] =
            userContacts!.shareWith!.keys.contains(element.uid) ? true : false;
      } else {
        checkBoxValue[element.name] =
            userContacts!.contactsExcept!.keys.contains(element.uid)
                ? true
                : false;
      }
    });
  }

  Widget searchField(BuildContext ctx) {
    return BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, ContactsState) {
      return Container(
        height: 45,
        margin: EdgeInsets.only(top: 10),
        child: TextField(
          controller: _searchTextController,
          focusNode: _focusNode,
          onChanged: (value) {
            _searchTextController.text.toLowerCase();
            setState(() {
              context
                  .read<ContactsBloc>()
                  .add(ContactsEvent.searchUsers(_searchTextController.text));
            });
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "   Search...",
            filled: true,
            fillColor: Theme.of(context).cardColor,
            prefixIcon: InkWell(
              onTap: () {
                setState(() {
                  isSearch = false;
                });
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
            ),
            suffixIcon: _searchTextController.text.isEmpty
                ? const SizedBox()
                : IconButton(
                    onPressed: _searchTextController.text.isEmpty
                        ? null
                        : () {
                            _searchTextController.clear();
                            _focusNode.unfocus();
                          },
                    icon: const Icon(
                      Icons.clear_outlined,
                      color: Colors.grey,
                    ),
                  ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _searchTextController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: isSearch ? false : true,
        backgroundColor: isSearch ? Colors.white : Kolors.primary,
        title: isSearch ? searchField(context) : SizedBox(),
        actions: [
          !isSearch
              ? Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isSearch = true;
                        });
                      },
                      icon: Icon(Icons.search_outlined),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        List<KahoChatUser> userr =
                            context.read<ContactsBloc>().state.myContacts;
                        setState(() {
                          checkAllUsers(userr);
                          isMarked = !isMarked;
                          // print(userContacts);
                          // print(checkBoxValue);
                        });
                      },
                      icon: Icon(Icons.check_box_outlined),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                )
              : SizedBox()
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Kolors.primary,
          child: Icon(Icons.check),
          onPressed: () {
            userContacts!.shareWith!.length > 0 ||
                    userContacts!.contactsExcept!.length > 0
                ? setCheckBoxToFirebase()
                : null;
            userContacts!.shareWith!.length > 0 ||
                    userContacts!.contactsExcept!.length > 0
                ? setState(() {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  })
                : null;
          }),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                BlocBuilder<ContactsBloc, ContactsState>(
                  builder: (context, state) {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        !isCopyingContacts
                            ? setCheckBox(isCopyingContacts)
                            : null;
                        final KahoChatUser user = isSearch
                            ? state.searchUsers[index]
                            : state.myContacts[index];
                        isCopyingContacts = true;
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.grey[300],
                                                  backgroundImage: NetworkImage(user
                                                          .profilePictureUrl
                                                          .isEmpty
                                                      ? 'https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png'
                                                      : user.profilePictureUrl),
                                                  radius:
                                                      25, //radius of the circle avatar
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  user.name,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Checkbox(
                                                shape: CircleBorder(),
                                                value: checkBoxValue[
                                                            '${user.name}'] ==
                                                        null
                                                    ? false
                                                    : checkBoxValue[
                                                        '${user.name}'],
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    addAndRemoveCheckBox(user);
                                                    print(userContacts);
                                                    checkBoxValue[
                                                                '${user.name}'] ==
                                                            null
                                                        ? false
                                                        : checkBoxValue[
                                                                '${user.name}'] =
                                                            value!;
                                                    print(checkBoxValue);
                                                  });
                                                }),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );

                        return Container();
                      },
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 6,
                      ),
                      itemCount: isSearch
                          ? state.searchUsers.length
                          : state.myContacts.length,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
