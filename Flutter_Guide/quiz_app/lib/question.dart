import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  // ignore: use_key_in_widget_constructors
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
