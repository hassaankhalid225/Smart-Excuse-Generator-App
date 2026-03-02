import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color background = Color(0xFF0D0D0D);
  static const Color surface = Color(0xFF1A1A2E);
  static const Color card = Color(0xFF16213E);
  static const Color primaryAccent = Color(0xFFE94560);
  static const Color secondaryAccent = Color(0xFF0F3460);
  static const Color funnyColor = Color(0xFFFFB347);
  static const Color seriousColor = Color(0xFF4FC3F7);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0C3);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryAccent, secondaryAccent],
  );

  static const LinearGradient funnyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [funnyColor, Color(0xFFE67E22)],
  );

  static const LinearGradient seriousGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [seriousColor, Color(0xFF0288D1)],
  );
}
