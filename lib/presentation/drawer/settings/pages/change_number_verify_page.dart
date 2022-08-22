import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class ChangeNumberVerifyPage extends StatefulWidget {
  const ChangeNumberVerifyPage({Key? key}) : super(key: key);

  @override
  State<ChangeNumberVerifyPage> createState() => _ChangeNumberVerifyPageState();
}

class _ChangeNumberVerifyPageState extends State<ChangeNumberVerifyPage> {
  bool isLoading = false;
  bool isOtpSent = false;
  TextEditingController otpController = TextEditingController();
  Timer? _timer;
  int _start = 60;
  bool isTextButtonEnable = false;
  late FloatingActionButton floatingActionButton;

  // String? _commingSms = 'Unknown';
  // Future<void> initSmsListener() async {
  //   String? commingSms;
  //   try {
  //     commingSms = await AltSmsAutofill().listenForSms;
  //   } on PlatformException {
  //     commingSms = 'Failed to get Sms.';
  //   }
  //   if (!mounted) return;

  //   _commingSms = commingSms;
  //   print("printing sms  $_commingSms");

  //   final RegExp regExp = RegExp(r'^\d{6}');
  //   final RegExpMatch? smsOtp = regExp.firstMatch(_commingSms!);
  //   // print(smsOtp!.group(0));
  //   if (smsOtp != null) {
  //     otpController.text = smsOtp.group(0)!;
  //   }

  //   setState(() {});
  //   // print("printing sms  $_commingSms");
  // }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
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

  Future sendOtp(BuildContext context, String countryCode) async {
    // final signature = await SmsAutoFill().getAppSignature;
    //print("${_selectedCountry.callingCode}${phoneNoTEC.text}");
    context.read<AuthBloc>().add(AuthEvent.getPhoneNumber(phoneNoTEC.text));
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "${countryCode}${phoneNoTEC.text}",
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) async {
        // await Future.delayed(const Duration(milliseconds: 1500));

        Fluttertoast.showToast(
          msg: 'Unable to send One Time Password',
          backgroundColor: Kolors.grey,
        );
        setState(() {
          isLoading = false;
        });
        debugPrint(e.toString());
      },
      codeSent: (String verificationId, int? resendToken) async {
        startTimer();
        context
            .read<AuthBloc>()
            .add(AuthEvent.getVerificationId(verificationId));
        // await Future.delayed(const Duration(milliseconds: 1500));
        setState(() {
          isLoading = false;
          isOtpSent = true;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    //
    //ignore: use_build_context_synchronously
  }

  TextEditingController phoneNoTEC = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    floatingActionButton = FloatingActionButton.extended(
      elevation: 0,
      onPressed: () async {
        if (otpController.text.length == 6) {
          setState(() {
            isLoading = true;
          });

          context.read<AuthBloc>().add(
                AuthEvent.reAuthUser(
                  otp: otpController.text,
                ),
              );
        } else {
          Fluttertoast.showToast(
            msg: 'Enter 6 the digit OTP',
            backgroundColor: Kolors.grey,
          );
        }
        // Navigator.pop(context);
        // showConfirmationDialogue(context: context);
        // AutoRouter.of(context).push(const VerNumDeleteAccountRoute());
      },
      heroTag: null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: Kolors.primary,
      label: Container(
        width: 340,
        alignment: Alignment.center,
        child: Text(
          "${context.read<SettingsBloc>().state.languageData.verify}",
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
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
              setState(() {
                isLoading = false;
              });
              Navigator.pop(context);
            },
            (success) {
              AutoRouter.of(context).replace(const VerifySecondNumberRoute());
              // SmsAutoFill().unregisterListener();
            },
          ),
        );
        // TODO: implement listener
      },
      builder: (context, state) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return SafeScaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  "${context.read<SettingsBloc>().state.languageData.verifyYourself}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Theme.of(context).backgroundColor,
              ),
              body: isOtpSent
                  ? Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // const Spacer(),
                          const SizedBox(
                            height: 60,
                          ),

                          Text(
                            isTextButtonEnable ? '' : ' ${_start}:00',
                            style: const TextStyle(
                                color: Kolors.primary,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "${context.read<SettingsBloc>().state.languageData.enterTheVerificationCode}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBoxH20(),
                          Text(
                            "${context.read<SettingsBloc>().state.languageData.theOneTimePasswordHasBeenSentTo} ${state.signedInUser.countryCode} ${state.signedInUser.phoneNumber}",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Kolors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBoxH30(),
                          Center(
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: PinInputTextField(
                                pinLength: 6,
                                decoration: UnderlineDecoration(
                                  colorBuilder: PinListenColorBuilder(
                                      Kolors.primary, Kolors.grey),
                                  // bgColorBuilder: _solidEnable ? _solidColor : null,
                                ),
                                controller: otpController,
                                // textInputAction: TextInputAction.go,
                                enabled: true,
                                keyboardType: TextInputType.phone,
                                textCapitalization:
                                    TextCapitalization.characters,
                                onSubmit: (pin) {
                                  debugPrint('submit pin:');
                                },
                                onChanged: (pin) {
                                  print(otpController.text);
                                  debugPrint('onChanged execute. pin:');
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
                          if (isLoading)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment:
                              //     CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: const CircularProgressIndicator(
                                    // strokeWidth: 6,
                                    color: Kolors.primary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${context.read<SettingsBloc>().state.languageData.Verifying}...",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          else
                            floatingActionButton,
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Kolors.black,
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

                                      sendOtp(context,
                                          state.signedInUser.countryCode);
                                    }
                                  : null,
                              child: isTextButtonEnable
                                  ? Text(
                                      "${context.read<SettingsBloc>().state.languageData.resendCode}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  : const Text(''),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Text(
                            "${context.read<SettingsBloc>().state.languageData.enterYourCurrentPhoneNumber}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBoxH30(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                child: TextFormField(
                                  initialValue:
                                      "  ${state.signedInUser.countryCode}",
                                  // controller: phoneNoTEC,
                                  readOnly: true,
                                  keyboardType: TextInputType.phone,
                                  // maxLength: 10,
                                  onChanged: (e) {},
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Kolors.primary, width: 2.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        width: 2,
                                        color: Kolors.grey,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    // hintText:
                                    //     state.signedInUser.phoneNumber.split(" ").first,
                                    focusColor: Kolors.grey,
                                  ),
                                ),
                              ),
                              const SizedBoxW15(),
                              Container(
                                // height:100,
                                width: MediaQuery.of(context).size.width - 140,
                                child: TextFormField(
                                  controller: phoneNoTEC,
                                  // readOnly: true,
                                  keyboardType: TextInputType.phone,
                                  // maxLength: 10,
                                  onChanged: (e) {},
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Kolors.primary, width: 2.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        width: 2,
                                        color: Kolors.grey,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'Phone number',
                                    focusColor: Kolors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBoxH30(),
                          if (isLoading)
                            const CircularProgressIndicator(
                              color: Kolors.primary,
                            )
                          else
                            FloatingActionButton.extended(
                              elevation: 0,
                              onPressed: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                if (phoneNoTEC.text.length > 6 &&
                                    phoneNoTEC.text ==
                                        state.signedInUser.phoneNumber) {
                                  // initSmsListener();
                                  sendOtp(
                                      context, state.signedInUser.countryCode);
                                } else {
                                  await Future.delayed(
                                      const Duration(seconds: 2));
                                  setState(() {
                                    isLoading = false;
                                  });
                                  Fluttertoast.showToast(
                                      msg:
                                          'Either the number is not same or not valid',
                                      backgroundColor: Kolors.grey);
                                }
                              },
                              heroTag: null,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Kolors.primary,
                              label: Container(
                                width: MediaQuery.of(context).size.width - 80,
                                alignment: Alignment.center,
                                child: Text(
                                  "${context.read<SettingsBloc>().state.languageData.Continue}",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
            );
          },
        );
      },
    );
  }
}
