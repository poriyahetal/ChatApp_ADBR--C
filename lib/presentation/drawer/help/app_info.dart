import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/onboarding/widgets/logo.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // color: Kolors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "${AppConstants.appName} Messenger",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Version ${AppConstants.appVersion}",
              style: TextStyle(
                fontSize: 22,
                color: Kolors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBoxH20(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.0),
              child: Image(
                image: AssetImage("assets/images/kahochat_tp.png"),
              ),
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.copyright_outlined,
                  color: Kolors.grey,
                ),
                SizedBoxW10(),
                Text(
                  "2021-2022 ${AppConstants.appName} Inc.",
                  style: TextStyle(
                    fontSize: 22,
                    color: Kolors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
