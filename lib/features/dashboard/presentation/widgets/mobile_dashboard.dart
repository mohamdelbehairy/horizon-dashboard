import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../main_dashboard/presentation/widgets/mobile_layout_list_view_vertical.dart';
import '../../../main_dashboard/presentation/widgets/main_dashboard_list_view.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(title: 'Dashboard'),
                SizedBox(height: 16),
                MainDashboardListView(),
                SizedBox(height: 24),
                MobileLayoutListViewVertical(),
              ],
            )),
      ],
    );
  }
}
