import 'dart:io';

import 'package:azblob/azblob.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/call_log/call_log_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/helper_functions.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class CallInfoPage extends StatelessWidget {
  final KahoChatUser peerUser;
  final String callDocumentId;
  final List<CallModel> callLogs;
  CallInfoPage({
    Key? key,
    required this.callDocumentId,
    required this.peerUser,
    required this.callLogs,
  }) : super(key: key);

  Future downloadFunction() async {
    try {
      Fluttertoast.showToast(
        msg: 'Downloading recording',
        backgroundColor: Kolors.grey,
      );
      final DateFormat format = DateFormat(" MMM d, h.mm a");
      final String dateString =
          format.format(callLogs.last.timeOfCalling.toDate());
      final storage = AzureStorage.parse(
        'DefaultEndpointsProtocol=https;AccountName=appcallsrecordings;AccountKey=RXbtjYiW0F/LzWQozoOGCNpVRcKhpsuUGan87kvTSA7m7GUxH76Cb5qXyLY+0Cxq5XWH2padYm6a+AStSC8eCA==;EndpointSuffix=core.windows.net',
      );

      // final data =  await storage.uri('adbrchatapp/Recordings/0HzlwQsmcjR0QyMmhnHMIU0yjgl18QAHkc4hDbOVw91oHFmUnxs195t2/VoiceCall/202213/153027/h.txt');
      final response = await storage.getBlob(
        'adbrchatapprecording/${callLogs.last.recordingDirectory}',
      );
      print(response.statusCode);
      print(response.stream.runtimeType);
      if (response.statusCode == 200) {
        final Directory _directory =
            Directory(LocalStorageConstant.callRecording);
        print(LocalStorageConstant.callRecording);
        if (!await _directory.exists()) {
          await _directory.create(recursive: true);
        }
        final file = await File(
          '${_directory.path}${callLogs.last.sender.name}_$dateString.mp4',
        );
        final bytes = <int>[];

        response.stream.listen((value) {
          bytes.addAll(value);
          print(value);
        })
          ..onError((v) {
            Println("Downloading error ${v.toString()}");
          })
          ..onDone(() async {
            await file.writeAsBytes(bytes);
            Fluttertoast.showToast(
              backgroundColor: Kolors.grey,
              msg: 'The call recording has been downloaded in device',
            );

            Println('done');
          });
      }
    } on Exception catch (e) {
      // TODO
      Println("Downloading error ${e.toString()}");
    }
  }

  bool isVideoCall = false;
  @override
  Widget build(BuildContext context) {
    String displayNameOrNumber;
    String getPhoneContactNumberOrName = Getters.checkLocalContact(
      phoneContacts: context.read<ContactsBloc>().state.phoneContacts,
      phoneNumber: peerUser.phoneNumber,
    );
    if (getPhoneContactNumberOrName == '') {
      displayNameOrNumber = peerUser.name;
    } else {
      displayNameOrNumber = getPhoneContactNumberOrName;
    }
    return BlocListener<CallsBloc, CallsState>(
      listener: (context, state) {
        // TODO: implement listener
        state.callInfoPageWaitingCallFailureOrSuccessOpt.fold(() => null,
            (some) {
          some.fold((failure) {
            Fluttertoast.showToast(
              msg: failure.maybeMap(
                permissionNotGranted: (e) =>
                    "Please grant camera and microphone permissions for call feature.",
                orElse: () => "Couldn't start the call. Please try again.",
              ),
              backgroundColor: Kolors.grey,
            );
          }, (peerUser) {
            if (peerUser.isOnCall != null && peerUser.isOnCall!) {
              context.read<UserBloc>().add(
                    UserEvent.createOrUpdateUser(
                      context
                          .read<UserBloc>()
                          .state
                          .signedInUser
                          .copyWith(isOnCall: false),
                    ),
                  );
              Fluttertoast.showToast(
                msg: "The person is on another call",
                backgroundColor: Kolors.grey,
              );
            } else {
              if (isVideoCall) {
                context.read<CallsBloc>().add(
                      CallsEvent.startVideoCall(
                        context.read<UserBloc>().state.signedInUser,
                        peerUser,
                      ),
                    );
              } else {
                context.read<CallsBloc>().add(
                      CallsEvent.startVoiceCall(
                        context.read<UserBloc>().state.signedInUser,
                        peerUser,
                      ),
                    );
              }
            }
          });
        });
      },
      child: SafeScaffold(
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: 100,
                  child: AppBar(
                    title: const Text("Call Info"),
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                ),
                Positioned(
                  // bottom: 600,
                  top: 55,
                  child: Container(
                    // height: 15,
                    // width: 15,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Kolors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CustomCircleAvatar(
                      name: displayNameOrNumber.contains("+")
                          ? peerUser.name
                          : displayNameOrNumber,
                      profilePictureUrl: peerUser.profilePictureUrl,
                      color: peerUser.userColor,
                      radius: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 170,
                ),
              ],
            ),
            Center(
              child: Text(
                displayNameOrNumber,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.minPositive,
              child: InkWell(
                onTap: () {
                  Clipboard.setData(
                    ClipboardData(
                      text: "${peerUser.countryCode} ${peerUser.phoneNumber}",
                    ),
                  );
                  Fluttertoast.showToast(
                    msg: "Phone number copied to clipboard",
                    backgroundColor: Kolors.grey,
                  );
                },
                child: Center(
                  child: Text(
                    "${peerUser.countryCode} ${peerUser.phoneNumber}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Kolors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                // shrinkWrap: true,
                // scrollDirection: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  rectangleButton(
                    onPressed: () async {
                      if (!await Permission.camera.isGranted &&
                          !await Permission.microphone.isGranted) {
                        showRequestPermissionDialogue(
                          context: context,
                          title:
                              'Give the access to KahoChat to capture the audio and videos.',
                          subtitle:
                              "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                          icon: Icons.camera_alt_outlined,
                          onPressed: () async {
                            Navigator.pop(context);
                            if (await Getters.requestPermission(
                                  Permission.camera,
                                ) &&
                                await Getters.requestPermission(
                                  Permission.microphone,
                                )) {
                              isVideoCall = false;

                              context.read<CallsBloc>().add(
                                    CallsEvent.isPeerUserOnAnotherCall(
                                      peerUser: peerUser,
                                      page: CallingPage.callInfoPage,
                                    ),
                                  );
                              //     );
                            }
                          },
                        );
                      } else {
                        isVideoCall = false;

                        // context.read<CallsBloc>().add(
                        //       CallsEvent.startVideoCall(
                        //         state.signedInUser,
                        //         widget.peerUser,
                        //       ),
                        //     );
                        context.read<CallsBloc>().add(
                              CallsEvent.isPeerUserOnAnotherCall(
                                peerUser: peerUser,
                                page: CallingPage.callInfoPage,
                              ),
                            );
                      }
                    },
                    icon: Icons.call_outlined,
                    iconColor: Kolors.primary,
                  ),
                  // const SizedBox(
                  //   width: 30,
                  // ),
                  rectangleButton(
                    onPressed: () async {
                      if (!await Permission.camera.isGranted &&
                          !await Permission.microphone.isGranted) {
                        showRequestPermissionDialogue(
                          context: context,
                          title:
                              'Give the access to KahoChat to capture the audio and videos.',
                          subtitle:
                              "we require Camera and voice permission to let user make video call,voice call, capture photos and videos in our KahoChat application.",
                          icon: Icons.camera_alt_outlined,
                          onPressed: () async {
                            Navigator.pop(context);
                            if (await Getters.requestPermission(
                                    Permission.camera) &&
                                await Getters.requestPermission(
                                    Permission.microphone)) {
                              // context.read<CallsBloc>().add(
                              //       CallsEvent.startVideoCall(
                              //         state.signedInUser,
                              //         widget.peerUser,
                              //       ),

                              isVideoCall = true;

                              context.read<CallsBloc>().add(
                                    CallsEvent.isPeerUserOnAnotherCall(
                                      peerUser: peerUser,
                                      page: CallingPage.callInfoPage,
                                    ),
                                  );
                              //     );
                            }
                          },
                        );
                      } else {
                        isVideoCall = true;

                        // context.read<CallsBloc>().add(
                        //       CallsEvent.startVideoCall(
                        //         state.signedInUser,
                        //         widget.peerUser,
                        //       ),
                        //     );
                        context.read<CallsBloc>().add(
                              CallsEvent.isPeerUserOnAnotherCall(
                                peerUser: peerUser,
                                page: CallingPage.callInfoPage,
                              ),
                            );
                      }
                    },
                    icon: Icons.videocam_outlined,
                    iconColor: Kolors.primary,
                  ),
                  // const SizedBox(
                  //   width: 30,
                  // ),
                  rectangleButton(
                    onPressed: () {
                      if (!context
                          .read<UserBloc>()
                          .state
                          .signedInUser
                          .mute!
                          .containsKey(peerUser.uid)) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            title: Text(
                              "${context.read<SettingsBloc>().state.languageData.Block} ${peerUser.name} ?",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            content: Text(
                              context
                                  .read<SettingsBloc>()
                                  .state
                                  .languageData
                                  .blockedPeopleDonTAbleToCallOrSendMessageToYou,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            actions: [
                              FlatButton(
                                onPressed: () {
                                  final Map blockDataMap = context
                                      .read<UserBloc>()
                                      .state
                                      .signedInUser
                                      .mute!;
                                  // blockDataMap.addAll('': 'blocked');
                                  blockDataMap.putIfAbsent(
                                      peerUser.uid, () => 'blocked');
                                  final KahoChatUser updatedUser = context
                                      .read<UserBloc>()
                                      .state
                                      .signedInUser
                                      .copyWith(mute: blockDataMap);
                                  context.read<UserBloc>().add(
                                      UserEvent.createOrUpdateUser(
                                          updatedUser));
                                  // FirebaseFirestore.instance.usersCollection
                                  //     .doc(Getters.getCurrentUserUid())
                                  //     .set(updatedUser.toMap(),
                                  //         SetOptions(merge: true));
                                  // FirebaseFirestore.instance.usersCollection
                                  //     .doc(Getters.getCurrentUserUid())
                                  //     .update(
                                  //         {'mute.${peerUser.uid}': 'blocked'});
                                  FirebaseFirestore.instance.chatCollection
                                      .doc(Getters.getCurrentUserUid())
                                      .chatUsersCollection
                                      .doc(peerUser.uid)
                                      .set(
                                    {
                                      'isBlock': Getters.getCurrentUserUid(),
                                    },
                                    SetOptions(
                                      merge: true,
                                    ),
                                  ).whenComplete(() {
                                    FirebaseFirestore.instance.chatCollection
                                        .doc(peerUser.uid)
                                        .chatUsersCollection
                                        .doc(Getters.getCurrentUserUid())
                                        .set(
                                      {'isBlock': Getters.getCurrentUserUid()},
                                      SetOptions(merge: true),
                                    );

                                    context.read<ContactsBloc>().add(
                                          const ContactsEvent.blockedContacts(),
                                        );
                                    context.read<ChatsBloc>().add(
                                          ChatsEvent.sendBlockMessage(
                                            myUser: context
                                                .read<UserBloc>()
                                                .state
                                                .signedInUser,
                                            peerUser: peerUser,
                                            message: "blocked",
                                          ),
                                        );
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  });
                                  context.read<UserBloc>().add(
                                        const UserEvent.getSignedInUser(),
                                      );
                                },
                                textColor: Kolors.primary,
                                child: Text(
                                  context
                                      .read<SettingsBloc>()
                                      .state
                                      .languageData
                                      .Block,
                                ),
                              ),
                              FlatButton(
                                onPressed: () => Navigator.pop(context),
                                textColor: Kolors.primary,
                                child: Text(
                                  context
                                      .read<SettingsBloc>()
                                      .state
                                      .languageData
                                      .cancel,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        Fluttertoast.showToast(
                          msg: 'This contact is already blocked',
                          backgroundColor: Colors.grey,
                        );
                      }
                    },
                    icon: Icons.block_outlined,
                    iconColor: Kolors.red,
                  ),
                  // const SizedBox(
                  //   width: 30,
                  // ),
                  rectangleButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // title: Text(
                          //   "${context.read<SettingsBloc>().state.languageData.Block} ${peerUser.name} ?",
                          //   style: const TextStyle(
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          content: Text(
                            "${context.read<SettingsBloc>().state.languageData.AreYouSureYouWantToDeleteThisCallLog}?",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          actions: [
                            FlatButton(
                              onPressed: () {
                                context.read<CallLogBloc>().add(
                                      CallLogEvent.deleteOneCallLogs(
                                        callLogs: callLogs,
                                      ),
                                    );
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              textColor: Kolors.primary,
                              child: Text(
                                context
                                    .read<SettingsBloc>()
                                    .state
                                    .languageData
                                    .delete,
                              ),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.pop(context),
                              textColor: Kolors.primary,
                              child: Text(
                                context
                                    .read<SettingsBloc>()
                                    .state
                                    .languageData
                                    .cancel,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: CupertinoIcons.delete,
                    iconColor: Kolors.red,
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: const BoxDecoration(
                  color: Kolors.primary,
                  // border: Border.all(color: Kolors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                // width: double.minPositive,
                margin: const EdgeInsets.only(left: 18),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: RichText(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Call history",
                        style: TextStyle(
                          color: Kolors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBoxH10(),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBoxH10();
              },
              reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CallInfoTile(
                  callDetails: callLogs[index],
                  // displayNameOrNumber: displayNameOrNumber,
                  peerUser: peerUser,
                );
              },
              itemCount: callLogs.length,
            ),
            const SizedBoxH30(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: const BoxDecoration(
                  color: Kolors.primary,
                  // border: Border.all(color: Kolors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                // width: double.minPositive,
                margin: const EdgeInsets.only(left: 18),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: RichText(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Call recording",
                        style: TextStyle(
                          color: Kolors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBoxH20(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Kolors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Kolors.white
                      // callLogs.last.recordingDirectory == ''
                      //     ? Kolors.offWhite
                      // : Kolors.primary,
                      ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      side: BorderSide(
                        color: Kolors.primary,

                        //  callLogs.last.recordingDirectory == ''
                        //     ? Kolors.grey
                        //     : Kolors.primary,
                      ),
                    ),
                  ),
                ),
                onPressed: callLogs.last.recordingDirectory == ''
                    ? () {
                        Fluttertoast.showToast(
                          msg: "There is no call recording available",
                          backgroundColor: Kolors.grey,
                        );
                      }
                    : () async {
                        if (await InternetConnectionChecker().hasConnection) {
                          if (callLogs.last.isRecordingExpired == null ||
                              callLogs.last.isRecordingExpired == false) {
                            if (!await Permission.storage.isGranted ||
                                !await Permission
                                    .accessMediaLocation.isGranted) {
                              showRequestPermissionDialogue(
                                context: context,
                                title:
                                    'KahoChat the access to KahoChat to access storage.',
                                subtitle:
                                    "we require storage permission to download call recording in device.",
                                icon: Icons.photo_outlined,
                                onPressed: () async {
                                  Navigator.pop(context);
                                  if (await Getters.requestPermission(
                                        Permission.storage,
                                      ) &&
                                      // access media location needed for android 10/Q
                                      await Getters.requestPermission(
                                        Permission.accessMediaLocation,
                                      )) {
                                    downloadFunction();
                                  } else {
                                    Fluttertoast.showToast(
                                      msg: 'Permission not accepted',
                                      backgroundColor: Kolors.grey,
                                    );
                                  }
                                },
                              );
                            } else {
                              downloadFunction();
                            }
                          } else {
                            Fluttertoast.showToast(
                              backgroundColor: Kolors.grey,
                              msg: 'This call recording has been expired',
                            );
                          }
                        } else {
                          Fluttertoast.showToast(
                            backgroundColor: Kolors.grey,
                            msg: 'Please check your internet connection',
                          );
                        }
                      },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBoxH10(),
                    Column(
                      children: [
                        const SizedBoxH10(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.arrow_down,
                                size: 20,
                                color: Kolors.primary,
                              ),
                              Divider(
                                color: Kolors.primary,
                                height: 2,
                                thickness: 2,
                                endIndent: 5,
                                indent: 5,
                              ),
                            ],
                          ),
                        ),
                        // Divider(
                        //   color: Kolors.white,
                        //   height: 2,
                        //   thickness: 2,
                        //   endIndent: 5,
                        //   indent: 5,
                        // ),
                        const SizedBoxH10(),
                      ],
                    ),
                    const SizedBoxW15(),
                    const Text(
                      'Download',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Kolors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                callLogs.last.recordingDirectory == ''
                    ? 'No call recording is available.'
                    : callLogs.last.isRecordingExpired != null &&
                            callLogs.last.isRecordingExpired!
                        ? 'This call recording has been expired.'
                        : 'This call recording will be expired in 15 days.',
                style: const TextStyle(
                    color: Kolors.grey, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container rectangleButton({
    required void Function() onPressed,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      width: 60,
      height: 50,
      decoration: const BoxDecoration(
        color: Kolors.grey350,
        // border: Border.all(color: Kolors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: RawMaterialButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          color: iconColor,
          size: 25,
        ),
      ),
    );
  }
}

class CallInfoTile extends StatelessWidget {
  const CallInfoTile(
      {Key? key,
      required this.callDetails,
      // required this.displayNameOrNumber,
      required this.peerUser})
      : super(key: key);
  final CallModel callDetails;
  // final String displayNameOrNumber;
  final KahoChatUser peerUser;

  @override
  Widget build(BuildContext context) {
    final bool isIncoming =
        callDetails.sender.uid == Getters.getCurrentUserUid();

    final DateFormat format = DateFormat("h:mm a");
    final String dateString = format.format(callDetails.timeOfCalling.toDate());
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 25),
      child: Row(
        children: [
          Icon(
            isIncoming
                ? Icons.call_missed_outgoing_outlined
                : Icons.call_missed_outlined,
            color: !isIncoming && callDetails.status == CallStatus.missed
                ? Kolors.red
                : Kolors.primary,
            size: 30,
          ),
          const SizedBoxW15(),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // const SizedBoxW10(),

                        Text(
                          isIncoming
                              ? "Outgoing call"
                              : callDetails.status == CallStatus.answered
                                  ? "Incoming call"
                                  : callDetails.status == CallStatus.declined
                                      ? "Call declined"
                                      : callDetails.status == CallStatus.ended
                                          ? "Call ended"
                                          : "Missed call",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: isIncoming
                                ? FontWeight.w200
                                : !isIncoming &&
                                        callDetails.status == CallStatus.missed
                                    ? FontWeight.w900
                                    : FontWeight.w200,
                            color: isIncoming
                                ? null
                                : !isIncoming &&
                                        callDetails.status == CallStatus.missed
                                    ? Kolors.callEndButton
                                    : null,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // callDetails.timeOfCalling
                      //     .toDate()
                      //     .toString()
                      //     .split(".")[0]
                      dateString,
                      style: TextStyle(
                        fontWeight: isIncoming
                            ? FontWeight.w200
                            : callDetails.status == CallStatus.missed
                                ? FontWeight.w900
                                : FontWeight.w200,
                        color: isIncoming
                            ? null
                            : callDetails.status == CallStatus.missed
                                ? Kolors.callEndButton
                                : null,
                      ),
                    ),
                    // if (callDetails.status == CallStatus.answered)
                    //   Text(
                    //     "${(callDetails.durationInSeconds / 100).toStringAsFixed(1)} MB",
                    //   ),
                  ],
                )
              ],
            ),
          ),
          const SizedBoxW10(),
          if (callDetails.status == CallStatus.answered)
            if (callDetails.durationInSeconds > 60)
              Text(
                "${callDetails.durationInSeconds.toDurationString()} min",
                style: const TextStyle(fontSize: 16),
              )
            else
              Text(
                "${callDetails.durationInSeconds} sec",
                style: const TextStyle(fontSize: 16),
              )
          // else
          //   Text(
          //     "Call ${callDetails.status.toString().split(".")[1]}",
          //     style: TextStyle(fontSize: 16),
          //   ),
          // Icon(
          //   callDetails.type == CallType.audio ? Icons.call : Icons.videocam,
          //   size: 30,
          //   color: Kolors.primary,
          // ),
        ],
      ),
    );
  }
}
