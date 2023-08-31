import 'package:flutter/material.dart';

void main() {
  runApp(Magic_Balls());
}

class Magic_Balls extends StatefulWidget {
  @override
  _Magic_BallsState createState() => _Magic_BallsState();
}

class _Magic_BallsState extends State<Magic_Balls> {
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
                  'Think any question and press the button. \n The Balls will show the answer',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontSize: 18,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {});
                },
                child: Image(
                  image: AssetImage('images/ball1.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
