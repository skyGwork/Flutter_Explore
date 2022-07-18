// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ColView extends StatelessWidget {
  const ColView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue[100],
          ),
          child: Text('A',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
        SizedBox(height: 20),
        Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text('B',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                )),
          ),
        ),
        SizedBox(height: 20),
        Container(
          color: Colors.red,
          child: Text('A',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
        SizedBox(height: 20),
        Container(
          color: Colors.red,
          child: Text('A',
              style: TextStyle(
                fontSize: 20,
              )),
        )
      ],
    ));
  }
}
