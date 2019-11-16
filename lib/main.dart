

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
}*/


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  /*State<StatefulWidget> createState() {
    return MyAppState();
  }*/
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText':'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Elepahant', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Tom', 'score': 5},
        {'text': 'Elan', 'score': 3},
        {'text': 'Peter', 'score': 1}
      ],
    },

  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  //final wordPair = WordPair.random();
  void _answerQuestion(int score) {
    var aBool = true;

    _totalScore += score;

    if (_questionIndex < questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
    setState(() {
      if (_questionIndex < 3)
        _questionIndex = _questionIndex + 1;
      else
        _questionIndex = 0;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("appBar 타이틀")
        ),
        body: _questionIndex < questions.length ?
        Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: questions
        )
            : Result(_totalScore),
      ),
    );
  }
}




