import "package:flutter/material.dart";

class Answers extends StatelessWidget {
  final Function handler;
  final String answerText;

  Answers(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: handler,
      ),
    );
  }
}
