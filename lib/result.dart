import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = '참 잘했어요';
    } else if (resultScore <= 12) {
      resultText = '아주 잘했어요';
    } else if (resultScore <= 16) {
      resultText = '완벽해요';
    } else {
      resultText = '분발하세요';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
