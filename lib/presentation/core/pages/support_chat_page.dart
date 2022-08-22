// ignore_for_file: avoid_dynamic_calls

import 'package:bubble/bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/supportChat/reported_message_model.dart';
import 'package:flutter_template/domain/supportChat/support_chat_model.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:intl/intl.dart';

extension okJson on Object? {
  Map toJson() {
    return this as Map;
  }
}

class SupportChatPage extends StatefulWidget {
  const SupportChatPage({Key? key}) : super(key: key);

  @override
  _SupportChatPageState createState() => _SupportChatPageState();
}

class _SupportChatPageState extends State<SupportChatPage> {
  final databaseReference = FirebaseDatabase.instance.ref();
  final ScrollController _scrollController = ScrollController();
  String token = "";

  Future<void> readAll() async {
    FirebaseDatabase.instance
        .ref()
        .child('support_chat_users')
        .child(FirebaseAuth.instance.currentUser!.uid)
        .update({"lastMessageRead": true});
  }

  void sendMessage() {
    final SupportChatModel message = SupportChatModel(
      message: controller.text,
      type: "text",
      time: DateTime.now().toString(),
      seen: false,
      sender: FirebaseAuth.instance.currentUser!.uid,
      reportedMessageList: [
        ReportedMessageModel.mockTextMessage(),
      ],
    );
    FirebaseDatabase.instance
        .ref()
        .child("support_chats")
        .child(FirebaseAuth.instance.currentUser!.uid)
        .child("messages")
        .child(Timestamp.now().microsecondsSinceEpoch.toString())
        .set(message.toMap())
        .whenComplete(() {
      setState(() {
        controller.text = "";
      });
    });
    readAll();
  }

  bool _needsScroll = false;

  Future<void> _scrollToEnd() async {
    if (_needsScroll) {
      _needsScroll = false;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    }
  }

  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userUid = FirebaseAuth.instance.currentUser!.uid;
    final reciverUid = "";
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToEnd();
    });
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).cardColor,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            // iconTheme: Theme.of(context).iconTheme,
            titleSpacing: 0,
            centerTitle: true,
            backgroundColor: Kolors.primary,
            title: const ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              title: Text(
                "KahoChat Support",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Kolors.white,
                    fontSize: 18),
              ),
            ),
          ),
          body: ListView(
            controller: _scrollController,
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height - (200),
                child: StreamBuilder<DatabaseEvent>(
                  stream: databaseReference
                      .child('support_chats')
                      .child(userUid)
                      .child('messages')
                      .onValue,
                  builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data!.snapshot.value != null) {
                        if (!snapshot.hasError) {
                          final List Keys = (snapshot.data!.snapshot.value
                                  .toJson())
                              .keys
                              .toList()
                            ..sort();
                          final List sortedKeys = Keys.reversed.toList();
                          final mapOfMaps = Map<String, dynamic>.from(
                              snapshot.data!.snapshot.value.toJson());

                          final Map<String, SupportChatModel> allMessage = {};
                          mapOfMaps.entries.forEach((element) {
                            final SupportChatModel msgs =
                                SupportChatModel.fromMap(
                              element.value as Map<dynamic, dynamic>,
                            );
                            allMessage.addAll({element.key: msgs});
                          });
                          return ListView.builder(
                            shrinkWrap: true,
                            reverse: true,
                            itemCount: allMessage.keys.length,
                            itemBuilder: (context, index) {
                              if (allMessage[sortedKeys[index]]!.type ==
                                  "image") {
                                if (allMessage[sortedKeys[index]]!.type ==
                                    FirebaseAuth.instance.currentUser!.uid) {
                                  return Bubble(
                                    margin: const BubbleEdges.only(top: 10),
                                    alignment: Alignment.topRight,
                                    nip: BubbleNip.rightBottom,
                                    color: Colors.lightBlue,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image(
                                          image: NetworkImage(
                                            "${allMessage[sortedKeys[index]]!.message}",
                                          ),
                                          height: 200,
                                          width: 200,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "${DateFormat.MMMd().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))}  , ${DateFormat.jm().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))}",
                                                style: const TextStyle(
                                                    height: 1.5, fontSize: 8),
                                              ),
                                              const SizedBox(width: 8),
                                              Icon(Icons.check,
                                                  color: (allMessage[sortedKeys[
                                                                  index]]!
                                                              .seen !=
                                                          null)
                                                      ? (allMessage[sortedKeys[
                                                                  index]]!
                                                              .seen)
                                                          ? Colors.blue
                                                          : Colors.grey[800]
                                                      : Colors.grey[800],
                                                  size: 12)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                } else {
                                  return Bubble(
                                    margin: const BubbleEdges.only(top: 10),
                                    alignment: Alignment.topLeft,
                                    nip: BubbleNip.leftBottom,
                                    color: Kolors.wallLightBlue,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: NetworkImage(
                                            "${allMessage[sortedKeys[index]]!.message}",
                                          ),
                                          height: 200,
                                          width: 200,
                                          fit: BoxFit.cover,
                                        ),
                                        Container(
                                          width: 100,
                                          margin: const EdgeInsets.only(top: 2),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${DateFormat.MMMd().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))} , ${DateFormat.jm().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))}",
                                                style: const TextStyle(
                                                    height: 1.5, fontSize: 8),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }
                              } else {
                                if (allMessage[sortedKeys[index]]!.sender ==
                                    FirebaseAuth.instance.currentUser!.uid) {
                                  return Bubble(
                                    margin: const BubbleEdges.only(top: 10),
                                    alignment: Alignment.topRight,
                                    nip: BubbleNip.rightBottom,
                                    color: Kolors.wallLightBlue,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          //onOpen: (link) async {
                                          /* if (await canLaunch(link.url)) {
                                                    await launch(link.url);
                                                  } else {
                                                    throw 'Could not launch $link';
                                                  }*/
                                          //},
                                          //text:
                                          "${allMessage[sortedKeys[index]]!.message}",
                                          //linkStyle: const TextStyle(fontSize: 16,color: Colors.red),
                                          //style: const TextStyle(fontSize: 16,color: Colors.black),
                                        ),
                                        Container(
                                          width: 100,
                                          margin: const EdgeInsets.only(top: 2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "${DateFormat.MMMd().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))} , ${DateFormat.jm().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))}",
                                                style: const TextStyle(
                                                    height: 1.5,
                                                    fontSize: 8,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(width: 8),
                                              Icon(Icons.check,
                                                  color: (allMessage[sortedKeys[
                                                                  index]]!
                                                              .seen !=
                                                          null)
                                                      ? (allMessage[sortedKeys[
                                                                  index]]!
                                                              .seen)
                                                          ? Colors.blue
                                                          : Colors.grey[800]
                                                      : Colors.grey[800],
                                                  size: 12)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                } else {
                                  return Bubble(
                                    margin: const BubbleEdges.only(top: 10),
                                    alignment: Alignment.topLeft,
                                    nip: BubbleNip.leftBottom,
                                    color: Kolors.wallLightBlue,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          //onOpen: (link) async {
                                          /*if (await canLaunch(link.url)) {
                                                  await launch(link.url);
                                                } else {
                                                  throw 'Could not launch $link';
                                                }*/
                                          //},
                                          "${allMessage[sortedKeys[index]]!.message}",
                                          //linkStyle: const TextStyle(fontSize: 16,color: Colors.red),
                                          //style: const TextStyle(fontSize: 16,color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${DateFormat.MMMd().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))} , ${DateFormat.jm().format(DateTime.parse(allMessage[sortedKeys[index]]!.time.toString()))}",
                                                style: const TextStyle(
                                                    height: 1.5,
                                                    fontSize: 8,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }
                              }
                            },
                          );
                        } else {
                          return const Center(
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("No Chats Yet !"),
                              ),
                            ),
                          );
                        }
                      } else {
                        return const Center(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("No Chats Yet !"),
                            ),
                          ),
                        );
                      }
                    } else {
                      return const Center();
                    }
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Kolors.grey),
                  // color: Kolors.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  maxLines: 10,
                  minLines: 1,
                  onSubmitted: (v) => sendMessage(),
                  controller: controller,
                  // style:  TextStyle(
                  // color: context
                  // .read<SettingsBloc>()
                  //     .state
                  //     .appThemeMode ==
                  //     ThemeMode.dark
                  //     ? Colors.white
                  //     : Colors.black
                  // ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type...",
                    hintStyle: const TextStyle(
                        // color: Colors.black,
                        ),
                    suffixIcon: (controller.text.length > 1)
                        ? IconButton(
                            icon: const Icon(Icons.send_outlined,
                                color: Kolors.grey),
                            onPressed: () => sendMessage())
                        : const IconButton(
                            icon: Icon(Icons.send_outlined,
                                color: Kolors.primary),
                            onPressed: null),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
