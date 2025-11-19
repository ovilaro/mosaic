import 'package:flutter/material.dart';

class AppStyles {
  static const Color blue = Color(0xFF3B82F6);
  static const Color veryDarkGrey = Color(0xFF212529);
  static const Color darkGrey = Color(0xFF2E2E2E);
  static const Color mediumGrey = Color(0xFF3A3A3A);
  static const Color lightGrey = Color(0xFF4A4A4A);
  static const Color veryLightGrey = Color(0xFF6C757D);
  static const Color veryDarkWhite = Color(0xFFBBBBBB);
  static const Color darkWhite = Color(0xFFDDDDDD);
  static const Color white = Color(0xFFFFFFFF);

  static const SizedBox sizedBox10 = SizedBox(width: 10, height: 10);
  static const SizedBox sizedBox20 = SizedBox(width: 20, height: 20);
  static const SizedBox sizedBox40 = SizedBox(width: 40, height: 40);

  static TextStyle appBarTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: darkGrey,
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: darkWhite,
    foregroundColor: darkGrey,
    titleTextStyle: appBarTitle,
    centerTitle: true,
  );

  static NavigationBarThemeData navigationBarThemeData = NavigationBarThemeData(
    backgroundColor: darkWhite,
    indicatorColor: blue,
    labelTextStyle: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return const TextStyle(color: darkGrey);
      }
      return const TextStyle(color: darkGrey);
    }),
    iconTheme: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return IconThemeData(color: white);
      }
      return IconThemeData(color: darkGrey);
    }),
  );

  static ThemeData themeData = ThemeData(
    appBarTheme: appBarTheme,
    navigationBarTheme: navigationBarThemeData,
  );

  static const String noCoverImgUrl =
      "https://vglist.co/packs/media/images/no-cover-369ad8f0ea82dde5923c942ba1a26482.png";
  static const String noThumbImgUrl =
      "https://icons.iconarchive.com/icons/pixelkit/gentle-edges/128/Game-Controller-icon.png";
}
