import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/models/graph.dart';

class FbarGraph extends StatefulWidget {
  const FbarGraph({super.key});

  @override
  State<FbarGraph> createState() => _FbarGraphState();
}

class _FbarGraphState extends State<FbarGraph> {
  List<double> weeklySummury = [4.5, 5.0, 4.0, 3.5, 100.2, 88.3, 90.0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: MyGraph(weeklySummury: weeklySummury),
          height: 200,
        ),
      ),
    );
  }
}
