import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultText {
    var resultTexts = "you did it";
    if (resultScore <= 10) {
      resultTexts = "tyou're not even trying";
    } else if (resultScore <= 20) {
      resultTexts = "Almost did it. epic.";
    } else if (resultScore <= 30) {
      resultTexts = "you did it.";
    } else {
      resultTexts = "wow. Thats actually terrible.";
    }
    return resultTexts;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton( child: Text("restart quiz "),onPressed: resetHandler,)
        ],
      ),
    );
  }
}
