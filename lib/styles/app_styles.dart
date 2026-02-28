import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _AppPalette {
  const _AppPalette({
    required this.veryDarkGrey,
    required this.veryDarkGreyAlpha,
    required this.darkGrey,
    required this.mediumGrey,
    required this.lightGrey,
    required this.veryLightGrey,
    required this.veryDarkWhite,
    required this.darkWhite,
    required this.scaffoldBackground,
  });

  final Color veryDarkGrey;
  final Color veryDarkGreyAlpha;
  final Color darkGrey;
  final Color mediumGrey;
  final Color lightGrey;
  final Color veryLightGrey;
  final Color veryDarkWhite;
  final Color darkWhite;
  final Color scaffoldBackground;
}

class AppStyles {
  static const Color blue = Color(0xFF3B82F6);
  static const Color white = Color(0xFFFFFFFF);

  static const _AppPalette _lightPalette = _AppPalette(
    veryDarkGrey: Color(0xFF212529),
    veryDarkGreyAlpha: Color(0x99212529),
    darkGrey: Color(0xFF2E2E2E),
    mediumGrey: Color(0xFF3A3A3A),
    lightGrey: Color(0xFF4A4A4A),
    veryLightGrey: Color(0xFF6C757D),
    veryDarkWhite: Color(0xFFBBBBBB),
    darkWhite: Color(0xFFDDDDDD),
    scaffoldBackground: Color(0xFFFFFFFF),
  );

  static const _AppPalette _darkPalette = _AppPalette(
    veryDarkGrey: Color(0xFFF1F1F1),
    veryDarkGreyAlpha: Color(0x99F1F1F1),
    darkGrey: Color(0xFFE0E0E0),
    mediumGrey: Color(0xFFCFCFCF),
    lightGrey: Color(0xFFBDBDBD),
    veryLightGrey: Color(0xFF8F8F8F),
    veryDarkWhite: Color(0xFF707070),
    darkWhite: Color(0xFF1F1F1F),
    scaffoldBackground: Color(0xFF121212),
  );

  static _AppPalette _palette = _lightPalette;

  static void applyBrightness(Brightness brightness) {
    _palette = brightness == Brightness.dark ? _darkPalette : _lightPalette;
  }

  static Color get veryDarkGrey => _palette.veryDarkGrey;
  static Color get veryDarkGreyAlpha => _palette.veryDarkGreyAlpha;
  static Color get darkGrey => _palette.darkGrey;
  static Color get mediumGrey => _palette.mediumGrey;
  static Color get lightGrey => _palette.lightGrey;
  static Color get veryLightGrey => _palette.veryLightGrey;
  static Color get veryDarkWhite => _palette.veryDarkWhite;
  static Color get darkWhite => _palette.darkWhite;
  static Color get scaffoldBackground => _palette.scaffoldBackground;

  static const SizedBox sizedBox10 = SizedBox(width: 10, height: 10);
  static const SizedBox sizedBox20 = SizedBox(width: 20, height: 20);
  static const SizedBox sizedBox40 = SizedBox(width: 40, height: 40);

  static TextStyle get h1 => TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: veryDarkGrey,
  );

  static TextStyle get h2 => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static TextStyle get h3 => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: mediumGrey,
  );

  static TextStyle get normalPrimary => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: lightGrey,
  );

  static TextStyle get normalSecundary => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: veryLightGrey,
  );

  static TextStyle get normalTertiary => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: darkWhite,
  );

  static TextStyle get buttonsActions => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: darkGrey,
  );

  static ButtonStyle get segmentedStyle => ButtonStyle(
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
      return darkWhite;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return white;
      }
      return darkGrey;
    }),
  );

  static ButtonStyle get buttonStyle => ButtonStyle(
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

  static ButtonStyle get buttonStyleWarning => ButtonStyle(
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

  static ThemeData get themeData => _buildThemeData(Brightness.light);
  static ThemeData get darkThemeData => _buildThemeData(Brightness.dark);

  static ThemeData _buildThemeData(Brightness brightness) {
    final palette = brightness == Brightness.dark
        ? _darkPalette
        : _lightPalette;
    final titleColor = palette.darkGrey;

    return ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: palette.scaffoldBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: blue,
        brightness: brightness,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: palette.darkWhite,
        foregroundColor: palette.darkGrey,
        titleTextStyle: h2.copyWith(color: titleColor),
        centerTitle: true,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: palette.darkWhite,
        indicatorColor: blue,
        labelTextStyle: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return buttonsActions.copyWith(color: palette.darkGrey);
          }
          return normalPrimary.copyWith(color: palette.darkGrey);
        }),
        iconTheme: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return const IconThemeData(color: white);
          }
          return IconThemeData(color: palette.darkGrey);
        }),
      ),
      fontFamily: GoogleFonts.inter().fontFamily,
    );
  }

  static const String coverPlaceholderPath =
      'assets/placeholders/cover_placeholder.jpg';
  static const String thumbPlaceholderPath =
      'assets/placeholders/thumb_placeholder.png';

  static const Image coverPlaceholderImage = Image(
    image: AssetImage(coverPlaceholderPath),
  );
  static final Image thumbPlaceholderImage = Image(
    width: thumbSizeWidth,
    height: thumbSizeHeight,
    image: AssetImage(thumbPlaceholderPath),
  );

  static const double thumbSizeWidth = 60;
  static const double thumbSizeHeight = 60;
}
