import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

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
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    /**
     * 상태 set해주는 메소드
     */
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
      if (_questionIndex > 1) {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
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
            Question(_questions[_questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed:
                  _answerQuestion, // answerQuestion()는 바로 실행되기 떄문에 answerQuestion의 포인터만 onPressed에 준다
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
