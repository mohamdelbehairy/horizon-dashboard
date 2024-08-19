import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../login/presentation/widgets/copy_right_widget.dart';
import '../widgets/discover_and_trending_and_recently_section.dart';
import '../widgets/history_widget.dart';
import '../widgets/top_creators_widget.dart';

class NftMarketplaceMobile extends StatelessWidget {
  const NftMarketplaceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: 'NFT Marketplace'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                SizedBox(height: 16),
                DiscoverAndTrendingAndRecentlySection(),
                SizedBox(height: 16),
                HistoryWidget(),
                SizedBox(height: 16),
                TopCreatorsWidget(),
                SizedBox(height: 16),
                MobileCopyRightWidget(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ]);
  }
}
