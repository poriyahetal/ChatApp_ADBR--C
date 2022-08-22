import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class WelcomeScreenPage extends StatefulWidget {
  const WelcomeScreenPage({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenPage> createState() => _WelcomeScreenPageState();
}

class _WelcomeScreenPageState extends State<WelcomeScreenPage> {
  late AssetImage logo;
  @override
  void initState() {
    logo = const AssetImage("assets/images/namaste.png");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FloatingActionButton.extended(
          elevation: 0,
          onPressed: () async {
            AutoRouter.of(context).replace(
              PhoneVerificationRoute(route: "phoneVerfiedRoute"),
            );
          },
          heroTag: null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: Kolors.primary,
          label: Container(
            width: MediaQuery.of(context).size.width - 120,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Expanded(
                  child: Center(
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width < 360 ? 14 :15,
                        color: Kolors.white,
                      ),
                    ),
                  ),
                ),
                Icon(Icons.arrow_right_alt)
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 40),
              child: Image(
                image: logo,
                height: MediaQuery.of(context).size.width < 360 ? 40 :50,
                width: MediaQuery.of(context).size.width < 360 ? 40 :50,
              ),
            ),
          ),
          const SizedBoxH30(),
          Text(
            'Welcome to KahoChat',
            textAlign: TextAlign.center,
            style: GoogleFonts.arimo(
              fontSize: MediaQuery.of(context).size.width < 360 ? 22 :25,
              fontWeight: FontWeight.w800,
            ),
          ),
          if (MediaQuery.of(context).size.width < 360) SizedBox(height: 40,) else SizedBox(
            height: MediaQuery.of(context).size.height * .25,
          ),
          Text(
            'Next Generation ',
            textAlign: TextAlign.center,
            style: GoogleFonts.arimo(
              fontSize: MediaQuery.of(context).size.width < 360 ? 22 :25,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBoxH10(),
          Text(
            'Instant Messenger App',
            textAlign: TextAlign.center,
            style: GoogleFonts.arimo(
              fontSize: MediaQuery.of(context).size.width < 360 ? 22 :25,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
          ),
          SizedBox(
            // width: 250.0,
            child: DefaultTextStyle(
              style: GoogleFonts.arimo(
                  fontSize: MediaQuery.of(context).size.width < 360 ? 22 :25,
                  fontWeight: FontWeight.w900,
                  color: Kolors.primary),
              child: AnimatedTextKit(
                displayFullTextOnTap: true,
                repeatForever: true,
                pause: const Duration(milliseconds: 400),
                animatedTexts: [
                  TyperAnimatedText(
                    'Fast Secure and Simplified  ',
                    speed: const Duration(
                      microseconds: 60000,
                    ),
                  ),
                ],
                // onTap: () {
                //   print("Tap Event");
                // },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
