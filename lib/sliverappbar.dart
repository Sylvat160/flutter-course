import 'package:flutter/material.dart';

class SliverappBar extends StatelessWidget {
  const SliverappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      body: CustomScrollView(
        slivers: [
          //sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepOrange[300],
            leading: Icon(Icons.menu),
            // title: Text('S L I V E R A P P B A R'),
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.red[300],
              ),
              title: Text('F L E X I B L E S P A C E',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  ),
            ),
          ),
          // sliver list items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 400,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 400,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
