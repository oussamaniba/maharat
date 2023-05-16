import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey[200]!,
    secondary: Colors.black,
    shadow: Colors.grey[300],
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.passionOne(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: GoogleFonts.montserrat(
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.roboto(
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.roboto(
      color: Colors.grey[400],
    ),
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.dark(
      background: Colors.grey[600]!,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(221, 16, 16, 16),
    primary: Colors.grey[900]!,
    secondary: Colors.white,
    shadow: const Color.fromARGB(255, 27, 26, 26),
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
      bodyLarge: GoogleFonts.passionOne(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.montserrat(
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.roboto(
        color: Colors.white,
      ),
      labelSmall: GoogleFonts.roboto(
        color: Colors.grey[400],
      )),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.dark(
      background: Colors.grey[700]!,
    ),
  ),
);
