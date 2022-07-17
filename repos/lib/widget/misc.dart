// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MiscWidget extends StatelessWidget {
  const MiscWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // vertical
        SizedBox(
          height: 100,
        ),
        Divider(
          height: 10,
          thickness: 3,
          indent: 20,
          endIndent: 20,
          color: Colors.grey[500],
        ),
        // horizontal
        SizedBox(
          width: 100,
        ),
        Padding(
          padding:
              //  EdgeInsets.all(40),
              EdgeInsets.symmetric(vertical: 12, horizontal: 100),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello world'),
              SizedBox(
                height: 10,
              ),
              Text('Hello world')
            ],
          ),
        )
      ],
    ));
  }
}
