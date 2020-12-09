import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function submitAnswer;
//constructor
  Quiz({
    @required this.question, 
    @required this.submitAnswer, 
    @required this.questionIndex,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Questions(
              question[questionIndex]['questionText'],
            ),
            ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
                .map((answer) {
              return Answers(() => submitAnswer(answer['score']), answer['text']);
            }).toList()
          ],
        )
      
    ;
  }
}