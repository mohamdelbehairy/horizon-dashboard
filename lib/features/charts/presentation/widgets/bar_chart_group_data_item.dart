import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../data/models/bar_chart_data_model.dart';

BarChartGroupData barChartGroupDataItem(
    {required BarChartDataModel barChartDataModel}) {
  return BarChartGroupData(x: barChartDataModel.x, barRods: [
    BarChartRodData(
      fromY: 0,
      toY: barChartDataModel.toY,
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xff4318FF),
            const Color(0xff4318FF).withOpacity(.28),
          ]),
      width: 16,
    ),
  ]);
}
