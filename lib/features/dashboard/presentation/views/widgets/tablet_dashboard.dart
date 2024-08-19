import 'package:flutter/material.dart';
import '../../../../kanban/presentation/views/kanban_tablet.dart';
import '../../../../main_dashboard/presentation/views/main_dashboard_tablet.dart';
import '../../../../nft_marketplace/presentation/views/nft_marketplace_tablet.dart';
import '../../../../profile/presentation/views/profile_tablet.dart';
import '../../../../tables/presentation/views/tables_tablet.dart';
import 'custom_bloc_consumber_drawer.dart';
import 'custom_drawer.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: CustomBlocConsumerDrawer(
              dashboard: (context) => const MainDashboardTablet(),
              market: (context) => const NftMarketplaceTablet(),
              tables: (context) => const TablesTablet(),
              kanban: (context) => const KanbanTablet(),
              profile: (context) => const ProfileTablet()),
        ),
      ],
    );
  }
}


