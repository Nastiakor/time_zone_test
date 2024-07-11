import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const Color primaryColor = Colors.red;
  static const Color lightBackgroundColor = Colors.white;
  static const Color darkBackgroundColor = Colors.black;

  static TextTheme textTheme = TextTheme(
    bodySmall: GoogleFonts.poppins(
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    textTheme: textTheme.copyWith(
      bodySmall: textTheme.bodySmall?.copyWith(color: Colors.black),
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ),
  );
  static final ThemeData darkTheme = ThemeData().copyWith(
    textTheme: textTheme.copyWith(
      bodySmall: textTheme.bodySmall?.copyWith(color: Colors.white),
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
    ),
  );
}
