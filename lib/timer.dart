import 'dart:async';

import 'package:flutter/material.dart';

class Ftimer extends StatefulWidget {
  const Ftimer({super.key});

  @override
  State<Ftimer> createState() => _FtimerState();
}

class _FtimerState extends State<Ftimer> {
  int time = 5;
  void _startTimer() {
      Timer.periodic(Duration(seconds: 1), (timer) {
        if (time > 0) {
          setState(() {
            time--;
          });
        } else {
          timer.cancel();
        }
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Text('T I M E R'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              time == 0 ? 'Time\'s up!' : '$time',
              style: TextStyle(
                fontSize: 40,
                color: Colors.deepPurple[900],
              ),
            ),
            MaterialButton(
              onPressed: _startTimer,
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurple[900],
            ),
          ],
        ),
      ),
    );
  }
}