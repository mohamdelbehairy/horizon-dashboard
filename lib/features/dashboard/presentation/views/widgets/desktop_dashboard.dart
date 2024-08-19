import 'package:flutter/material.dart';
import 'package:horizon/features/dashboard/presentation/views/widgets/custom_bloc_consumber_drawer.dart';
import 'package:horizon/features/kanban/presentation/views/kanban_desktop.dart';
import 'package:horizon/features/profile/presentation/views/profile_desktop.dart';
import 'package:horizon/features/tables/presentation/views/tables_desktop.dart';
import '../../../../nft_marketplace/presentation/views/nft_marketplace_desktop.dart';
import 'custom_drawer.dart';
import '../../../../main_dashboard/presentation/views/main_dashboard_desktop.dart';

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
              market: (context) => const NftMarketplaceDesktop(),
              tables: (context) => const TablesDesktop(),
              kanban: (context) => const KanbanDesktop(),
              profile: (context) => const ProfileDesktop()),
        ),
      ],
    );
  }
}
