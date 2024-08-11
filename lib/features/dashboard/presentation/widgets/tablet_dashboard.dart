import 'package:flutter/material.dart';
import '../../../main_dashboard/presentation/views/main_dashboard_tablet.dart';
import 'custom_bloc_consumber_drawer.dart';
import 'custom_drawer.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        // const Expanded(flex: 2, child: MainDashboardTablet()),
        Expanded(
          flex: 2,
          child: CustomBlocConsumerDrawer(
              dashboard: (context) => const MainDashboardTablet(),
              market: (context) => Container(color: Colors.red),
              tables: (context) => Container(color: Colors.blue),
              kanban: (context) => Container(color: Colors.green),
              profile: (context) => Container(color: Colors.yellow)),
        ),
      ],
    );
  }
}
