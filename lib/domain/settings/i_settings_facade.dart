import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/language_data.dart';
import 'package:flutter_template/domain/settings/settings_failures.dart';

abstract class ISettingsFacade {
  Future<Either<SettingsFailure, ThemeMode>> changeAppThemeMode(ThemeMode mode);
  Future<Either<SettingsFailure, Locale>> changeAppLocale(Locale locale);
  Future<Either<SettingsFailure, int>> changeAppFontSize(int fontSize);
  Future<Either<SettingsFailure, ThemeMode>> fetchAppThemeMode();
  Future<Either<SettingsFailure, Locale>> fetchAppLocale();
  Future<Either<SettingsFailure, int>> fetchAppFontSize();
  Future<Either<SettingsFailure, String>> setAzureLanguage(String lang);
  Future<Either<SettingsFailure, String>> fetchAzureLanguage();
  Future<Either<SettingsFailure, LanguageData>> fetchLanguageData();
  Future<Either<SettingsFailure, LanguageData>> setLanguageData(
      {required String lang});
  Future<Either<SettingsFailure, Color>> setChatBackgroundColor(
    Wallpaper wallpaper,
  );
  Future<Either<SettingsFailure, dynamic>> setChatBackground(
    Wallpaper wallpaper,
    String imagePath,
  );

  Future<Either<SettingsFailure, Color>> fetchChatBackgroundColor();
  Future<Either<SettingsFailure, String>> fetchChatBackgroundImage();
}
