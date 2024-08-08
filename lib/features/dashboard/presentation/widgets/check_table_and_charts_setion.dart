import 'package:flutter/material.dart';

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
            Expanded(child: MyPieChart()),
            SizedBox(width: 16),
            Expanded(child: MyPieChart())
          ],
        ))
      ],
    );
  }
}
