import 'package:flutter/material.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/base/chats/widgets/send_message_toolbar.dart';

class EditMessage extends StatefulWidget {
  final MessageSelectModel message;
  final KahoChatUser peerUser;
  const EditMessage({Key? key, required this.message, required this.peerUser}) : super(key: key);

  @override
  _EditMessageState createState() => _EditMessageState();
}

class _EditMessageState extends State<EditMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: false,
        // iconTheme: const IconThemeData(color: Colors.black),
        titleSpacing: 0,
        title: const Text("Edit Message",),
      ),
      body: ListView(
        reverse: true,
        children: [
          //Expanded(child: SizedBox()),
          SendMessageToolbar(peerUser: widget.peerUser, editMessage: widget.message)
        ],
      ),
    );
  }
}
