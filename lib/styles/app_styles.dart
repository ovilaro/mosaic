import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static const Color blue = Color(0xFF3B82F6);
  static const Color veryDarkGrey = Color(0xFF212529);
  static const Color veryDarkGreyAlpha = Color(0x99212529);
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

  static TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: veryDarkGrey,
  );

  static TextStyle h2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: mediumGrey,
  );

  static TextStyle normalPrimary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: lightGrey,
  );

  static TextStyle normalSecundary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: veryLightGrey,
  );

  static TextStyle normalTertiary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: darkWhite,
  );

  static TextStyle buttonsActions = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static ButtonStyle segmentedStyle = ButtonStyle(
    textStyle: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return buttonsActions.copyWith(color: white);
      }
      return buttonsActions.copyWith(color: darkGrey);
    }),
    backgroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return blue;
      }
      return white;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return white;
      }
      return darkGrey;
    }),
  );

  static ButtonStyle buttonStyle = ButtonStyle(
    textStyle: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return buttonsActions.copyWith(color: white);
      }
      return buttonsActions.copyWith(color: white);
    }),
    backgroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return blue;
      }
      return blue;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return white;
      }
      return white;
    }),
  );

  static ButtonStyle buttonStyleWarning = ButtonStyle(
    textStyle: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return buttonsActions.copyWith(color: white);
      }
      return buttonsActions.copyWith(color: white);
    }),
    backgroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.red;
      }
      return Colors.red;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return white;
      }
      return white;
    }),
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: darkWhite,
    foregroundColor: darkGrey,
    titleTextStyle: h2,
    centerTitle: true,
  );

  static NavigationBarThemeData navigationBarThemeData = NavigationBarThemeData(
    backgroundColor: darkWhite,
    indicatorColor: blue,
    labelTextStyle: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return buttonsActions.copyWith(color: darkGrey);
      }
      return normalPrimary.copyWith(color: darkGrey);
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
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static const String noCoverImgUrl =
      "https://nhasachminhthang.vn/Content/Home/imgs/image-placeholder.jpg";

  static const String noThumbImgUrl =
      "https://www.kerbalspaceprogram.de/gallery/images/galleryTinyPlaceholder.png";
}
