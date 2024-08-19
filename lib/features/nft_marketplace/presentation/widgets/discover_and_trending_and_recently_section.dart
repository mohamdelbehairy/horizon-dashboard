import 'package:flutter/material.dart';
import 'package:horizon/core/utils/assets.dart';

import 'recently_added_widget.dart';
import 'trending_nfts_widget.dart';

class DiscoverAndTrendingAndRecentlySection extends StatelessWidget {
  const DiscoverAndTrendingAndRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.imagesNftMarketHeader),
        const SizedBox(height: 32),
        const TrendingNFTsWidget(),
        const SizedBox(height: 32),
        const RecentlyAddedWidget(),
        const SizedBox(height: 32),
      ],
    );
  }
}
