// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/drawer.dart';
import '../widget/column.dart';
import '../widget/row.dart';

class DemoViews extends StatelessWidget {
  const DemoViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Refrance'),
        ),
        body: Material(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text('Tyr the \nWidgets/ui',
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.blue[100],
                      )),
                ),
                ColView(),
              ],
            ),
          ),
        ),
        drawer: AppDrawer());
  }
}
