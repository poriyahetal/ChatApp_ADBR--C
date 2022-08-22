import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

Future<dynamic> showRequestPermissionDialogue({
  required BuildContext context,
  required String title,
  required String subtitle,
  required IconData icon,
  required Function() onPressed,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        content: Container(
          height: 270,
          //  width: 250,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Kolors.primary,
                  border: Border.all(
                    color: Kolors.primary,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(
                      10,
                    ),
                  ),
                ),
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Icon(
                  icon,
                  size: 60,
                  color: Kolors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "${context.read<SettingsBloc>().state.languageData.notNow}",
              style: TextStyle(
                color: Theme.of(context).primaryTextTheme.bodyText2!.color,
              ),
            ),
          ),
          const SizedBoxW10(),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "${context.read<SettingsBloc>().state.languageData.Continue}",
              style: TextStyle(
                color: Theme.of(context).primaryTextTheme.bodyText2!.color,
              ),
            ),
          ),
          const SizedBoxW10(),
        ],
      );
    },
  );
}

// Future<dynamic> showContactRequestPermissionDialogue({
//   required BuildContext context,
//   required Function() onPressed,
// }) {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         contentPadding: EdgeInsets.zero,
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//         content: SingleChildScrollView(
//           child: Container(
//             height: 600,
//             //  width: 250,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Kolors.primary,
//                     border: Border.all(
//                       color: Kolors.primary,
//                     ),
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(
//                         10,
//                       ),
//                     ),
//                   ),
//                   height: 80,
//                   width: MediaQuery.of(context).size.width,
//                   child: const Icon(
//                     Icons.contact_page_outlined,
//                     size: 60,
//                     color: Kolors.white,
//                   ),
//                 ),
//                 const Center(
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       top: 20.0,
//                       left: 10,
//                       right: 10,
//                     ),
//                     child: TextTranslate(
//                       'Contact authorization',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     top: 5.0,
//                     left: 10,
//                     right: 10,
//                   ),
//                   child: TextTranslate(
//                     'In order to guarantee the app functionality, the contact access is necessary and we are collecting the contacts who are using our application',
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     top: 5.0,
//                     left: 10,
//                     right: 10,
//                   ),
//                   child: TextTranslate(
//                     'Therefore you should allow access to the location of this contact of this device in the next dialog.',
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     top: 5.0,
//                     left: 10,
//                     right: 10,
//                   ),
//                   child: TextTranslate(
//                     'Contact access is only used to: ',
//                     textAlign: TextAlign.start,
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 const ListTile(
//                   horizontalTitleGap: 10,
//                   minLeadingWidth: 0,
//                   contentPadding: EdgeInsets.only(
//                     bottom: 5.0,
//                     left: 10,
//                     right: 10,
//                   ),
//                   leading: Icon(
//                     Icons.circle,
//                     size: 8,
//                     color: Kolors.black,
//                   ),
//                   title: TextTranslate(
//                     "To enable functionality of user privacy (that is restricting or allowing other user to see your stories and profile info).",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                     // textAlign: TextAlign.center,
//                   ),
//                 ),
//                 const ListTile(
//                   horizontalTitleGap: 10,
//                   minLeadingWidth: 0,
//                   contentPadding: EdgeInsets.only(
//                     bottom: 5.0,
//                     left: 10,
//                     right: 10,
//                   ),
//                   leading: Icon(
//                     Icons.circle,
//                     size: 8,
//                     color: Kolors.black,
//                   ),
//                   title: TextTranslate(
//                     "To display name of user from your contact",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                     // textAlign: TextAlign.center,
//                   ),
//                 ),
//                 const ListTile(
//                   horizontalTitleGap: 10,
//                   minLeadingWidth: 0,
//                   contentPadding: EdgeInsets.only(
//                     bottom: 5.0,
//                     left: 10,
//                     right: 10,
//                   ),
//                   leading: Icon(
//                     Icons.circle,
//                     size: 8,
//                     color: Kolors.black,
//                   ),
//                   title: TextTranslate(
//                     "To save a user contact info in your address book",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                     // textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: TextTranslate(
//               'Not now',
//               style: TextStyle(
//                 color: Theme.of(context).primaryTextTheme.bodyText2!.color,
//               ),
//             ),
//           ),
//           const SizedBoxW10(),
//           TextButton(
//             onPressed: onPressed,
//             child: TextTranslate(
//               'Continue',
//               style: TextStyle(
//                 color: Theme.of(context).primaryTextTheme.bodyText2!.color,
//               ),
//             ),
//           ),
//           const SizedBoxW10(),
//         ],
//       );
//     },
//   );
// }
