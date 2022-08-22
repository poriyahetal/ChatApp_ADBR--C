// import 'dart:async';

// import 'package:agora_rtc_engine/rtc_engine.dart';
// import 'package:agora_rtc_engine/rtc_local_view.dart' as rtc_local_view;
// import 'package:agora_rtc_engine/rtc_remote_view.dart' as rtc_remote_view;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_template/domain/calls/call_room_model.dart';
// import 'package:flutter_template/domain/core/constants.dart';
// import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';

// class CallPage extends StatefulWidget {
//   final CallRoomModel callRoomDetails;
//   const CallPage({
//     Key? key,
//     required this.callRoomDetails,
//   }) : super(key: key);

//   @override
//   _CallPageState createState() => _CallPageState();
// }

// class _CallPageState extends State<CallPage> {
//   final _users = <int>[];
//   final _infoStrings = <String>[];
//   bool muted = false;
//   late RtcEngine _engine;

//   @override
//   void dispose() {
//     _users.clear();
//     _engine.leaveChannel();
//     _engine.destroy();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     initializeAgoraSDK();
//   }

//   Future<void> initializeAgoraSDK() async {
//     await _initAgoraRtcEngine();
//     _addAgoraEventHandlers();
//     final VideoEncoderConfiguration configuration = VideoEncoderConfiguration();
//     configuration.dimensions = VideoDimensions(height: 1920, width: 1080);
//     await _engine.setVideoEncoderConfiguration(configuration);
//     await _engine.joinChannel(
//       ApiConstants.agoraAppToken,
//       // widget.callDetails.currentCall.callId,
//       'test',
//       null,
//       0,
//     );
//   }

//   /// Create agora sdk instance and initializeAgoraSDK
//   Future<void> _initAgoraRtcEngine() async {
//     _engine = await RtcEngine.create(ApiConstants.agoraAppId);
//     await _engine.enableVideo();
//     await _engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
//     await _engine.setClientRole(ClientRole.Broadcaster);
//   }

//   /// Add agora event handlers
//   void _addAgoraEventHandlers() {
//     _engine.setEventHandler(
//       RtcEngineEventHandler(
//         error: (code) {
//           setState(() {
//             final info = 'onError: $code';
//             _infoStrings.add(info);
//           });
//         },
//         joinChannelSuccess: (channel, uid, elapsed) {
//           setState(() {
//             final info = 'onJoinChannel: $channel, uid: $uid';
//             _infoStrings.add(info);
//           });
//         },
//         leaveChannel: (stats) {
//           setState(() {
//             _infoStrings.add('onLeaveChannel');
//             _users.clear();
//           });
//         },
//         userJoined: (uid, elapsed) {
//           setState(() {
//             final info = 'userJoined: $uid';
//             _infoStrings.add(info);
//             _users.add(uid);
//           });
//         },
//         userOffline: (uid, elapsed) {
//           setState(() {
//             final info = 'userOffline: $uid';
//             _infoStrings.add(info);
//             _users.remove(uid);
//           });
//         },
//         firstRemoteVideoFrame: (uid, width, height, elapsed) {
//           setState(() {
//             final info = 'firstRemoteVideo: $uid ${width}x $height';
//             _infoStrings.add(info);
//           });
//         },
//       ),
//     );
//   }

//   /// Helper function to get list of native views
//   List<Widget> _getRenderViews() {
//     final List<StatefulWidget> list = [];
//     list.add(rtc_local_view.SurfaceView());
//     _users
//         .forEach((int uid) => list.add(rtc_remote_view.SurfaceView(uid: uid)));
//     return list;
//   }

//   Widget _videoView(Widget view) {
//     return Expanded(child: Container(child: view));
//   }

//   /// Video view row wrapper
//   Widget _expandedVideoRow(List<Widget> views) {
//     final wrappedViews = views.map<Widget>(_videoView).toList();
//     return Expanded(
//       child: Row(
//         children: wrappedViews,
//       ),
//     );
//   }

//   /// Video layout wrapper
//   Widget _viewRows() {
//     final List<Widget> views = _getRenderViews();
//     switch (views.length) {
//       case 1:
//         return Column(
//           children: <Widget>[_videoView(views[0])],
//         );
//       case 2:
//         return Column(
//           children: <Widget>[
//             _expandedVideoRow([views[0]]),
//             _expandedVideoRow([views[1]])
//           ],
//         );
//       case 3:
//         return Column(
//           children: <Widget>[
//             _expandedVideoRow(views.sublist(0, 2)),
//             _expandedVideoRow(views.sublist(2, 3))
//           ],
//         );
//       case 4:
//         return Column(
//           children: <Widget>[
//             _expandedVideoRow(views.sublist(0, 2)),
//             _expandedVideoRow(views.sublist(2, 4))
//           ],
//         );
//       default:
//     }
//     return Container();
//   }

//   /// Toolbar layout
//   Widget _toolbar() {
//     return Container(
//       alignment: Alignment.bottomCenter,
//       padding: const EdgeInsets.symmetric(vertical: 48),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           RawMaterialButton(
//             onPressed: _onToggleMute,
//             shape: const CircleBorder(),
//             fillColor: muted ? Colors.blueAccent : Colors.white,
//             padding: const EdgeInsets.all(12.0),
//             child: Icon(
//               muted ? Icons.mic_off : Icons.mic,
//               color: muted ? Colors.white : Colors.blueAccent,
//               size: 20.0,
//             ),
//           ),
//           RawMaterialButton(
//             onPressed: () => _onCallEnd(context),
//             shape: const CircleBorder(),
//             elevation: 2.0,
//             fillColor: Colors.redAccent,
//             padding: const EdgeInsets.all(15.0),
//             child: const Icon(
//               Icons.call_end,
//               color: Colors.white,
//               size: 35.0,
//             ),
//           ),
//           RawMaterialButton(
//             onPressed: _onSwitchCamera,
//             shape: const CircleBorder(),
//             elevation: 2.0,
//             fillColor: Colors.white,
//             padding: const EdgeInsets.all(12.0),
//             child: const Icon(
//               Icons.switch_camera,
//               color: Colors.blueAccent,
//               size: 20.0,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   /// Info panel to show logs
//   Widget _panel() {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 48),
//       alignment: Alignment.bottomCenter,
//       child: FractionallySizedBox(
//         heightFactor: 0.5,
//         child: Container(
//           padding: const EdgeInsets.symmetric(vertical: 48),
//           child: ListView.builder(
//             reverse: true,
//             itemCount: _infoStrings.length,
//             itemBuilder: (BuildContext context, int index) {
//               if (_infoStrings.isEmpty) {
//                 return const Text(
//                   "null",
//                 ); // return type can't be null, a widget was required
//               }
//               return Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 3,
//                   horizontal: 10,
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Flexible(
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 2,
//                           horizontal: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.yellowAccent,
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: Text(
//                           _infoStrings[index],
//                           style: const TextStyle(color: Colors.blueGrey),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _onCallEnd(BuildContext context) async {
//     final currentCall = widget.callRoomDetails.currentCall.copyWith(
//       durationInSeconds: 100,
//     );
//     final CallRoomModel callDetails = widget.callRoomDetails.copyWith(
//       isCallActive: false,
//       lastCall: currentCall,
//     );
//     //Adding the ended call to call history
//     await FirebaseFirestore.instance.callsCollection
//         .doc(callDetails.currentCall.callId)
//         .callsHistoryCollection
//         .doc()
//         .set(currentCall.toMap());
//     //Updateing the current call to be inactive
//     await FirebaseFirestore.instance.callsCollection
//         .doc(callDetails.currentCall.callId)
//         .set(
//           callDetails.toMap(),
//           SetOptions(merge: true),
//         );
//     Navigator.pop(context);
//   }

//   void _onToggleMute() {
//     setState(() {
//       muted = !muted;
//     });
//     _engine.muteLocalAudioStream(muted);
//   }

//   void _onSwitchCamera() {
//     _engine.switchCamera();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('${AppConstants.appName} call'),
//       ),
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Stack(
//           children: <Widget>[
//             _viewRows(),
//             _panel(),
//             _toolbar(),
//           ],
//         ),
//       ),
//     );
//   }
// }
