// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'btnlog.dart';

class AppFace extends StatelessWidget {
  String h1;
  String img;
  String h2;
  String h3;
  String btnText;
  AppFace({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.img,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text('$h1',
                  style: TextStyle(
                    // fontFamily: GoogleFonts.comfortta().fontFamily,
                    fontFamily: 'comfortaa',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
            ),
            // SizedBox(height: 100),
            Container(child: Text('$h3')),
          ],
        ),
        SizedBox(width: 50),
        Container(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                Text('$h2',
                    style: TextStyle(
                      color: Colors.blue[100],
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
                Container(
                    // alignment: Alignment.center,
                    child: Image(image: AssetImage('$img'), height: 100)),
                SizedBox(height: 20),
                BtnLog(btn: btnText),
              ],
            ))
      ],
    ));
  }
}
