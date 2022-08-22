import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/onboarding/widgets/logo.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class FingerprintVerificationPage extends StatefulWidget {
  @override
  _FingerprintVerificationPageState createState() =>
      _FingerprintVerificationPageState();
}

class _FingerprintVerificationPageState
    extends State<FingerprintVerificationPage> {
  @override
  void initState() {
    super.initState();
    context.read<LocalAuthBloc>().add(const LocalAuthEvent.verifyFingerprint());
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
                print("error");
              },
              (r) async {
                print('consumer of vrp');

                if (state.timer != 0) {
                  context.read<LocalAuthBloc>().add(
                        const LocalAuthEvent
                            .enableDisableFingerPrintAfterTimeout(
                          newStatus: FingerPrintStatus.disabled,
                        ),
                      );
                }
                context
                    .read<LocalAuthBloc>()
                    .add(const LocalAuthEvent.setLastActiveSession());
                await Future.delayed(const Duration(milliseconds: 800));
                AutoRouter.of(context).replace(BaseRoute(selectedIndex: 0));
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Logo(),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    "${context.read<SettingsBloc>().state.languageData.welcome} ${context.read<UserBloc>().state.signedInUser.name.split(' ').first}",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.w800, fontSize: 27),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  AnimatedCrossFade(
                    firstChild: Column(
                      children: <Widget>[
                        Text(
                          "${context.read<SettingsBloc>().state.languageData.tapToVerfiyYourIdentity}",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText2!
                              .copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Icon(
                          Icons.fingerprint,
                          size: 100,
                          color: Kolors.primary,
                        ),
                        const SizedBoxH30(),
                        Text(
                          "${context.read<SettingsBloc>().state.languageData.touchTheFingerprintSensorToUnlock}",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText2!
                              .copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                        const SizedBox(
                          height: 230,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.lock_outline_rounded,
                              color: Kolors.primary,
                            ),
                            const SizedBoxW10(),
                            Text(
                              "${context.read<SettingsBloc>().state.languageData.applicationLocked}",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    secondChild: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 63,
                        ),
                        const Icon(
                          Icons.check_circle_outline_outlined,
                          size: 100,
                          color: Kolors.primary,
                        ),
                        const SizedBox(
                          height: 280,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.lock_open_outlined,
                              color: Kolors.primary,
                            ),
                            const SizedBoxW10(),
                            Text(
                              "${context.read<SettingsBloc>().state.languageData.applicationUnlocked}",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    crossFadeState: !state.isVerified
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 1900),
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
