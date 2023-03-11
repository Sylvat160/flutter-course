// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FalertDialog extends StatefulWidget {
  const FalertDialog({super.key});

  @override
  State<FalertDialog> createState() => _FalertDialogState();
}

class _FalertDialogState extends State<FalertDialog> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              // CupertinoAlertDialog
              backgroundColor: Colors.red[200],
              title: Text('title'),
              content: Text('More info'),
              actions: [
                MaterialButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
