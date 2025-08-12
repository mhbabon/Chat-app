import 'package:chatapp/domain/constrains/appcolors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  /// Light theme
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldLight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonLightMode,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.textLightMode),
      bodyMedium: TextStyle(color: AppColors.textLightMode),
      bodySmall: TextStyle(color: AppColors.textLightMode),
    ),
  );

  /// Dark theme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonDarkMode,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.textDarkMode),
      bodyMedium: TextStyle(color: AppColors.textDarkMode),
      bodySmall: TextStyle(color: AppColors.textDarkMode),
    ),
  );
}
