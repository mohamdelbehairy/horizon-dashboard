import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horizon/features/tables/presentation/views/widgets/complex_complex_table.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_footer.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import 'widgets/check_check_table.dart';
import 'widgets/development_table.dart';
import 'widgets/four_column_table.dart';

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
            Expanded(child: ComplexComplexTable())
          ],
        ),
        SizedBox(height: 32),
        CustomFooter(),
      ],
    );
  }
}
