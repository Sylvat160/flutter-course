import 'package:flutter/material.dart';

class FtabBar extends StatelessWidget {
  const FtabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('T A B B A R'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurpleAccent,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.message,
                    color: Colors.deepPurpleAccent,
                  ),
                  text: 'Message',
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurpleAccent,
                  ),
                  text: 'Settings',
                ),
              ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Message',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}