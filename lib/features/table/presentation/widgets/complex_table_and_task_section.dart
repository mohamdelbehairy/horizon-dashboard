import 'package:flutter/material.dart';

import 'package:horizon/features/tasks/presentation/widgets/dates_widget.dart';

import '../../../tasks/presentation/widgets/tasks_widget.dart';
import 'complex_table_widget.dart';

class ComplexTableAndTasksSection extends StatelessWidget {
  const ComplexTableAndTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ComplexTableWidget()),
        SizedBox(width: 16),
        Expanded(
            child: Row(
          children: [
            Expanded(child: TasksWidget()),
            SizedBox(width: 16),
            Expanded(child: DatesWidget()),
          ],
        ))
      ],
    );
  }
}
