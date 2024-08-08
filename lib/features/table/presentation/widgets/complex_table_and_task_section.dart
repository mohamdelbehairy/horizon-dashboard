import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_background.dart';

import 'complex_table_widget.dart';

class ComplexTableAndTasksSection extends StatelessWidget {
  const ComplexTableAndTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: ComplexTableWidget()),
        const SizedBox(width: 16),
        Expanded(child: CustomBackground(child: Container()))
      ],
    );
  }
}
