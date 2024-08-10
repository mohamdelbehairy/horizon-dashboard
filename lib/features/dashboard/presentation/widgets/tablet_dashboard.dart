import 'package:flutter/material.dart';
import '../../../main_dashboard/presentation/views/main_dashboard_tablet.dart';
import 'custom_drawer.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 2, child: MainDashboardTablet())
      ],
    );
  }
}
