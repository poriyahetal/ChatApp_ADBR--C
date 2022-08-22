// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/language_data.dart';
import 'package:flutter_template/domain/settings/i_settings_facade.dart';
import 'package:flutter_template/domain/settings/settings_failures.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._settingsFacade) : super(SettingsState.initial());
  final ISettingsFacade _settingsFacade;
  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      setAppFontSize: (e) async* {
        final result = await _settingsFacade.changeAppFontSize(e.fontSize);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
            fontSize: r,
            fontSizeEnum: r == 18
                ? Fontsize.eighteen
                : r == 14
                    ? Fontsize.fourteen
                    : Fontsize.sixteen,
          ),
        );
      },
      setAppLanguage: (e) async* {
        final result = await _settingsFacade.changeAppLocale(e.appLocale);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
            appLocale: r,
          ),
        );
      },
      setAppThemeMode: (e) async* {
        final result = await _settingsFacade.changeAppThemeMode(e.themeMode);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(
            appThemeMode: r,
          ),
        );
      },
      fetchAppSettings: (e) async* {
        final fontSize = await _settingsFacade.fetchAppFontSize();
        final appLocale = await _settingsFacade.fetchAppLocale();
        final themeMode = await _settingsFacade.fetchAppThemeMode();
        final chatBackgroundColor =
            await _settingsFacade.fetchChatBackgroundColor();
        final chatBackgroundImage =
            await _settingsFacade.fetchChatBackgroundImage();
        if (fontSize.isRight() &&
            appLocale.isRight() &&
            themeMode.isRight() &&
            chatBackgroundColor.isRight() &&
            chatBackgroundImage.isRight()) {
          yield state.copyWith(
            appLocale: appLocale.getOrElse(() => const Locale('en', 'US')),
            fontSize: fontSize.getOrElse(() => 12),
            appThemeMode: themeMode.getOrElse(() => ThemeMode.system),
            chatBackgroundColor:
                chatBackgroundColor.getOrElse(() => Colors.white),
            chatBackgroundImage: chatBackgroundImage.getOrElse(() => ''),
          );
        }
      },
      setChatWallpaper: (e) async* {
        final opt = await _settingsFacade.setChatBackgroundColor(e.wallpaper);

        yield opt.fold(
          (l) => state.copyWith(
            chatBackgroundWallpaper: state.chatBackgroundWallpaper,
            chatBackgroundColor: state.chatBackgroundColor,
          ),
          (color) => state.copyWith(
            chatBackgroundColor: color,
            chatBackgroundWallpaper: color == Kolors.wallLightBlack
                ? Wallpaper.black
                : color == Kolors.wallLightRed
                    ? Wallpaper.red
                    : color == Kolors.wallLightBlue
                        ? Wallpaper.blue
                        : color == Kolors.wallGreen
                            ? Wallpaper.green
                            : color == Kolors.wallPink
                                ? Wallpaper.pink
                                : color == Kolors.wallYellow
                                    ? Wallpaper.yellow
                                    : color == Kolors.wallDarkGrey
                                        ? Wallpaper.darkGrey
                                        : color == Kolors.wallDarkRed
                                            ? Wallpaper.darkRed
                                            : color == Kolors.wallDarkBlue
                                                ? Wallpaper.darkBlue
                                                : Wallpaper.defaultt,
          ),
        );
      },
      setChatWallpaperImage: (e) async* {
        final opt2 =
            await _settingsFacade.setChatBackground(e.wallpaper, e.imagePath);
        yield opt2.fold(
          (l) => state.copyWith(
            chatBackgroundWallpaper: state.chatBackgroundWallpaper,
            chatBackgroundColor: state.chatBackgroundColor,
          ),
          (r) => state.copyWith(
            chatBackgroundWallpaper: Wallpaper.image,
          ),
        );
      },
      fetchAzureLanguage: (value) async* {
        final result = await _settingsFacade.fetchAzureLanguage();
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(azureLang: r),
        );
      },
      setAzureLanguage: (value) async* {
        final result = await _settingsFacade.setAzureLanguage(value.lang);
        yield result.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(azureLang: r),
        );
      },
      fetchLanguageData: (_) async* {
        final result = await _settingsFacade.fetchLanguageData();
        yield result.fold(
            (failure) => state.copyWith(
                languageData: state.languageData,
                setLanguagefailureOrSuccess: some(left(failure))),
            (languageData) => state.copyWith(
                languageData: languageData,
                setLanguagefailureOrSuccess: some(right(unit))));
      },
      setLanguageData: (e) async* {
        final result = await _settingsFacade.setLanguageData(lang: e.language);
        yield result.fold(
            (failure) => state.copyWith(
                languageData: state.languageData,
                setLanguagefailureOrSuccess: some(left(failure))),
            (languageData) => state.copyWith(
                languageData: languageData,
                setLanguagefailureOrSuccess: some(right(unit))));
      },
    );
  }
}
