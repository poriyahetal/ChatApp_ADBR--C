import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';

import 'package:flutter_template/presentation/routes/router.gr.dart';

class VerifyFingerprintPage extends StatefulWidget {
  @override
  _VerifyFingerprintPageState createState() => _VerifyFingerprintPageState();
}

class _VerifyFingerprintPageState extends State<VerifyFingerprintPage> {
  @override
  void initState() {
    // notificationPressed(context);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // AwesomeNotifications().actionSink.close();
    // AwesomeNotifications().dismissedSink.close();
    super.dispose();
  }

  // UDAPTED NEW VERSION OF AWESOME NOTIFICATION

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            return BlocConsumer<LocalAuthBloc, LocalAuthState>(
              listener: (context, state) {
                state.checkFingerprintStatus.fold(
                  () {},
                  (some) {
                    some.fold(
                      (l) {
                        AutoRouter.of(context)
                            .replace(BaseRoute(selectedIndex: 0));
                      },
                      (r) {
                        AutoRouter.of(context)
                            .replace(const FingerprintVerificationRoute());
                      },
                    );
                  },
                );
              },
              builder: (context, state) {
                return Scaffold(
                  body: Container(),
                );
              },
            );
          },
        );
      },
    );
  }
}
