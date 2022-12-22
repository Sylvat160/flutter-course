import 'package:flutter/material.dart';

class FgestureDetector extends StatefulWidget {
  const FgestureDetector({super.key});

  @override
  State<FgestureDetector> createState() => _FgestureDetectorState();
}

class _FgestureDetectorState extends State<FgestureDetector> {
  //Variables
  int numberOfTaps = 0;
  //Methods
  void _increaseNumberOfTaps() {
    setState(() {
      numberOfTaps++;
    });
  }
  void _decreaseNumberOfTaps() {
    setState(() {
      numberOfTaps--;
    });
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped ' + numberOfTaps.toString() + ' times',
              style: TextStyle(fontSize: 30),
            ),
            GestureDetector(
              onTap: _increaseNumberOfTaps,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.green[200],
                child: Text(
                  'TAP HERE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            GestureDetector(
              onTap: _decreaseNumberOfTaps,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.green[200],
                child: Text(
                  'TAP HERE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ]
        ),
      ),
    ); 
  }
}