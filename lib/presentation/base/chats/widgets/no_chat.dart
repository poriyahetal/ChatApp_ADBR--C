import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom2_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class nochat extends StatelessWidget {
  const nochat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
               Positioned(
                child: Custom2CircleAvatar(
                  radius: MediaQuery.of(context).size.width<360?25:30,
                ),
                left: 30,
              ),
               Positioned(
                  child: Custom2CircleAvatar(
                    radius: MediaQuery.of(context).size.width<360?25:30,
              )),
               Positioned(
                child: Custom2CircleAvatar(
                  radius: MediaQuery.of(context).size.width<360?25:30,
                ),
                right: 30,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Align(
            child: Column(
              children: [
                LayoutBuilder(
                  builder: (context,constraint) {
                    return Text(
                      "${context.read<SettingsBloc>().state.languageData.noChatsYet},\n${context.read<SettingsBloc>().state.languageData.startANewChatByMessagingWithAFriend}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width<360?14:null),
                    );
                  }
                ),
                const SizedBoxH20(),
                /*ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const ContactsRoute());
                },
                child: Text('Start a new Chat'),
              )*/
              ],
            ),
          )
        ],
      ),
    );
  }
}
