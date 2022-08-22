import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/permission_popup.dart';

import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class StartNewCallTile extends StatelessWidget {
  final KahoChatUser peerUser;
  final String displayNameOrNumber;

  StartNewCallTile({
    Key? key,
    required this.peerUser,
    required this.displayNameOrNumber,
  }) : super(key: key);

  bool isVideoCall = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<CallsBloc, CallsState>(
      listener: (context, state) {
        // TODO: implement listener
        state.startNewCallPageWaitingCallFailureOrSuccessOpt.fold(() => null,
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
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Row(
            children: [
              CustomCircleAvatar(
                name: displayNameOrNumber.contains("+")
                    ? peerUser.name
                    : displayNameOrNumber,
                profilePictureUrl: peerUser.profilePictureUrl,
                color: peerUser.userColor,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  displayNameOrNumber,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              IconButton(
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

                          isVideoCall = false;

                          context.read<CallsBloc>().add(
                                CallsEvent.isPeerUserOnAnotherCall(
                                  peerUser: peerUser,
                                  page: CallingPage.startNewCall,
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
                            page: CallingPage.startNewCall,
                          ),
                        );
                  }
                },
                icon: const Icon(
                  Icons.call,
                  color: Kolors.primary,
                ),
              ),

              IconButton(
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
                                  page: CallingPage.startNewCall,
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
                            page: CallingPage.startNewCall,
                          ),
                        );
                  }
                },
                icon: const Icon(
                  Icons.videocam,
                  size: 32,
                  color: Kolors.primary,
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.message,
              //     color: Kolors.primary,
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
