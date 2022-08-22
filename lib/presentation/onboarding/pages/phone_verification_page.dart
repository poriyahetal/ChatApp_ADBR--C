import 'package:auto_route/auto_route.dart';
// import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';

import 'package:flutter_template/presentation/core/layout_widgets/phone_input_widget.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';

class PhoneVerificationPage extends StatefulWidget {
  final String route;

  PhoneVerificationPage({Key? key, required this.route}) : super(key: key);

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  final TextEditingController phoneNoTEC = TextEditingController();

  Country _selectedCountry = const Country("Enter Country code", "", "", "");

  final FirebaseAuth auth = FirebaseAuth.instance;
  static final maskInputFormatter = MaskTextInputFormatter(
    mask: '##### #####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  Future sendOtp(BuildContext context, String screenRoute) async {
    print(
        "${_selectedCountry.callingCode}${maskInputFormatter.getUnmaskedText()}");
    context
        .read<AuthBloc>()
        .add(AuthEvent.getPhoneNumber(maskInputFormatter.getUnmaskedText()));
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber:
          "${_selectedCountry.callingCode}${maskInputFormatter.getUnmaskedText()}",
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        debugPrint(e.toString());
      },
      codeSent: (String verificationId, int? resendToken) {
        context
            .read<AuthBloc>()
            .add(AuthEvent.getVerificationId(verificationId));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    // ignore: use_build_context_synchronously
    AutoRouter.of(context).push(
      OtpVerificationRoute(
        route: screenRoute,
        countryCode: _selectedCountry.callingCode,
        phoneNumber: "${maskInputFormatter.getUnmaskedText()}",
      ),
    );
  }

  Future<void> _onPressedShowBottomSheet() async {
    final country = await showCountryPickerDialog(
      context,
      cornerRadius: 5,
      title: const Text(
        "Select Country",
        style: TextStyle(fontSize: 14),
      ),
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }

  @override
  void initState() {
    _selectedCountry = const Country("India", "flags/ind.png", "IN", "+91");

    // showTerms();
    super.initState();
  }

  // void showTerms(){
  //   Future.delayed(Duration(seconds: 1),(){
  //     acceptTermsDialogue(
  //       context: context,
  //       title:
  //       'KahoChat Instant Messenger utilizes state-of-the-art security and end-to-end encryption to provide private messaging, Internet calling, and other services to users in India. You agree to our Terms of Service by installing or using our apps, services or website.',
  //       subtitle: "",
  //       icon: CupertinoIcons.doc,
  //       onPressed: () async {
  //         Navigator.pop(context);

  //       },
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        // state.authFailureOrSuccessOption.fold(
        //   () {},
        //   (some) => some.fold(
        //     (failure) {
        //       Fluttertoast.showToast(
        //         msg: failure.maybeMap(
        //             invalidPhoneNumber: (e) =>
        //                 'Invalid Phone Number. Please retry.',
        //             customError: (e) => e.error,
        //             orElse: () => 'An unexpected error occurred.'),
        //       );
        //     },
        //     (success) {
        //       AutoRouter.of(context).push(const OtpVerificationRoute());
        //     },
        //   ),
        // );
      },
      builder: (context, state) {
        return SafeScaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBoxH30(),
              //const Logo(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.0),
                  child: Image.asset(
                    "assets/images/kahochat_rectangle.png",
                    height: 50.0,
                  )),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: MediaQuery.of(context).size.width < 360 ? 20 :29,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(
                        height: MediaQuery.of(context).size.width < 360 ? 10 :40,
                      ),
                      Center(
                        child: Text(
                          "Enter your phone number",
                          style: GoogleFonts.arimo(
                            fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 360) const SizedBoxH20() else const SizedBoxH30(),
                      InkWell(
                        onTap: _onPressedShowBottomSheet,
                        child: Container(
                          color: Theme.of(context).backgroundColor,
                          child: Container(
                            height: MediaQuery.of(context).size.width < 360 ? 50 :60,
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Kolors.primary, width: 2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 4,
                                ),
                                Image.asset(
                                  _selectedCountry.flag,
                                  package: countryCodePackageName,
                                  width: 40,
                                  fit: BoxFit.fill,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "${_selectedCountry.callingCode}",
                                  style:  TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                                    color: Kolors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBoxW10(),
                                Expanded(
                                  child: PhoneInputWidget(
                                    onChanged: () {
                                      setState(() {});
                                      print(
                                          maskInputFormatter.getUnmaskedText());
                                    },
                                    phoneNoTEC: phoneNoTEC,
                                    hintText: "Phone Number",
                                    maskFormatter: maskInputFormatter,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 360) const SizedBoxH10() else const SizedBoxH20(),
                       Text(
                        "The One Time Password will be sent through this number.",
                        style: TextStyle(
                          fontSize: 12,
                          // color: Kolors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBoxH20(),

                      // const Spacer(),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FloatingActionButton.extended(
              elevation: 0,
              onPressed: () async {
                if (await InternetConnectionChecker().hasConnection) {
                  if (maskInputFormatter.getUnmaskedText().length > 8) {
                    //verify and register new Phone number
                    sendOtp(context, "phoneVerfiedRoute");
                  } else {
                    Fluttertoast.showToast(
                      msg: "Please enter a valid phone number",
                      backgroundColor: Kolors.grey,
                    );
                  }
                } else {
                  Fluttertoast.showToast(
                    msg:
                        "No active internet Connection Found or your internet Connection isn't working ",
                    backgroundColor: Kolors.grey,
                  );
                }
              },
              heroTag: null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: Kolors.primary,
              label: Container(
                width: MediaQuery.of(context).size.width - 120,
                alignment: Alignment.center,
                child: const Center(
                  child: Text(
                    "GET OTP",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Kolors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
