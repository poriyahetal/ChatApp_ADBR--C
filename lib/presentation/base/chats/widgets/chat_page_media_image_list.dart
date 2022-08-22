// ignore_for_file: cast_nullable_to_non_nullable

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_2.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import '../../../../application/user/user_bloc.dart';
import '../../../core/theme/colors.dart';
import 'message_widgets/audio_message.dart';

class ChatPageMediaImageList extends StatefulWidget {
  const ChatPageMediaImageList({
    Key? key,
    required this.peerUser,
    required this.dataType,
    required this.refresh,
  }) : super(key: key);

  final KahoChatUser peerUser;
  final ValueChanged refresh;
  final String dataType;

  @override
  State<ChatPageMediaImageList> createState() => _ChatPageMediaImageListState();
}

class _ChatPageMediaImageListState extends State<ChatPageMediaImageList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageSelectBloc, MessageSelectState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.chatCollection
                .doc(
                  Getters.getCurrentUserUid(),
                )
                .chatUsersCollection
                .doc(widget.peerUser.uid)
                .messagesCollection
                .orderBy('timeOfSending', descending: true)
                .where('type', isEqualTo: widget.dataType)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.docs.isEmpty) {
                  return Center(
                      child: Text(
                          "${context.read<SettingsBloc>().state.languageData.noMediaSentYet}"));
                }
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  padding: const EdgeInsets.all(2.0),
                  //scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  primary: false,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    final val = snapshot.data!.docs[index];
                    final messageSelectfileData = MessageSelectModel(
                      messageModel: MessageModel.fromMap(
                        snapshot.data!.docs[index].data()
                            as Map<String, dynamic>,
                      ),
                      index: index,
                      documentId: val.id,
                    );
                    final fileData = MessageModel.fromMap(
                      snapshot.data!.docs[index].data() as Map<String, dynamic>,
                    );
                    if (state.isAppSelectionbarEnable) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            if (state.selectedIndexList[index] != null) {
                              state.selectedIndexList.remove(index);
                            } else {
                              state.selectedIndexList[index] =
                                  MessageSelectModel(
                                      index: index,
                                      messageModel: fileData,
                                      documentId:
                                          snapshot.data!.docs[index].id);
                            }
                          });
                          widget.refresh(true);
                        },
                        onLongPress: () {
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.enableSelectionBar(
                                  isSelectionBar: false,
                                ),
                              );
                          context.read<MessageSelectBloc>().add(
                                MessageSelectEvent.disableSelection(
                                  enable: false,
                                ),
                              );
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade100,
                                  width: 6.0,
                                ),
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        fileData.fileUrl),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                              child: Icon(
                                state.selectedIndexList[index] != null
                                    ? Icons.check_circle
                                    : Icons.radio_button_unchecked,
                                color: state.selectedIndexList[index] != null
                                    ? Colors.green
                                    : Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return GridTile(
                        child: InkResponse(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ImageView2Page(
                                    imageUrl: fileData.fileUrl,
                                    chatId: snapshot.data!.docs[index].id,
                                    peerUser: widget.peerUser,
                                    messageModel: MessageSelectModel(
                                        index: index,
                                        messageModel: fileData,
                                        documentId:
                                            snapshot.data!.docs[index].id))));
                          },
                          child: widget.dataType == "MessageType.audio"
                              ? Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: AudioMessageWidget(
                                    docRef: val.id,
                                    message: messageSelectfileData,
                                    myUser: context
                                        .read<UserBloc>()
                                        .state
                                        .signedInUser,
                                    peerUser: widget.peerUser,
                                    accessedFromShareMedia: true,
                                    borderRad: BorderRadius.circular(18),
                                    chatID: '', isLastMessage: false,
                                    // groupId: '',
                                  ),
                                )
                              : CachedNetworkImage(
                                  imageUrl: fileData.fileUrl,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.fill,
                                ),
                          onLongPress: () {
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.changeSelection(chat: {
                                    index: MessageSelectModel(
                                        index: index,
                                        messageModel: fileData,
                                        documentId:
                                            snapshot.data!.docs[index].id)
                                  }),
                                );
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.enableSelectionBar(
                                    isSelectionBar: true,
                                  ),
                                );
                          },
                        ),
                      );
                    }
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        );
      },
    );
  }
}
