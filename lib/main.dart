import 'package:flutter/material.dart';
import './result.dart';
import './questions.dart';
import './answers.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favourite color: ',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'green', 'score': 30},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal: ',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Dog', 'score': 20},
        {'text': 'rooster', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favourite meal: ',
      'answers': [
        {'text': 'pizza', 'score': 10},
        {'text': 'bread', 'score': 20},
        {'text': 'dog food', 'score': 30}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQ() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      });
  }

  void _submitAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print("all done ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first title"),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                submitAnswer: _submitAnswer,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore , _resetQ),
      ),
    );
  }
}
