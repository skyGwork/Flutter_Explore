// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 200,
        width: double.infinity,
        // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,

        decoration: BoxDecoration(
          color: Colors.blue[100],
          // borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 10,
                // color: Color(0xFFF36767),
                color: Color(0xFF535050).withOpacity(.2))
          ],
          image: DecorationImage(
            image: AssetImage('lib/assets/img/demo.jpg'),
            fit: BoxFit.cover,
            opacity: .1,
          ),
        ),
      ),
    );
  }
}

