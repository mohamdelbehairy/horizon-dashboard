import 'package:flutter/material.dart';

class PieChartDataModel {
  final bool showTitle;
  final double radius;
  final double value;
  final Color color;
  final int index, activeIndex;

  PieChartDataModel(
      {this.showTitle = false,
      this.radius = 71.5,
      required this.value,
      required this.color,
      required this.index,
      this.activeIndex = -1});
}
