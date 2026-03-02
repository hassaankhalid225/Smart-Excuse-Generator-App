import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primaryAccent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        cardTheme: CardTheme(
          color: AppColors.card,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
        textTheme: TextTheme(
          displayLarge: AppTypography.display,
          headlineMedium: AppTypography.heading,
          bodyLarge: AppTypography.body,
          bodySmall: AppTypography.bodySecondary,
        ),
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryAccent,
          secondary: AppColors.secondaryAccent,
          surface: AppColors.surface,
          background: AppColors.background,
        ),
      );
}
