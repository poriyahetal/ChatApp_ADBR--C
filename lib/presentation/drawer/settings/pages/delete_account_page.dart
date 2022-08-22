import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';
class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBarTitle(
          title:
              context.read<SettingsBloc>().state.languageData.deleteMyAccount),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                return const Center(
                  child: CircularProgressIndicator(
                    color: Kolors.red,
                  ),
                );
              },
            );
            await Future.delayed(const Duration(seconds: 3));
            Navigator.pop(context);
            AutoRouter.of(context).push(const VerNumDeleteAccountRoute());
          },
          heroTag: null,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Kolors.red,
          label: Container(
            width: MediaQuery.of(context).size.width - 120,
            alignment: Alignment.center,
            child: Text(
              "${context.read<SettingsBloc>().state.languageData.deleteAccountPermanently}",textAlign: TextAlign.center,
              maxLines: 1,
              style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: context
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
             Icon(
              Icons.warning_amber_outlined,
              size: 40,
              color: Kolors.red,
            ),
            SizedBox(height: 10,),
            Text(
              "${context.read<SettingsBloc>().state.languageData.afterDeletingYourAccountYouWillNotBeAbleToAccessTheAppAndYouMayLooseYourAllContacts}",
              style:  TextStyle(fontSize: MediaQuery.of(context).size.width<360?18:20),
              textAlign: TextAlign.center,
            ),
            // Spacer(),
            // // CheckboxListTile(
            // //   value: false,
            // //   onChanged: (value) {},
            // //   title:
            // //       const Text("Are you sure you want to delete your account?"),
            // // ),
            // SizedBoxH10(),
            // // RoundedButton(
            // //   onTap: () {},
            // //   text: "Delete temporarily",
            // // ),
            // SizedBoxH10(),
            // RoundedButton(
            //   onTap: () {},
            //   text: "Delete permanently",
            // ),
            // SizedBoxH20(),
          ],
        ),
      ),
    );
  }
}
