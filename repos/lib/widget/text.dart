// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextContent extends StatelessWidget {
  const TextContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              'Explore',
              style: TextStyle(
                // fontFamily: 'yeseva',
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                color: Color(0xFF022F5C),
              ),
            ),
            SizedBox(width: 50),
            Text(
              'Contents',
              style: TextStyle(
                // fontFamily: GoogleFonts.roboto().fontFamily,
                fontFamily: 'comfortaa',
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
