import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class BoX extends StatefulWidget {
  const BoX({super.key});

  @override
  State<BoX> createState() => _BoXState();
}

class _BoXState extends State<BoX> {
  // Reference to our single class that manages the database
  final _myBox = Hive.box('myBox');
  void writeData() {
    _myBox.put(2, {'name': 'John', 'age': 30});
  }
  void readData() {
    print(_myBox.get(2));
  }
  void deleteData() {
    _myBox.delete('name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed : writeData,
              child: const Text('Add'),
              color: Colors.amber[600],
            ),
            MaterialButton(
              onPressed : readData,
              child: const Text('Read'),
              color: Colors.amber[400],
            ),
            MaterialButton(
              onPressed : deleteData,
              child: const Text('Delete'),
              color: Colors.amber[200],
            ),
          ],
        ),
      ),
    );
  }
}