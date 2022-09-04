import 'package:english_spoken_cafe/HomePage.dart';
import 'package:english_spoken_cafe/Screens/About%20us/About-us.dart';
import 'package:english_spoken_cafe/Screens/Gather/Gather.dart';
import 'package:english_spoken_cafe/Screens/Gather_Junior/Gather_Junior.dart';
import 'package:english_spoken_cafe/Screens/Online%20Giris/Online%20Giris.dart';
import 'package:english_spoken_cafe/Screens/Topics/Topics.dart';
import 'package:english_spoken_cafe/Screens/Tureng/Tureng.dart';
import 'package:english_spoken_cafe/Screens/Videos/Videos.dart';
import 'package:english_spoken_cafe/Screens/momery/momery.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() {
  runApp(MyApp());
}

List pages = [
  OnlineG(
    channelName: '',
    role: null,
  ),
  Topics(),
  Gathers(),
  Gather_Junior(),
  Videos(),
  Momerys(),
  Turengs(),
  Aboutus(),
];

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: const [
            HomePages(),
          ],
        ),
      ),
    );
  }
}
