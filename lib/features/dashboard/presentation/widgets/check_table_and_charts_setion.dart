import 'package:flutter/material.dart';

import '../../../check_table/presentation/widgets/check_table_widget.dart';

class CheckTableAndChartsSection extends StatelessWidget {
  const CheckTableAndChartsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CheckTableWidget()),
        const SizedBox(width: 16),
        Expanded(child: Container())
      ],
    );
  }
}
