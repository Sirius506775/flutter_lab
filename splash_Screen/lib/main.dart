import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //우측 상단 debug 비활성화
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF99231),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
      'asset/img/logo.png',
    ),
      CircularProgressIndicator(
          color: Colors.white,
      )
          ],
        ));
  } //HomeScreen클래스를 위젯으로 변경
}

//build 함수 내부에 있는 코드를 저장하면 이제 Hot reload를 할 수 있음
//Hot reload는 build() 함수 내부의 코드만 reload할 수 있다.
//','를 기준으로 코드를 정렬한다.

//column의 장점은 children에다가 하나 이상의 위젯들을 넣을 수 있다.
