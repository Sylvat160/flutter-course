import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/account.dart';
import 'package:flutter_widget/pages/home.dart';

class Fdrawer extends StatelessWidget {
  const Fdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 5,
        title: Text('D R A W E R'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                // child: Icon(
                //   Icons.home,
                //   size: 30,
                // )
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AccountPage()));
                },
              ),
            ],
          ),
        ),
      ),
      // endDrawer: Drawer(),
    );
  }
}
