import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class VerNumDeleteAccountPage extends StatefulWidget {
  const VerNumDeleteAccountPage({Key? key}) : super(key: key);

  @override
  State<VerNumDeleteAccountPage> createState() =>
      _VerNumDeleteAccountPageState();
}

class _VerNumDeleteAccountPageState extends State<VerNumDeleteAccountPage> {
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
  //   floatingActionButton.onPressed!();

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
            backgroundColor: Kolors.grey);
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
    // ignore: use_build_context_synchronously
  }

  Future<dynamic> showConfirmationDialogue({required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          title: Text(
            "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToDeleteYourAccount}?",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          content: Container(
            height: 90,
            child: Column(
              children: [
                Text(
                  "${context.read<SettingsBloc>().state.languageData.thisActionWillDeleteYourKahoChatAccountPermanently}.",
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                  "${context.read<SettingsBloc>().state.languageData.cancel}"),
            ),
            const SizedBoxW10(),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context
                    .read<UserBloc>()
                    .add(const UserEvent.deleteAllChat(alsoDeleteMedia: true));
                context.read<AuthBloc>().add(
                      AuthEvent.deleteAccount(
                        otp: otpController.text,
                      ),
                    );
                showDeletingAccountDialogue(context: context);
              },
              child: Text(
                  "${context.read<SettingsBloc>().state.languageData.delete}"),
            ),
            const SizedBoxW10(),
          ],
        );
      },
    );
  }

  Future<dynamic> showDeletingAccountDialogue({required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => true,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.deleteAccount.fold(
                () => {},
                (some) => some.fold(
                  (failure) {
                    Fluttertoast.showToast(
                        msg: failure.maybeMap(
                          invalidOtp: (e) => 'Invalid OTP. Please retry.',
                          customError: (e) => 'An unexpected error occurred.',
                          orElse: () => 'An unexpected error occurred.',
                        ),
                        backgroundColor: Kolors.grey);
                    Navigator.pop(context);
                  },
                  (success) async {
                    Fluttertoast.showToast(
                      msg: "Account deleted succesfully",
                      backgroundColor: Kolors.grey,
                    );
                    SystemNavigator.pop();
                  },
                ),
              );
              // TODO: implement listener
            },
            builder: (context, state) {
              return AlertDialog(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                content: SizedBox(
                  height: 200,
                  width: 300,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(
                        color: Kolors.primary,
                      ),
                      const SizedBoxH10(),
                      Text(
                        "${context.read<SettingsBloc>().state.languageData.deletingAccount}...",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const SizedBoxH10(),
                      Text(
                        '${context.read<SettingsBloc>().state.languageData.deletingUserDataAndResettingThe}\n ${context.read<SettingsBloc>().state.languageData.app}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Kolors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
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
            isLoading = false;
            isOtpSent = true;
          });
          showConfirmationDialogue(
            context: context,
          );
        } else {
          Fluttertoast.showToast(
            msg: 'Enter 6 the digit OTP',
            backgroundColor: Kolors.grey,
          );
        }
      },
      heroTag: null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: Kolors.red,
      label: Container(
        width: 340,
        alignment: Alignment.center,
        child: Text(
          "${context.read<SettingsBloc>().state.languageData.deleteAccount}",
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                            color: Kolors.red,
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
                                  Kolors.red, Kolors.grey),
                              // bgColorBuilder: _solidEnable ? _solidColor : null,
                            ),
                            controller: otpController,
                            // textInputAction: TextInputAction.go,
                            enabled: true,
                            keyboardType: TextInputType.phone,
                            textCapitalization: TextCapitalization.characters,
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

                                  sendOtp(
                                      context, state.signedInUser.countryCode);
                                }
                              : null,
                          child: isTextButtonEnable
                              ? Text(
                                  "${context.read<SettingsBloc>().state.languageData.resendCode}",
                                  style: const TextStyle(
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
                  // height: 300,
                  // width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const Spacer(),
                      const SizedBox(
                        height: 100,
                      ),

                      Text(
                        "${context.read<SettingsBloc>().state.languageData.enterYourPhoneNumber}",
                        style: const TextStyle(
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
                                      color: Kolors.red, width: 2.0),
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
                                      color: Kolors.red, width: 2.0),
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
                          color: Kolors.red,
                        )
                      else
                        FloatingActionButton.extended(
                          elevation: 0,
                          onPressed: () async {
                            print(state.signedInUser.phoneNumber);
                            if (phoneNoTEC.text.length > 6 &&
                                phoneNoTEC.text ==
                                    state.signedInUser.phoneNumber) {
                              setState(() {
                                isLoading = true;
                              });
                              // initSmsListener();
                              sendOtp(context, state.signedInUser.countryCode);
                            } else {
                              Fluttertoast.showToast(
                                  msg: 'Either number is not same or not valid',
                                  backgroundColor: Kolors.grey);
                            }
                          },
                          heroTag: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Kolors.red,
                          label: Container(
                            width: MediaQuery.of(context).size.width - 80,
                            alignment: Alignment.center,
                            child: Text(
                              "${context.read<SettingsBloc>().state.languageData.verify}",
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
