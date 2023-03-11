import 'package:flutter/material.dart';

class FanimateContainer extends StatefulWidget {
  const FanimateContainer({super.key});

  @override
  State<FanimateContainer> createState() => _FanimateContainerState();
}

class _FanimateContainerState extends State<FanimateContainer> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepOrange[800];
  double boxX = -1;
  double boxY = -1;
  void _expandBox(){
    setState(() {
      boxHeight = 200;
      boxWidth = 200;
      boxColor = Colors.deepPurple[400];
      boxX = 1;
      boxY = 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox,
      child: Scaffold(
        backgroundColor: Colors.deepOrange[400],
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            alignment: Alignment(boxX , boxY),
            height: boxHeight,
            width: boxWidth,
            color: boxColor,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange[100],   
            ),
          )
        ),
      ),
    );
  }
}