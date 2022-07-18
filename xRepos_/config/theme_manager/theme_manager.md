```dart
import 'package:flutter/material.dart';
import 'package:flutter_guide/presentation/config/color_manager.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.blueGrey,

    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      // accentColor: Colors.red,
    ),

    fontFamily: 'Quicksand',

    // fontFamily: GoogleFonts.roboto().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),

    appBarTheme: AppBarTheme(
      // color: Colors.red,
      // backgroundColor:Colors.red,
      elevation: 10,
      centerTitle: true,
      // color:ColorManager.primary,

      iconTheme: IconThemeData(
        color: ColorManager.primary,
      ),

      titleTextStyle: TextStyle(
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: ColorManager.primary,
        letterSpacing: 1.2,
      ),
    ),

    textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorManager.darkGrey,
          ),
          headline5: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 20,
            color: ColorManager.grey,
          ),
          // button: const TextStyle(color: Colors.white),
        ),
  );
}
```
