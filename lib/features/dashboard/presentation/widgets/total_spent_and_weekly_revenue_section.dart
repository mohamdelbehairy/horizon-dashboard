import 'package:flutter/material.dart';

import 'total_spent_widget.dart';
import 'weekly_revenue.dart';

class TotalSpentAndWeeklyRevenueSection extends StatelessWidget {
  const TotalSpentAndWeeklyRevenueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: TotalSpentWidget()),
        SizedBox(width: 16),
        Flexible(child: WeeklyRevenue()),
      ],
    );
  }
}
