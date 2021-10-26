import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DogTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black),
    headline1: GoogleFonts.openSans(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: GoogleFonts.openSans(
        fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.black),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline1: GoogleFonts.openSans(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: GoogleFonts.openSans(
        fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
  );

  static light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.green,
        secondary: Colors.greenAccent,
        brightness: Brightness.light,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Colors.orange,
      ),
      textTheme: lightTextTheme,
    );
  }

  static dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green[300],
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.green,
        secondary: Colors.greenAccent,
        brightness: Brightness.dark,
      ),
      textTheme: darkTextTheme,
    );
  }
}
