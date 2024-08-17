import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_footer.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import 'widgets/check_check_table.dart';
import 'widgets/complex_complex_table.dart';
import 'widgets/development_table.dart';
import 'widgets/four_column_table.dart';

class TablesTablet extends StatelessWidget {
  const TablesTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(children: [
      CustomAppBar(title: 'Tables'),
      SizedBox(height: 16),
      DevelopmentTable(),
      SizedBox(height: 16),
      CheckCheckTable(),
      SizedBox(height: 16),
      FourColumnTable(),
      SizedBox(height: 16),
      ComplexComplexTable(),
      SizedBox(height: 32),
      CustomFooter(),
    ]);
  }
}
