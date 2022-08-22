import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class DetailsPageEncryptionTile extends StatelessWidget {
  const DetailsPageEncryptionTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            titleTextStyle: const TextStyle(fontWeight: FontWeight.w400),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                    "${context.read<SettingsBloc>().state.languageData.learnMore}"),
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                child: Text(
                    "${context.read<SettingsBloc>().state.languageData.ok}"),
              ),
            ],
            title: Text(
              "${AppConstants.appName} ${context.read<SettingsBloc>().state.languageData.securesYourConversationsWithEndToEndEncryptionThisMeansYourMessagesCallsAndStatusUpdatesStayBetweenYouAndThePeopleYouChooseNotEven} ${AppConstants.appName} ${context.read<SettingsBloc>().state.languageData.canReadOrListenToThem}.",
            ),
          ),
        );
      },
      title:
          Text("${context.read<SettingsBloc>().state.languageData.encryption}"),
      subtitle: Text(
        "${context.read<SettingsBloc>().state.languageData.messagesAndCallsAreEndToEndEncryptedTap} \n ${context.read<SettingsBloc>().state.languageData.toLearnMore}",
      ),
      trailing: const Icon(Icons.lock),
    );
  }
}
