// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_template/domain/broadcasts/broadcast_model.dart';
// import 'package:flutter_template/domain/core/constants.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
// import 'package:flutter_template/presentation/routes/router.gr.dart';

// class BroadcastListTile extends StatelessWidget {
//   const BroadcastListTile({Key? key, required this.broadcast})
//       : super(key: key);
//   final BroadcastModel broadcast;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         AutoRouter.of(context).push(BroadcastRoute(broadcast: broadcast));
//       },
//       child: Row(
//         children: [
//           const CustomCircleAvatar(
//             profilePictureUrl: AppConstants.broadcastIcon,
//           ),
//           const SizedBoxW15(),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   broadcast.name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Text("${broadcast.recipients.length.toString()} recipients"),
//               ],
//             ),
//           ),
//           // Column(
//           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //   crossAxisAlignment: CrossAxisAlignment.end,
//           //   children: [
//           //     Text(
//           //       chat.lastMessage.timeOfSending.toTime(),
//           //       style: const TextStyle(fontSize: 12),
//           //     ),
//           //     const Icon(
//           //       Icons.check,
//           //       size: 15,
//           //     ),
//           //   ],
//           // )
//         ],
//       ),
//     );
//   }
// }
