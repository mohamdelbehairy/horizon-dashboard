import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../../../core/widgets/dashboard_title_section.dart';
import 'main_dashboard_list_view.dart';

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
              ],
            ),
          ),
        )
      ],
    );
  }
}
