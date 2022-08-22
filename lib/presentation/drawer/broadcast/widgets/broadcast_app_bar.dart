// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_template/domain/broadcasts/broadcast_model.dart';
// import 'package:flutter_template/domain/core/constants.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/custom_app_bar.dart';
// import 'package:flutter_template/presentation/routes/router.gr.dart';

// class BroadcastAppBar extends StatelessWidget with PreferredSizeWidget {
//   const BroadcastAppBar({
//     Key? key,
//     required this.broadcast,
//   }) : super(key: key);
//   final BroadcastModel broadcast;
//   @override
//   Widget build(BuildContext context) {
//     return CustomAppBar(
//       imageUrl: AppConstants.broadcastIcon,
//       title: broadcast.name,
//       subtitle: "${broadcast.recipients.length} recipients",
//       onClick: () {
//         AutoRouter.of(context).push(BroadcastDetailsRoute(broadcast: broadcast));
//       },
//       onClickMore: () {},
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(60);
// }
