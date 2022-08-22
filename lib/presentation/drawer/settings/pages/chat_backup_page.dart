// import 'package:flutter/material.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
// import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';

// class ChatBackupPage extends StatelessWidget {
//   const ChatBackupPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeScaffold(
//       appBar: AppBarTitle(title: "Chat Backup"),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         children: [
//           const Text(
//             "Your all messages will back up to your phones's internal storage. You can restore them when you reinstall the App",
//             style: TextStyle(fontSize: 15),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBoxH30(),
//           Row(
//             children: [
//               const Icon(Icons.download),
//               const SizedBoxW15(),
//               Expanded(
//                 child: RoundedButton(
//                   onTap: () {},
//                   text: "Back up",
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
