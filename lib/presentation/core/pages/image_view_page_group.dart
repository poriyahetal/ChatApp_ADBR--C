import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/chats/pages/forward_message_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

class ImageViewPageGroup extends StatelessWidget {
  final String imageUrl;
  final MessageSelectModel messageModel;
  final String groupUid;
  const ImageViewPageGroup({
    Key? key,
    required this.imageUrl,
    required this.messageModel,
    required this.groupUid,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    context: context,
                    builder: (builder) => Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          const SizedBoxH20(),
                          ListTile(
                            leading: const Icon(
                              CupertinoIcons.arrowshape_turn_up_right,
                              size: 35,
                            ),
                            title: Text(
                                "${context.read<SettingsBloc>().state.languageData.forward}"),
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForwardMessagePage(
                                    messages: {0: messageModel},
                                  ),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.share,
                              size: 35,
                            ),
                            title: Text(
                                "${context.read<SettingsBloc>().state.languageData.Share}"),
                            onTap: () {
                              Share.shareFiles(
                                  [(messageModel.messageModel!.fileLocation)],
                                  text: messageModel.messageModel!.text);
                            },
                          ),
                          ListTile(
                            leading: const Icon(
                              CupertinoIcons.delete,
                              size: 35,
                            ),
                            title: Text(
                                "${context.read<SettingsBloc>().state.languageData.delete}"),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  title: Text(
                                      "${context.read<SettingsBloc>().state.languageData.deleteSelectedImage} ?",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  content: Text(
                                      "${context.read<SettingsBloc>().state.languageData.thisWillPermanentlyDeleteSelectedImage}",
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal)),
                                  actions: [
                                    FlatButton(
                                      onPressed: () {
                                        context.read<GroupsBloc>().add(
                                            GroupsEvent.deleteMessageEveryone(
                                                groupUid: groupUid,
                                                message: {0: messageModel}));
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                      textColor: Kolors.primary,
                                      child: Text(
                                          "${context.read<SettingsBloc>().state.languageData.delete}"),
                                    ),
                                    FlatButton(
                                        onPressed: () => Navigator.pop(context),
                                        textColor: Kolors.primary,
                                        child: Text(context
                                            .read<SettingsBloc>()
                                            .state
                                            .languageData
                                            .cancel)),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          body: Center(
            child: PhotoView(
              imageProvider: CachedNetworkImageProvider(imageUrl),
              //maxScale: PhotoViewComputedScale.contained * 2,
              //minScale: PhotoViewComputedScale.covered * 1,
            ),
          ),
        );
      },
    );
  }
}
