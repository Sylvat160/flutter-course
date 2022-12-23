import 'package:flutter/material.dart';
import 'package:flutter_widget/posts/post1.dart';
import 'package:flutter_widget/posts/post2.dart';
import 'package:flutter_widget/posts/post3.dart';

final _controller = PageController(
  initialPage: 0,
);

class FpageView extends StatelessWidget {
  const FpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('P A G E V I E W'),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Post2(),
          Post3(),
          Post1(),
        ],
      ),
    );
  }
}
