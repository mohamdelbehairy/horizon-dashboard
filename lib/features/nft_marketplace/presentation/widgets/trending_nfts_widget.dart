import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/nft_marketplace/presentation/manager/trending_and_recently/trending_and_recently_cubit.dart';
import 'trending_and_recently_list_view.dart';
import 'trending_nfts_header.dart';

class TrendingNFTsWidget extends StatelessWidget {
  const TrendingNFTsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TrendingNFTsHeader(),
        const SizedBox(height: 16),
        TrendingAndRecentlyListView(
            items: BlocProvider.of<TrendingAndRecentlyCubit>(context)
                .trendingNFTs),
      ],
    );
  }
}
