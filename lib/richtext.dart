import 'package:flutter/material.dart';

class FrichText extends StatelessWidget {
  const FrichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[400],
      appBar: AppBar(
        title: Text('R I C H T E X T'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 350,
              color: Colors.cyan[50],
            ),
            Container(
              width: 200,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange[600],
                  ),
                  children: [
                    TextSpan(
                      text: 'Sylva ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[900],
                      ),
                    ),
                    TextSpan(
                      text: 'This is my hand writting text . i want that text to be longer as possible'
                    ),
                  ],
                ),
                // children: [
                //   Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),    
                //   // Text('This is a caption'),
                // Text('This is my hand writting text . i want that text to be longer as possible'),
                // ],
              ),
            ),
          ],
        ),
      )
    );
  }
}