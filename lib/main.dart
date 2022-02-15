import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mortage_app/ui/mortgage_app.dart';
import 'package:mortage_app/util/colors.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: _buildColorScheme(base.colorScheme),
    textTheme: _buildTextTheme(base.textTheme),
    sliderTheme: _buildSliderTheme(base.sliderTheme),
    primaryColor: primary,
    primaryColorLight: primaryLight,
    primaryColorDark: primaryDark,
  );
}

SliderThemeData _buildSliderTheme(SliderThemeData base) {
  return base.copyWith(
    activeTrackColor: primaryLight,
    activeTickMarkColor: primaryLight,
    inactiveTrackColor: secondaryLight,
    inactiveTickMarkColor: secondaryLight,
    thumbColor: primaryLight,
  );
}

ColorScheme _buildColorScheme(ColorScheme base) {
  return base.copyWith(
    primary: primary,
    primaryContainer: primaryDark,
    onPrimary: textOnPrimary,
    secondary: secondary,
    secondaryContainer: secondaryDark,
    onSecondary: textOnSecondary,
    tertiary: primaryLight,
    tertiaryContainer: secondaryLight,
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: GoogleFonts.poppins(
      fontSize: 93,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: secondaryDark,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 58,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: secondaryDark,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 46,
      fontWeight: FontWeight.w400,
      color: secondaryDark,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: secondaryDark,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 23,
      fontWeight: FontWeight.w400,
      color: secondaryDark,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: secondaryDark,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: secondaryDark,
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: secondaryDark,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: secondaryDark,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: secondaryDark,
    ),
    button: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: secondaryDark,
    ),
    caption: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: secondaryDark,
    ),
    overline: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: secondaryDark,
    ),
  );
}

void main() => runApp(MaterialApp(
      theme: _appTheme,
      home: MortgageApp(),
    ));
