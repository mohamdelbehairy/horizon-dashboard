import 'package:flutter/material.dart';
import 'package:horizon/features/dashboard/presentation/widgets/total_spent_and_weekly_revenue_section.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/main_dashboard_final_section.dart';
import '../../../table/presentation/widgets/complex_table_and_task_section.dart';
import '../../../dashboard/presentation/widgets/check_table_and_charts_setion.dart';
import '../widgets/main_dashboard_list_view.dart';

class MainDashboardDesktop extends StatelessWidget {
  const MainDashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(children: [
      CustomAppBar(title: 'Dashboard'),
      SizedBox(height: 16),
      MainDashboardListView(),
      SizedBox(height: 24),
      TotalSpentAndWeeklyRevenueSection(),
      SizedBox(height: 24),
      CheckTableAndChartsSection(),
      SizedBox(height: 24),
      ComplexTableAndTasksSection(),
      SizedBox(height: 24),
      MainDashboardFinalSection(),
      SizedBox(height: 24),
    ]);
  }
}
