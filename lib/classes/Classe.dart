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
  'images/online.jpg',
  'images/topics.jpg',
  'images/gather.jpg',
  'images/gather junior.jpg',
  'images/videos.jpg',
  'images/activities.jpg',
  'images/tureng.jpg',
  'images/system.jpg',
];


List Topices = [
  'images/monday.jpg',
  'images/tuesday.jpg',
  'images/wednesday.jpg',
  'images/thursday.jpg',
  'images/friday.jpg',
  'images/weekend.jpg',
  'images/junior 1.jpg',
  'images/junior 2.jpg',
  'images/juniorlink.jpg',
];


class topicesd {
  String text;
  String whats;
  dynamic imagesd;
  topicesd({required this.text, required this.whats, required this.imagesd});
}

List Topicelist = [
  Mondays(
    title: '',
    image: '',
    text: '',
  ),
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
  'videos/common mistakes.jpg',
  'videos/phrasal videos 1.jpg',
  'videos/phrasal videos 2.jpg',
  'videos/ESLPOD.jpg',
  'videos/SONGS WITH LYRICS.jpg',
  'videos/OUR CHANNEL.jpg',
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
