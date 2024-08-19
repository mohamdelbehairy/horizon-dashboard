import 'package:flutter/material.dart';
import 'package:horizon/features/nft_marketplace/data/models/history_model.dart';

import 'history_active_and_in_active_list_tile.dart';

class HistoryListTile extends StatelessWidget {
  const HistoryListTile(
      {super.key, required this.historyModel, required this.isActive});
  final HistoryModel historyModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? HistoryActiveListTile(historyModel: historyModel)
        : HistoryInActiveListTile(historyModel: historyModel);
  }
}
