// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:flutter_template/application/calls/calls_bloc.dart';
// import 'package:flutter_template/domain/chats/chat_model.dart';
// import 'package:flutter_template/domain/core/enums.dart';
// import 'package:flutter_template/infrastructure/core/getters.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
// import 'package:flutter_template/presentation/routes/router.gr.dart';
// import 'package:intl/intl.dart';

// class ChatListTile extends StatelessWidget {
//   const ChatListTile({
//     Key? key,
//     required this.chat,
//   }) : super(key: key);
//   final ChatModel chat;

//   @override
//   Widget build(BuildContext context) {
//     final peerUser =
//         chat.user1.uid == Getters.getCurrentUserUid() ? chat.user2 : chat.user1;
//     final myUser =
//         chat.user1.uid == Getters.getCurrentUserUid() ? chat.user1 : chat.user2;
//     return Slidable(
//       startActionPane: ActionPane(
//         motion: const ScrollMotion(),
//         extentRatio: 0.15,
//         children: [
//           SlidableAction(
//             icon: Icons.info,
//             onPressed: (_) {
//               AutoRouter.of(context).push(ChatDetailsRoute(peerUser: peerUser, displayNameOrNumber: ));
//             },
//           ),
//           SlidableAction(
//             icon: Icons.call,
//             onPressed: (_) {
//               context
//                   .read<CallsBloc>()
//                   .add(CallsEvent.startVoiceCall(myUser, peerUser));
//             },
//           ),
//           SlidableAction(
//             icon: Icons.videocam,
//             onPressed: (_) {
//               context
//                   .read<CallsBloc>()
//                   .add(CallsEvent.startVideoCall(myUser, peerUser));
//             },
//           ),
//         ],
//       ),
//       // actionExtentRatio: 0.15,
//       // actions: [

//       // ],
//       child: InkWell(
//         onTap: () {
//           AutoRouter.of(context).push(ChattingRoute(peerUser: peerUser));
//         },
//         child: Row(
//           children: [
//             CustomCircleAvatar(
//               name: peerUser.name,
//               profilePictureUrl: peerUser.profilePictureUrl,
//               color: peerUser.userColor,
//             ),
//             const SizedBoxW15(),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     peerUser.name,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   if (chat.lastMessage.type == MessageType.text)
//                     Text(
//                       chat.lastMessage.text,
//                       overflow: TextOverflow.ellipsis,
//                       maxLines: 1,
//                     )
//                   else if (chat.lastMessage.type == MessageType.image)
//                     const Text("Image")
//                   else if (chat.lastMessage.type == MessageType.audio)
//                     const Text("Audio")
//                   else if (chat.lastMessage.type == MessageType.file)
//                     const Text("File")
//                   else if (chat.lastMessage.type == MessageType.callInfo)
//                     const Text("Call info")
//                 ],
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text(
//                   DateFormat(DateFormat.HOUR_MINUTE)
//                       .format(chat.lastMessage.timeOfSending.toDate()),
//                   style: const TextStyle(fontSize: 12),
//                 ),
//                 const Icon(
//                   Icons.check,
//                   size: 15,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
