import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicBallApp());
}

class MagicBallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MagicBallPage(),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int _ballNumber = 1;

  void _shakeMagicBall() {
    setState(() {
      _ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic Ball'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/magic_ball_$_ballNumber.png'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _shakeMagicBall,
              child: Text('Ask the Magic Ball'),
            ),
          ],
        ),
      ),
    );
  }
}
