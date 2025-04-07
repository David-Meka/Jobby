import 'package:flutter/material.dart';
import 'package:jobby/core/constants/app_colors.dart';
// import 'app_colors.dart'; // Import the AppColors class

class AppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enables Material 3 for the app
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryLight,
      secondary: AppColors.accentLight,
      // background: AppColors.backgroundLight,
      surface: Colors.white,
      onSurface: AppColors.primaryTextLight,
      // onBackground: AppColors.primaryTextLight,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.primaryTextLight),
      bodyLarge: TextStyle(color: AppColors.secondaryTextLight),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.accentLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24), // Rounded corners
      ),
      textTheme: ButtonTextTheme.primary,
    ),
    cardTheme: CardTheme(
      elevation: 4, // Slight shadow for cards
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryLight,
      titleTextStyle: TextStyle(color: Colors.white),
      elevation: 0,
    ),
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true, // Enables Material 3 for the app
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.accentDark,
      // background: AppColors.backgroundDark,
      surface: AppColors.backgroundDark,
      onSurface: AppColors.primaryTextDark,
      // onBackground: AppColors.primaryTextDark,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.primaryTextDark),
      bodyLarge: TextStyle(color: AppColors.secondaryTextDark),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.accentDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24), // Rounded corners
      ),
      textTheme: ButtonTextTheme.primary,
    ),
    cardTheme: CardTheme(
      elevation: 0, // No shadow for cards in dark mode
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryLight,
      titleTextStyle: TextStyle(color: Colors.white),
      elevation: 0,
    ),
  );
}
