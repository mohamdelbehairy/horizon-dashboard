import 'package:flutter/material.dart';
import 'package:horizon/features/dashboard/presentation/views/widgets/total_spent_and_weekly_revenue_section.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_footer.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/main_dashboard_final_section.dart';
import '../../../table/presentation/widgets/complex_table_and_task_section.dart';
import '../../../dashboard/presentation/views/widgets/check_table_and_charts_setion.dart';
import '../widgets/main_dashboard_list_view.dart';

class MainDashboardDesktop extends StatelessWidget {
  const MainDashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(children: [
      CustomAppBar(title: 'Dashboard'),
      SizedBox(height: 16),
      MainDashboardListView(),
      SizedBox(height: 16),
      TotalSpentAndWeeklyRevenueSection(),
      SizedBox(height: 16),
      CheckTableAndChartsSection(),
      SizedBox(height: 16),
      ComplexTableAndTasksSection(),
      SizedBox(height: 16),
      MainDashboardFinalSection(),
      SizedBox(height: 16),
      Expanded(child: CustomFooter()),
      SizedBox(height: 16),
    ]);
  }
}
