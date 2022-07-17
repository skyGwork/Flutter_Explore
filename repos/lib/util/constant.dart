import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorBlack = Color.fromRGBO(48, 47, 48, 1.0);

const colorWhite = Colors.white;
const colorDarkBlue = Color.fromRGBO(20, 25, 45, 1.0);
const colorOrange = Colors.deepOrange;
const colorGrey = Color(0xFFBCBBBB);
const colorGreen = Color(0xff7BB655);

TextTheme defaultText = TextTheme(
  headline1: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 96),
  headline2: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 60),
  headline3: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 48),
  headline4: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 34),
  headline5: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 24),
  headline6: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20),
  bodyText1: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal),
  bodyText2: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.normal),
  subtitle1: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal),
  subtitle2: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400),
  button: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400),
  caption: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.normal),
);

const TextTheme textThemeDefault = TextTheme(
  headline1:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: colorBlack,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorGrey, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
  subtitle1:
      TextStyle(color: colorBlack, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2:
      TextStyle(color: colorGrey, fontSize: 12, fontWeight: FontWeight.w400),
);

const TextTheme textThemeSmall = TextTheme(
  headline1:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
      color: colorBlack,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorGrey, fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
  subtitle1:
      TextStyle(color: colorBlack, fontSize: 10, fontWeight: FontWeight.w400),
  subtitle2:
      TextStyle(color: colorGrey, fontSize: 10, fontWeight: FontWeight.w400),
);
