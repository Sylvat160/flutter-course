import 'package:flutter/material.dart';

class ImgsAsset extends StatelessWidget {
  const ImgsAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.amber,
          child: Image.asset('lib/images/marshmello-mask-eye-ga-1336x768.jpg',
              fit: BoxFit.cover),
        ),
      ),
    ));
  }
}
