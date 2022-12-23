import 'package:flutter/material.dart';

class FmediaQuery extends StatelessWidget {
  const FmediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          children: [
            Text('Height : ' + MediaQuery.of(context).size.height.toString()),
            Text('Width : ' + MediaQuery.of(context).size.width.toString()),
            Text('Orientation : ' + MediaQuery.of(context).orientation.toString()),
            Text('Aspect ration : ' + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
          ],
        ),
      ),
    );
  }
}