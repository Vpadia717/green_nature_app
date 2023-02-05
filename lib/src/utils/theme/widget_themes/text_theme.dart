import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  // light theme Context
  static TextTheme lightTextTheme = TextTheme(
    // ignore: deprecated_member_use
    headline3: GoogleFonts.carroisGothic(
      fontWeight: FontWeight.w200,
      color: const Color(0xFF303030),
      fontSize: 24,
    ),
    // ignore: deprecated_member_use
    headline6: GoogleFonts.electrolize(
      fontWeight: FontWeight.bold,
      color: const Color(0xFF404040),
      fontSize: 18,
    ),
    // ignore: deprecated_member_use
    subtitle1: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: const Color(0xFF606060),
      fontSize: 18,
    ),
    // ignore: deprecated_member_use
    bodyText1: GoogleFonts.poppins(
      color: const Color(0xFF808080),
      fontSize: 16,
    ),
  );

  // dark theme context
  static TextTheme darkTextTheme = TextTheme(
    // ignore: deprecated_member_use
    headline3: GoogleFonts.carroisGothic(
      fontWeight: FontWeight.w200,
      color: const Color(0xFFEAEAEA),
      fontSize: 24,
    ),
    // ignore: deprecated_member_use
    headline6: GoogleFonts.electrolize(
      fontWeight: FontWeight.bold,
      color: const Color(0xFFDADADA),
      fontSize: 18,
    ),
    // ignore: deprecated_member_use
    subtitle1: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: const Color(0xFFCACACA),
      fontSize: 20,
    ),
    // ignore: deprecated_member_use
    bodyText1: GoogleFonts.poppins(
      color: const Color(0xFFBABABA),
      fontSize: 16,
    ),
  );
}
