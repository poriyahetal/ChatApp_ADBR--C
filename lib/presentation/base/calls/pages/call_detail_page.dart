// import 'dart:io';

// import 'package:azblob/azblob.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_template/domain/calls/call_model.dart';
// import 'package:flutter_template/domain/core/constants.dart';
// import 'package:flutter_template/domain/core/enums.dart';
// import 'package:flutter_template/domain/core/helper_functions.dart';
// import 'package:flutter_template/domain/user/whatsapp_user.dart';
// import 'package:flutter_template/infrastructure/core/getters.dart';
// import 'package:flutter_template/presentation/base/calls/widgets/start_call_tile.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
// import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
// import 'package:flutter_template/presentation/core/theme/colors.dart';
// import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:intl/intl.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';

// class CallDetailPage extends StatefulWidget {
//   const CallDetailPage(
//       {Key? key,
//       required this.callDetails,
//       required this.displayNameOrNumber,
//       required this.peerUser})
//       : super(key: key);
//   final CallModel callDetails;
//   final String displayNameOrNumber;
//   final KahoChatUser peerUser;

//   @override
//   State<CallDetailPage> createState() => _CallDetailPageState();
// }

// class _CallDetailPageState extends State<CallDetailPage> {
//   String fileSize = 'Fetching file size...';
//   final storage = AzureStorage.parse(
//       'DefaultEndpointsProtocol=https;AccountName=adbrproject1;AccountKey=yg/FISfaVHr8+1t+clXzJYS5b9mv2WzEgfqkooLOatZL71LJAGUcvB/7HYNRjpjvIUMYG03aaTz7JIl5QzFfWg==;EndpointSuffix=core.windows.net');

//   Future getFileSize() async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     if (result == true) {
//       final response = await storage
//           .getBlob('adbrchatapp/${widget.callDetails.recordingDirectory}');
//       if (response.statusCode == 200) {
//         // double  size = response.contentLength!/(1024*1024);
//         fileSize =
//             '${(response.contentLength! / (1024 * 1024)).toStringAsFixed(2)} MB';
//         setState(() {});
//       } else {
//         fileSize = 'Unable to fetch file size';
//         setState(() {});
//       }
//     } else {
//       fileSize = 'Unable to fetch file size';
//       setState(() {});
//     }
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     if (widget.callDetails.recordingDirectory != '') {
//       getFileSize();
//     }

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final bool isIncoming =
//         widget.callDetails.sender.uid == Getters.getCurrentUserUid();

//     final DateFormat format = DateFormat(" MMM d, h:mm a");
//     final String dateString =
//         format.format(widget.callDetails.timeOfCalling.toDate());
//     return SafeScaffold(
//       appBar: AppBar(
//         title: const TextTranslate('Call details'),
//       ),
//       body: Container(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 20.0, bottom: 10.0, left: 10, right: 10),
//               child: Column(
//                 children: [
//                   StartNewCallTile(
//                     peerUser: widget.peerUser,
//                     displayNameOrNumber: widget.displayNameOrNumber,
//                   ),
//                   const TileDivider(),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     isIncoming ? Icons.call_made : Icons.call_received,
//                     size: 30,
//                     color: const Color(0xFF616161),
//                   ),
//                   const SizedBoxW15(),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 // const SizedBoxW10(),
//                                 TextTranslate(
//                                   isIncoming
//                                       ? "Outgoing call"
//                                       : "Incoming call",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: isIncoming
//                                         ? FontWeight.w200
//                                         : widget.callDetails.status ==
//                                                 CallStatus.notAnswered
//                                             ? FontWeight.w900
//                                             : FontWeight.w200,
//                                     color: isIncoming
//                                         ? null
//                                         : widget.callDetails.status ==
//                                                 CallStatus.declined
//                                             ? Kolors.callEndButton
//                                             : null,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               dateString,
//                               style: TextStyle(
//                                 fontWeight: isIncoming
//                                     ? FontWeight.w200
//                                     : widget.callDetails.status ==
//                                             CallStatus.notAnswered
//                                         ? FontWeight.w900
//                                         : FontWeight.w200,
//                                 color: isIncoming
//                                     ? null
//                                     : widget.callDetails.status ==
//                                             CallStatus.declined
//                                         ? Kolors.callEndButton
//                                         : null,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   const SizedBoxW10(),
//                   if (widget.callDetails.status == CallStatus.answered)
//                     if (widget.callDetails.durationInSeconds > 60)
//                       TextTranslate(
//                         "${widget.callDetails.durationInSeconds.toDurationString()} min",
//                         style: const TextStyle(fontSize: 16),
//                       )
//                     else
//                       Text(
//                         "${widget.callDetails.durationInSeconds} sec",
//                         style: const TextStyle(fontSize: 16),
//                       )
//                   else
//                     TextTranslate(
//                       "Call ${widget.callDetails.status.toString().split(".")[1]}",
//                       style: const TextStyle(fontSize: 16),
//                     ),
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 30, left: 35),
//               child: TextTranslate(
//                 'Recorded file info',
//                 style: TextStyle(color: Kolors.primary, fontSize: 20),
//               ),
//             ),
//             const SizedBoxH20(),
//             if (widget.callDetails.recordingDirectory == '')
//               Padding(
//                 padding: const EdgeInsets.only(left: 14),
//                 child: Row(
//                   children: const [
//                     SizedBoxW15(),
//                     Icon(
//                       Icons.circle_rounded,
//                       size: 8,
//                     ),
//                     SizedBoxW15(),
//                     TextTranslate(
//                       'No video recorded',
//                       style: TextStyle(fontSize: 16),
//                     )
//                   ],
//                 ),
//               )
//             else
//               Padding(
//                 padding: const EdgeInsets.only(left: 14),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: const [
//                         SizedBoxW15(),
//                         Padding(
//                           padding: EdgeInsets.only(bottom: 22.0),
//                           child: Icon(
//                             Icons.circle_rounded,
//                             size: 8,
//                           ),
//                         ),
//                         SizedBoxW15(),
//                         Expanded(
//                           child: TextTranslate(
//                             'This recording file will be available in the application only for 15 days.',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: const [
//                         SizedBoxW15(),
//                         Padding(
//                           padding: EdgeInsets.only(bottom: 22.0),
//                           child: Icon(
//                             Icons.circle_rounded,
//                             size: 8,
//                           ),
//                         ),
//                         SizedBoxW15(),
//                         Expanded(
//                           child: TextTranslate(
//                             'If you want to save this file file then download it.',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBoxH20(),
//                     // if(File('${LocalStorageConstant.callRecording}/${widget.callDetails.sender.name}_$dateString.mp4').existsSync())
//                     SizedBox(
//                       height: 63,
//                       child: IconButton(
//                         onPressed: () async {
//                           if (await Getters.requestPermission(
//                                   Permission.storage) &&
//                               // access media location needed for android 10/Q
//                               await Getters.requestPermission(
//                                   Permission.accessMediaLocation)) {
//                             try {
//                               Fluttertoast.showToast(
//                                   msg: 'Downloading recording',
//                                   backgroundColor: Kolors.grey);

//                               // final data =  await storage.uri('adbrchatapp/Recordings/0HzlwQsmcjR0QyMmhnHMIU0yjgl18QAHkc4hDbOVw91oHFmUnxs195t2/VoiceCall/202213/153027/h.txt');
//                               final response = await storage.getBlob(
//                                   'adbrchatapp/${widget.callDetails.recordingDirectory}');
//                               print(response.stream.runtimeType);
//                               if (response.statusCode == 200) {
//                                 Directory _directory = Directory(
//                                     LocalStorageConstant.callRecording);
//                                 if (!await _directory.exists()) {
//                                   await _directory.create(recursive: true);
//                                 }
//                                 final file = await File(
//                                     '${_directory.path}/${widget.callDetails.sender.name}_$dateString.mp4');
//                                 final bytes = <int>[];
//                                 response.stream.listen((value) {
//                                   bytes.addAll(value);
//                                   print(value);
//                                 }).onDone(() async {
//                                   await file.writeAsBytes(bytes);
//                                   Fluttertoast.showToast(
//                                     backgroundColor: Kolors.grey,
//                                     msg: 'Recording downloaded succesfully',
//                                   );
//                                   Fluttertoast.showToast(
//                                     backgroundColor: Kolors.grey,
//                                     msg:
//                                         ' downloaded recording path ${file.path}',
//                                   );

//                                   print('done');
//                                 });
//                               }
//                             } on Exception catch (e) {
//                               // TODO
//                               print(e.toString());
//                             }
//                           } else {}
//                         },
//                         icon: Column(
//                           children: [
//                             const Icon(
//                               CupertinoIcons.arrow_down,
//                               size: 40,
//                             ),
//                             Divider(
//                               color: Theme.of(context).iconTheme.color,
//                               height: 2,
//                               thickness: 2,
//                               endIndent: 5,
//                               indent: 5,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     TextTranslate(
//                       fileSize,
//                       style: const TextStyle(fontSize: 16),
//                     ),
//                   ],
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }
