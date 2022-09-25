import 'package:flutter/material.dart';

class Gather_Junior extends StatefulWidget {
  Gather_Junior({Key? key}) : super(key: key);

  @override
  State<Gather_Junior> createState() => _Gather_JuniorState();
}

class _Gather_JuniorState extends State<Gather_Junior> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gather Junior',
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                ),
                child: Text(
                  'GATHER',
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
                'Gather Junior',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      semanticContainer: true,
                      child: Image.asset(
                        'images/online.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Go to live',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
