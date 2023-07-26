import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xff6f7885),
    ),
    bodySmall: GoogleFonts.poppins(
      height: 1.2,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF001D37),
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w800,
      color: const Color(0xFF001D37),
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF001D37),
    ),
  );

  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xffefeeee),
      appBarTheme: const AppBarTheme(
        foregroundColor: Color(0xFF0d1821),
        backgroundColor: Color(0x0081CCFF),
      ),
      textTheme: lightTextTheme,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xFF6F7886),
        primary: const Color(0xFFdd0426),
        secondaryContainer: const Color(0xFF929ED8),
        tertiary: const Color(0xffd1d0d0),
      ),
    );
  }
}
