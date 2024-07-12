import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const Color lightBackgroundColor = Colors.white;
  static const Color darkBackgroundColor = Colors.black;
  static const Color lightAccentColor = Color(0xFFDD2D2D);
  static const Color darkAccentColor = Color(0xFFFCBCBA);
  static const Color greyColor = Color(0xFF515151);

  static TextStyle poppinsTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static final TextStyle bodySmallStyle = poppinsTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: const Color(0xFF151313),
  );

  static final TextStyle bodyMediumStyle = poppinsTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF151313),
  );

  static final TextStyle bodyLargeStyle = poppinsTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF151313),
  );

  static final TextStyle bodyLargeRedStyleLight = poppinsTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: lightAccentColor,
  );

  static final TextStyle bodyLargeRedStyleDark = poppinsTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: darkAccentColor,
  );

  static final TextStyle bodyLargeBoldStyle = poppinsTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF151313),
  );

  static final TextStyle titleSmallStyle = poppinsTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF2A2828),
  );

  static final TextStyle titleMediumStyle = poppinsTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF151313),
  );

  static final TextTheme lightTextTheme = TextTheme(
    bodySmall: bodySmallStyle,
    bodyMedium: bodyMediumStyle,
    bodyLarge: bodyLargeStyle,
    titleSmall: titleSmallStyle,
    titleMedium: titleMediumStyle,
  );

  static final ThemeData lightTheme = ThemeData(
    textTheme: lightTextTheme,
    scaffoldBackgroundColor: lightBackgroundColor,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
    ).copyWith(
      secondary: lightAccentColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: lightAccentColor,
      unselectedItemColor: greyColor,
      backgroundColor: lightBackgroundColor,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: lightBackgroundColor),
  );

  static final TextTheme darkTextTheme = TextTheme(
    bodySmall: bodySmallStyle.copyWith(color: Colors.white),
    bodyMedium: bodyMediumStyle.copyWith(color: Colors.white),
    bodyLarge: bodyLargeStyle.copyWith(color: Colors.white),
    titleSmall: titleSmallStyle.copyWith(color: Colors.white),
    titleMedium: titleMediumStyle.copyWith(color: Colors.white),
  ).apply(
    displayColor: Colors.white,
    bodyColor: Colors.white,
  );

  static final ThemeData darkTheme = ThemeData(
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: darkBackgroundColor,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
    ).copyWith(
      secondary: darkAccentColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: darkAccentColor,
      unselectedItemColor: greyColor,
      backgroundColor: darkBackgroundColor,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: darkBackgroundColor),
  );
}

extension CustomTextStyles on TextTheme {
  TextStyle bodyLargeRed(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark
        ? AppTheme.bodyLargeRedStyleDark
        : AppTheme.bodyLargeRedStyleLight;
  }

  TextStyle bodyLargeBold(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return AppTheme.bodyLargeBoldStyle.copyWith(
      color: brightness == Brightness.dark
          ? Colors.white
          : AppTheme.bodyLargeBoldStyle.color,
    );
  }
}
