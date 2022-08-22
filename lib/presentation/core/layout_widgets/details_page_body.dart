// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_template/application/contacts/contacts_bloc.dart';
// import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
// import 'package:flutter_template/infrastructure/core/getters.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
// import 'package:flutter_template/presentation/core/theme/colors.dart';
// import 'package:photo_view/photo_view.dart';

// class DetailsPageBody extends StatefulWidget {
//   const DetailsPageBody({
//     Key? key,
//     required this.children,
//     required this.title,
//     required this.imageUrl,
//     required this.phoneNumber,
//   }) : super(key: key);

//   final List<Widget> children;
//   final String imageUrl;
//   final String title;
//   final String phoneNumber;

//   @override
//   State<DetailsPageBody> createState() => _DetailsPageBodyState();
// }

// class _DetailsPageBodyState extends State<DetailsPageBody> {
//   late PhoneContact contact;
//   late String phoneContactName;

//   late String getPhoneContactNumberOrName;
//   late String displayNameOrNumber;
//   @override
//   void initState() {
//     // TODO: implement initState
//     getPhoneContactNumberOrName = Getters.checkLocalContact(
//       phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
//       phoneNumber: widget.phoneNumber,
//     );
//     if (getPhoneContactNumberOrName == '') {
//       displayNameOrNumber =
//        phoneContactName = contact.name;
//     } else {
//       displayNameOrNumber = getPhoneContactNumberOrName;
//     }

//     super.initState();
//   }
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   checkLocalContact();
//   //   super.initState();
//   // }

//   // void checkLocalContact() {
//   //   contact = context.read<ContactsBloc>().state.phoneContacts.firstWhere(
//   //         (contact) => contact.phoneNumber.contains(widget.phoneNumber),
//   //         orElse: () => PhoneContact.empty(),
//   //       );
//   //   if (contact.phoneNumber.contains(widget.phoneNumber)) {
//   //     debugPrint("true");
//   //     phoneContactName = contact.name;
//   //   } else {
//   //     debugPrint("false");
//   //     phoneContactName = '';
//   //   }
//   //   debugPrint(widget.phoneNumber);
//   //   debugPrint(contact.toString());
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ContactsBloc, ContactsState>(
//       builder: (context, state) {
//         return NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               SliverAppBar(
//                 actions: [
//                   IconButton(
//                     icon: Icon(Icons.more_vert),
//                     onPressed: () {
//                       showModalBottomSheet(
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(30),
//                             topRight: Radius.circular(30),
//                           ),
//                         ),
//                         context: context,
//                         builder: (builder) => Container(
//                           height: 280,
//                           width: MediaQuery.of(context).size.width,
//                           padding: const EdgeInsets.all(10),
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 height: 12,
//                                 width: 50,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.black54,
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                 ),
//                               ),
//                               const SizedBoxH20(),
//                               ListTile(
//                                 leading: const Icon(
//                                   Icons.share,
//                                   size: 35,
//                                 ),
//                                 title: const Text("Share Contact"),
//                                 onTap: () {},
//                               ),
//                               ListTile(
//                                 leading: const Icon(
//                                   Icons.delete,
//                                   size: 35,
//                                 ),
//                                 title: const Text("Delete contact"),
//                                 onTap: () {},
//                               ),
//                               ListTile(
//                                 leading: const Icon(
//                                   Icons.edit,
//                                   size: 35,
//                                 ),
//                                 title: const Text("Edit contact"),
//                                 onTap: () {},
//                               ),
//                               ListTile(
//                                 leading: const Icon(
//                                   Icons.block,
//                                   size: 35,
//                                 ),
//                                 title: const Text("Block user"),
//                                 onTap: () {},
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//                 expandedHeight: 350.0,
//                 pinned: true,
//                 flexibleSpace: FlexibleSpaceBar(
//                   // titlePadding: const EdgeInsets.all(15),
//                   title: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       if (phoneContactName == '') ...[
//                         text(widget.phoneNumber, null),
//                         text(widget.title, 12)
//                       ] else
//                         text(displayNameOrNumber, null)
//                     ],
//                   ),

//                   background: GestureDetector(
//                     onTap: () {
//                       showDialog(
//                         context: context,
//                         builder: (context) {
//                           return ProfileViewDialog(
//                             profilePictureUrl: widget.imageUrl,
//                           );
//                         },
//                       );
//                     },
//                     child: PhotoView(
//                       imageProvider:
//                           CachedNetworkImageProvider(widget.imageUrl),
//                       maxScale: PhotoViewComputedScale.contained * 2,
//                       minScale: PhotoViewComputedScale.covered * 1,
//                     ),
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: ListView(
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             children: widget.children,
//           ),
//         );
//       },
//     );
//   }

//   Widget text(String title, double? fontSize) {
//     return Text(
//       title,
//       style: TextStyle(
//         color: Kolors.white,
//         fontSize: fontSize,
//         shadows: const [
//           Shadow(
//             offset: Offset(0.2, 0.1),
//             blurRadius: 8,
//           )
//         ],
//       ),
//     );
//   }
// }
