import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DisappearingMessages extends StatefulWidget {
  final KahoChatUser myUser;
  final num currentValue;
  final KahoChatUser peerUser;
  const DisappearingMessages(
      {Key? key,
      required this.myUser,
      required this.peerUser,
      required this.currentValue})
      : super(key: key);

  @override
  _DisappearingMessagesState createState() => _DisappearingMessagesState();
}

class _DisappearingMessagesState extends State<DisappearingMessages> {
  num _alue = 0;
  @override
  void initState() {
    _alue = widget.currentValue;
    super.initState();
  }

  String getDisString(num? des) {
    switch (des) {
      case 0:
        {
          return "Disappearing message turned off";
        }
      case 30:
        {
          return "30 seconds";
        }
      case 300:
        {
          return "5 minuits";
        }
      case 3600:
        {
          return "1 hour";
        }
      case 28800:
        {
          return "8 hours";
        }
      case 86400:
        {
          return "1 day";
        }
      case 604800:
        {
          return "1 week";
        }
      case 2419200:
        {
          return "4 weeks";
        }
      default:
        {
          return "Disappearing message turned off";
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsBloc, ChatsState>(
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            centerTitle: false,
            title: Text(
                "${context.read<SettingsBloc>().state.languageData.disappearingMessages}",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
          ),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Text(
                    "${context.read<SettingsBloc>().state.languageData.whenEnabledNewMessagesSendAndReceivedInThisChatWillDisappearAfterTheyHaeBeenSeen}"),
              ),
              ListTile(
                trailing: Radio<num>(
                  value: 0,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.off}"),
                onTap: () {
                  setState(() {
                    _alue = 0;
                  });
                },
              ),
              ListTile(
                trailing: Radio<num>(
                  value: 2419200,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "4 ${context.read<SettingsBloc>().state.languageData.weeks}"),
                onTap: () {
                  setState(() {
                    _alue = 2419200;
                  });
                },
              ),
              ListTile(
                trailing: Radio<num>(
                  value: 604800,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "1 ${context.read<SettingsBloc>().state.languageData.week}"),
                onTap: () {
                  setState(() {
                    _alue = 604800;
                  });
                },
              ),
              ListTile(
                trailing: Radio<num>(
                  value: 86400,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "1 ${context.read<SettingsBloc>().state.languageData.day}"),
                onTap: () {
                  setState(() {
                    _alue = 86400;
                  });
                },
              ),
              ListTile(
                trailing: Radio<num>(
                  value: 28800,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "8 ${context.read<SettingsBloc>().state.languageData.hours}"),
                onTap: () {
                  setState(() {
                    _alue = 28800;
                  });
                },
              ),
              ListTile(
                  trailing: Radio<num>(
                      value: 3600,
                      groupValue: _alue,
                      onChanged: (v) {
                        setState(() {
                          _alue = v!;
                        });
                      }),
                  title: Text(
                      "1 ${context.read<SettingsBloc>().state.languageData.hour}"),
                  onTap: () {
                    setState(() {
                      _alue = 3600;
                    });
                  }),
              ListTile(
                trailing: Radio<num>(
                  value: 300,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "5 ${context.read<SettingsBloc>().state.languageData.minutes}"),
                onTap: () {
                  setState(() {
                    _alue = 300;
                  });
                },
              ),
              ListTile(
                trailing: Radio<num>(
                  value: 30,
                  groupValue: _alue,
                  onChanged: (v) {
                    setState(() {
                      _alue = v!;
                    });
                  },
                ),
                title: Text(
                    "30 ${context.read<SettingsBloc>().state.languageData.seconds}"),
                onTap: () {
                  setState(() {
                    _alue = 30;
                  });
                },
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              if (_alue != 0) {
                context.read<ChatsBloc>().add(ChatsEvent.sendNoteMessage(
                    myUser: widget.myUser,
                    peerUser: widget.peerUser.uid,
                    note:
                        " You turned on disappearing messages. All new messages will be disappear ${getDisString(_alue)} after they're sent"));
              } else {
                context.read<ChatsBloc>().add(ChatsEvent.sendNoteMessage(
                    myUser: widget.myUser,
                    peerUser: widget.peerUser.uid,
                    note: " You turned off disappearing messages"));
              }
              await Future.delayed(const Duration(seconds: 1));
              // ignore: use_build_context_synchronously
              context.read<ChatsBloc>().add(
                    ChatsEvent.setDesepearingMessage(
                      myUser: widget.myUser.uid,
                      peerUser: widget.peerUser.uid,
                      time: _alue.toDouble(),
                    ),
                  );
              if (_alue != 0) {
                Fluttertoast.showToast(
                  msg:
                      " You turned on disappearing messages. All new messages will be disappear ${getDisString(_alue)} after they're sent",
                  backgroundColor: Kolors.grey,
                );
              } else {
                Fluttertoast.showToast(
                  msg: " You turned off disappearing messages",
                  backgroundColor: Kolors.grey,
                );
              }
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
            },
            backgroundColor: Kolors.primary,
            label:
                Text("${context.read<SettingsBloc>().state.languageData.done}"),
          ),
        );
      },
    );
  }
}
