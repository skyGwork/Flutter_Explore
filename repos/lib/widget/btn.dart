// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

// ! ElevatedButton

class BtnView extends StatelessWidget {
  const BtnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text('Submit'),
        ),
      ],
    ));
  }
}
// ! InkWell

class BtnViewInk extends StatelessWidget {
  const BtnViewInk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        child: AnimatedContainer(
          duration: Duration(seconds: 0),
          height: 40,
          width: 80,
          alignment: Alignment.center,
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
// !TextBtn
class TextBtn extends StatelessWidget {
  IconData playPauseIcon = Icons.play_circle_filled;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextButton(
        onPressed: () {},
        child: Icon(
          playPauseIcon,
          size: 80,
          color: Colors.grey[50],
        ),
      ),
    );
  }
}
