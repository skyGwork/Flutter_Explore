```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './color_manager.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.roboto().fontFamily,
        appBarTheme: AppBarTheme(
          // color: Colors.red,
          // backgroundColor:Colors.red,
          elevation: 10,
          color: ColorManager.primary,

          iconTheme: IconThemeData(
            color: ColorManager.primary,
          ),

          //todo text theme for appbar
          titleTextStyle: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorManager.primary,
            letterSpacing: 1.2,
          ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              //todo selected text style
              headline5: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20,
                color: ColorManager.primary,
              ),
              //todo for buttons
              button: TextStyle(color: ColorManager.primary),
            ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
```
