import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final toDoEclipseTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0XFF2F3E77),
    secondary: const Color.fromARGB(255, 81, 100, 175),
    tertiary: Color.fromARGB(255, 219, 224, 243),
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.nunito(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: 14,
    ),
    bodyMedium: GoogleFonts.nunito(
      color: Colors.white,
      fontSize: 18,
    ),
    bodyLarge: GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      color: const Color(0XFFFFFFFF),
      fontSize: 20,
    ),
  ),
);
