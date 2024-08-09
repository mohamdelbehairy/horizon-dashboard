import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/features/dashboard/presentation/widgets/total_spent_and_weekly_revenue_section.dart';
import '../../../../core/widgets/dashboard_title_section.dart';
import '../widgets/main_dashboard_final_section.dart';
import '../../../table/presentation/widgets/complex_table_and_task_section.dart';
import '../../../dashboard/presentation/widgets/check_table_and_charts_setion.dart';
import '../widgets/main_dashboard_list_view.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text('Pages / Dashboard', style: Styles.medium14(context)),
                const DashboardTitleSection(),
                const SizedBox(height: 16),
                const MainDashboardListView(),
                const SizedBox(height: 24),
                const TotalSpentAndWeeklyRevenueSection(),
                const SizedBox(height: 24),
                const CheckTableAndChartsSection(),
                const SizedBox(height: 24),
                const ComplexTableAndTasksSection(),
                const SizedBox(height: 24),
                const MainDashboardFinalSection(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        )
      ],
    );
  }
}
