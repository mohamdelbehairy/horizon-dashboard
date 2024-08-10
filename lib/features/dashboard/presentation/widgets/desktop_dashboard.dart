import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import '../../../main_dashboard/presentation/views/main_dashboard_desktop.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(child: MainDashboardDesktop()),
      ],
    );
  }
}
