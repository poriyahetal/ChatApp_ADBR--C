import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/core/layout_widgets/phone_input_widget.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class VerifySecondNumberPage extends StatefulWidget {
  const VerifySecondNumberPage({Key? key}) : super(key: key);

  @override
  State<VerifySecondNumberPage> createState() => _VerifySecondNumberPageState();
}

class _VerifySecondNumberPageState extends State<VerifySecondNumberPage> {
  bool isLoading = false;
  bool isOtpSent = false;
  late FloatingActionButton floatingActionButton;
  TextEditingController otpController = TextEditingController();
  Country _selectedCountry =
      const Country("India", "flags/ind.png", "IN", "+91");
  late KahoChatUser signedUser;

  Timer? _timer;
  int _start = 60;
  bool isTextButtonEnable = false;

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

  Future sendOtp(BuildContext context, String countryCode) async {
    context.read<AuthBloc>().add(AuthEvent.getPhoneNumber(phoneNoTEC.text));
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "${countryCode}${phoneNoTEC.text}",
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) async {
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
  }

  Future<dynamic> showConfirmationDialogue({required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              title: Text(
                "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToMigrateYourPhoneNumber}?",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              content: Container(
                height: 90,
                child: Column(
                  children: [
                    Text(
                      "${context.read<SettingsBloc>().state.languageData.thisActionWillMigrateYourKahoChatAccountTo} ${_selectedCountry.callingCode} ${phoneNoTEC.text}.",
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
                    signedUser = state.signedInUser;
                    context.read<AuthBloc>().add(
                          AuthEvent.updateNumber(
                            otp: otpController.text,
                          ),
                        );
                    showMigrateDialogue(context: context);
                  },
                  child: Text(
                      "${context.read<SettingsBloc>().state.languageData.migrate}"),
                ),
                const SizedBoxW10(),
              ],
            );
          },
        );
      },
    );
  }

  Future<dynamic> showDiscardDialogue({required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              title: Text(
                "${context.read<SettingsBloc>().state.languageData.areYouSureYouWantToCancelThisAction}?",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              // content: Container(
              //   height: 90,
              //   child: Column(
              //     children: const [
              //       TextTranslate(
              //         'This action will migrate your KahoChat account to +91264648733.',
              //         style:
              //             TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              //       ),
              //     ],
              //   ),
              // ),
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
                    Navigator.pop(context);
                  },
                  child: Text(
                      "${context.read<SettingsBloc>().state.languageData.discard}"),
                ),
                const SizedBoxW10(),
              ],
            );
          },
        );
      },
    );
  }

  Future<dynamic> showMigrateDialogue({required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => true,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.updatePhoneNumber.fold(
                () => {},
                (some) => some.fold(
                  (failure) {
                    
                    Fluttertoast.showToast(
                      msg: failure.maybeMap(
                        invalidOtp: (e) => 'Invalid OTP. Please retry.',
                        numberAlreadyInUsed: (e) =>
                            'New number is Already in use.',
                        customError: (e) => '${e.toString()}.',
                        orElse: () => 'An unexpected error occurred.',
                      ),
                      backgroundColor: Kolors.grey,
                    );
                    Navigator.pop(context);
                  },
                  (phoneNumber) {
                    context.read<UserBloc>().add(
                          UserEvent.createOrUpdateUser(
                            signedUser.copyWith(
                                phoneNumber: phoneNumber,
                                countryCode: _selectedCountry.callingCode),
                          ),
                        );
                    // context.read<StoriesBloc>().add(StoriesEvent.createStories(
                    //     userStory.copyWith(phoneNumber: phoneNoTEC)));
                    // context.read<ContactsBloc>().add(
                    //     ContactsEvent.createUserContacts(
                    //         userContact.copyWith(phoneNumber: phoneNumber)));
                    Fluttertoast.showToast(
                      msg: "Number updated succesfully",
                      backgroundColor: Kolors.grey,
                    );
                    AutoRouter.of(context)
                        .replaceAll([BaseRoute(selectedIndex: 0)]);
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Kolors.primary,
                      ),
                      SizedBoxH10(),
                      Text(
                        "${context.read<SettingsBloc>().state.languageData.migratingAccount}...",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBoxH10(),
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

  @override
  void initState() {
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
          "${context.read<SettingsBloc>().state.languageData.migratePhoneNumber}",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }

    super.dispose();
  }

  TextEditingController phoneNoTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            showDiscardDialogue(context: context);
            return Future.value(false);
          },
          child: SafeScaffold(
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
                "${context.read<SettingsBloc>().state.languageData.migrateToNewPhoneNumber}",
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
                      // crossAxisAlignment: CrossAxisAlignment.center,
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
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBoxH20(),
                        Text(
                          "${context.read<SettingsBloc>().state.languageData.theOneTimePasswordHasBeenSentTo} ${_selectedCountry.callingCode} ${phoneNoTEC.text}",
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
                        const SizedBoxH10(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 10),
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Kolors.black,
                                    padding: EdgeInsets.zero,
                                    // minimumSize: Size(50, 30),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  onPressed: () {
                                    // _timer!.cancel();
                                    _timer!.cancel();
                                    setState(() {
                                      _start = 60;
                                      isTextButtonEnable = false;
                                      isOtpSent = false;
                                      isLoading = false;
                                    });
                                  },
                                  child: Text(
                                    "${context.read<SettingsBloc>().state.languageData.wrongNumber}?",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                            ),
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
                                            _selectedCountry.callingCode);
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
                          "${context.read<SettingsBloc>().state.languageData.enterYourNewPhoneNumber}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBoxH30(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: _onPressedShowBottomSheet,
                              child: Container(
                                width: 85 +
                                    _selectedCountry.callingCode.length
                                        .toDouble(),
                                height: 68,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Kolors.grey, width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                ),
                                padding: EdgeInsets.only(
                                  left:
                                      (MediaQuery.of(context).size.width / 26) -
                                          _selectedCountry.callingCode.length
                                              .toDouble() -
                                          2,
                                ),
                                child: Row(children: [
                                  Text(
                                    "${_selectedCountry.callingCode}",
                                    style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  ),
                                ]),
                              ),
                            ),
                            const SizedBoxW15(),
                            Container(
                              // height:100,
                              // height: 70,
                              width: MediaQuery.of(context).size.width - 140,
                              child: TextFormField(
                                controller: phoneNoTEC,
                                // readOnly: true,
                                keyboardType: TextInputType.phone,
                                // maxLength: 10,
                                onChanged: (e) {},
                                style: const TextStyle(
                                  fontSize: 21,
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

                              // startTimer();
                              // initSmsListener();
                              sendOtp(context, _selectedCountry.callingCode);
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
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}
