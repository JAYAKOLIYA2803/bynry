import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}

class DonutChart extends StatefulWidget {
  const DonutChart({super.key});

  @override
  State<DonutChart> createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  final List<ChartData> chartData = [
    ChartData('A', 25),
    ChartData('B', 38),
    ChartData('C', 34),
    ChartData('D', 52)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            child: SfCircularChart(series: <CircularSeries>[
              // Render pie chart
              DoughnutSeries<ChartData, String>(
                  dataSource: chartData,
                  // strokeWidth: 10,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ])),
      ),
    );
  }
}
