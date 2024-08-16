import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_scroll_view_dashboard.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../charts/presentation/widgets/charts_widget.dart';
import '../../../dashboard/presentation/views/widgets/total_spent_widget.dart';
import '../../../dashboard/presentation/views/widgets/weekly_revenue.dart';
import '../../../main_dashboard/presentation/widgets/bussiness_design_and_team_member.dart';
import '../../../main_dashboard/presentation/widgets/main_dashboard_list_view.dart';
import '../../../main_dashboard/presentation/widgets/security_and_starbucks_section.dart';
import '../../../table/presentation/widgets/check_table_widget.dart';
import '../../../table/presentation/widgets/complex_table_widget.dart';
import '../../../tasks/presentation/widgets/tasks_widget.dart';

class MainDashboardTablet extends StatelessWidget {
  const MainDashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(children: [
      CustomAppBar(title: 'Dashboard'),
      SizedBox(height: 16),
      MainDashboardListView(),
      SizedBox(height: 24),
      TotalSpentWidget(),
      SizedBox(height: 16),
      WeeklyRevenue(),
      SizedBox(height: 16),
      CheckTableWidget(),
      SizedBox(height: 16),
      ChartsWidget(),
      SizedBox(height: 16),
      ComplexTableWidget(),
      SizedBox(height: 16),
      TasksWidget(),
      SizedBox(height: 16),
      BussinessDesignAndTeamMember(),
      SizedBox(height: 16),
      SecurityAndStarbucksSection(),
      SizedBox(height: 16),
    ]);
  }
}
