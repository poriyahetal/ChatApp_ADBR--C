import 'package:flutter/material.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';

import 'edit_group_desc.dart';

class GroupDetailsPageBody extends StatelessWidget {
  const GroupDetailsPageBody({
    Key? key,
    required this.children,
    required this.title,
    required this.imageUrl,
    required this.state,
    required this.groupId,
  }) : super(key: key);
  final List<Widget> children;
  final String title;
  final GroupsState state;
  final String groupId;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Group Info",
            style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [
          if (state.group.editGroupInfoOnlyAdmin != true ||
              state.group.adminUser.uid == Getters.getCurrentUserUid())
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return GroupEditDescription(state: state, groupId: groupId);
                  },
                );
              },
              icon: const Icon(
                Icons.edit_outlined,
              ),
            )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: children,
      ),
    );
  }
}

// class ProfileViewDialog extends StatelessWidget {
//   const ProfileViewDialog({
//     Key? key,
//     required this.profilePictureUrl,
//   }) : super(key: key);
//   final String profilePictureUrl;

//   @override
//   Widget build(BuildContext context) {
//     return SafeScaffold(
//       appBar: AppBar(
//         title:
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           const Text(
//             'Profile Photo',
//             style: TextStyle(color: Colors.white),
//           ),
//           IconButton(
//             onPressed: () async {
//               if (profilePictureUrl != AppConstants.dummyProfilePictureUrl) {
//                 await ImageDownloader.downloadImage(
//                   profilePictureUrl,
//                   destination:
//                       AndroidDestinationType.custom(directory: 'sample')
//                         ..inExternalFilesDir()
//                         ..subDirectory("custom/sample.gif"),
//                 );
//               } else {
//                 return showDialog(
//                     context: context,
//                     builder: (BuildContext) {
//                       return AlertDialog(
//                         content: Text('No profile picture uploaded yet!'),
//                         actions: [
//                           TextButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child: Text('Ok'))
//                         ],
//                       );
//                     });
//               }
//             },
//             icon: const Icon(Icons.download_rounded),
//             color: Colors.white,
//           )
//         ]),
//         backgroundColor: Colors.black,
//       ),
//       body: Container(
//         color: Colors.black,
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5),
//           ),
//           backgroundColor: Colors.white,
//           insetPadding: const EdgeInsets.all(0),
//           child: SizedBox(
//             height: 400,
//             width: MediaQuery.of(context).size.width,
//             child: PhotoView(
//               maxScale: PhotoViewComputedScale.contained * 2,
//               minScale: PhotoViewComputedScale.covered * 0.8,
//               imageProvider: CachedNetworkImageProvider(profilePictureUrl),
//               loadingBuilder: (context, progress) => Center(
//                 // ignore: sized_box_for_whitespace
//                 child: Container(
//                   width: 20,
//                   height: 20,
//                   child: const CircularProgressIndicator(),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
