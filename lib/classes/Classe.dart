import 'package:english_spoken_cafe/Screens/Topics/Friday/Friday.dart';
import 'package:english_spoken_cafe/Screens/Topics/JUNIOR2/Junior2.dart';
import 'package:english_spoken_cafe/Screens/Topics/JUNIOR1/Junor1.dart';
import 'package:english_spoken_cafe/Screens/Topics/Monday/Monday.dart';
import 'package:english_spoken_cafe/Screens/Topics/Thursday/Thursday.dart';
import 'package:english_spoken_cafe/Screens/Topics/Tuesday/Tuesday.dart';
import 'package:english_spoken_cafe/Screens/Topics/Wednesday/Wednesday.dart';
import 'package:english_spoken_cafe/Screens/Topics/Weekend/Weekend.dart';
import 'package:flutter/material.dart';

List imagesd = [
  'images/online.png',
  'images/topic.jpg',
  'images/Gather.jpg',
  'images/meeting.jpg',
  'images/video.jpg',
  'images/momery.jpg',
  'images/tureng.png',
  'images/about-us.png',
];

List Textted = [
  'Online Giriş',
  'Konular',
  'Gather',
  'Gather Junior',
  'Video',
  'Etkinlik',
  'Tureng',
  'About us',
];
List Topices = [
  'images/monday.jpg',
  'images/Tuesday.png',
  'images/wednesday.jpg',
  'images/Thursday.png',
  'images/friday.jpg',
  'images/weekend.png',
  'images/Junior.jpg',
  'images/Junior.jpg',
  'images/juniorlink.jpg',
];
List TopicesT = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Weekend',
  'JUNIOR1',
  'JUNIOR2',
  'JUNIOR LIK GUN',
];

class topicesd {
  String text;
  String whats;
  dynamic imagesd;
  topicesd({required this.text, required this.whats, required this.imagesd});
}

List Topicelist = [
  Mondays(),
  Tuesday(),
  Wednesday(),
  Thursday(),
  Friday(),
  Weekend(),
  Junior1(),
  Junior2(),
];

class Topicesdd {
  final dynamic value;

  Topicesdd({required this.value});
}

List videoed = [
  'videos/common.png',
  'videos/phrasal.jpg',
  'videos/phrasal.jpg',
  'videos/prodect.jpg',
  'videos/sing.jpg',
  'videos/steve.jpg',
  'videos/YouTubechannel.jpg',
];
List linkded = [
  'https://www.youtube.com/playlist?list=PLroY9A3h0zCIY7GmYwqi3xtLwT8Cq5gwA',
  'https://www.youtube.com/playlist?list=PLroY9A3h0zCLxvl9akgJHSwXxWCJ8fW68',
  'https://www.youtube.com/playlist?list=PLroY9A3h0zCKEUFN3SUi4hX6Z_5L_LK6u',
  'https://www.youtube.com/playlist?list=PLroY9A3h0zCJPk03SJmDocaLJHs-iJgBz',
  'https://www.youtube.com/playlist?list=PLroY9A3h0zCJdONYmctToNzV15wG0RKLl',
  'https://www.youtube.com/playlist?list=PLroY9A3h0zCJPk03SJmDocaLJHs-iJgBz',
  'https://www.youtube.com/c/EnglishSpokenCafecom',
];
List videoM = [
  'YmJ_pGSVuPY',
  'YmJ_pGSVuPY',
  'YmJ_pGSVuPY',
];

class gathers {}
