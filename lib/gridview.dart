import 'package:flutter/material.dart';
import 'package:flutter_widget/grid.dart';

final int crossAxisCount = 4;

class FgridView extends StatelessWidget {
  const FgridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemCount: 50,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return grid();
        },
      ),
    );
    // return Scaffold(
    //   body: GridView.count(
    //      crossAxisCount: crossAxisCount,
    //      children: [
    //       grid(),
    //       grid(),
    //       grid(),
    //       grid(),
    //      ],
    //   ),
    // );
  }
}