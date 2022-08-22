import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/language_data.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:flutter_template/domain/settings/i_settings_facade.dart';
import 'package:flutter_template/domain/settings/settings_failures.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:translator/translator.dart';

@LazySingleton(as: ISettingsFacade)
class SettingsFacade implements ISettingsFacade {
  @override
  Future<Either<SettingsFailure, ThemeMode>> changeAppThemeMode(
    ThemeMode mode,
  ) async {
    try {
      Storage()
          .secureStorage
          .write(key: StorageConstants.themeMode, value: mode.toString());
      debugPrint("Changed app theme mode ===> ${mode.toString()}");
      return right(mode);
    } catch (e) {
      return left(const SettingsFailure.themeChangeFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, Unit>> verifyFingerPrint() {
    // TODO: implement verifyFingerPrint
    throw UnimplementedError();
  }

  @override
  Future<Either<SettingsFailure, int>> changeAppFontSize(int fontSize) async {
    try {
      Storage()
          .secureStorage
          .write(key: StorageConstants.fontSize, value: fontSize.toString());
      debugPrint("Changed app font size ===> ${fontSize.toString()}");
      return right(fontSize);
    } catch (e) {
      return left(const SettingsFailure.themeChangeFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, Locale>> changeAppLocale(Locale locale) async {
    try {
      Storage()
          .secureStorage
          .write(key: StorageConstants.appLocale, value: locale.toString());
      debugPrint("Changed app locale ===> ${locale.toString()}");
      return right(locale);
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, int>> fetchAppFontSize() async {
    try {
      final readFontSize =
          await Storage().secureStorage.read(key: StorageConstants.fontSize);
      debugPrint("Read font size ===> $readFontSize");
      final int fontSize = int.tryParse(readFontSize ?? "12") ?? 12;
      return right(fontSize);
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, Locale>> fetchAppLocale() async {
    try {
      final readLocaleString =
          await Storage().secureStorage.read(key: StorageConstants.appLocale);
      debugPrint("Read app locale ===> $readLocaleString");
      if (readLocaleString != null) {
        final String langCode = readLocaleString.split("-")[0];
        final String countryCode = readLocaleString.split("-")[1];
        final readLocale = Locale.fromSubtags(
            languageCode: langCode, countryCode: countryCode);
        return right(readLocale);
      }
      return right(const Locale('en', 'US'));
    } catch (e) {
      return right(const Locale('en', 'US'));
    }
  }

  @override
  Future<Either<SettingsFailure, ThemeMode>> fetchAppThemeMode() async {
    try {
      final readThemeModeString =
          await Storage().secureStorage.read(key: StorageConstants.themeMode);
      debugPrint("Read theme mode ===> $readThemeModeString");
      if (readThemeModeString == ThemeMode.light.toString()) {
        return right(ThemeMode.light);
      } else if (readThemeModeString == ThemeMode.dark.toString()) {
        return right(ThemeMode.dark);
      }
      return right(ThemeMode.system);
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, Color>> setChatBackgroundColor(
      Wallpaper wallpaper) async {
    try {
      await Storage().secureStorage.write(
          key: StorageConstants.chatBackground, value: wallpaper.toString());

      debugPrint("Read chat background ===> ${wallpaper.toString()}");
      if (wallpaper == Wallpaper.black) {
        return right(Kolors.wallLightBlack);
      } else if (wallpaper == Wallpaper.blue) {
        return right(Kolors.wallLightBlue);
      } else if (wallpaper == Wallpaper.red) {
        return right(Kolors.wallLightRed);
      } else if (wallpaper == Wallpaper.green) {
        return right(Kolors.wallGreen);
      } else if (wallpaper == Wallpaper.pink) {
        return right(Kolors.wallPink);
      } else if (wallpaper == Wallpaper.yellow) {
        return right(Kolors.wallYellow);
      } else if (wallpaper == Wallpaper.darkGrey) {
        return right(Kolors.wallDarkGrey);
      } else if (wallpaper == Wallpaper.darkRed) {
        return right(Kolors.wallDarkRed);
      } else if (wallpaper == Wallpaper.darkBlue) {
        return right(Kolors.wallDarkBlue);
      }
      //defaultt,
      // blue,
      // black,
      // red,
      // green,
      // pink,
      // yellow,
      // darkGrey,
      // darkRed,
      // darkBlue,
      return right(Colors.white);
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, Color>> fetchChatBackgroundColor() async {
    try {
      final readThemeModeString = await Storage()
          .secureStorage
          .read(key: StorageConstants.chatBackground);
      debugPrint("Read theme mode ===> $readThemeModeString");
      if (readThemeModeString == Wallpaper.black.toString()) {
        return right(Colors.black);
      } else if (readThemeModeString == Wallpaper.blue.toString()) {
        return right(Colors.blue);
      } else if (readThemeModeString == Wallpaper.red.toString()) {
        return right(Colors.red);
      }
      return right(Colors.white);
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, dynamic>> setChatBackground(
    Wallpaper wallpaper,
    String imagePath,
  ) async {
    try {
      await Storage().secureStorage.write(
            key: StorageConstants.storageWallpaperPath,
            value: imagePath,
          );
      await Storage().secureStorage.write(
            key: StorageConstants.chatBackground,
            value: wallpaper.toString(),
          );

      debugPrint("Read chat background ===> ${wallpaper.toString()}");
      debugPrint("Read chat background ===> ${imagePath}");

      return right(wallpaper.toString());
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, String>> fetchChatBackgroundImage() async {
    try {
      final getBackgroundImage = await Storage()
          .secureStorage
          .read(key: StorageConstants.storageWallpaperPath);
      debugPrint("Read theme mode ===> $getBackgroundImage");

      return right(getBackgroundImage!);
    } catch (e) {
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, String>> fetchAzureLanguage() async {
    // var failure =
    //     const SettingsFailure.customError("Set app language Settigns");
    try {
      final result = await Storage()
          .secureStorage
          .read(key: AzureTranslationConstants.storageId);
      debugPrint("Read azureLan mode ===> $result");
      if (result != null) {
        return right(result);
      } else {
        return right("en");
      }
    } catch (e) {
      debugPrint("Read azureLan mode ===> ${e.toString()}");
      return right("en");
    }
  }

  @override
  Future<Either<SettingsFailure, String>> setAzureLanguage(String lang) async {
    try {
      await Storage()
          .secureStorage
          .write(key: AzureTranslationConstants.storageId, value: lang);
      debugPrint("Read azureLan mode ===> ${lang}");
      return right(lang);
    } catch (e) {
      // error code here
      return left(
          const SettingsFailure.customError("Set app language Settigns"));
    }
  }

  @override
  Future<Either<SettingsFailure, LanguageData>> fetchLanguageData() async {
    try {
      final result = await Storage()
          .secureStorage
          .read(key: AzureTranslationConstants.storageId);
      if (result != null) {
        final String response =
            await rootBundle.loadString('lang/$result.json');
        final LanguageData languageData = LanguageData.fromJson(response);
        return right(languageData);
      } else {
        final String response = await rootBundle.loadString('lang/en.json');
        final LanguageData languageData = LanguageData.fromJson(response);
        return right(languageData);
      }

      // print("printing result $result");
      // if (result != null) {
      //   if (result == 'en') {
      //     return right(languageData);
      //   }
      // } else {
      //   return right(languageData);
      // }
      // final Directory? directory = await getExternalStorageDirectory();
      // final File file = File('${directory!.path}/Translate.json');

      // if (await file.exists()) {
      //   print("printing String ${file.readAsStringSync()}");

      //   final translatedLanguageData = LanguageData.fromJson(
      //       json.decode(await file.readAsString()) as String);

      //   // await file.writeAsString(translatedLanguageData.toJson());
      //   return right(translatedLanguageData);
      // } else {

      // }
    } catch (e) {
      print("fetch language errror ==> ${e.toString()}");
      return left(const SettingsFailure.fetchSettingFailure());
    }
  }

  @override
  Future<Either<SettingsFailure, LanguageData>> setLanguageData({
    required String lang,
  }) async {
    // try {
    final translator = GoogleTranslator();
    final Map<String, String> translatedData = {};
    await Storage()
        .secureStorage
        .write(key: AzureTranslationConstants.storageId, value: lang);
    // await translateAllLanguage(text: 'Last Seen');
    final String response = await rootBundle.loadString('lang/$lang.json');
    print(jsonDecode(response));
    final LanguageData languageData = LanguageData.fromJson(response);
    print(languageData.toMap().length);
    // final directory = Directory('${LocalStorageConstant.appFolder}');
    // directory.createSync();
    // final File file = File('${LocalStorageConstant.appFolder}$lang.json');
    // file.createSync();
    // for (final data in languageData.toMap().entries) {
    //   final translation =
    //       await translator.translate(data.value as String, to: lang);
    //   print('"${data.key}": "$translation",');

    //   translatedData.addAll({data.key: translation.text});
    // }

    // await file.writeAsString(json.encode(translatedData));
    // languageData.toMap().forEach((key, value) async {
    //   // prints Hello. Are you okay?

    //   // prints exemplo
    // });
    print(translatedData.length);
    return right(languageData);
    // } catch (e) {
    //   Println("Printing tranlation erro ==>${e.toString()}");
    //   return left(const SettingsFailure.setLanguageFailure());
    // }
  }
}

Future translateAllLanguage({required String text}) async {
  final List<String> languages = [
    "as",
    "bn",
    "en",
    "gu",
    "hi",
    "kn",
    "ml",
    "mr",
    "pa",
    "ta",
    "te",
    "ur"
  ];
  for (final data in languages) {
    final trns = await Getters.getTranslation(
      languageCode: data,
      text: text,
    );
    print('\"$text\": \"$trns\"');
  }
}
