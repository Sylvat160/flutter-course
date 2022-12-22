import 'package:flutter/material.dart';

class ColRow extends StatelessWidget {
  const ColRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.deepOrange[700],
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.deepOrange[400],
          ),
          Container(
            height: 100,
            width: 150,
            color: Colors.deepOrange[200],
          ),
        ],
      ),
    );
  }
}