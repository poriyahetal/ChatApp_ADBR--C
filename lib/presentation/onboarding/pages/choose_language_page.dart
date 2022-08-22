import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';
import 'package:get/get.dart';
class ChooseLanguagePage extends StatefulWidget {
  const ChooseLanguagePage({Key? key, required this.countryCode})
      : super(key: key);
  final String countryCode;

  @override
  _ChooseLanguagePageState createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  bool isLoading = false;
  String groupValue = "en";
  List<String> languages = [
    "English",
    "हिन्दी",
    "தமிழ்",
    "বাংলা",
    "मराठी",
    "తెలుగు",
    "ગુજરાતી",
    "ਪੰਜਾਬੀ",
    "മലയാളം",
    "ಕನ್ನಡ",
    "অসমীয়া",
    "اُردُو ",
  ];
  void resetHighlist(String value) {
    setState(() {
      groupValue = value;
      print("$groupValue selected");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: isLoading
          ? const CircularProgressIndicator(
              color: Kolors.primary,
            )
          : FloatingActionButton.extended(
              elevation: 0,
              onPressed: () async {
                // TODO: change to replace later
                setState(() {
                  isLoading = true;
                });
                await Future.delayed(const Duration(milliseconds: 2000));
                setState(() {
                  isLoading = false;
                });
                context
                    .read<SettingsBloc>()
                    .add(SettingsEvent.setAzureLanguage(groupValue));
                AutoRouter.of(context)
                    .push(SetupProfileRoute(countryCode: widget.countryCode));
              },
              heroTag: null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: Kolors.primary,
              label: Container(
                width: MediaQuery.of(context).size.width - 120,
                alignment: Alignment.center,
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.CONTINUE}",
                  style:  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width<360?14:15,
                    color: Kolors.white,
                  ),
                ),
              ),
            ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              AutoRouter.of(context)
                  .replace(SetupProfileRoute(countryCode: widget.countryCode));
            },
            child: Padding(
              padding:
                   EdgeInsets.symmetric(horizontal: 20.0, vertical: MediaQuery.of(context).size.width<360?10:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${context.read<SettingsBloc>().state.languageData.skip}",
                    style: const TextStyle(fontSize: 16.0),
                  )
                ],
              ),
            ),
          ),
          MediaQuery.of(context).size.width<360?const SizedBoxH5(): const SizedBoxH20(),
          Padding(
            padding:
                 EdgeInsets.symmetric(horizontal: 20.0, vertical: MediaQuery.of(context).size.width<360?5:10.0),
            child: Text(
              "${context.read<SettingsBloc>().state.languageData.chooseLanguage}",
              style: GoogleFonts.arimo(
                // color: Kolors.darkBlue,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
              // style: const TextStyle(
              //   fontSize:
              //       // Theme.of(context).textTheme.headline5!.fontSize ??
              //       24.0,
              //   fontWeight: FontWeight.w600,
              // ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40,
              top: 20.0,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              crossAxisCount: 2,
              childAspectRatio: 60 / 20,
            ),
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return createLanguage(index, groupValue);
            },
          ),
        ],
      ),
    );
  }

  Widget createLanguage(int index, String groupValue) {
    final List<String> code = [
      "en",
      "hi",
      "ta",
      "bn",
      "mr",
      "te",
      "gu",
      "pa",
      "ml",
      "kn",
      "as",
      "ur",
    ];
    return LanguageWidget(
      name: languages[index],
      value: code[index],
      groupValue: groupValue,
      reset: resetHighlist,
    );
  }
}

class LanguageWidget extends StatelessWidget {
  const LanguageWidget(
      {Key? key,
      required this.name,
      required this.value,
      required this.groupValue,
      required this.reset})
      : super(key: key);
  final String name;
  final String value;
  final String groupValue;
  final Function(String value) reset;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => reset(value),
      child: SizedBox(
        child: Container(
          height: 20.0,
          width: 20.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: groupValue == value ? 2.0 : 1.0,
              color: groupValue == value ? Kolors.primary : Kolors.grey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child: Text(
              name,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
