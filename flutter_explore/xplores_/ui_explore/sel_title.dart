// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelTitle extends StatelessWidget {
  // const SelName({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 20),
          Image.asset(
            'lib/assets/img/sellogo.png',
            height: 50,
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              text: 's',
              style: TextStyle(
                fontFamily: 'yeseva',
                fontSize: 30,
                color: Colors.blue[900],
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'kyi',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                TextSpan(
                  text: 'n',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    letterSpacing: .75,
                    color: Colors.red,
                    shadows: [
                      Shadow(
                        color: Colors.blue,
                        offset: Offset(2, 1),
                        blurRadius: 0,
                      )
                    ],
                  ),
                ),
                TextSpan(
                  text: 'k',
                ),
                TextSpan(
                    text: '\n  Expressive Learning',
                    style: TextStyle(
                      fontFamily: GoogleFonts.comfortaa().fontFamily,
                      fontSize: 14,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
