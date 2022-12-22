import 'package:flutter/material.dart';

class Fcliprect extends StatelessWidget {
  const Fcliprect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}