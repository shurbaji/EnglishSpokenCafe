import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Videoded extends StatefulWidget {
  final String? YoutubeURL;
  Videoded(this.YoutubeURL);

  @override
  State<Videoded> createState() => _VideodedState();
}

class _VideodedState extends State<Videoded> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    controller = YoutubePlayerController(
      initialVideoId:
          YoutubePlayerController.convertUrlToId(widget.YoutubeURL!)!,
      params: YoutubePlayerParams(
        loop: true,
        color: 'transparent',
        desktopMode: true,
        autoPlay: true,
        strictRelatedVideos: true,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: YoutubePlayerControllerProvider(
        controller: controller,
        child: YoutubePlayerIFrame(
          aspectRatio: 19 / 6,
          controller: controller,
        ),
      ),
    );
  }
}
