import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Videos extends StatefulWidget {
  Videos({Key? key}) : super(key: key);
  //const appId="8b35a0d0a1e14518893469b12307e134";
  //const token="0068b35a0d0a1e14518893469b12307e134IAAqXbqHU8c7ZNV/W/d0QHimYgjyBqIgNJasVpo/Unvi/evTDPoAAAAAIgCOhaHHebLrYgQAAQB5sutiAgB5sutiAwB5sutiBAB5suti";
  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      itemCount: videoed.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return TextButton(
                          onPressed: () async {
                            final url = linkded[index];
                            if (await canLaunch(url)) {
                              await launch(
                                url,
                                forceSafariVC: false,
                                forceWebView: true,
                                enableJavaScript: true,
                              );
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(videoed[index]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
