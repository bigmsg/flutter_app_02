

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
        'What\'s your favorite color?',
        'What\' your favorite animal?',
        '잘 잤습니까?',
        '어제는 뭐했습니까?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("appBar 타이틀")
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),

            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}




