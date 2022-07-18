// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Card(
            color: Colors.pink[200],
            elevation: 20,
            child: SizedBox(
                height: 100,
                // width: 200,
                width: double.infinity,
                child: Center(
                    child: Text('card view'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                        ))))),
        SizedBox(height: 50),
        Card(
            color: Colors.pink[100],
            elevation: 20,
            child: Container(
                height: 100,
                // width: 200,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text('demo view'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                    )))),
      ],
    ));
  }
}
