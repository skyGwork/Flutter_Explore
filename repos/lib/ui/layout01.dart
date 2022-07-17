// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Layout01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('lib/assets/img/finaccounts.png'),
                )),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Financial Accounting',
                        style: TextStyle(
                          // fontFamily: 'comforter',
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Sole Ownership',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star_outlined,
                  color: Colors.red,
                ),
                Text('14'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone_in_talk_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'call'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        // fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.near_me_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'route'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        // fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'share'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        // fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Text(
                'Financial accounting is a specific branch of accounting involving a process of recording, summarizing, and reporting the myriad of transactions resulting from business operations over a period of time. ... Work opportunities for a financial accountant can be found in both the public and private sectors',
                style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
