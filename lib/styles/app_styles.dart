import 'package:flutter/material.dart';

class AppStyles {
  static const Color blue = Color(0xFF3B82F6);
  static const Color veryDarkGrey = Color(0xFF212529);
  static const Color darkGrey = Color(0xFF2E2E2E);
  static const Color mediumGrey = Color(0xFF3A3A3A);
  static const Color lightGrey = Color(0xFF4A4A4A);
  static const Color veryLightGrey = Color(0xFF6C757D);
  static const Color white = Color(0xFFFFFFFF);

  static TextStyle appBarTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: white,
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: lightGrey,
    foregroundColor: white,
    titleTextStyle: appBarTitle,
    centerTitle: true,
  );

  static NavigationBarThemeData navigationBarThemeData = NavigationBarThemeData(
    backgroundColor: AppStyles.veryLightGrey,
    indicatorColor: AppStyles.blue,
    labelTextStyle: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return const TextStyle(color: white);
      }
      return const TextStyle(color: white);
    }),
    iconTheme: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return IconThemeData(color: white);
      }
      return IconThemeData(color: white);
    }),
  );

  static ThemeData themeData = ThemeData(
    appBarTheme: AppStyles.appBarTheme,
    navigationBarTheme: navigationBarThemeData,
  );
}
