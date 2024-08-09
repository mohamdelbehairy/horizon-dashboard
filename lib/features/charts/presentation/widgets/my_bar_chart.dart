import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'bar_chart_list_tile.dart';
import 'bar_chart_widget.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width > 1635 ? 350 : 330,
      child: CustomBackground(
          right: MediaQuery.sizeOf(context).width > 1635 ? 32 : 12,
          left: MediaQuery.sizeOf(context).width > 1635 ? 32 : 12,
          child: const SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                BarChartListTile(),
                BarChartWidget(),
              ],
            ),
          )),
    );
  }
}
