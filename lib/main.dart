

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print("Answer 2 chosen!"),
            ),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: (){
                  print("Answer 3 chosen");
                },
            ),
          ],
        ),
      ),
    );
  }
}