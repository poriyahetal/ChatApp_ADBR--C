part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.fetchAppSettings() = _FetchAppSettings;
  const factory SettingsEvent.setAppThemeMode(ThemeMode themeMode) =
      _SetAppThemeMode;
  const factory SettingsEvent.setAppLanguage(Locale appLocale) =
      _SetAppLanguage;
  const factory SettingsEvent.setAzureLanguage(String lang) = _SetAzureLanguage;
  const factory SettingsEvent.fetchAzureLanguage() = _FetchAzureLanguage;
  const factory SettingsEvent.setAppFontSize(int fontSize) = _SetAppFontSize;
  const factory SettingsEvent.setChatWallpaper({required Wallpaper wallpaper}) =
      _SetChatWallpaper;
  const factory SettingsEvent.setChatWallpaperImage({
    required Wallpaper wallpaper,
    required String imagePath,
  }) = _SetChatWallpaperImage;
    const factory SettingsEvent.fetchLanguageData() = _FetchLanguageData;
    const factory SettingsEvent.setLanguageData({required String language}) = _SetLanguageData;
}
