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
  bool _obsurctext = true;
  bool scruet = true;
  String? _passwordError;
  TextEditingController _passwordController = TextEditingController();

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
                controller: _passwordController,
                decoration: InputDecoration(
                  errorText: _passwordError,
                  hintText: 'Enter your code',
                  labelText: 'Code',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      scruet ? Icons.remove_red_eye : Icons.security,
                    ),
                    onPressed: () {
                      setState(() {
                        scruet = !scruet;
                      });
                    },
                  ),
                ),
                keyboardType: TextInputType.number,
                obscureText: scruet,
                maxLength: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
              onPressed: () {
                print("codes" + _passwordController.text);
                setState(() {
                  if (_passwordController.text.length < 10)
                    _passwordError = "Enter your code";
                  else
                    _passwordError = null!;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoCalls(),
                    ),
                  );
                });
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
