import 'dart:ui';

class AppConstants {
  static const String appName = "KahoChat";
  static const String appVersion = "1.0.8";
  static const String playStoreLink =
      "https://play.google.com/store/apps/details?id=com.chat.kahochat";
  static const String inviteText =
      "Let's chat on $appName! It's a fast, simple and secure app we can use to message and call each other for free. Get it at $playStoreLink";
  static const String dummyProfilePictureUrl =
      "https://www.worldfuturecouncil.org/wp-content/uploads/2020/02/dummy-profile-pic-300x300-1.png";
  static const String dummyImageUrl =
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg";
  static const String broadcastIcon =
      "https://thumbs.dreamstime.com/b/broadcast-tower-icon-white-background-illustration-broadcast-tower-icon-white-background-107413343.jpg";
  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('hi'),
  ];
  static const String callerTuneUri = "ringtone.mp3";
  static const String ringtoneUri = "ring.mp3";
  static const String dialertoneUri = "dialertone.mp3";
}

class MessageTableContent {
  static const String dbName = 'message.db';
}

class StorageConstants {
  static const String themeMode = 'theme_mode';
  static const String inActiveSession = 'inactive_session';
  static const String chatBackground = 'chat_background';
  static const String lockTime = 'lock_time';
  static const String appLock = 'app_lock';
  static const String fontSize = 'font_size';
  static const String appLocale = 'app_locale';
  static const String fingerPrintSupport = 'fingerpring_support';
  static const String fingerPrintStatus = 'fingerpring_enable';
  static const String enableSaveFileToGallery = 'enableSaveFileToGallery';
  static const String storageWallpaperPath = 'storageWallpaperPath';
  static const String lastCallId = 'last_call_id';
  static const String lastCallStatus = 'last_call_status';
}

class LocalStorageConstant {
  static const appFolder = "/storage/emulated/0/Download/KahoChat/";
  static const videos = "/Videos/";
  static const audio = "/Audio/";
  static const images = "/Images/";
  static const profilePictureImages = "/KahoChat Profile picture/";
  static const stories = "/Stories/";
  static const document = "/documents/";
  static const cameraImages = "/Gif/";
  static const wallpaper = "wallpaper";
  static const callRecording =
      "/storage/emulated/0/Download/KahoChat call recording/";
}

class ApiConstants {
  // static const String agoraAppId = "2555301e70984452abc6f0095fbeaff2";
  static const String agoraAppId = "2555301e70984452abc6f0095fbeaff2";
  // static const String agoraAppToken =
  //     "006e68bb25ef9aa4fef859757337fdf34f4IACPemouuwUus4fxVY7RzZIDecB8jZAGu6SNIG1l+aIVtcqFUwsAAAAAEAAxc9bWbB8FYgEAAQBtHwVi";
}

class AzureTranslationConstants {
  static const String storageId = "AzureStorageId";
  static const String token =
      "https://adbrtranslator22.cognitiveservices.azure.com/";
  static const String subscriptionKey = "eb436aca04034f87bffcbc6fe8ca5047";
  static const String endPoint =
      "https://api.cognitive.microsofttranslator.com/";
  static const String region = "centralindia";

  static const Map<String, String> languages = {
    "English": "en",
    "Hindi": "hi",
    "Tamil": "ta",
    "Bangla": "bn",
    "Marathi": "mr",
    "Telugu": "te",
    "Gujarati": "gu",
    "Punjabi": "pa",
    "Malayalam": "ml",
    "Kannada": "kn",
    "Assamese": "as",
    "Urdu": "ur",
  };
}

class NotificationConstants {
  static const String chatsMute = "chat_mute";
  static const String groupsMute = "groups_mute";
  static const String customChatsNotificationTone =
      "custom_chats_notification_tone";
  static const String customGroupsNotificationTone =
      "custom_groups_notification_tone";
  static const String customCallsNotificationTone =
      "custom_calls_notification_tone";
  static const String chatsNotificationToneType =
      "chats_notification_tone_type";
  static const String groupsNotificationToneType =
      "groups_notification_tone_type";
  static const String callsNotificationToneType =
      "calls_notification_tone_type";
  static const String chatsCustomNotificationPath =
      "chats_custom_notification_path";
  static const String groupsCustomNotificationPath =
      "groups_custom_notification_path";
  static const String callsCustomNotificationPath =
      "calls_custom_notification_path";
  static const String chatsVibrationDuration = "chats_vibration_duration";
  static const String groupsVibrationDuration = "groups_vibration_duration";
  static const String callsVibrationDuration = "calls_vibration_duration";
}

class ColorMatrixConstants {
  static const List<double> noFilter = <double>[
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0
  ];

  static const List<double> grayScale = <double>[
    0,
    1,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    1,
    0,
    1,
    0
  ];

  static const List<double> sepium = <double>[
    1.3,
    -0.3,
    1.1,
    0,
    0,
    0,
    1.3,
    0.2,
    0,
    0,
    0,
    0,
    0.8,
    0.2,
    0,
    0,
    0,
    0,
    1,
    0
  ];

  static const List<double> oldTimes = <double>[
    1,
    0,
    0,
    0,
    0,
    -0.4,
    1.3,
    -0.4,
    0.2,
    -0.1,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0
  ];

  static const List<double> purple = <double>[
    1,
    -0.2,
    0,
    0,
    0,
    0,
    1,
    0,
    -0.1,
    0,
    0,
    1.2,
    1,
    0.1,
    0,
    0,
    0,
    1.7,
    1,
    0
  ];
}
