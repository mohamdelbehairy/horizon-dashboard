import 'package:flutter/material.dart';

import 'my_bar_chart.dart';
import 'my_pie_chart.dart';

class ChartsWidget extends StatelessWidget {
  const ChartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: MyBarChart()),
        SizedBox(width: 16),
        Expanded(child: MyPieChart())
      ],
    );
  }
}