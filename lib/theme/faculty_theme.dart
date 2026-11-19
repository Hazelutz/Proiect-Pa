import 'package:material_ui/material_ui.dart';

class FacultyTheme {
  static const Color primaryNavy = Color(0xFF0F2C59);
  static const Color secondaryBlue = Color(0xFF1D5D9B);
  static const Color accentGold = Color(0xFFD97706);
  static const Color surfaceBg = Color(0xFFF4F6F9);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryNavy,
        primary: primaryNavy,
        secondary: secondaryBlue,
      ),
      scaffoldBackgroundColor: surfaceBg,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryNavy,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
    );
  }
}