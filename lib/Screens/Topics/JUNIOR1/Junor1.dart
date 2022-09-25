import 'dart:async';

import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:english_spoken_cafe/wp-api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Junior1 extends StatefulWidget {
  Junior1({Key? key}) : super(key: key);

  @override
  State<Junior1> createState() => _Junior1State();
}

class _Junior1State extends State<Junior1> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('JUNIOR1'),
      ),
      body: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: WebView(
                initialUrl: 'https://www.englishspokencafe.com/junior1/',
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
