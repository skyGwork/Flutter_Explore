// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsDemo extends StatelessWidget {
  const IconsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        //material icons
        Icon(
          Icons.star_outlined,
          color: Colors.red,
        ),
        SizedBox(height: 50),

        // CupertinoIcons
        Icon(
          CupertinoIcons.home,
          color: Colors.blue,
        ),
      ],
    ));
  }
}
