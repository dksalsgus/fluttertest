import 'package:flutter/material.dart';

/**
 * 메인 함수 = flutter 시작시 실행
 */
// void main() {
//   /**
//    * 앱 실행 = 위젯을 화면에 그림
//    */
//   runApp(new MyApp());
// }

void main() => runApp(new MyApp());

/**
 * StatelessWidget 상속
 */
class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      '가장 좋아하는 색깔',
      '가장 좋아하는 동물',
    ];
    return MaterialApp(
      // Scaffold 기본 UI 제공
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          // Column은 열로 배치 Row 행으로 배치
          children: <Widget>[
            Text('The Question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed:
                  answerQuestion, // answerQuestion()는 바로 실행되기 떄문에 answerQuestion의 포인터만 onPressed에 준다
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'), // 익명함수
            ),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen!'); // 익명함수
                }),
          ],
        ),
      ),
    );
  }
}
