import 'package:flutter/material.dart';
import 'package:flutter_widget/square.dart';
import 'package:flutter_widget/stories.dart';

final List _posts = ['post 1', 'post 2', 'post 3'];
final List _stories = ['story 1', 'story 2', 'story 3' , 'story 4' , 'story 5'];

// ignore: camel_case_types
class listvAndBuilder extends StatelessWidget {
  const listvAndBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Stories List
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: ((context, index) => MyStories(
                  title: _stories[index],
              )),
            ),
          ),

          // Posts List
          Expanded(
            // flex: 3,
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: _posts.length,
              itemBuilder: ((context, index) => MySquare(
                    title: _posts[index],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
