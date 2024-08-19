import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_footer.dart';
import 'package:horizon/core/widgets/custom_scroll_view_dashboard.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/discover_and_trending_and_recently_section.dart';
import '../widgets/history_widget.dart';
import '../widgets/top_creators_widget.dart';

class NftMarketplaceTablet extends StatelessWidget {
  const NftMarketplaceTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollViewDashboard(children: [
      const CustomAppBar(title: 'NFT Marketplace'),
      const SizedBox(height: 16),
      const DiscoverAndTrendingAndRecentlySection(),
      const SizedBox(height: 16),
      if (MediaQuery.sizeOf(context).width > 1100)
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: HistoryWidget()),
            SizedBox(width: 16),
            Expanded(child: TopCreatorsWidget()),
          ],
        ),
      if (MediaQuery.sizeOf(context).width < 1100) const HistoryWidget(),
      if (MediaQuery.sizeOf(context).width < 1100) const SizedBox(height: 16),
      if (MediaQuery.sizeOf(context).width < 1100) const TopCreatorsWidget(),
      const SizedBox(height: 16),
      const CustomFooter(),
      const SizedBox(height: 16),
    ]);
  }
}
