import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: TextButton(
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: const TextStyle(
            letterSpacing: 5,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
