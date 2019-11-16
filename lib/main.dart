

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  //final wordPair = WordPair.random();
  void _answerQuestion() {
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
    var questions = [
      {
        'questionText':'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White' ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Rabbit', 'Lion', 'Elepahant'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },

    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("appBar 타이틀")
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            /*Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),*/
          ],
        ),
      ),
    );
  }
}




