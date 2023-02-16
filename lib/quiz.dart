import 'dart:ffi';

import 'package:flutter/material.dart';
import './questions.dart';
import './main.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(selectHandler: () => answerQuestion(answer['score']), answerText: answer['text'] as String);
        }).toList(),
        //Answers(selectHandler: _answerQuestion,),
        //Answers(selectHandler: _answerQuestion),
        //Answers(selectHandler: _answerQuestion)
        //Text(questions[_questionIndex]),
        //ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
        //ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
        //ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3'))
      ],
    );
  }
}
