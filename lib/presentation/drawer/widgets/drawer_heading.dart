import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';
class DrawerHeading extends StatelessWidget {
  const DrawerHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        var chracters = state.signedInUser.name.split(" ");
        return ListTile(
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: 10,
          minLeadingWidth: 0,
          // contentPadding: EdgeInsets.all(2),
          title: Text(
            state.signedInUser.name,
            maxLines: 1,
            style:  TextStyle(
              // color: Kolors.black,
              fontSize: MediaQuery.of(context).size.width<360?16:18,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            '${state.signedInUser.countryCode} ${state.signedInUser.phoneNumber}',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width<360?14:null
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: MediaQuery.of(context).size.width<360?18:20,
            color: Theme.of(context).iconTheme.color,
          ),
          leading: CustomCircleAvatar(
            name: state.signedInUser.name,
            profilePictureUrl: state.signedInUser.profilePictureUrl,
            color: state.signedInUser.userColor,
            radius: 28,
            isMyprofilePicture: true,
          ),

          // CircleAvatar(
          //   radius: 29,
          //   backgroundColor: state.signedInUser.userColor == 'Colors.red'
          //       ? Colors.red.withOpacity(.2)
          //       : state.signedInUser.userColor == 'Colors.blue'
          //           ? Colors.blue.withOpacity(.2)
          //           : state.signedInUser.userColor == 'Colors.green'
          //               ? Colors.green.withOpacity(.2)
          //               : state.signedInUser.userColor == 'Colors.yellow'
          //                   ? Colors.yellow.withOpacity(.2)
          //                   : state.signedInUser.userColor == 'Colors.orange'
          //                       ? Colors.orange.withOpacity(.2)
          //                       : state.signedInUser.userColor ==
          //                               'Colors.lightGreen'
          //                           ? Colors.lightGreen.withOpacity(.2)
          //                           : state.signedInUser.userColor ==
          //                                   'Colors.pinkAccent'
          //                               ? Colors.pinkAccent.withOpacity(.2)
          //                               : state.signedInUser.userColor ==
          //                                       'Colors.cyan'
          //                                   ? Colors.cyan.withOpacity(.2)
          //                                   : state.signedInUser.userColor ==
          //                                           'Colors.purple'
          //                                       ? Colors.purple.withOpacity(.2)
          //                                       : Colors.black.withOpacity(.2),
          //   child: Center(
          //     child: state.signedInUser.name.length > 1
          //         ? Text(
          //             HelperFunctions.getNameInitials(state.signedInUser.name),
          //             style: TextStyle(
          //               fontSize: 22,
          //               color: state.signedInUser.userColor == 'Colors.red'
          //                   ? Colors.red
          //                   : state.signedInUser.userColor == 'Colors.blue'
          //                       ? Colors.blue
          //                       : state.signedInUser.userColor == 'Colors.green'
          //                           ? Colors.green
          //                           : state.signedInUser.userColor ==
          //                                   'Colors.yellow'
          //                               ? Colors.yellow
          //                               : state.signedInUser.userColor ==
          //                                       'Colors.orange'
          //                                   ? Colors.orange
          //                                   : state.signedInUser.userColor ==
          //                                           'Colors.lightGreen'
          //                                       ? Colors.lightGreen
          //                                       : state.signedInUser
          //                                                   .userColor ==
          //                                               'Colors.pinkAccent'
          //                                           ? Colors.pinkAccent
          //                                           : state.signedInUser
          //                                                       .userColor ==
          //                                                   'Colors.cyan'
          //                                               ? Colors.cyan
          //                                               : state.signedInUser
          //                                                           .userColor ==
          //                                                       'Colors.purple'
          //                                                   ? Colors.purple
          //                                                   : Colors.black,
          //               fontWeight: FontWeight.w600,
          //             ),
          //             textAlign: TextAlign.center,
          //           )

          //         // TextTranslate(
          //         //     (chracters.length > 1
          //         //             ? (chracters.first.characters.first +
          //         //                 chracters.first.characters.elementAt(1))
          //         //             : chracters.first.characters.first)
          //         //         .toUpperCase(),
          //         //     style: const TextStyle(
          //         //         fontSize: 22,
          //         //         color: Colors.black,
          //         //         fontWeight: FontWeight.w600),
          //         //     textAlign: TextAlign.center,
          //         //   )
          //         : const CircularProgressIndicator(
          //             color: Kolors.grey,
          //           ),
          //   ),
          // ),
          onTap: () {
            AutoRouter.of(context).push(const ViewProfileRoute());
          },
        );
      },
    );
  }
}
