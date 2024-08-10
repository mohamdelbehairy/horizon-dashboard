import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../charts/presentation/widgets/charts_widget.dart';
import '../../../table/presentation/widgets/check_table_widget.dart';

class CheckTableAndChartsSection extends StatelessWidget {
  const CheckTableAndChartsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CheckTableWidget()),
        SizedBox(width: 16),
        Expanded(child: ChartsWidget())
      ],
    );
  }
}


