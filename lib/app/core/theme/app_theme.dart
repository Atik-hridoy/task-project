import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightPrimary,
      secondary: AppColors.lightSecondary,
      surface: AppColors.lightSurface,
      error: AppColors.lightError,
      onPrimary: AppColors.lightOnPrimary,
      onSecondary: AppColors.lightOnPrimary,
      onSurface: AppColors.lightOnSurface,
      onError: AppColors.lightOnPrimary,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      foregroundColor: AppColors.lightOnPrimary,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppColors.lightTextPrimary,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: AppColors.lightTextPrimary,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.lightTextPrimary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.lightTextPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        color: AppColors.lightTextPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.lightTextPrimary,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.lightTextSecondary,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColors.lightTextSecondary,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.lightSurface,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.lightOnPrimary,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightSurface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.lightPrimary, width: 2),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkPrimary,
      secondary: AppColors.darkSecondary,
      surface: AppColors.darkSurface,
      error: AppColors.darkError,
      onPrimary: AppColors.darkOnPrimary,
      onSecondary: AppColors.darkOnPrimary,
      onSurface: AppColors.darkOnSurface,
      onError: AppColors.darkOnPrimary,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkSurface,
      foregroundColor: AppColors.darkOnSurface,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppColors.darkTextPrimary,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: AppColors.darkTextPrimary,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.darkTextPrimary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.darkTextPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        color: AppColors.darkTextPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.darkTextPrimary,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkTextSecondary,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColors.darkTextSecondary,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.darkSurface,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkPrimary,
        foregroundColor: AppColors.darkOnPrimary,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.darkPrimary, width: 2),
      ),
    ),
  );
}
