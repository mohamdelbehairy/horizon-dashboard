import 'package:flutter/material.dart';
import '../../../main_dashboard/presentation/views/main_dashboard_mobile.dart';
import '../../../profile/presentation/views/profile_mobile.dart';
import 'custom_bloc_consumber_drawer.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: CustomBlocConsumerDrawer(
            dashboard: (context) => const MainDashboardMobile(),
            market: (context) => Container(color: Colors.red),
            tables: (context) => Container(color: Colors.blue),
            kanban: (context) => Container(color: Colors.green),
            profile: (context) => const ProfileMobile(),
          ),
        ),
      ],
    );
  }
}

