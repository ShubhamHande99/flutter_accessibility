import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    scaffoldBackgroundColor: AppColors.white,
  );
}