import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const Color lightBackgroundColor = Color(0xFFF3F2F8);
  static const Color darkBackgroundColor = Color(0xFF151313);
  static const Color lightAccentColor = Color(0xFFDD2D2D);
  static const Color darkAccentColor = Color(0xFFFCBCBA);
  static const Color greyColor = Color(0xFF8D8C8C);
  static const Color darkGreyColor = Color(0xFF515151);
  static const Color lightCardBackgroundColor = Colors.white;
  static const Color darkCardBackgroundColor = Color(0xFF222020);

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

  static final TextStyle labelLargeBold = poppinsTextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF151313),
  );

  static final TextStyle labelLarge = poppinsTextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w300,
    color: const Color(0xFF151313),
  );

  static final TextTheme lightTextTheme = TextTheme(
    bodySmall: bodySmallStyle,
    bodyMedium: bodyMediumStyle,
    bodyLarge: bodyLargeStyle,
    titleSmall: titleSmallStyle,
    titleMedium: titleMediumStyle,
    labelMedium: labelLarge,
    labelLarge: labelLargeBold,
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
      unselectedItemColor: darkGreyColor,
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: lightCardBackgroundColor,
        backgroundColor: darkBackgroundColor,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: bodyLargeBoldStyle,
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: lightAccentColor),
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: lightAccentColor,
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    bodySmall: bodySmallStyle.copyWith(color: Colors.white),
    bodyMedium: bodyMediumStyle.copyWith(color: Colors.white),
    bodyLarge: bodyLargeStyle.copyWith(color: Colors.white),
    titleSmall: titleSmallStyle.copyWith(color: Colors.white),
    titleMedium: titleMediumStyle.copyWith(color: Colors.white),
    labelMedium: labelLarge.copyWith(color: Colors.white),
    labelLarge: labelLargeBold.copyWith(color: Colors.white),
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
      backgroundColor: Color(0xFF0E0E0E),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0E0E0E),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: darkCardBackgroundColor,
        backgroundColor: lightBackgroundColor,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: bodyLargeBoldStyle,
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: darkAccentColor),
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: darkAccentColor,
    ),
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
