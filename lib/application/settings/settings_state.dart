part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required ThemeMode appThemeMode,
    required Locale appLocale,
    required int fontSize,
    required Fontsize fontSizeEnum,
    required Wallpaper chatBackgroundWallpaper,
    required Color chatBackgroundColor,
    required String chatBackgroundImage,
    required String azureLang,
    required LanguageData languageData,
    required Option<Either<SettingsFailure, Unit>> setLanguagefailureOrSuccess,
  }) = _SettingsState;
  factory SettingsState.initial() => SettingsState(
        appThemeMode: ThemeMode.system,
        fontSize: 16,
        appLocale: Locale('en', 'US'),
        fontSizeEnum: Fontsize.sixteen,
        chatBackgroundWallpaper: Wallpaper.defaultt,
        chatBackgroundColor: Kolors.wallWhite,
        chatBackgroundImage: '',
        azureLang: "en",
        languageData: LanguageData.empty(),
        setLanguagefailureOrSuccess: none(),
      );
}
