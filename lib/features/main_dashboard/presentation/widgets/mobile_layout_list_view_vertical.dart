import 'package:flutter/material.dart';

import '../../../charts/presentation/widgets/my_bar_chart.dart';
import '../../../charts/presentation/widgets/my_pie_chart.dart';
import '../../../dashboard/presentation/views/widgets/total_spent_widget.dart';
import '../../../dashboard/presentation/views/widgets/weekly_revenue.dart';
import '../../../table/presentation/widgets/check_table_widget.dart';
import '../../../table/presentation/widgets/complex_table_widget.dart';
import '../../../tasks/presentation/widgets/tasks_widget.dart';
import 'bussiness_design.dart';
import 'security.dart';
import 'starbucks.dart';
import 'team_members.dart';

class MobileLayoutListViewVertical extends StatelessWidget {
  const MobileLayoutListViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          TotalSpentWidget(),
          SizedBox(height: 16),
          WeeklyRevenue(),
          SizedBox(height: 16),
          CheckTableWidget(),
          SizedBox(height: 16),
          MyBarChart(),
          SizedBox(height: 16),
          MyPieChart(),
          SizedBox(height: 16),
          ComplexTableWidget(),
          SizedBox(height: 16),
          TasksWidget(),
          SizedBox(height: 16),
          BussinessDesign(),
          SizedBox(height: 16),
          TeamMembers(),
          SizedBox(height: 16),
          Security(),
          SizedBox(height: 16),
          Starbucks(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
