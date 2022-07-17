// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ReviewOnImgIcon extends StatelessWidget {
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
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 10,
              // color: Color(0xFFF36767),
              color: Color(0xFF535050).withOpacity(.2))
        ],
        image: DecorationImage(
          image: AssetImage('lib/assets/img/demo.jpg'),
          // fit: BoxFit.cover,
          opacity: .1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Review',
            style: TextStyle(
              color: Color.fromARGB(255, 253, 253, 255),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Icon(
              Icons.star_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.star_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.star_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.star_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.star_outlined,
              color: Colors.red,
            ),
          ]),
        ],
      ),
    ));
  }
}
