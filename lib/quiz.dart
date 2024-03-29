import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';



class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });


  @override
  Widget build(BuildContext context) {
    this.questions[0]['questionText'] = "Hello";
    return
        Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList()
            /*Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),*/
          ],
        );

  }
}
