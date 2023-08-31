import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Magic_Balls());
}

class Magic_Balls extends StatefulWidget {
  @override
  _Magic_BallsState createState() => _Magic_BallsState();
}

class _Magic_BallsState extends State<Magic_Balls> {
  int ball_count = 1;

  int generateBallCount() {
    int randomNumber = Random().nextInt(5) + 1;
    return randomNumber;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text(
              'Ask me Anything',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Think any question and press the button.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontSize: 18,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'The Balls will show the answer',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    ball_count = generateBallCount();
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$ball_count.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
