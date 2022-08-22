import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:characters/characters.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../infrastructure/core/getters.dart';
import '../../../core/theme/colors.dart';

class ReplyText extends StatelessWidget {
  final MessageModel message;
  final KahoChatUser myUser;
  final KahoChatUser peerUser;

  ReplyText(
      {required this.message, required this.myUser, required this.peerUser});

  @override
  Widget build(BuildContext context) {

    final DateTime myDateTime = message.timeOfSending.toDate();

    final bool isSentByMe =
        Getters.getCurrentUserUid() == message.sender.uid;

    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        crossAxisAlignment : isSentByMe?CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSentByMe
                  ? Colors.blue.shade100
                  : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10.0),
              // boxShadow: [
              //   BoxShadow(offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
              // ],
            ),
            width: getContainerwidth(message.text) + 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 5, 5, 0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: isSentByMe
                              ? Colors.blue.shade100
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5.0),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                          // ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Text(
                                    peerUser.name,
                                    style: TextStyle(
                                        color: Colors.cyan.shade800,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '.${context.read<SettingsBloc>().state.languageData.status}',
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                        color: Colors.cyan.shade800,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),

                            // message.type == MessageType.storyText ?
                            // Text(message.storyText!, overflow: TextOverflow.visible,)
                            // :
                            // message.storyImageUrl!.length >= 2
                            //     ? CachedNetworkImage(
                            //         imageUrl: message.storyImageUrl!,
                            //         width: 230,
                            //         height: 300,
                            //         fit: BoxFit.fill,
                            //       )
                            //     : Text(
                            //         message.storyText!,
                            //         overflow: TextOverflow.visible,
                            //       )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBoxW10(),
                        if(message.imageBase64Thumbnail!=null && message.imageBase64Thumbnail!="")
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.memory(
                                    base64.decode(message.imageBase64Thumbnail??""),
                                    fit: BoxFit.fill,
                                  )))
                        else if(message.storyImageUrl!=null && message.storyImageUrl!="")
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                              height: 50,
                              width: 50,
                              child: CachedNetworkImage(
                                imageUrl: message.storyImageUrl!,
                                fit: BoxFit.fill,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            constraints:  BoxConstraints(maxWidth: getContainerwidth(message.text)),
                            child: Text(
                              '${message.text}',
                              overflow: TextOverflow.visible,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),

                    // Container(
                    //   //constraints: const BoxConstraints(maxWidth: 100),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: message.text.characters.length == 1 &&
                    //         message.text == 'sad_emoji'
                    //         ? Lottie.network(
                    //         message.imageUrl
                    //     )
                    //         : message.text.characters.length == 1 &&
                    //         message.text == '👍'
                    //         ? Icon(
                    //       MdiIcons.thumbUp,
                    //       size: 40,
                    //       color: Colors.blue,
                    //     )
                    //         : message.text.characters.length == 1 &&
                    //         message.text == '👏'
                    //         ? Text(
                    //       '👏',
                    //       style: TextStyle(fontSize: 40),
                    //     )
                    //         : message.text.characters.length == 1 &&
                    //         message.text == '😁'
                    //         ? Text(
                    //       '😁',
                    //       style: TextStyle(fontSize: 40),
                    //     )
                    //         : message.text.characters.length == 1 &&
                    //         message.text == '🤚'
                    //         ? Text(
                    //       '🤚',
                    //       style: TextStyle(fontSize: 40),
                    //     )
                    //         : TextTranslate(
                    //       '${message.text}',
                    //       overflow: TextOverflow.visible,
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.w600),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Container(
                          child: Text('${DateFormat(DateFormat.HOUR_MINUTE).format(myDateTime)}',
                          style : TextStyle(
                            fontSize: 10.0
                          )),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  double getContainerwidth(String text){
    if(text.length > 30){
      return 200;
    }else if(text.length>20){
      return 170;
    }else if (text.length>10){
      return 120;
    }else if (text.length>1){
      return 60;
    }else{
      return 60;
    }
  }
}
