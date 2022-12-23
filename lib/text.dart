import 'package:flutter/material.dart';

class Ftext extends StatelessWidget {
  const Ftext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      appBar: AppBar(
        title: Text('T E X T'),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      body: Center(
        child: Text(
          'Hello world',
          style: TextStyle(
            fontSize: 45,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[900],
          ),
        ),
      ),
    );
  }
}