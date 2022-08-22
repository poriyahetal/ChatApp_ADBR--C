import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_auth_invisible/flutter_local_auth_invisible.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/custom_switch_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_bar_title.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FingerprintLockPage extends StatefulWidget {
  const FingerprintLockPage({Key? key}) : super(key: key);

  @override
  State<FingerprintLockPage> createState() => _FingerprintLockPageState();
}

class _FingerprintLockPageState extends State<FingerprintLockPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    LocalAuthentication.stopAuthentication();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocalAuthBloc, LocalAuthState>(
      listener: (context, state) {
        state.verifyFingerprintFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (l) {
                Fluttertoast.showToast(
                  msg: 'failed to verify fingerprint',
                  backgroundColor: Kolors.grey,
                  // textColor: Kolors.toasterTextColor,
                );
                Navigator.pop(context);
              },
              (r) async {
                // await Future.delayed(Duration(milliseconds: 2000));
                await Future.delayed(
                  const Duration(milliseconds: 3000),
                );
                if (state.fingerPrintStatus == FingerPrintStatus.enabled) {
                  Fluttertoast.showToast(
                    msg: 'Fingerprint enabled successfully',
                    backgroundColor: Kolors.toasterColor,
                    textColor: Kolors.toasterTextColor,
                  );
                } else {
                  Fluttertoast.showToast(
                    msg: 'Fingerprint disabled successfully',
                    backgroundColor: Colors.grey,
                    textColor: Colors.black,
                  );
                }
                try {
                  Navigator.pop(context);
                } catch (e) {
                  print(e.toString());
                }
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeScaffold(
          appBar: AppBarTitle(title: "Fingerprint "),
          body: ListView(
            children: [
              CustomSwitchTile(
                // value: true,
                value: state.appLock == AppLock.enabled,
                title:
                    "${context.read<SettingsBloc>().state.languageData.useTheFingerprint}",
                // disabled: state.fingerPrintSupport
                //         .getOrElse(() => FingerPrintSupport.notSupported) ==
                //     FingerPrintSupport.notSupported,
                onChanged: (value) async {
                  final bool isSupported =
                      await LocalAuthentication.isDeviceSupported();

                  print(isSupported);
                  if (isSupported) {
                    FingerPrintStatus newStatus;
                    AppLock appLockStatus;
                    if (value) {
                      newStatus = FingerPrintStatus.enabled;
                      appLockStatus = AppLock.enabled;
                    } else {
                      newStatus = FingerPrintStatus.disabled;
                      appLockStatus = AppLock.disabled;
                    }
                    showBottomSheet(context, 'Set your fingerprint');
                    context.read<LocalAuthBloc>().add(
                        LocalAuthEvent.changeFingerprintStatus(
                            newStatus, appLockStatus));
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Fingerprint not supported',
                        backgroundColor: Kolors.grey);
                  }
                },
              ),
              const SizedBoxH10(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 5,
                  right: 20,
                  bottom: 5,
                ),
                child: Container(
                  height: 80,

                  decoration: BoxDecoration(
                    color: Kolors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(5),
                  // color: Kolors.primary.withOpacity(.5),
                  child: Text(
                    '${context.read<SettingsBloc>().state.languageData.afterEnablingTheFingerprintYouWillBeAskedToUseFingerprintForUsingApplicationYouCanNotUseAnyFeaturesOfApplicationExceptCalls}.',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    softWrap: true,
                    style: TextStyle(fontSize: 14, color: Kolors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 3,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18,
                  top: 5,
                ),
                child: Text(
                  '${context.read<SettingsBloc>().state.languageData.fingerprintWillBeEnabled}',
                  style: TextStyle(
                    color: Kolors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  context.read<LocalAuthBloc>().add(
                        const LocalAuthEvent.imediatelyOn(
                          isImediately: true,
                          others: false,
                        ),
                      );
                },
                leading: Checkbox(activeColor: context.read<SettingsBloc>()
                    .state
                    .appThemeMode ==
                    ThemeMode.dark
                    ? Colors.white54
                    : null,
                  onChanged: (value) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.imediatelyOn(
                            isImediately: true,
                            others: false,
                          ),
                        );
                  },
                  value: state.isImediately,
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.immediately}"),
              ),
              ListTile(
                onTap: () {
                  context.read<LocalAuthBloc>().add(
                        const LocalAuthEvent.thirtySecond(
                          isThirtySecond: true,
                          others: false,
                        ),
                      );
                },
                leading: Checkbox(activeColor: context.read<SettingsBloc>()
                    .state
                    .appThemeMode ==
                    ThemeMode.dark
                    ? Colors.white54
                    : null,
                  onChanged: (value) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.thirtySecond(
                            isThirtySecond: true,
                            others: false,
                          ),
                        );
                  },
                  value: state.isThirtySecond,
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.within30Seconds}"),
              ),
              ListTile(
                onTap: () {
                  context.read<LocalAuthBloc>().add(
                        const LocalAuthEvent.oneMinute(
                          isOneMinute: true,
                          others: false,
                        ),
                      );
                },
                leading: Checkbox(activeColor: context.read<SettingsBloc>()
                    .state
                    .appThemeMode ==
                    ThemeMode.dark
                    ? Colors.white54
                    : null,
                  onChanged: (value) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.oneMinute(
                            isOneMinute: true,
                            others: false,
                          ),
                        );
                  },
                  value: state.isOneMinute,
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.within1Minute}"),
              ),
              ListTile(
                onTap: () {
                  context.read<LocalAuthBloc>().add(
                        const LocalAuthEvent.tenMinutes(
                          isTenMinute: true,
                          others: false,
                        ),
                      );
                },
                leading: Checkbox(activeColor: context.read<SettingsBloc>()
                    .state
                    .appThemeMode ==
                    ThemeMode.dark
                    ? Colors.white54
                    : null,
                  onChanged: (value) {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.tenMinutes(
                            isTenMinute: true,
                            others: false,
                          ),
                        );
                  },
                  value: state.isTenMinute,
                ),
                title: Text(
                    "${context.read<SettingsBloc>().state.languageData.within10Minutes}"),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showBottomSheet(BuildContext context, String title) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (builder) => WillPopScope(
        onWillPop: () async => false,
        child: SizedBox(
          height: 255,
          width: MediaQuery.of(context).size.width,
          child: BlocBuilder<LocalAuthBloc, LocalAuthState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  LocalAuthentication.stopAuthentication();
                  super.dispose();
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBoxH20(),
                      Text(
                        title,
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2!
                            .copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                      ),
                      const SizedBoxH30(),
                      AnimatedCrossFade(
                        firstChild: const Icon(
                          Icons.fingerprint,
                          size: 80,
                          color: Kolors.primary,
                        ),
                        secondChild: const Icon(
                          Icons.check_circle_outline,
                          size: 80,
                          color: Kolors.primary,
                        ),
                        crossFadeState: !state.isVerified
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 1300),
                      ),
                      const SizedBoxH10(),
                      Text(
                        "${context.read<SettingsBloc>().state.languageData.touchTheFingerprintSensor}",
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2!
                            .copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                      ),
                      const SizedBoxH20(),
                      Container(
                        padding: const EdgeInsets.only(right: 20, bottom: 3),
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            LocalAuthentication.stopAuthentication();
                            Navigator.pop(context);
                          },
                          child: Text(
                            "${context.read<SettingsBloc>().state.languageData.cancel}",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyText2!
                                .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
