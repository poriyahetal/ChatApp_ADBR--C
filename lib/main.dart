import 'dart:typed_data';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/infrastructure/core/firebase_cloud_messaging.dart';
import 'package:flutter_template/injection.dart';
import 'package:flutter_template/presentation/core/pages/app_widget.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

late Box hiveBox;

Future<void> main() async {
  await Hive.initFlutter();
  hiveBox = await Hive.openBox('readUnreadBox');
  // print(MediaQuery.of(context).size.width);
  // print(Get.height);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(
    FirebaseCloudMessaging.firebaseMessageHandler,
  );
  // FirebaseMessaging.onMessage
  //     .listen(FirebaseCloudMessaging.firebaseMessageHandler);
  Int64List chatVibrationPattern;
  Int64List callVibrationPattern;
  Int64List groupVibrationPattern;

  //set chat vibration
  final chatVibration = await Storage()
      .secureStorage
      .read(key: NotificationConstants.chatsVibrationDuration);
  if (chatVibration == NotificationVibrationDuration.long.toString()) {
    chatVibrationPattern = highVibrationPattern;
  } else if (chatVibration == NotificationVibrationDuration.medium.toString()) {
    chatVibrationPattern = mediumVibrationPattern;
  } else {
    chatVibrationPattern = lowVibrationPattern;
  }

  //set call vibration
  final callVibration = await Storage()
      .secureStorage
      .read(key: NotificationConstants.callsVibrationDuration);
  if (callVibration == NotificationVibrationDuration.long.toString()) {
    callVibrationPattern = highVibrationPattern;
  } else if (callVibration == NotificationVibrationDuration.medium.toString()) {
    // return right(NotificationVibrationDuration.medium);
    callVibrationPattern = mediumVibrationPattern;
  } else {
    callVibrationPattern = lowVibrationPattern;
  }

  //set group vibration
  final groupVibration = await Storage()
      .secureStorage
      .read(key: NotificationConstants.groupsVibrationDuration);
  if (groupVibration == NotificationVibrationDuration.long.toString()) {
    groupVibrationPattern = highVibrationPattern;
  } else if (groupVibration ==
      NotificationVibrationDuration.medium.toString()) {
    groupVibrationPattern = mediumVibrationPattern;
  } else {
    groupVibrationPattern = lowVibrationPattern;
  }
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
    'resource://drawable/notification_icon',
    [
      NotificationChannel(
        channelKey: 'messaging',
        channelName: 'Messaging',
        channelDescription: 'Notification channel for messages',
        defaultColor: Kolors.primary,
        channelShowBadge: true,
        ledColor: Colors.white,
        soundSource: 'resource://raw/res_ring',
        playSound: true,
        importance: NotificationImportance.High,
        enableVibration: true,
        vibrationPattern: chatVibrationPattern,
      ),
      NotificationChannel(
        channelKey: 'groupMessaging',
        channelName: 'groupMessaging',
        channelGroupKey: "groupMessaging",
        channelDescription: 'Notification channel for groupchat mess ging',
        defaultColor: Kolors.primary,
        channelShowBadge: true,
        ledColor: Colors.white,
        importance: NotificationImportance.High,
        soundSource: 'resource://raw/res_ring',
        playSound: true,
        enableVibration: true,
        vibrationPattern: groupVibrationPattern,
      ),
      NotificationChannel(
        channelKey: "invite",
        channelName: "invite",
        channelDescription: "Notification for friend invite",
        defaultColor: Kolors.primary,
        channelShowBadge: true,
        ledColor: Colors.white,
        importance: NotificationImportance.High,
        soundSource: 'resource://raw/res_ring',
        playSound: true,
        vibrationPattern: chatVibrationPattern,
        enableVibration: true,
      ),
      NotificationChannel(
        locked: true,
        channelKey: 'calls',
        channelName: 'Calls notification',
        channelDescription: 'Notification channel for calls',
        defaultColor: Kolors.primary,
        ledColor: Colors.white,
        importance: NotificationImportance.Max,
        channelShowBadge: true,
        playSound: false,
        vibrationPattern: callVibrationPattern,
        enableVibration: true,
      ),
      NotificationChannel(
        channelKey: 'stories',
        channelName: 'stories',
        channelDescription: 'Notification channel for stories',
        defaultColor: Kolors.primary,
        channelShowBadge: true,
        ledColor: Colors.white,
        importance: NotificationImportance.Default,
        playSound: false,
        vibrationPattern: chatVibrationPattern,
        enableVibration: true,
      ),
      NotificationChannel(
        channelKey: 'story',
        channelName: 'story',
        channelDescription: 'Notification channel for stories',
        defaultColor: Kolors.primary,
        channelShowBadge: true,
        ledColor: Colors.white,
        importance: NotificationImportance.Default,
        playSound: false,
        vibrationPattern: chatVibrationPattern,
        enableVibration: true,
      ),
      NotificationChannel(
        channelKey: 'availability',
        channelName: 'availability',
        channelDescription: 'Notification channel for availability',
        defaultColor: Kolors.primary,
        channelShowBadge: true,
        ledColor: Colors.white,
        importance: NotificationImportance.Default,
        playSound: false,
        vibrationPattern: chatVibrationPattern,
        enableVibration: true,
      ),
    ],
    channelGroups: [
      NotificationChannelGroup(
          channelGroupKey: 'groupMessaging', channelGroupName: 'groupMessaging')
    ],
  );

  FirebaseDatabase.instance.setPersistenceEnabled(true);
  FirebaseFirestore.instance.settings.persistenceEnabled;
  FirebaseFirestore.instance.settings = const Settings(
      persistenceEnabled: true, cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  FirebaseDatabase.instance.app.setAutomaticDataCollectionEnabled(true);
  // TODO: add or remove properly in future
  // final FirebaseAppCheck appCheck = FirebaseAppCheck.instance;
  // await appCheck.activate(
  //   webRecaptchaSiteKey: 'recaptcha-v3-site-key',
  // );
  // await appCheck.setTokenAutoRefreshEnabled(true);
  configureInjection(Environment.prod);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(
      // ScreenUtilInit(
      //   designSize: const Size(360, 690),
      //   minTextAdapt: true,
      //   splitScreenMode: true,
      //   builder: (context , child) {
      //     return RootRestorationScope(
      //       restorationId: 'root',
      //       child: AppWidget(),
      //       //child: MyApp(),
      //     );
      //   },
      //
      // )

    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => RootRestorationScope(
    //     restorationId: 'root',
    //     child: AppWidget(),
    //     //child: MyApp(),
    //   ), // Wrap your app
    // ),
      RootRestorationScope(
        restorationId: 'root',
        child: AppWidget(),
        //child: MyApp(),
      )
  );
}
