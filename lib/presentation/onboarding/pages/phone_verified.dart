import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/onboarding/widgets/title_text.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerifiedPage extends StatefulWidget {
  const PhoneVerifiedPage({Key? key, required this.countryCode})
      : super(key: key);

  final String countryCode;

  @override
  State<PhoneVerifiedPage> createState() => _PhoneVerifiedPageState();
}

class _PhoneVerifiedPageState extends State<PhoneVerifiedPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController1;
  late Animation<double> _animation1;
  late AnimationController _animationController2;
  late Animation<double> _animation2;
  late AnimationController _animationController3;
  late Animation<double> _animation3;

  Future showAnimation() async {
    _animationController1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _animation1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController1,
        curve: Curves.easeIn,
      ),
    );
    _animationController1.forward();
    // await Future.delayed(
    //   const Duration(milliseconds: 500),
    // );
    _animationController2 = AnimationController(
        vsync: this, duration: const Duration(microseconds: 1700));
    _animation2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController2,
        curve: Curves.easeIn,
      ),
    );
    _animationController2.forward();
    // await Future.delayed(
    //   const Duration(milliseconds: 500),
    // );
    _animationController3 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation3 = Tween<double>(begin: 0.5, end: 1.2).animate(
      CurvedAnimation(
        parent: _animationController3,
        curve: Curves.elasticIn,
      ),
    );
    _animationController3.forward();
    Timer(const Duration(seconds: 3), () {
      AutoRouter.of(context)
          .replace(ChooseLanguageRoute(countryCode: widget.countryCode));
    });
  }

  @override
  void initState() {
    showAnimation();
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          children: [
            const SizedBoxH20(),
            FadeTransition(
              opacity: _animation1,
              child: Text(
                "Congratulations !!",
                style: GoogleFonts.arimo(
                  color: Kolors.darkBlue,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBoxH20(),
            FadeTransition(
              opacity: _animation1,
              child: Text(
                "Phone Number Verified",
                style: GoogleFonts.arimo(
                  // color: Kolors.darkBlue,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBoxH30(),
            const Spacer(),
            ScaleTransition(
              scale: _animation3,
              child: const Icon(
                Icons.check_circle,
                color: Kolors.primary,
                size: 100,
              ),
            ),
            const Spacer(),
            // RoundedButton(
            //   onTap: () {
            //     showAnimation();
            //     // AutoRouter.of(context).replace( SetupProfileRoute(phoneNumber: phoneNumber));
            //   },
            //   text: "Continue",
            // ),
          ],
        ),
      ),
    );
  }
}
