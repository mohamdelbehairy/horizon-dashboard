import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:horizon/features/charts/data/models/bar_chart_data_model.dart';

import 'bar_chart_group_data_item.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345 / 1.5,
      child: BarChart(BarChartData(
          gridData: const FlGridData(show: false),
          backgroundColor: Colors.transparent,
          titlesData: const FlTitlesData(
            show: true,
            // bottomTitles:
            //     AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          barGroups: [
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 00, toY: 3)),
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 04, toY: 2)),
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 08, toY: 4)),
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 12, toY: 2.5)),
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 14, toY: 3)),
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 16, toY: 5)),
            barChartGroupDataItem(
                barChartDataModel: BarChartDataModel(x: 18, toY: 1.5)),
          ])),
    );
  }
}
