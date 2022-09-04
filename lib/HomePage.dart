import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:english_spoken_cafe/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 70,
          ),
          child: Text(
            'English spoken cafe',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Stack(
        children: [
          const SizedBox(
            height: 70,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: imagesd.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 4 / 3,
                    ),
                    itemBuilder: (BuildContext ctx, index) {
                      return TextButton(
                        onPressed: () {
                          //Navigator.push(context, push(MaterialPageRoute(builder: (context) =>)),);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pages[index]),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imagesd[index]),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 80,
                              ),
                              child: Text(
                                Textted[index],
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
