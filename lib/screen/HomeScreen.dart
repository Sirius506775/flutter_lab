import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai'); //String을 uri 클래스로 변경 4.0.2v

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted) //js 문제 해결 4.0.2v
  ..loadRequest(homeUrl); // String 값 대신 uri 타입을 넣어야함 4.0.2v

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Code Factory'),
          centerTitle: true, //ios와 android 강제로 title 위치 고정
          actions: [
            IconButton(
                onPressed: () {
                  // if(controller == null){ //null일 수가 없으니까 없앰 4.0.2v
                  //   return;
                  // }

                  // controller!.loadUrl(homeUrl); //null 될 수 없다는 것을 !로 IDE에게 알리기
                  controller.loadRequest(homeUrl); //4.0.2v
                },
                icon: Icon(
                  Icons.home,
                ))
          ],
        ),
        body: WebViewWidget( //webview 4.0.2 v
          controller: controller,
        )

        // WebView(
        //   onWebViewCreated: (WebViewController controller) {
        //     this.controller = controller;
        //   }, //WebView가 생성되었을 때
        //   initialUrl: homeUrl, //맨처음 렌더링 되는 초기 url
        //   javascriptMode:
        //       JavascriptMode.unrestricted, //webview에서 js를 실행하기 위한 설정
        //)

    );
  }
}
