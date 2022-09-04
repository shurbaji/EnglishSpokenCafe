import 'package:english_spoken_cafe/Video/Video_call.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'dart:developer';
import 'package:agora_uikit/agora_uikit.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class OnlineG extends StatefulWidget {
  final String? channelName;
  final ClientRole? role;
  //final ValueChanged<String> onSubmit;
  const OnlineG({
    Key? key,
    required this.channelName,
    required this.role,
  }) : super(key: key);

  @override
  State<OnlineG> createState() => _OnlineGState();
}

class _OnlineGState extends State<OnlineG> {
  final _channelcontroller = TextEditingController();
  String _validateError = ' ';
  ClientRole? _role = ClientRole.Broadcaster;
  bool _validate = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _channelcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Giris'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 170,
                top: 30,
              ),
              child: Text(
                'ONLINE GIRIS',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''
      ÖNCE KUTUYA KODUNUZU GİRİN, SONRA ENTER TUŞUNA BASIN (ya da start meeting’i tıklayın)
      Mobilden siteden giriyorsanız kodu yapıştırıp enter’a basın, “launch in the web” seçeneğini seçin. Ya da sitemizin içinde çalışan Jitsi eklentisini indirin, kutuya kodu girin, enter’a basın. Android, Ios.
      ''',
              textAlign: TextAlign.center,
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/speaking.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: _channelcontroller,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  errorText: _validate ? 'you don/t write the code' : null,
                  fillColor: Colors.black,
                  hintText: 'Write code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _channelcontroller.text.isEmpty
                      ? _validate = true
                      : _validate = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoCalls(),
                  ),
                );
              },
              child: Text(
                'Let\s Start',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Divider(
              color: Colors.black,
              height: 0,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'HAKKIMIZDA',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''
      English Spoken Cafe sosyal bir ortamda, ana dilini konuşan yabancı ekip arkadaşlarımız eşliğinde konuşarak, İngilizcenizi yurt dışında yaşıyormuş gibi geliştirebileceğiniz ve İngilizce öğretmenleri tarafından hazırlanmış 2009 yılında kurulmuş bir konsepttir. Sistem “dil eğitiminde iletişimsel yaklaşım ve dil edinimi” üzerine kuruludur.
      ''',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
