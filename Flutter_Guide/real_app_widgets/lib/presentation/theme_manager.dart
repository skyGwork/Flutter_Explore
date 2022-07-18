import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.blueGrey,
    // primaryColorLight: Colors.yellow,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
        // accentColor: Colors.red,
        ),

    fontFamily: 'Quicksand',
    // fontFamily: GoogleFonts.roboto().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),

    appBarTheme: const AppBarTheme(
      // color: Colors.red,
      // backgroundColor:Colors.red,
      elevation: 10,
      // color:ColorManager.primary,

      iconTheme: IconThemeData(
          // color: Colors.black,
          ),

      titleTextStyle: TextStyle(
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    ),

    textTheme: ThemeData.light().textTheme.copyWith(
          headline1: const TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.grey,
          ),
          headline5: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 20,
            color: Colors.red,
          ),
          // button: const TextStyle(color: Colors.white),
        ),
  );
}
