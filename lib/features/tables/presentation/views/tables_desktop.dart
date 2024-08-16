import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/check_check_table.dart';
import '../widgets/development_table.dart';
import '../widgets/four_column_table.dart';

class TablesDesktop extends StatelessWidget {
  const TablesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(
      children: [
        CustomAppBar(title: 'Tables'),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: DevelopmentTable()),
            SizedBox(width: 16),
            Expanded(child: CheckCheckTable()),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: FourColumnTable()),
            SizedBox(width: 16),
            Expanded(child: SizedBox())
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
