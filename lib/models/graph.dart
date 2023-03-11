import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/models/bar_data.dart';

class MyGraph extends StatelessWidget {
  const MyGraph({super.key, required this.weeklySummury});

  final List weeklySummury;

  @override
  Widget build(BuildContext context) {
    BarData barData = BarData(
      sunAmount: weeklySummury[0],
      monAmount: weeklySummury[1],
      tueAmount: weeklySummury[2],
      wedAmount: weeklySummury[3],
      thuAmount: weeklySummury[4],
      friAmount: weeklySummury[5],
      satAmount: weeklySummury[6],
    );

    barData.initializeBarData();

    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      gridData: FlGridData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getBottomTitles,
          ))),
      barGroups: barData.barData
          .map((data) => BarChartGroupData(x: data.x, barRods: [
                BarChartRodData(
                    toY: data.y,
                    color: Colors.amber[400],
                    width: 20,
                    borderRadius: BorderRadius.circular(4),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Colors.grey[300],
                    ))
              ]))
          .toList(),
    ));
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;

    switch (value.toInt()) {
      case 0:
        text = Text('S', style: style);
        break;
      case 1:
        text = Text('M', style: style);
        break;
      case 2:
        text = Text('T', style: style);
        break;
      case 3:
        text = Text('W', style: style);
        break;
      case 4:
        text = Text('T', style: style);
        break;
      case 5:
        text = Text('F', style: style);
        break;
      case 6:
        text = Text('S', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
  }
}
