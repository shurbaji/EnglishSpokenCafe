import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Turengs extends StatefulWidget {
  Turengs({Key? key}) : super(key: key);

  @override
  State<Turengs> createState() => _TurengsState();
}

class _TurengsState extends State<Turengs> {
  late WebViewController controller;
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tureng'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: 'https://tureng.com/en/turkish-english',
                  onWebViewCreated: (controller) {
                    this.controller = controller;
                  },
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () async {
                controller.evaluateJavascript(
                  "document.getElementsByTagName('header')[0].style.display='none'",
                );
                controller.evaluateJavascript(
                  "document.getElementsByTagName('footer')[0].style.display='none'",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
