import 'package:flutter/material.dart';

import 'colors.dart';

///Class responsable for theme of all app
class AppTheme {
  AppTheme._();

  ///Theme default of app
  static ThemeData themeData() {
    const textDefault = TextStyle(color: ColorsApp.textColor);

    return ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: ColorsApp.textColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      fontFamily: 'Quantico',
      textTheme: const TextTheme(
        bodyLarge: textDefault,
        bodyMedium: textDefault,
        bodySmall: textDefault,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: ColorsApp.borderColor),
          backgroundColor: Colors.transparent,
          foregroundColor: ColorsApp.textColor,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
      ),
    );
  }
}
