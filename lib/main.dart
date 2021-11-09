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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return new MaterialApp(
      // Scaffold 기본 UI 제공
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('My First App'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
