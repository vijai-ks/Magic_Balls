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
        appBar: AppBar(
          title: Center(
            child: Text('Ask me Anything'),
          ),
        ),
      ),
    );
  }
}
