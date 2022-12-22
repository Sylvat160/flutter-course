import 'package:flutter/material.dart';
import 'package:flutter_widget/expanded.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Fexpanded(),
    );
  }
}


class Fcontainer extends StatelessWidget {
  const Fcontainer({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(10)  ,
          // alignment: Alignment.bottomCenter,
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            // borderRadius: BorderRadius.circular(10),
            // color: Colors.deepPurple,
            shape: BoxShape.circle,
            // border: Border.all(
            //   color: Colors.deepPurple,
            //   width: 5,
            // ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0, 
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0, 
                spreadRadius: 1.0, 
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Hello world',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          )
        ),
      ),
    );
  }
}
