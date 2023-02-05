import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  // light theme Context
  static TextTheme lightTextTheme = TextTheme(
    headline3: GoogleFonts.carroisGothic(
      fontWeight: FontWeight.w200,
      color: const Color(0xFF303030),
      fontSize: 24,
    ),
    headline6: GoogleFonts.electrolize(
      fontWeight: FontWeight.bold,
      color: const Color(0xFF404040),
      fontSize: 18,
    ),
    subtitle1: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: const Color(0xFF606060),
      fontSize: 18,
    ),
    bodyText1: GoogleFonts.poppins(
      color: const Color(0xFF808080),
      fontSize: 16,
    ),
  );

  // dark theme context
  static TextTheme darkTextTheme = TextTheme(
    headline3: GoogleFonts.carroisGothic(
      fontWeight: FontWeight.w200,
      color: const Color(0xFFEAEAEA),
      fontSize: 24,
    ),
    headline6: GoogleFonts.electrolize(
      fontWeight: FontWeight.bold,
      color: const Color(0xFFDADADA),
      fontSize: 18,
    ),
    subtitle1: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: const Color(0xFFCACACA),
      fontSize: 20,
    ),
    bodyText1: GoogleFonts.poppins(
      color: const Color(0xFFBABABA),
      fontSize: 16,
    ),
  );
}
