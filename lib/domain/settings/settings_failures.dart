import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failures.freezed.dart';

@freezed
class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.themeChangeFailure() = ThemeChangeFailure;
  const factory SettingsFailure.fetchSettingFailure() = FetchSettingFailure;
  const factory SettingsFailure.setLanguageFailure() = SetLanguageFailure;
  const factory SettingsFailure.customError(String error) = CustomError;
}
