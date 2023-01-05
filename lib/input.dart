import 'package:flutter/material.dart';

class FuserInput extends StatefulWidget {
  const FuserInput({super.key});

  @override
  State<FuserInput> createState() => _FuserInputState();
}

class _FuserInputState extends State<FuserInput> {
  final _textController = TextEditingController();
  String userInput = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('User Input'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          // display the user's input
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber[50],
              child: Center(
                child: Text(
                  userInput,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          MaterialButton(
            padding: EdgeInsets.all(10),
            height: 50,
            onPressed: () {
              setState(() {
                userInput = _textController.text;
              });
            },
            color: Colors.grey[900],
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}