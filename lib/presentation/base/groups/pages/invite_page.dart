// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_parenthesis

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/presentation/base/groups/pages/group_details_page.dart';
import 'package:flutter_template/presentation/base/groups/widgets/contact_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';


class InviteLinkPage extends StatefulWidget {
  final GroupChatRoomModel groupChat;
  final String groupId;

  const InviteLinkPage({
    Key? key,
    required this.groupChat,
    required this.groupId,
  }) : super(key: key);

  @override
  _InviteLinkPageState createState() => _InviteLinkPageState();
}

Map<int, KahoChatUser> shareTo = {};
String _searchKey = "";

class _InviteLinkPageState extends State<InviteLinkPage> {
  Future<String> link() async {
    if (widget.groupChat.groupLink == '') {
      DynamicLinkParameters parameters = DynamicLinkParameters(
        uriPrefix: 'https://kahochat.page.link',
        link: Uri.parse(
            'https://kahochat.page.link/groupChat?id=${widget.groupId}'),
        androidParameters: const AndroidParameters(
          packageName: 'com.chat.kahochat',
          // TODO fallbackUrl:
        ),
        socialMetaTagParameters: SocialMetaTagParameters(
          title: widget.groupChat.name,
          description: widget.groupChat.description,
          imageUrl: Uri.parse(widget.groupChat.groupImageUrl),
        ),
      );
      final ShortDynamicLink shortDynamicLink =
          await FirebaseDynamicLinks.instance.buildShortLink(
        parameters,
        shortLinkType: ShortDynamicLinkType.unguessable,
      );
      await FirebaseFirestore.instance.groupCollection
          .doc(widget.groupId)
          .update({
        'groupLink': shortDynamicLink.shortUrl.toString(),
      });
      return shortDynamicLink.shortUrl.toString();
    }
    return widget.groupChat.groupLink;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Group link',
          style: TextStyle(
            color: Kolors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: link(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Kolors.primary),
              ),
            );
          } else {
            final String link = snapshot.data!;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'You can share this group link to join the group with this application.',
                      style: TextStyle(
                        color: Kolors.black,
                      ),
                    ),
                    const SizedBoxH30(),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Kolors.primary,
                          radius: 25,
                          child: Icon(Icons.link),
                        ),
                        const SizedBoxW15(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Text(
                            link,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(color: Kolors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBoxH30(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Clipboard.setData(
                                ClipboardData(text: link),
                              ).then(
                                (value) => Fluttertoast.showToast(
                                  msg: 'link copied',
                                  fontSize: 20,
                                  backgroundColor: Kolors.grey,
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Kolors.grey.withOpacity(.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.copy,
                                    size: 30,
                                  ),
                                ),
                                const SizedBoxH10(),
                                const Text(
                                  'Copy link',
                                  style: TextStyle(color: Kolors.black),
                                ),
                              ],
                            ),
                          ),
                          // const SizedBoxH20(),
                          InkWell(
                            onTap: () {
                              Share.share(link);
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Kolors.grey.withOpacity(.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.share_outlined,
                                    size: 30,
                                  ),
                                ),
                                const SizedBoxH10(),
                                const Text(
                                  'Share link',
                                  style: TextStyle(color: Kolors.black),
                                ),
                              ],
                            ),
                          ),
                          // const SizedBoxH20(),
                          InkWell(
                            onTap: () {
                              showBarModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return ForwardLink(
                                    link: link,
                                    groupId: widget.groupId,
                                  );
                                },
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Kolors.grey.withOpacity(.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    CommunityMaterialIcons.share_outline,
                                    size: 30,
                                  ),
                                ),
                                const SizedBoxH10(),
                                const Text(
                                  'Forward link',
                                  style: TextStyle(color: Kolors.black),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QrCodeScan(
                                            link: link,
                                            groupName: widget.groupChat.name,
                                          )));
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Kolors.grey.withOpacity(.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.qr_code,
                                    size: 30,
                                  ),
                                ),
                                const SizedBoxH10(),
                                const Text(
                                  'QR Code',
                                  style: TextStyle(color: Kolors.black),
                                ),
                              ],
                            ),
                          ),
                          // InkWell(
                          //   onTap: () {},
                          //   child: Column(
                          //     children: [
                          //       Container(
                          //         padding: const EdgeInsets.all(15),
                          //         decoration: BoxDecoration(
                          //           color: Kolors.grey.withOpacity(.3),
                          //           borderRadius: BorderRadius.circular(10),
                          //         ),
                          //         child: const Icon(
                          //           Icons.do_not_disturb_on_outlined,
                          //           size: 30,
                          //         ),
                          //       ),
                          //       const SizedBoxH10(),
                          //       const Text(
                          //         'Reset link',
                          //         style: TextStyle(color: Kolors.black),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBoxH20(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class ForwardLink extends StatefulWidget {
  ForwardLink({Key? key, required this.link, required this.groupId})
      : super(key: key);
  final String link;
  final String groupId;

  @override
  _ForwardLinkState createState() => _ForwardLinkState();
}

class _ForwardLinkState extends State<ForwardLink> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        return Container(
          height: 700,
          color: Colors.black.withOpacity(.8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Forward to',
                    style: TextStyle(
                      color: Kolors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: CupertinoSearchTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 8.0),
                    placeholder: "Search Contacts",
                    onChanged: (v) {
                      setState(() {
                        _searchKey = v;
                      });
                    },
                    onSubmitted: (v) {
                      setState(() {
                        _searchKey = v;
                      });
                    },
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    final KahoChatUser user = state.myContacts
                        .where((element) => element.name
                            .toLowerCase()
                            .startsWith(_searchKey.toLowerCase()))
                        .toList()[i];
                    return ContactTile(
                        contact: user,
                        onChanged: (added) {
                          if (added) {
                            shareTo[i] = user;
                          } else {
                            shareTo.remove(i);
                          }
                          setState(() {});
                        },
                        isChecked: shareTo[i] != null);
                  },
                  separatorBuilder: (contxt, i) {
                    return const SizedBoxH10();
                  },
                  itemCount: state.myContacts
                      .where((element) => element.name
                          .toLowerCase()
                          .startsWith(_searchKey.toLowerCase()))
                      .toList()
                      .length,
                ),
                const SizedBoxH20(),
                BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          shareTo.forEach((key, value) {
                            context.read<ChatsBloc>().add(
                                  ChatsEvent.sendTextMessage(
                                    myUser: userState.signedInUser,
                                    peerUser: value,
                                    message: widget.link,
                                  ),
                                );
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: ((context) {
                                  return GroupDetailsPage(
                                    groupId: widget.groupId,
                                  );
                                }),
                              ),
                            );
                          });
                        },
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Kolors.primary,
                          child: Icon(
                            Icons.send,
                            color: Kolors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        );
      },
    );
  }
}

class QrCodeScan extends StatelessWidget {
  QrCodeScan({required this.link, required this.groupName});

  final String link;
  final String groupName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR code',
          style: const TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Text(
            groupName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text('Kaho-chat group'),
          Center(
            child: QrImage(
              data: link,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            context
                .read<SettingsBloc>()
                .state
                .languageData
                .thisGroupQrCodeIsPrivateIfItIsSharedWithSomeoneTheyCanScanItWithTheirCameraToJoinThisGroup,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
