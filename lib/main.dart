import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

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
  /**
   * dart는 클래스 수준에서 const 허용하지 않는다
   */
  final _questions = const [
    {
      'questionText': '가장 좋아하는 색깔',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': '가장 좋아하는 동물',
      'answers': [
        {'text': '토끼', 'score': 3},
        {'text': '뱀', 'score': 11},
        {'text': '코끼리', 'score': 5},
        {'text': '사자', 'score': 9},
      ]
    },
    {
      'questionText': '가장 좋아하는 지도자',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totlaScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totlaScore = 0;
    });
  }

  void _answerQuestion(int score) {
    /**
     * 상태 set해주는 메소드
     */
    _totlaScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
      if (_questionIndex < _questions.length) {
        print('We have more questions');
      } else {
        print('No more questions');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold 기본 UI 제공
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totlaScore, _resetQuiz),
      ),
    );
  }
}
