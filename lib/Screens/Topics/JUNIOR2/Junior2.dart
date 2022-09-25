import 'dart:async';

import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Junior2 extends StatefulWidget {
  Junior2({Key? key}) : super(key: key);

  @override
  State<Junior2> createState() => _Junior2State();
}

class _Junior2State extends State<Junior2> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('JUNIOR2'),
      ),
      body: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: WebView(
                initialUrl: 'https://www.englishspokencafe.com/junior2/',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _webViewController = webViewController;
                  _controller.complete(webViewController);
                },
                onProgress: (int progress) {
                  print("WebView is loading(progress:$progress%)");
                  _webViewController.evaluateJavascript(
                    "document.getElementsByTagName('header')[0].style.display='none'",
                  );
                  _webViewController.evaluateJavascript(
                    "document.getElementsByTagName('footer')[0].style.display='none'",
                  );
                },
                onPageStarted: (String url) {
                  print('page started loading :$url');
                  _webViewController.evaluateJavascript(
                    "document.getElementsByTagName('header')[0].style.display='none'",
                  );
                  _webViewController.evaluateJavascript(
                    "document.getElementsByTagName('footer')[0].style.display='none'",
                  );
                },
                onPageFinished: (String url) {
                  print('Page finished loading: $url');
                  _webViewController.evaluateJavascript(
                    "document.getElementsByTagName('header')[0].style.display='none'",
                  );
                  _webViewController.evaluateJavascript(
                    "document.getElementsByTagName('footer')[0].style.display='none'",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
