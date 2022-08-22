import 'package:auto_route/auto_route.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/pages/app_overview_page.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/app_logo.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late AssetImage logo;
  Country? country;

  @override
  void initState() {
    // TODO: implement initState
    logo = const AssetImage("assets/images/kahochat.png");
    country = const Country("India", "flags/ind.png", "IN", "+91");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    precacheImage(logo, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.userSignInStatusOption.fold(
              () {},
              (signInStatus) {
                signInStatus.fold(
                  (notSignedIn) async {
                    await Future.delayed(Duration(seconds: 2));
                    AutoRouter.of(context).replace(const AppPreviewRoute());
                    // Navigator.replace(context,
                    //     MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    // AutoRouter.of(context).replace(
                    //   PhoneVerificationRoute(route: "phoneVerfiedRoute"),
                    // );
                    context
                        .read<SQLiteBloc>()
                        .add(const SQLiteEvent.initializeDatabase());
                  },
                  (signedIn) async {
                    //TODO: remove this
                    AutoRouter.of(context)
                        .replace(const VerifyFingerprintRoute());
                    // context.read<UserBloc>().add(
                    //       UserEvent.createOrUpdateUser(
                    //         context
                    //             .read<UserBloc>()
                    //             .state
                    //             .signedInUser
                    //             .copyWith(activeStatus: ActiveStatus.Online),
                    //       ),
                    //     );
                    context
                        .read<SQLiteBloc>()
                        .add(const SQLiteEvent.initializeDatabase());
                    // }
                  },
                );
              },
            );
          },
          builder: (context, authState) {
            return BlocBuilder<LocalAuthBloc, LocalAuthState>(
                builder: (context, state) {
              if (state.fingerPrintStatus == FingerPrintStatus.disabled &&
                  state.appLock == AppLock.enabled) {
                final DateTime dateTimeNow = DateTime.now();
                final diff = dateTimeNow.difference(state.fetchedDateTime);
                print(diff.inSeconds);
                if (diff.inSeconds > state.timer) {
                  context.read<LocalAuthBloc>().add(
                        const LocalAuthEvent
                            .enableDisableFingerPrintAfterTimeout(
                          newStatus: FingerPrintStatus.enabled,
                        ),
                      );
                }
                context
                    .read<LocalAuthBloc>()
                    .add(const LocalAuthEvent.checkFingerprintStatus());
              } else {
                context
                    .read<LocalAuthBloc>()
                    .add(const LocalAuthEvent.checkFingerprintStatus());
              }
              return Scaffold(
                backgroundColor: Kolors.primary,
                body: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: logo,
                        height: 100,
                        width: 100,
                      ),
                      const SizedBoxH10(),
                      Text(
                        AppConstants.appName,
                        style: GoogleFonts.roboto(
                            color: Kolors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      // AppLogo(
                      //   size: 300,
                      // ),
                      const SizedBoxH30(),
                      const CircularProgressIndicator(
                        color: Kolors.white,
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        country!.flag,
                        package: countryCodePackageName,
                        width: 30,
                      ),
                      const SizedBoxW10(),
                      Text(
                        "Made in India",
                        style: GoogleFonts.roboto(
                          color: Kolors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            });
          },
        );
      },
    );
  }
}
