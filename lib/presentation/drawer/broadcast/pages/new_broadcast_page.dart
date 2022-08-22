// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_template/application/broadcast/broadcast_bloc.dart';
// import 'package:flutter_template/application/contacts/contacts_bloc.dart';
// import 'package:flutter_template/application/user/user_bloc.dart';
// import 'package:flutter_template/domain/user/kahochat_user.dart';
// import 'package:flutter_template/infrastructure/core/getters.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
// import 'package:flutter_template/presentation/core/theme/colors.dart';
// import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
// import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
// import 'package:flutter_template/presentation/drawer/new_group/create_group_page.dart';
// import 'package:flutter_template/presentation/drawer/new_group/widgets/member_tile.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class NewBroadcastPage extends StatefulWidget {
//   const NewBroadcastPage({Key? key}) : super(key: key);

//   @override
//   _NewBroadcastPageState createState() => _NewBroadcastPageState();
// }

// class _NewBroadcastPageState extends State<NewBroadcastPage> {
//   Map<int, KahoChatUser> broadcastMembers = {};
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<BroadcastBloc, BroadcastState>(
//       listener: (context, state) {
//         state.createBroadcastFailureOrSuccessOption.fold(
//           () {},
//           (some) {
//             some.fold(
//               (l) {},
//               (success) {
//                 AutoRouter.of(context).pop();
//                 Fluttertoast.showToast(
//                   msg: "Broadcast list created successfully.",
//                     backgroundColor: Kolors.grey,
//                 );
//               },
//             );
//           },
//         );
//       },
//       builder: (context, state) {
//         return BlocBuilder<ContactsBloc, ContactsState>(
//           builder: (context, contactsState) {
//             return SafeScaffold(
//               appBar: AppBarTitle(
//                 title: "New broadcast",
//                 trailing: BlocBuilder<UserBloc, UserState>(
//                   builder: (context, state) {
//                     return IconButton(
//                       onPressed: () {
//                         context.read<BroadcastBloc>().add(
//                               BroadcastEvent.setBroadcastRecipients(
//                                 broadcastMembers.values.toList(),
//                               ),
//                             );
//                         context.read<BroadcastBloc>().add(
//                               BroadcastEvent.createBroadcast(
//                                 sender: state.signedInUser,
//                               ),
//                             );
//                       },
//                       icon: const Icon(Icons.done),
//                     );
//                   },
//                 ),
//               ),
//               floatingActionButton: FloatingActionButton.extended(
//                 backgroundColor: Kolors.primary,
//                 onPressed: () {},
//                 label:
//                     TextTranslate("${broadcastMembers.length} of 100 selected"),
//               ),
//               floatingActionButtonLocation:
//                   FloatingActionButtonLocation.centerFloat,
//               body: Container(
//                 width: MediaQuery.of(context).size.width,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                 child: Column(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         showDialog(
//                           context: context,
//                           builder: (context) {
//                             return GroupFieldDialog(
//                               hintText: "Enter broadcast name",
//                               onPress: (value) {
//                                 context.read<BroadcastBloc>().add(
//                                       BroadcastEvent.setBroadcastName(value),
//                                     );
//                               },
//                             );
//                           },
//                         );
//                       },
//                       child: TextTranslate(
//                         state.broadcastName.isEmpty
//                             ? "Enter broadcast name"
//                             : state.broadcastName,
//                       ),
//                     ),
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemBuilder: (context, index) {
//                         final KahoChatUser member =
//                             contactsState.myContacts[index];
//                                String displayNameOrNumber;
//                         String getPhoneContactNumberOrName =
//                             Getters.checkLocalContact(
//                           phoneContacts:
//                               context.read<ContactsBloc>().state.phoneContacts,
//                           phoneNumber: member.phoneNumber,
//                         );
//                         if (getPhoneContactNumberOrName == '') {
//                           displayNameOrNumber = member.name;
//                         } else {
//                           displayNameOrNumber = getPhoneContactNumberOrName;
//                         }
//                         return MemberTile(
//                           title: displayNameOrNumber,
//                           member: member,
//                           isChecked: broadcastMembers[index] != null,
//                           onChanged: (added) {
//                             if (added) {
//                               broadcastMembers[index] = member;
//                             } else {
//                               broadcastMembers.remove(index);
//                             }
//                             setState(() {});
//                           },
//                         );
//                       },
//                       itemCount: contactsState.myContacts.length,
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
