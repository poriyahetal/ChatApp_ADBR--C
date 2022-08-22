// ignore_for_file: cast_nullable_to_non_nullable, avoid_print, avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/call_room_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/base/calls/widgets/recent_call_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';

class CallHistoryModel {
  CallHistoryModel({
    required this.callRoom,
    required this.callLogs,
  });
  late final CallRoomModel callRoom;
  late final List<CallModel> callLogs;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['callRoom'] = callRoom.toJson();
    _data['callLogs'] = callLogs.map((e) => e.toJson()).toList();
    return _data;
  }
}

class RecentsCallsList extends StatefulWidget {
  const RecentsCallsList({Key? key}) : super(key: key);

  @override
  State<RecentsCallsList> createState() => _RecentsCallsListState();
}

class _RecentsCallsListState extends State<RecentsCallsList> {
  bool isSearching = false;
  final List<CallHistoryModel> _searchResult = [];
  bool dataLoading = false;
  String searchHintText = "Search for calls";
  bool isVideoCall = false;
  late KahoChatUser peerCaller;
  CallDropDownMenu dropDownMenuValue = CallDropDownMenu.allCalls;

  List<CallHistoryModel> getCallHistorys({
    required List<CallModel> tempCalls,
    required List<String> idList,
  }) {
    final Map<int, CallHistoryModel> callHistorys = {};
    int j = 0;
    int k = 0;

    while (j < tempCalls.length) {
      int i;
      k++;
      // ignore: prefer_final_locals

      List<CallModel> calls = [];
      for (i = j; i < tempCalls.length; i++) {
        j++;
        final CallModel call = tempCalls[i].copyWith(callId: idList[i]);
        final bool isOutGoing = call.sender.uid == Getters.getCurrentUserUid();
        final CallRoomModel callRoom = CallRoomModel(
          id: idList[i],
          users: call.userIds.map((e) => e.toString()).toList(),
          isCallActive: false,
          currentCall: call,
          lastCall: call,
          isCallRecording: false,
          recordedBy: 'recordedBy',
          lastJoinedOrLeftUser: null,
        );
        if (dropDownMenuValue == CallDropDownMenu.outgoingCalls) {
          if (isOutGoing) {
            if (call.status == CallStatus.answered) {
              calls.add(call);
              // print(call.toString());
              callHistorys.addAll(
                {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)},
              );
              break;
            } else {
              calls.add(call);
              // print(call.toString());
              // print("same call");
              callHistorys.addAll(
                  {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)});
            }
          }
        } else if (dropDownMenuValue == CallDropDownMenu.missedCalls) {
          if (call.status == CallStatus.missed) {
            calls.add(call);
            // print(call.toString());
            callHistorys.addAll(
              {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)},
            );
            break;
          } else {
            calls.add(call);
            // print(call.toString());
            // print("same call");
            callHistorys.addAll(
                {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)});
          }
        } else if (dropDownMenuValue == CallDropDownMenu.incomingCalls) {
          if (!isOutGoing) {
            if (call.status == CallStatus.answered) {
              calls.add(call);
              // print(call.toString());
              callHistorys.addAll(
                {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)},
              );
              break;
            } else {
              calls.add(call);
              // print(call.toString());
              // print("same call");
              callHistorys.addAll(
                  {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)});
            }
          }
        } else {
          if (call.status == CallStatus.answered) {
            calls.add(call);
            // print(call.toString());
            callHistorys.addAll(
              {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)},
            );
            break;
          } else {
            calls.add(call);
            // print(call.toString());
            // print("same call");
            callHistorys.addAll(
                {k: CallHistoryModel(callRoom: callRoom, callLogs: calls)});
          }
        }
      }
    }
    return callHistorys.values.toList();
  }

  Future translate() async {
    // searchHintText = await Getters.getTranslation(searchHintText);
    setState(() {
      searchHintText = searchHintText;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CallsBloc, CallsState>(
      listener: (context, state) {
        state.callListPageWaitingCallFailureOrSuccessOpt.fold(() => null,
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
              print('calllistcalled');
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
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settingState) {
          return StreamBuilder(
            stream: FirebaseFirestore.instance.callsHistoryCollection
                .where("userIds", arrayContains: Getters.getCurrentUserUid())
                .orderBy('timeOfCalling', descending: false)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                final List<CallRoomModel> tempCallRooms = [];
                final _calllist = snapshot.data!.docs
                    .map((e) =>
                        CallModel.fromMap(e.data() as Map<String, dynamic>))
                    .toList();
                final idList = snapshot.data!.docs.map((e) => e.id).toList();
                final _list =
                    getCallHistorys(tempCalls: _calllist, idList: idList);
                return ListView(
                  //  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            // height: 60,
                            width: MediaQuery.of(context).size.width - 83,
                            // color: Theme.of(context).backgroundColor,
                            // padding: const EdgeInsets.only(
                            //     left: 12, right: 4, top: 8, bottom: 8),
                            child: TextField(
                              onChanged: (value) {
                                _searchResult.clear();

                                if (value != '') {
                                  setState(() {
                                    isSearching = true;
                                  });
                                  for (final element in _list) {
                                    final CallHistoryModel callHistoryModel =
                                        element;
                                    //     CallRoomModel.fromMap(
                                    //   element.data() as Map<String, dynamic>,
                                    // );
                                    String displayNameOrNumber;
                                    final String phoneContactNumberOrName =
                                        Getters.checkLocalContact(
                                      phoneContacts: context
                                          .read<ContactsBloc>()
                                          .state
                                          .phoneContacts,
                                      phoneNumber: callHistoryModel.callRoom
                                          .lastCall!.sender.phoneNumber,
                                    );
                                    if (phoneContactNumberOrName == '') {
                                      displayNameOrNumber =
                                          '${callHistoryModel.callRoom.lastCall!.sender.countryCode} ${callHistoryModel.callRoom.lastCall!.sender.phoneNumber}';
                                    } else {
                                      displayNameOrNumber =
                                          phoneContactNumberOrName;
                                    }

                                    if (displayNameOrNumber
                                        .toLowerCase()
                                        .contains(value)) {
                                      _searchResult.add(callHistoryModel);
                                    } else if (callHistoryModel
                                        .callRoom.lastCall!.sender.phoneNumber
                                        .contains(value)) {
                                      _searchResult.add(callHistoryModel);
                                    }
                                  }
                                } else {
                                  setState(() {
                                    isSearching = false;
                                  });
                                }
                              },
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                filled: true,

                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 10,
                                ),
                                // fillColor:Theme.of(context).bod,
                                hintText: searchHintText,
                                fillColor:
                                    settingState.appThemeMode == ThemeMode.dark
                                        ? Colors.grey.withOpacity(.3)
                                        : const Color(0xffDCDCDC),
                                // hintText: "Search messages, people...",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: settingState.appThemeMode ==
                                          ThemeMode.dark
                                      ? Colors.grey
                                      : const Color(0xff696969),
                                ),
                                hintStyle: TextStyle(
                                  color: settingState.appThemeMode ==
                                          ThemeMode.dark
                                      ? Colors.grey
                                      : const Color(0xff696969),
                                ),
                              ),
                              style: TextStyle(
                                color:
                                    settingState.appThemeMode == ThemeMode.dark
                                        ? Colors.grey
                                        : Colors.grey.shade800,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            // alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: settingState.appThemeMode == ThemeMode.dark
                                  ? Colors.grey.withOpacity(.3)
                                  : const Color(0xffDCDCDC),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                            ),
                            // height: 60,

                            // width: MediaQuery.of(context).size.width,
                            child: IconButton(
                              onPressed: () {
                                showMenu<String>(
                                  context: context,
                                  position: const RelativeRect.fromLTRB(
                                    25.0,
                                    80.0,
                                    0.0,
                                    0.0,
                                  ), //position where you want to show the menu on screen
                                  items: [
                                    PopupMenuItem<String>(
                                      onTap: () {
                                        dropDownMenuValue =
                                            CallDropDownMenu.allCalls;
                                        setState(() {});
                                      },
                                      value: '1',
                                      child: Text(
                                        'All calls',
                                      ),
                                    ),
                                    PopupMenuItem<String>(
                                      onTap: () {
                                        dropDownMenuValue =
                                            CallDropDownMenu.incomingCalls;
                                        setState(() {});
                                      },
                                      value: '2',
                                      child: Text(context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .incomingCalls),
                                    ),
                                    PopupMenuItem<String>(
                                      onTap: () {
                                        dropDownMenuValue =
                                            CallDropDownMenu.outgoingCalls;
                                        setState(() {});
                                      },
                                      value: '3',
                                      child: Text(context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .outgoingCalls),
                                    ),
                                    PopupMenuItem<String>(
                                      onTap: () {
                                        dropDownMenuValue =
                                            CallDropDownMenu.missedCalls;
                                        setState(() {});
                                      },
                                      value: '4',
                                      child: Text(context
                                          .read<SettingsBloc>()
                                          .state
                                          .languageData
                                          .missedCalls),
                                    ),
                                  ],
                                  elevation: 8.0,
                                );
                              },
                              icon: const Icon(
                                Icons.filter_list_outlined,
                                color: Kolors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (isSearching)
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          if (_searchResult.isNotEmpty) {
                            print('search block');
                            return RecentCallTile(
                              callRoomDetails: _searchResult[index].callRoom,
                              callLogs: _searchResult[index].callLogs,
                              onPressed: () async {
                                final KahoChatUser tempUser =
                                    _searchResult[index]
                                        .callRoom
                                        .lastCall!
                                        .participants
                                        .where(
                                          (element) =>
                                              element.participant.uid ==
                                              Getters.getCurrentUserUid(),
                                        )
                                        .first
                                        .participant;
                                peerCaller = tempUser.uid ==
                                        _searchResult[index]
                                            .callRoom
                                            .lastCall!
                                            .sender
                                            .uid
                                    ? _searchResult[index]
                                        .callRoom
                                        .lastCall!
                                        .participants
                                        .firstWhere(
                                          (element) =>
                                              element.participant.uid !=
                                              Getters.getCurrentUserUid(),
                                        )
                                        .participant
                                    : _searchResult[index]
                                        .callRoom
                                        .lastCall!
                                        .sender;
                                // context.read<CallsBloc>().add(
                                //       CallsEvent.startVoiceCall(
                                //         context
                                //             .read<UserBloc>()
                                //             .state
                                //             .signedInUser,
                                //         peerCaller,
                                //       ),
                                //     );
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

                                        context.read<CallsBloc>().add(
                                              CallsEvent
                                                  .isPeerUserOnAnotherCall(
                                                peerUser: peerCaller,
                                                page:
                                                    CallingPage.recentCallList,
                                              ),
                                            );
                                        //     );
                                      }
                                    },
                                  );
                                } else {
                                  // context.read<CallsBloc>().add(
                                  //       CallsEvent.startVideoCall(
                                  //         state.signedInUser,
                                  //         widget.peerUser,
                                  //       ),
                                  //     );
                                  context.read<CallsBloc>().add(
                                        CallsEvent.isPeerUserOnAnotherCall(
                                          peerUser: peerCaller,
                                          page: CallingPage.recentCallList,
                                        ),
                                      );
                                }
                              },
                            );
                          } else {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 17,
                              ),
                              child: Row(
                                children: [
                                  const CustomCircleAvatar(
                                    name: 'N O',
                                    color: '',
                                    profilePictureUrl:
                                        AppConstants.dummyProfilePictureUrl,
                                  ),
                                  const SizedBoxW10(),
                                  Text(
                                    context
                                        .read<SettingsBloc>()
                                        .state
                                        .languageData
                                        .callLogNotFound,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              // leading:
                              // title: Text("Group Not Found"),
                            );
                          }
                        },
                        separatorBuilder: (_, __) => const SizedBoxH10(),
                        itemCount: _searchResult.length,
                      )
                    else ...[
                      if (snapshot.data!.docs.isNotEmpty) ...[
                        ListView.separated(
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (_, __) => const SizedBoxH10(),
                          itemCount: _list.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return RecentCallTile(
                              callRoomDetails: _list[index].callRoom,
                              callLogs: _list[index].callLogs,
                              onPressed: () async {
                                final KahoChatUser tempUser = _list[index]
                                    .callRoom
                                    .lastCall!
                                    .participants
                                    .where(
                                      (element) =>
                                          element.participant.uid ==
                                          Getters.getCurrentUserUid(),
                                    )
                                    .first
                                    .participant;
                                peerCaller = tempUser.uid ==
                                        _list[index]
                                            .callRoom
                                            .lastCall!
                                            .sender
                                            .uid
                                    ? _list[index]
                                        .callRoom
                                        .lastCall!
                                        .participants
                                        .firstWhere(
                                          (element) =>
                                              element.participant.uid !=
                                              Getters.getCurrentUserUid(),
                                        )
                                        .participant
                                    : _list[index].callRoom.lastCall!.sender;
                                // context.read<CallsBloc>().add(
                                //       CallsEvent.startVoiceCall(
                                //         context
                                //             .read<UserBloc>()
                                //             .state
                                //             .signedInUser,
                                //         peerCaller,
                                //       ),
                                //     );
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

                                        context.read<CallsBloc>().add(
                                              CallsEvent
                                                  .isPeerUserOnAnotherCall(
                                                peerUser: peerCaller,
                                                page:
                                                    CallingPage.recentCallList,
                                              ),
                                            );
                                        //     );
                                      }
                                    },
                                  );
                                } else {
                                  // context.read<CallsBloc>().add(
                                  //       CallsEvent.startVideoCall(
                                  //         state.signedInUser,
                                  //         widget.peerUser,
                                  //       ),
                                  //     );
                                  context.read<CallsBloc>().add(
                                        CallsEvent.isPeerUserOnAnotherCall(
                                          peerUser: peerCaller,
                                          page: CallingPage.recentCallList,
                                        ),
                                      );
                                }
                              },
                            );
                          },
                        )
                      ] else
                        Column(
                          children: [
                            const SizedBoxH10(),
                            SvgPicture.asset(
                              'assets/icons/mobile.svg',
                              height: MediaQuery.of(context).size.width<360?50:70,
                              color: Kolors.wallDarkGrey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${context.read<SettingsBloc>().state.languageData.noCallsYet} !',
                              style:  TextStyle(
                                fontSize: MediaQuery.of(context).size.width<360?22:25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${context.read<SettingsBloc>().state.languageData.clickOnAddCallIconToMake}',
                              style:  TextStyle(
                                color: Kolors.grey,
                                fontSize: MediaQuery.of(context).size.width<360?13:15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${context.read<SettingsBloc>().state.languageData.aNewCallWithYourContacts}.',
                              style: const TextStyle(
                                color: Kolors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                    ]
                  ],
                );
              }
              return const Align(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
