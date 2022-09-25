import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Dialogway extends StatefulWidget {
  const Dialogway({Key? key}) : super(key: key);

  @override
  State<Dialogway> createState() => _DialogState();
}

class _DialogState extends State<Dialogway> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Social Media',
              textAlign: TextAlign.center,
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () async {
                      final url =
                          'https://www.facebook.com/spokencafe.findikzade';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      }
                    },
                    child: Tab(
                      icon: Image.asset(
                        "images/Facebook.png",
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final url =
                          'https://www.instagram.com/englishspokencafe/';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      }
                    },
                    child: Tab(
                      icon: Image.asset(
                        "images/instegram.png",
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final url =
                          'https://www.youtube.com/c/EnglishSpokenCafecom';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      }
                    },
                    child: Tab(
                      icon: Image.asset(
                        "images/youtube.jpg",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () async {
                      final url =
                          'https://play.google.com/store/apps/details?id=mobi.androapp.englishspokencafe.c9274';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      }
                    },
                    child: Tab(
                      icon: Image.asset(
                        "images/google-play.jpg",
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final url =
                          'https://apps.apple.com/us/app/english-spoken-cafe/id1515344399?l=tr&ls=1';
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      }
                    },
                    child: Tab(
                      icon: Image.asset(
                        "images/appstore.png",
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      child: Text(
        'Social Media',
        textAlign: TextAlign.center,
      ),
    );
  }
}
