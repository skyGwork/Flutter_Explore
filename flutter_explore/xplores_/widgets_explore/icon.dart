// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsDemo extends StatelessWidget {
  const IconsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: const [
        
        //! material icons
        Icon(
          Icons.star_outlined,
          color: Colors.red,
        ),
        SizedBox(height: 50),

        //! CupertinoIcons
        Icon(
          CupertinoIcons.home,
          color: Colors.blue,
        ),
      ],
    ));
  }
}
