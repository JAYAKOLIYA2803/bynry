import 'package:bynry/global%20variables/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

class GasChartWidget extends StatefulWidget {
  const GasChartWidget({super.key});

  @override
  State<GasChartWidget> createState() => _GasChartWidgetState();
}

class _GasChartWidgetState extends State<GasChartWidget> {
  final List<ChartData> chartData = [
    ChartData('A', 50, GlobalVariables.primaryColor),
    ChartData('B', 50, GlobalVariables.primaryColor.withOpacity(0.7)),
    ChartData('c', 50, GlobalVariables.primaryColor.withOpacity(0.5)),
    ChartData('d', 50, GlobalVariables.primaryColor.withOpacity(0.3)),
    ChartData('c', 40, GlobalVariables.primaryColor.withOpacity(0.2)),
    ChartData('d', 20, GlobalVariables.primaryColor.withOpacity(0.1)),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 100,
        child: SfCircularChart(series: <CircularSeries>[
          // Render pie chart
          DoughnutSeries<ChartData, String>(
              dataSource: chartData,
              strokeWidth: 0,
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y)
        ]));
  }
}
