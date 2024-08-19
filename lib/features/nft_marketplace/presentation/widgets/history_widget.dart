import 'package:flutter/material.dart';

import '../../../../core/models/background_model.dart';
import '../../../../core/widgets/custom_background.dart';
import 'history_list_view.dart';
import 'nft_marketplace_header.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundModel: BackgroundModel(
        right: 16,
        left: 16,
        top: 16,
        bottom: 16,
        child: const Column(
          children: [
            NftMarketplaceHeader(text: 'History'),
            SizedBox(height: 16),
            HistoryListView()
          ],
        ),
      ),
    );
  }
}
