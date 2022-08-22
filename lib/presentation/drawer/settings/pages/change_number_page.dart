import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';
class ChangeNumberPage extends StatefulWidget {
  const ChangeNumberPage({Key? key}) : super(key: key);

  @override
  _ChangeNumberPageState createState() => _ChangeNumberPageState();
}

class _ChangeNumberPageState extends State<ChangeNumberPage> {
  final TextEditingController oldPhoneTEC = TextEditingController();
  final TextEditingController newPhoneTEC = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBarTitle(
              title: context
                  .read<SettingsBloc>()
                  .state
                  .languageData
                  .changeMyPhoneNumber),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: SizedBox(
            // height: 60,
            child: FloatingActionButton.extended(
              elevation: 0,
              onPressed: () async {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return WillPopScope(
                      onWillPop: () async => false,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Kolors.primary,
                        ),
                      ),
                    );
                  },
                );
                await Future.delayed(const Duration(seconds: 3));
                Navigator.pop(context);
                AutoRouter.of(context).push(
                  const ChangeNumberVerifyRoute(),
                );
              },
              heroTag: null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Kolors.primary,
              label: Container(
                width: MediaQuery.of(context).size.width - 120,
                alignment: Alignment.center,
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.proceedToChangeNumber}",
                  textAlign: TextAlign.center,
                  style:   TextStyle(
                      fontSize: MediaQuery.of(context).size.width<360?15:17, fontWeight: FontWeight.w700,color: context
                      .read<SettingsBloc>()
                      .state
                      .appThemeMode ==
                      ThemeMode.dark
                      ? Colors.white
                      : null),
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBoxH10(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Icon(
                      CupertinoIcons.device_phone_portrait,
                      size: MediaQuery.of(context).size.width<360?60:70,
                      color: Kolors.grey,
                    ),
                    Icon(
                      Icons.more_horiz_sharp,
                      size: MediaQuery.of(context).size.width<360?40:50,
                      color: Kolors.grey,
                    ),
                    Icon(
                      CupertinoIcons.device_phone_portrait,
                      size: MediaQuery.of(context).size.width<360?60:70,
                      color: Kolors.grey,
                    ),
                  ],
                ),
                // const SizedBoxH20(),
                ListTile(
                  horizontalTitleGap: 10,
                  minLeadingWidth: 0,
                  contentPadding: const EdgeInsets.all(2),
                  leading:  Icon(
                    Icons.circle,
                    size: MediaQuery.of(context).size.width<360?8:10,
                    color: Kolors.black,
                  ),
                  title: Text(
                    "${context.read<SettingsBloc>().state.languageData.yourAccountContactsGroupsChatsAndSettingsWillBeMigratedToTheNewPhoneNumberAfterChangingYourCurrentPhoneNumber}.",
                    style:  TextStyle(fontSize: MediaQuery.of(context).size.width<360?18:20),
                    // textAlign: TextAlign.center,
                  ),
                ),
                // MediaQuery.of(context).size.width<360?const SizedBoxH5():const SizedBoxH20(),
                ListTile(
                  horizontalTitleGap: 10,
                  minLeadingWidth: 0,
                  contentPadding: const EdgeInsets.all(2),
                  leading:  Icon(
                    Icons.circle,
                    size: MediaQuery.of(context).size.width<360?8:10,
                    color: Kolors.black,
                  ),
                  title: Text(
                    "${context.read<SettingsBloc>().state.languageData.afterMigratingTheAccountToANewPhoneNumberTheOldPhoneNumberWillBeDeletedFromApplicationDatabase}.",
                    style:  TextStyle(fontSize: MediaQuery.of(context).size.width<360?18:20),
                    // textAlign: TextAlign.center,
                  ),
                ),
                const SizedBoxH5(),
              ],
            ),
          ),
        );
      },
    );
  }
}
