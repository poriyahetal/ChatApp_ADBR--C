// ignore_for_file: cast_nullable_to_non_nullable, implementation_imports

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/audio_message.dart';
import 'package:flutter_template/presentation/base/chats/widgets/message_widgets/file_message.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_file/open_file.dart';

class ChatPageMediaList extends StatefulWidget {
  const ChatPageMediaList({
    Key? key,
    required this.peerUser,
    required this.dataType,
    required this.refresh,
  }) : super(key: key);

  final KahoChatUser peerUser;
  final String dataType;
  final ValueChanged refresh;
  @override
  _ChatPageMediaListState createState() => _ChatPageMediaListState();
}

class _ChatPageMediaListState extends State<ChatPageMediaList> {
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
                return ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final val = snapshot.data!.docs[index];
                    final fileData = MessageSelectModel(
                      messageModel: MessageModel.fromMap(
                        snapshot.data!.docs[index].data()
                            as Map<String, dynamic>,
                      ),
                      index: index,
                      documentId: val.id,
                    );
                    if (widget.dataType == 'MessageType.audio') {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (state.selectedIndexList[index] != null) {
                              state.selectedIndexList.remove(index);
                            } else {
                              state.selectedIndexList[index] = fileData;
                            }
                          });
                          widget.refresh(true);
                        },
                        onLongPress: () {
                          if (state.isAppSelectionbarEnable) {
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
                          } else {
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.enableSelectionBar(
                                    isSelectionBar: true,
                                  ),
                                );
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.disableSelection(
                                    enable: true,
                                  ),
                                );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 20,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: state.isAppSelectionbarEnable
                                      ? Colors.blue.shade100
                                      : Colors.white,
                                ),
                                child: AudioMessageWidget(
                                  docRef: val.id,
                                  message: fileData,
                                  myUser: context
                                      .read<UserBloc>()
                                      .state
                                      .signedInUser,
                                  peerUser: widget.peerUser,
                                  borderRad: BorderRadius.circular(18),
                                  chatID: '', isLastMessage: false,
                                  // groupId: '',
                                ),
                              ),
                              if (state.isAppSelectionbarEnable)
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                  child: Icon(
                                    state.selectedIndexList[index] != null
                                        ? Icons.check_circle
                                        : Icons.radio_button_unchecked,
                                    color:
                                        state.selectedIndexList[index] != null
                                            ? Colors.green
                                            : Colors.indigo,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    } else if (widget.dataType == 'MessageType.file') {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (state.selectedFilesIndexList[index] != null) {
                              state.selectedFilesIndexList.remove(index);
                            } else {
                              state.selectedFilesIndexList[index] = fileData;
                            }
                          });
                          widget.refresh(true);
                        },
                        onLongPress: () {
                          if (state.isAppSelectionbarEnable) {
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
                          } else {
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.enableSelectionBar(
                                    isSelectionBar: true,
                                  ),
                                );
                            context.read<MessageSelectBloc>().add(
                                  MessageSelectEvent.disableSelection(
                                    enable: true,
                                  ),
                                );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Stack(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: state.isAppSelectionbarEnable
                                        ? Colors.blue.shade100
                                        : Colors.white,
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      OpenFile.open(
                                        fileData.messageModel!.fileLocation,
                                      );
                                    },
                                    leading: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: CircleAvatar(
                                        maxRadius: 20,
                                        backgroundColor: Colors.blueAccent,
                                        child: IconButton(
                                          onPressed: () async {
                                            // OpenFile.open(
                                            //   widget.message.messageModel!
                                            //       .fileLocation,
                                            // );
                                          },
                                          icon: FaIcon(
                                            getIconByFileExtention(fileData
                                                    .messageModel?.fileName
                                                    .split(".")
                                                    .last ??
                                                ""),
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    visualDensity: VisualDensity(vertical: -4),
                                    title: Text(
                                        fileData.messageModel?.fileName ?? "",
                                        style: TextStyle(fontSize: 15.0)),
                                    trailing: Text(
                                        fileData.messageModel?.timeOfSending
                                                .toDate()
                                                .toString()
                                                .substring(0, 10) ??
                                            "",
                                        style: TextStyle(fontSize: 12.0)),
                                    subtitle: Text(
                                      '${(fileData.messageModel!.fileSize / (1024 * 1024)).toStringAsFixed(2)} MB',
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                  )
                                  // child: FileMessage(
                                  //   docRef: val.id,
                                  //   message: fileData,
                                  //   myUser: context
                                  //       .read<UserBloc>()
                                  //       .state
                                  //       .signedInUser,
                                  //   peerUser: widget.peerUser,
                                  //   borderRad: BorderRadius.circular(18),
                                  //   chatID: '',
                                  //   groupId: '', isLastMessage: false,
                                  // ),
                                  ),
                              if (state.isAppSelectionbarEnable)
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                  child: Icon(
                                    (state.selectedFilesIndexList[index] !=
                                                null &&
                                            state.selectedFilesIndexList[index]
                                                    ?.messageModel?.type ==
                                                MessageType.file)
                                        ? Icons.check_circle
                                        : Icons.radio_button_unchecked,
                                    color:
                                        state.selectedFilesIndexList[index] !=
                                                null
                                            ? Colors.green
                                            : Colors.indigo,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Center(
                          child: Text(
                              "${context.read<SettingsBloc>().state.languageData.noMediaSentYet}"));
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

  IconData getIconByFileExtention(String extention) {
    switch (extention) {
      case "pdf":
        return FontAwesomeIcons.filePdf;
      case "docx":
        return FontAwesomeIcons.fileWord;
      case "mp4":
        return FontAwesomeIcons.play;
      case "mp3":
        return FontAwesomeIcons.music;
      case "jpg":
        return FontAwesomeIcons.image;
      case "png":
        return FontAwesomeIcons.image;
      default:
        return FontAwesomeIcons.file;
    }
  }
}
