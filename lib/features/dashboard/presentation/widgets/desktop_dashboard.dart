import 'package:flutter/material.dart';
import 'package:horizon/features/dashboard/presentation/widgets/custom_bloc_consumber_drawer.dart';
import 'package:horizon/features/kanban/presentation/views/kanban_desktop.dart';
import 'package:horizon/features/profile/presentation/views/profile_desktop.dart';
import 'custom_drawer.dart';
import '../../../main_dashboard/presentation/views/main_dashboard_desktop.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomDrawer(),
        Expanded(
          child: CustomBlocConsumerDrawer(
              dashboard: (context) => const MainDashboardDesktop(),
              market: (context) => Container(color: Colors.red),
              tables: (context) => Container(color: Colors.blue),
              kanban: (context) => const KanbanDesktop(),
              profile: (context) => const ProfileDesktop()),
        ),
      ],
    );
  }
}
