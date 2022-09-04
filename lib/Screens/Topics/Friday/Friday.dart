import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Friday extends StatefulWidget {
  Friday({Key? key}) : super(key: key);

  final List<String> _videolad = [
    'pjp4KbunNSU',
  ];

  @override
  State<Friday> createState() => _FridayState();
}

class _FridayState extends State<Friday> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'YmJ_pGSVuPY',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('Friday'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 5,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              'MONDAY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: '18 July  '),
                    TextSpan(
                      text: 'MONDAY',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
              thickness: 4,
              indent: 40,
              endIndent: 60,
            ),
            Text(
              'READ',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/songmonday.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''
British naval officers play Britney Spears songs to scare away Somali pirates off of Africa’s eastern coast. “Oops I Did It Again” and “Baby One More Time” are the songs which are used. The reason of playing these songs is , supposedly, Somali pirates have a strong dislike for western culture and music, which make Britney Spears’ songs a perfect fit to make the bandits move on as quickly as possible.

''',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 4,
              indent: 40,
              endIndent: 60,
            ),
            Text(
              'LEARN',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/one.jpeg'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'said to emphasize that people like different things',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
              thickness: 4,
              indent: 40,
              endIndent: 60,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ICAN NOT SPEAK',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''
Istanbul (if you’ve never been to Istanbul, talk about your city)
-tell us about your favourite places in Istanbul.
-tell us about your favourite cafes, bars, shopping centers in İstanbul
-what do you like and dislike about Istanbul?
-what’s your favourite district of the city? why?
-which places in Istanbul don’t you like and why?
-when did you last have a great time when you went out in Istanbul? what did you do?
-tell us an unforgetable memory which you had in Istanbul?
Grammar1, Grammar2, Grammar3, Grammar4, Grammar5

''',
              textAlign: TextAlign.center,
            ),
            Text(
              '''
Related Words: crowded, rush hour, parking spot, shopping center, bakery, bus station, tram station, underground station, old city, downtown, street vendor, stressful, tranquil, historical district, modern district, dangerous district, active, quiet, calm, public transport, university district, national park, public museums

READ/SPEAK 
What do you do when you get bored?

LEARN THE IDIOM AND SPEAK
Tell us about some tough cookies you know in person.
''',
              textAlign: TextAlign.center,
            ),
            Divider(
              color: Colors.black,
              thickness: 4,
              indent: 40,
              endIndent: 60,
            ),
            Text(
              'I CAN SPEAK',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),
            Text(
              '''
present, past
-tell us important differences between your past and present
-what do you miss from when you were younger?
-what was different before?
-do you think the world is getting better or worse?

READ/SPEAK 
Do you like your phone? Why do you like it? Do you have social media accounts? Which ones do you have? which ones are your favorite? How much time do you spend on social media?
Do you think you also have nomophobia?

LEARN THE IDIOM AND SPEAK
Have you ever had a bad experience which currently has positive affects on you?


''',
              textAlign: TextAlign.center,
            ),
            Divider(
              color: Colors.black,
              thickness: 4,
              indent: 40,
              endIndent: 60,
            ),
            Text(
              'I CAN SPEAK FLUENTLY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),
            Text(
              '''
Luck
-do you believe in luck?
-are you a lucky person?
-do you think some people are luckier than other people?
-what is your greatest luck in your life?

READ/SPEAK 
Do you have any addictions? How do you want to or try to overcome your addiction? Why do you think people get addicted to something , do you think it’s related to their physicology?

LEARN THE IDIOM AND SPEAK
Do you agrre with the statement above? If you agree, tell us some benefits of being in hard situations? Do you know any people who rose although life wasn’t easy for him/her?
''',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
