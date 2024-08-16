import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../login/presentation/widgets/copy_right_widget.dart';
import '../widgets/main_dashboard_list_view.dart';
import '../widgets/mobile_layout_list_view_vertical.dart';

class MainDashboardMobile extends StatelessWidget {
  const MainDashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(title: 'Dashboard'),
        SizedBox(height: 16),
        MainDashboardListView(),
        SizedBox(height: 24),
        MobileLayoutListViewVertical(),
        MobileCopyRightWidget()
      ],
    );
  }
}
