import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaGridView extends StatelessWidget {
  const StaGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
          itemCount: 6,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                  color: Colors.blue[300],
                  // height: 200,
                  child: Image.asset('lib/images/marshmello-mask-eye-ga-1336x768.jpg'),
                ),
          )),
    );
  }
}
