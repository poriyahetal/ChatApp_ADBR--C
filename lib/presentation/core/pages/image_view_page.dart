import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/DownloadFile/downloadfile_event.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

class ImageViewPage extends StatelessWidget {
  const ImageViewPage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilehandlingBloc, FilehandlingState>(
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        const SizedBoxH20(),
                        /*ListTile(
                            leading: const Icon(
                             CupertinoIcons.arrowshape_turn_up_right,
                              size: 35,
                            ),
                            title: const TextTranslate("Forward"),
                            onTap: ()async{
                              DownloadFile(fileUrl: imageUrl, path: state.isSaveDevice?"":"", filename: '');
                            },
                          ),*/
                        ListTile(
                          leading: const Icon(
                            Icons.share,
                            size: 35,
                          ),
                          title: Text(
                              "${context.read<SettingsBloc>().state.languageData.Share}"),
                          onTap: () {
                            Share.share(
                              HelperFunctions.getValidProfilePictureUrl(
                                  imageUrl),
                            );
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
                                          borderRadius:
                                              BorderRadius.circular(5)),
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
                                          onPressed: () {},
                                          textColor: Kolors.primary,
                                          child: Text(
                                              "${context.read<SettingsBloc>().state.languageData.delete}"),
                                        ),
                                        FlatButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            textColor: Kolors.primary,
                                            child: Text(context
                                                .read<SettingsBloc>()
                                                .state
                                                .languageData
                                                .cancel)),
                                      ],
                                    ));
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
    });
  }
}
