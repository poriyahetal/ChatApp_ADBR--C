import 'dart:async';
import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/onboarding/widgets/title_text.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:get/get.dart';
class OtpVerificationPage extends StatefulWidget {
  final String route;
  final String phoneNumber;
  final String countryCode;
  const OtpVerificationPage({
    Key? key,
    required this.route,
    required this.phoneNumber,
    required this.countryCode,
  }) : super(key: key);

  @override
  _OtpVerificationPageState createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  bool isPrivacyAccepted = true;
  final TextEditingController otpController = TextEditingController();
  // late String otp = "";
  late String number = "";
  late String route;
  late KahoChatUser signedUser;
  late InkWell inkWell;
  late StoriesModel userStory;
  late Timer _timer;
  int _start = 60;
  bool isTextButtonEnable = false;
  FirebaseAuth auth = FirebaseAuth.instance;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            isTextButtonEnable = true;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  // Future _listenOtp() async {
  //   await SmsAutoFill().listenForCode;
  // }
  // String? _commingSms = 'Unknown';
  // Future<void> initSmsListener() async {
  //   if (!await Permission.sms.isGranted) {
  //     showRequestPermissionDialogue(
  //       context: context,
  //       title: 'Give the access to KahoChat to read sms.',
  //       subtitle: "",
  //       icon: Icons.sms_outlined,
  //       onPressed: () async {
  //         Navigator.pop(context);
  //         if (await Getters.requestPermission(Permission.sms)) {
  //           String? commingSms;
  //           try {
  //             commingSms = await AltSmsAutofill().listenForSms;
  //           } on PlatformException {
  //             commingSms = 'Failed to get Sms.';
  //           }
  //           if (!mounted) return;

  //           _commingSms = commingSms;
  //           print("printing sms  $_commingSms");

  //           final RegExp regExp = RegExp(r'^\d{6}');
  //           final RegExpMatch? smsOtp = regExp.firstMatch(_commingSms!);
  //           // print(smsOtp!.group(0));
  //           if (smsOtp != null) {
  //             otpController.text = smsOtp.group(0)!;
  //             inkWell.onTap!();
  //           }

  //           setState(() {});
  //           // print("printing sms  $_commingSms");

  //         } else {
  //           Fluttertoast.showToast(
  //               msg: 'Permision not accepted', backgroundColor: Kolors.grey);
  //         }
  //       },
  //     );
  //   } else {
  //     String? commingSms;
  //     try {
  //       commingSms = await AltSmsAutofill().listenForSms;
  //     } on PlatformException {
  //       commingSms = 'Failed to get Sms.';
  //     }
  //     if (!mounted) return;

  //     _commingSms = commingSms;
  //     print("printing sms  $_commingSms");

  //     final RegExp regExp = RegExp(r'^\d{6}');
  //     final RegExpMatch? smsOtp = regExp.firstMatch(_commingSms!);
  //     // print(smsOtp!.group(0));
  //     if (smsOtp != null) {
  //       otpController.text = smsOtp.group(0)!;
  //       inkWell.onTap!();
  //     }

  //     setState(() {});
  //     // print("printing sms  $_commingSms");

  //   }
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    // SmsAutoFill().unregisterListener();
    // AltSmsAutofill().unregisterListener();
    super.dispose();
  }

  @override
  void initState() {
    inkWell = InkWell(
      // isLoading: state.isLoading,
      onTap: () async {
        if (await InternetConnectionChecker().hasConnection) {
          if (isPrivacyAccepted) {
            if (otpController.text.length == 6) {
              //verfying and register phone Number
              context.read<AuthBloc>().add(
                    AuthEvent.getOtp(
                      otp: otpController.text,
                    ),
                  );
              showDialog(
                context: context,
                barrierDismissible: false,
                barrierColor: Colors.transparent,
                builder: (BuildContext context) {
                  return const Center(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        color: Kolors.primary,
                      ),
                    ),
                  );
                },
              );
            } else {
              Fluttertoast.showToast(
                msg: "enter 6 digit otp",
                backgroundColor: Kolors.grey,
              );
            }
          } else {
            Fluttertoast.showToast(
              msg: "Please accept Privacy & Terms",
              backgroundColor: Kolors.grey,
            );
          }
        } else {
          Fluttertoast.showToast(
            msg: "unable to verify otp no internet found",
            backgroundColor: Kolors.grey,
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: otpController.text.length == 6 ? Kolors.primary : Kolors.grey,
        ),
        child: const Center(
          child: Text(
            "Continue",
            style: TextStyle(fontSize: 20, color: Kolors.white),
          ),
        ),
      ),
    );
    //print(widget.phoneNumber);
    // TODO: implement initState
    route = widget.route;
    number = widget.phoneNumber;
    if (route == "reVerifyOldPhoneNumberRoute") {
      isPrivacyAccepted = true;
    }

    // initSmsListener();
    // _listenOtp();
    startTimer();
    super.initState();
  }

  Future<void> sendOtp(BuildContext context) async {
    context.read<AuthBloc>().add(AuthEvent.getPhoneNumber(widget.phoneNumber));

    await auth.verifyPhoneNumber(
      phoneNumber: "${widget.countryCode}${widget.phoneNumber}",
      timeout: const Duration(seconds: 120),
      verificationCompleted: (PhoneAuthCredential credential) async {
        log("This User is authenticated by google play services");
        log("prininttt cred ${credential.asMap().toString()}");
        log("printing otp ${credential.smsCode}");
        await auth.signInWithCredential(credential);
        context.read<UserBloc>().add(const UserEvent.getSignedInUser());
        AutoRouter.of(context)
            .replace(PhoneVerifiedRoute(countryCode: widget.countryCode));
      },
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
    // AutoRouter.of(context).push(
    //     OtpVerificationRoute(route: screenRoute, PhoneNumber: phoneNoTEC.text));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () => {},
              (some) => some.fold(
                (failure) {
                  Fluttertoast.showToast(
                    msg: failure.maybeMap(
                      invalidOtp: (e) => 'Invalid OTP. Please retry.',
                      customError: (e) => 'An unexpected error occurred.',
                      orElse: () => 'An unexpected error occurred.',
                    ),
                    backgroundColor: Kolors.grey,
                  );
                  Navigator.pop(context);
                },
                (success) {
                  // SmsAutoFill().unregisterListener();

                  context
                      .read<UserBloc>()
                      .add(const UserEvent.getSignedInUser());
                  AutoRouter.of(context).replace(
                      PhoneVerifiedRoute(countryCode: widget.countryCode));
                },
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, userState) {
          return BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return SafeScaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // const PageHeader(
                    //   iconData: Icons.phone_android,
                    //   title: "OTP Verification",
                    // ),
                    const SizedBoxH30(),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 38,),
                        child: Image.asset(
                          "assets/images/kahochat_rectangle.png",
                          height: 50.0,
                        )),
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical:  MediaQuery.of(context).size.width < 360 ? 20 :40,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Enter One Time Password",
                                style: GoogleFonts.arimo(
                                  fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),

                            MediaQuery.of(context).size.width < 360 ? const SizedBoxH20() :const SizedBoxH30(),
                            Center(
                              child: Text(
                                "The One Time Password have been sent to ${widget.countryCode}${widget.phoneNumber}",
                                style: GoogleFonts.arimo(
                                  fontSize: MediaQuery.of(context).size.width < 360 ? 14 :15,
                                  // fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            // Text(
                            //   "Enter 6 digits OTP",
                            //   style: TextStyle(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w600,
                            //     color: Colors.grey[600],
                            //   ),
                            // ),
                            MediaQuery.of(context).size.width < 360 ? const SizedBoxH5() :const SizedBoxH20(),
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.2,
                                child: PinInputTextField(
                                  pinLength: 6,
                                  decoration: UnderlineDecoration(
                                    lineHeight: 2.5,
                                    colorBuilder: PinListenColorBuilder(
                                      Kolors.primary,
                                      Kolors.grey,
                                    ),
                                    // bgColorBuilder: _solidEnable ? _solidColor : null,
                                  ),
                                  controller: otpController,
                                  // textInputAction: TextInputAction.go,
                                  enabled: true,
                                  keyboardType: TextInputType.phone,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  onSubmit: (pin) {
                                    debugPrint('submit pin:$pin');
                                  },
                                  onChanged: (pin) {
                                    print(otpController.text);
                                    debugPrint('onChanged execute. pin:$pin');
                                  },
                                  enableInteractiveSelection: false,
                                  cursor: Cursor(
                                    width: 2,
                                    color: Colors.lightBlue,
                                    radius: const Radius.circular(1),
                                    enabled: true,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBoxH20(),
                            Center(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  // minimumSize: Size(50, 30),
                                  alignment: Alignment.centerLeft,
                                ),
                                onPressed: isTextButtonEnable
                                    ? () {
                                        setState(() {
                                          _start = 60;
                                          isTextButtonEnable = false;
                                        });
                                        startTimer();
                                        sendOtp(context);
                                      }
                                    : null,
                                child: Text(
                                  isTextButtonEnable
                                      ? 'Re-Send OTP'
                                      : 'Resend OTP in $_start second(s)',
                                  style:  TextStyle(color: Kolors.primary,fontSize: MediaQuery.of(context).size.width < 360 ? 18 :null),
                                ),
                              ),
                            ),
                            MediaQuery.of(context).size.width < 360 ? const SizedBox(height: 90,) :const Spacer(),
                            Center(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  // minimumSize: Size(50, 30),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Text(
                                      "Change phone number",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Kolors.primary,
                                          fontSize: MediaQuery.of(context).size.width < 360 ? 18 :null
                                      ),
                                    ),
                                    SizedBoxW10(),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Kolors.primary,
                                        size: MediaQuery.of(context).size.width < 360 ? 22 :null
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
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
                        if (isPrivacyAccepted) {
                          if (otpController.text.length == 6) {
                            //verfying and register phone Number
                            context.read<AuthBloc>().add(
                                  AuthEvent.getOtp(
                                    otp: otpController.text,
                                  ),
                                );
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              barrierColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return const Center(
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircularProgressIndicator(
                                      color: Kolors.primary,
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            Fluttertoast.showToast(
                              msg: "enter 6 digit otp",
                              backgroundColor: Kolors.grey,
                            );
                          }
                        } else {
                          Fluttertoast.showToast(
                            msg: "Please accept Privacy & Terms",
                            backgroundColor: Kolors.grey,
                          );
                        }
                      } else {
                        Fluttertoast.showToast(
                          msg: "unable to verify otp no internet found",
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
                      child:  Center(
                        child: Text(
                          "CONTINUE",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width < 360 ? 13 : 15,
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
        },
      ),
    );
  }
}
