import 'package:flutter/material.dart';

class Fexpanded extends StatelessWidget {
  const Fexpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // flex: 3,
            child: Container(
              // height: 100,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            // flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            // flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
