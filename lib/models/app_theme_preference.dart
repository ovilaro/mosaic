import 'package:flutter/material.dart';

enum AppThemePreference { white, black, device }

extension AppThemePreferenceX on AppThemePreference {
  String get storageValue {
    switch (this) {
      case AppThemePreference.white:
        return "white";
      case AppThemePreference.black:
        return "black";
      case AppThemePreference.device:
        return "device";
    }
  }

  ThemeMode get themeMode {
    switch (this) {
      case AppThemePreference.white:
        return ThemeMode.light;
      case AppThemePreference.black:
        return ThemeMode.dark;
      case AppThemePreference.device:
        return ThemeMode.system;
    }
  }

  Brightness resolveBrightness(Brightness deviceBrightness) {
    switch (this) {
      case AppThemePreference.white:
        return Brightness.light;
      case AppThemePreference.black:
        return Brightness.dark;
      case AppThemePreference.device:
        return deviceBrightness;
    }
  }

  static AppThemePreference fromStorageValue(String? value) {
    switch (value) {
      case "white":
        return AppThemePreference.white;
      case "black":
        return AppThemePreference.black;
      case "device":
      default:
        return AppThemePreference.device;
    }
  }
}
