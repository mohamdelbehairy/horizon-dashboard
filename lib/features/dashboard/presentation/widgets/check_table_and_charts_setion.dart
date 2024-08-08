import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/features/charts/presentation/widgets/my_bar_chart.dart';

import '../../../charts/presentation/widgets/my_pie_chart.dart';
import '../../../check_table/presentation/widgets/check_table_widget.dart';

class CheckTableAndChartsSection extends StatelessWidget {
  const CheckTableAndChartsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CheckTableWidget()),
        SizedBox(width: 16),
        Expanded(
            child: Row(
          children: [
            Expanded(child: MyBarChart()),
            SizedBox(width: 16),
            Expanded(child: MyPieChart())
          ],
        ))
      ],
    );
  }
}
