import 'package:flutter/material.dart';

class Fstack extends StatelessWidget {
  const Fstack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[400],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red[300],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red[600],
            ),
          ],
        ),
      ),
    );
  }
}