import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const Color backgroundColor = Colors.white;

  static TextTheme textTheme = TextTheme(
    bodySmall: GoogleFonts.poppins(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );
  static ThemeData theme = ThemeData().copyWith(
    textTheme: textTheme,
  );
}
