import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_uikit/agora_uikit.dart';
import 'package:agora_uikit/models/agora_rtm_mute_request.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(VideoCalls());
}

class VideoCalls extends StatefulWidget {
  // const VideoCalls({Key key}) : super(key: key);

  @override
  State<VideoCalls> createState() => _MyAppState();
}

class _MyAppState extends State<VideoCalls> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "e0b90423a6d14dc2b14ed072d6899de7",
      channelName: "Englishs",
      //username: "user",
      tempToken:
          "007eJxTYPjtf76Xf9/81T3rubceitLX+KzwwntZnd1jtemhF5yvM/goMKQaJFkamBgZJ5qlGJqkJBslGZqkphiYG6WYWVhapqSaf2/nSC6/yZlszj2TmZEBAkF8DgbXvPSczOKMYgYGABbqIoY=",
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
    agoraEventHandlers: AgoraRtcEventHandlers(
      leaveChannel: (
        RtcStats stats,
      ) {},
    ),
    agoraChannelData: AgoraChannelData(),
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Video Call',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(
                client: client,
                layoutType: Layout.floating,
                floatingLayoutContainerHeight: 200,
                floatingLayoutContainerWidth: 100,
                enableHostControls: true,
                showAVState: true,
                showNumberOfUsers: true,
                disabledVideoWidget: Container(
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      'Disable a video ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              AgoraVideoButtons(
                enabledButtons: const [
                  BuiltInButtons.callEnd,
                  BuiltInButtons.switchCamera,
                  BuiltInButtons.toggleMic,
                  BuiltInButtons.toggleCamera,
                ],
                client: client,
                verticalButtonPadding: 1,
                autoHideButtons: true,
                autoHideButtonTime: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
