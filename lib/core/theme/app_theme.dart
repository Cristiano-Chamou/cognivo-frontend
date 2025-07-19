import 'package:flutter/material.dart';

// SISTEMA DE CORES WALL STREET PROFISSIONAL
class WallStreetColors {
  static const Color primary = Color(0xFF0066CC);
  static const Color accent = Color(0xFF00C851);
  static const Color background = Color(0xFF0A0B0F);
  static const Color surface = Color(0xFF1A1D23);
  static const Color cardBg = Color(0xFF252830);
  
  static const Color bullish = Color(0xFF00D4AA);
  static const Color bearish = Color(0xFFE74C3C);
  static const Color neutral = Color(0xFF95A5A6);
  static const Color warning = Color(0xFFF39C12);
  
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB8BCC8);
  static const Color textTertiary = Color(0xFF6C7293);
  
  static const Color border = Color(0xFF2A2D37);
  static const Color divider = Color(0xFF1E2128);
  
  static const Color insiderBuy = Color(0xFF2ECC71);
  static const Color insiderSell = Color(0xFFE67E22);
  static const Color esgGreen = Color(0xFF27AE60);
  static const Color newsUrgent = Color(0xFFE74C3C);

  // Gradientes
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient bullishGradient = LinearGradient(
    colors: [bullish, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: WallStreetColors.primary,
      scaffoldBackgroundColor: WallStreetColors.background,
      cardColor: WallStreetColors.surface,
      fontFamily: 'SF Pro Display',
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: WallStreetColors.textPrimary),
        bodyMedium: TextStyle(color: WallStreetColors.textSecondary),
        headlineSmall: TextStyle(color: WallStreetColors.textPrimary, fontWeight: FontWeight.bold),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: WallStreetColors.primary,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: WallStreetColors.surface,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: WallStreetColors.textPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: WallStreetColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
