import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

/**
 * 생성자
 */
  Question(this.questionText);
  // Question(String text) {
  //   this.questionText = text;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        // Container로 감싸준다 div와 비슷
        width: double.infinity, // 최대 넓이
        margin: EdgeInsets.all(10), // 상하좌우 전체
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
