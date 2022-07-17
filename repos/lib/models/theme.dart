// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.blue,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.roboto().fontFamily,
        appBarTheme: AppBarTheme(
          // color: Colors.white,
          // elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
