import 'package:flutter/material.dart';

import 'trending_nfts_header_body.dart';

class TrendingNFTsHeader extends StatelessWidget {
  const TrendingNFTsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 800
        ? const TrendingNftsHeaderBody()
        : const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: TrendingNftsHeaderBody());
  }
}

