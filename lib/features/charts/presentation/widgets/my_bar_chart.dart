import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'bar_chart_list_tile.dart';
import 'bar_chart_widget.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
        child: Column(
      children: [
        BarChartListTile(),
        BarChartWidget(),
      ],
    ));
  }
}
