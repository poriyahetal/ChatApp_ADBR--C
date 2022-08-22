import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class GroupMessageWidget extends StatelessWidget {
  const GroupMessageWidget({
    Key? key,
    required this.message,
    required this.borderRadius,
  }) : super(key: key);
  final MessageModel message;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    final bool isSentByMe = Getters.getCurrentUserUid() == message.sender.uid;
    return Row(
      mainAxisAlignment:
          isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isSentByMe) ...[
          CustomCircleAvatar(
            radius: 20,
            name: message.sender.name,
            profilePictureUrl: message.sender.profilePictureUrl,
            color: message.sender.userColor,
          ),
          const SizedBoxW15(),
        ],
        BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: isSentByMe
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: isSentByMe
                        ? const Color(0xffc5e3f0)
                        : Colors.grey.withOpacity(.3),
                    borderRadius: borderRadius,
                  ),
                  child: Column(
                    crossAxisAlignment: isSentByMe
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Text(
                        isSentByMe
                            ? "${context.read<SettingsBloc>().state.languageData.you}"
                            : message.sender.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: state.fontSize.toDouble(),
                        ),
                      ),
                      Column(
                        children: [
                          if (message.type == MessageType.image) ...[
                            const SizedBoxH10(),
                            InkWell(
                              onTap: () {
                                AutoRouter.of(context).push(
                                    ImageViewRoute(imageUrl: message.imageUrl));
                              },
                              child: CachedNetworkImage(
                                imageUrl: message.imageUrl,
                                width: 230,
                                height: 350,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBoxH10(),
                          ],
                          Text(
                            message.text,
                            style: TextStyle(
                              fontSize: state.fontSize.toDouble(),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: isSentByMe
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Text(
                            message.timeOfSending.toTime(),
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBoxH10(),
              ],
            );
          },
        ),
        if (isSentByMe) ...[
          const SizedBoxW15(),
          CustomCircleAvatar(
            radius: 20,
            name: message.sender.name,
            profilePictureUrl: message.sender.profilePictureUrl,
            color: message.sender.userColor,
          ),
        ]
      ],
    );
  }
}
