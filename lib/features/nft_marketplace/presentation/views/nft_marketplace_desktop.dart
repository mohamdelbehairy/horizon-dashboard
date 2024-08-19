import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scroll_view_dashboard.dart';
import '../widgets/discover_and_trending_and_recently_section.dart';

class NftMarketplaceDesktop extends StatelessWidget {
  const NftMarketplaceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollViewDashboard(
      children: [
        CustomAppBar(title: 'NFT Marketplace'),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(flex: 2, child: DiscoverAndTrendingAndRecentlySection()),
            Expanded(
              child: Column(
                children: [],
              ),
            )
          ],
        )
      ],
    );
  }
}
