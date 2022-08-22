import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_circle_avatar.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddParticipantsPage extends StatefulWidget {
  final List<String> users;
  const AddParticipantsPage({Key? key, required this.users}) : super(key: key);

  @override
  _AddParticipantsPageState createState() => _AddParticipantsPageState();
}

class _AddParticipantsPageState extends State<AddParticipantsPage> {
  Icon _searchIcon = const Icon(Icons.search);
  late Widget _appBarTitle;
  TextEditingController _filter = TextEditingController();
  Color maincolor = Kolors.primary;
  Color secondarycolor = Kolors.white;
  KahoChatUser? _selectedUsers = KahoChatUser.empty();

  void _searchPressed() {
    setState(() {
      if (_searchIcon.icon == Icons.search) {
        maincolor = Kolors.white;
        secondarycolor = Kolors.primary;
        _searchIcon = Icon(Icons.close, size: 30, color: secondarycolor);

        _appBarTitle = TextFormField(
          style: TextStyle(color: secondarycolor),
          cursorColor: secondarycolor,
          controller: _filter,
          decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),

              // prefixIcon: Icon(Icons.search, color: Kolors.white),

              labelText: 'Search...',
              labelStyle: TextStyle(color: Kolors.primary)),
        );
      } else {
        maincolor = Kolors.primary;
        secondarycolor = Kolors.white;
        _searchIcon = const Icon(
          Icons.search,
          size: 30,
        );
        _appBarTitle = Text(
          context.read<SettingsBloc>().state.languageData.selectParticipants,
          style: const TextStyle(fontWeight: FontWeight.bold),
        );

        // filteredNames = names;
        // _filter.clear();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _appBarTitle = Text(
      context.read<SettingsBloc>().state.languageData.selectParticipants,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeScaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: _appBarTitle,
        actions: [
          IconButton(
            onPressed: _searchPressed,
            icon: _searchIcon,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: secondarycolor),
        ),
      ),
      body: BlocConsumer<ContactsBloc, ContactsState>(
        listener: (context, state) {
          state.fetchMyContactFailureOrSuccessOption.fold(
            () => null,
            (some) => some.fold(
              (failure) {
                Fluttertoast.showToast(
                  msg: "Unable to load contacts. Please retry",
                  backgroundColor: Kolors.grey,
                );
              },
              (r) => null,
            ),
          );
        },
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<ContactsBloc>()
                  .add(const ContactsEvent.fetchMyContacts());
            },
            child: state.myContacts.isEmpty
                ? ListView(
                    children: [
                      const SizedBoxH30(),
                      Text(
                        context
                            .read<SettingsBloc>()
                            .state
                            .languageData
                            .noPhoneContactsPleaseAddAContactInYourPhonebook,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    itemCount: state.myContacts.length,
                    itemBuilder: (_, index) {
                      if (!widget.users.contains(state.myContacts[index].uid)) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Kolors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomCircleAvatar(
                                      profilePictureUrl: state
                                          .myContacts[index].profilePictureUrl,
                                      radius: 30,
                                      isMyprofilePicture: null,
                                      name: state.myContacts[index].name,
                                      color: state.myContacts[index].userColor,
                                    ),
                                    const SizedBoxW10(),
                                    Column(
                                      children: [
                                        Text(
                                          state.myContacts[index].name,
                                          style: const TextStyle(
                                              color: Kolors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          state.myContacts[index].about,
                                          style: const TextStyle(
                                            color: Kolors.black,
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Checkbox(
                                  value: _selectedUsers!.uid ==
                                      state.myContacts[index].uid,
                                  onChanged: (e) {
                                    setState(() {
                                      _selectedUsers = state.myContacts[index];
                                    });
                                    print(_selectedUsers);
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
          );
        },
      ),
      floatingActionButton: BlocBuilder<CallsBloc, CallsState>(
        builder: (context, state) {
          return BlocBuilder<UserBloc, UserState>(
            builder: (_, stat) {
              return SizedBox(
                width: 140,
                height: 50,
                child: RawMaterialButton(
                  fillColor: Kolors.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () async {
                    context.read<CallsBloc>().add(
                          CallsEvent.addParticipants(
                            context.read<UserBloc>().state.signedInUser,
                            _selectedUsers!,
                            state.currentRoomDetails,
                          ),
                        );
                    Navigator.pop(context, _selectedUsers);
                  },
                  child: Text(
                    context.read<SettingsBloc>().state.languageData.add,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Kolors.white,
                        fontSize: 20),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
