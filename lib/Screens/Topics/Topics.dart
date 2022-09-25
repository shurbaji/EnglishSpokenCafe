import 'package:english_spoken_cafe/classes/Classe.dart';
import 'package:english_spoken_cafe/Screens/Topics/Monday/Monday.dart';
import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  Topics({
    Key? key,
  }) : super(key: key);

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Topics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: imagesd.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 4 / 3,
                ),
                itemBuilder: (BuildContext ctx, index) {
                  return TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Topicelist[index],
                        ),
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
                            image: AssetImage(
                              Topices[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 90,
                          ),

                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
