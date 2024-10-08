import 'package:flutter/material.dart';
import 'package:horizon/features/kanban/presentation/views/kanban_mobile.dart';
import '../../../../main_dashboard/presentation/views/main_dashboard_mobile.dart';
import '../../../../nft_marketplace/presentation/views/nft_marketplace_mobile.dart';
import '../../../../profile/presentation/views/profile_mobile.dart';
import '../../../../tables/presentation/views/tables_mobile.dart';
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
            market: (context) => const NftMarketplaceMobile(),
            tables: (context) => const TablesMobile(),
            kanban: (context) => const KanbanMobile(),
            profile: (context) => const ProfileMobile(),
          ),
        ),
      ],
    );
  }
}
