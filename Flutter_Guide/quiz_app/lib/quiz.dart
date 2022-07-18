import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback ansQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.ansQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((e) => Answer(answerText: e, selectHandler: ansQuestion))
              .toList(),
        ],
      ),
    );
  }
}
