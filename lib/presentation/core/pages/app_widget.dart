import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_template/app_localizations.dart';
import 'package:flutter_template/application/SQLite/sqlite_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/application/broadcast/broadcast_bloc.dart';
import 'package:flutter_template/application/calls/call_log/call_log_bloc.dart';
import 'package:flutter_template/application/calls/call_screen/call_screen_bloc.dart';
import 'package:flutter_template/application/calls/calls_bloc.dart';
import 'package:flutter_template/application/chat_select/chat_select_bloc.dart';
import 'package:flutter_template/application/chats/chats_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/application/core/camera/camera_bloc.dart';
import 'package:flutter_template/application/filehandling/filehandling_bloc.dart';
import 'package:flutter_template/application/groups/groups_bloc.dart';
import 'package:flutter_template/application/list_and_grid/list_and_grid_bloc.dart';
import 'package:flutter_template/application/local_auth/local_auth_bloc.dart';
import 'package:flutter_template/application/message_select/message_select_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/application/stories/creator/ar/ar_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/caption/caption_text_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/file/file_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/freehand/freehand_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/giphy/giphy_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/recorder/video_recorder_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/trimmer/video_trimmer_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/video_player/video_player_for_story_cubit.dart';
import 'package:flutter_template/application/stories/creator/video_status/video_status_for_story_cubit.dart';
import 'package:flutter_template/application/stories/stories_bloc.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/audio_player.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/infrastructure/core/firebase_cloud_messaging.dart';
import 'package:flutter_template/injection.dart';
import 'package:flutter_template/presentation/core/theme/theme.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key}) : super(key: key);
  // static final GlobalKey<NavigatorState> navigatorKey =
  //     GlobalKey<NavigatorState>();

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appRouter = AppRouter();
  @override
  void initState() {
    // Only after at least the action method is set, the notification events are delivered

    AwesomeNotifications().setListeners(
      onActionReceivedMethod: FirebaseCloudMessaging.onActionReceivedMethod,
      onNotificationCreatedMethod:
          FirebaseCloudMessaging.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          FirebaseCloudMessaging.onNotificationDisplayedMethod,
      onDismissActionReceivedMethod:
          FirebaseCloudMessaging.onDismissActionReceivedMethod,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppAudioPlayer.loadSounds();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return getIt<ListAndGridBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<ChatSelectBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<MessageSelectBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<SQLiteBloc>();
            //  ..add(const SQLiteEvent.initializeDatabase());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<AuthBloc>()..add(const AuthEvent.checkAuthStatus());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<ContactsBloc>()
              ..add(ContactsEvent.fetchPhoneContacts(context: context))
              ..add(const ContactsEvent.fetchMyContacts())
              ..add(const ContactsEvent.storyContacts())
              // ..add(ContactsEvent.muteStories(
              //     FirebaseAuth.instance.currentUser!.uid))
              // ..add(ContactsEvent.unmutedStories(
              //     FirebaseAuth.instance.currentUser!.uid))
              ..add(const ContactsEvent.blockedContacts());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<StoriesBloc>()
              ..add(const StoriesEvent.getCurrentUserStory());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<UserBloc>()
              ..add(const UserEvent.getSignedInUser())
              ..add(const UserEvent.getActiveStatus());
          },
        ),

        BlocProvider(
          create: (context) {
            return getIt<CameraBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<GroupsBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<ChatsBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<BroadcastBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<SettingsBloc>()
              ..add(const SettingsEvent.fetchAppSettings())
              ..add(const SettingsEvent.fetchLanguageData())
              ..add(const SettingsEvent.fetchAzureLanguage());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<LocalAuthBloc>()
              ..add(const LocalAuthEvent.fetchAppLockTime())
              ..add(const LocalAuthEvent.fetchAppLockStatus())
              ..add(const LocalAuthEvent.fetchLastActiveSession())
              ..add(const LocalAuthEvent.checkFingerprintSupport());
            // ..add(const LocalAuthEvent.verifyFingerprint());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<StoriesBloc>();
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<FilehandlingBloc>()
              // ..add(const FilehandlingEvent.getUserFolderFromStorage())
              ..add(const FilehandlingEvent
                  .getEnableDisableSaveToGalleryStatus());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<CallsBloc>()..add(const CallsEvent.fetchAgoraToken());
          },
        ),
        // BlocProvider(
        //   create: (context) {
        //     return getIt<RecordingsBloc>();
        //   },
        // ),
        BlocProvider(create: (context) {
          return getIt<CallScreenBloc>();
        }),
        BlocProvider(create: (context) {
          return getIt<CallLogBloc>();
        }),
        // For Story Creator
        BlocProvider<ArForStoryCubit>(create: (context) {
          return getIt<ArForStoryCubit>();
        }),
        BlocProvider<CaptionTextForStoryCubit>(create: (context) {
          return getIt<CaptionTextForStoryCubit>();
        }),
        BlocProvider<FileForStoryCubit>(create: (context) {
          return getIt<FileForStoryCubit>();
        }),
        BlocProvider<FreehandForStoryCubit>(create: (context) {
          return getIt<FreehandForStoryCubit>();
        }),
        BlocProvider<GiphyForStoryCubit>(create: (context) {
          return getIt<GiphyForStoryCubit>();
        }),
        BlocProvider<VideoTrimmerForStoryCubit>(create: (context) {
          return getIt<VideoTrimmerForStoryCubit>();
        }),
        BlocProvider<VideoRecorderForStoryCubit>(create: (context) {
          return getIt<VideoRecorderForStoryCubit>();
        }),
        BlocProvider<VideoPlayerForStoryCubit>(create: (context) {
          return getIt<VideoPlayerForStoryCubit>();
        }),
        BlocProvider<VideoStatusForStoryCubit>(create: (context) {
          return getIt<VideoStatusForStoryCubit>();
        }),
      ],
      child: BlocBuilder<FilehandlingBloc, FilehandlingState>(
        builder: (context, state) {
          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return MaterialApp.router(
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
                title: AppConstants.appName,
                supportedLocales: AppConstants.supportedLocales,
                locale: const Locale('en'),
                useInheritedMediaQuery: true,
                // locale: DevicePreview.locale(context),
                builder: DevicePreview.appBuilder,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                localeResolutionCallback: (locale, supportedLocales) {
                  for (final supportedLocale in supportedLocales) {
                    if (supportedLocale.languageCode == locale!.languageCode &&
                        supportedLocale.countryCode == locale.countryCode) {
                      return supportedLocale;
                    }
                  }
                  return supportedLocales.first;
                },
                debugShowCheckedModeBanner: false,
                themeMode: state.appThemeMode,
                theme: AppThemeData.light,
                // theme: ThemeData(),
                darkTheme: AppThemeData.dark,

              );
            },
          );
        },
      ),
    );
  }
}
