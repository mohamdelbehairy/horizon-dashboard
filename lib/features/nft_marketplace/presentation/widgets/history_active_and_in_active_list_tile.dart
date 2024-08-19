import 'package:flutter/material.dart';

import '../../data/models/history_model.dart';
import 'history_list_tile_title_and_sub_title.dart';
import 'history_list_tile_trailing.dart';

class HistoryActiveListTile extends StatelessWidget {
  const HistoryActiveListTile({super.key, required this.historyModel});

  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 6,
                spreadRadius: 0.0,
                offset: const Offset(0.0, 4.0))
          ]),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(historyModel.image, fit: BoxFit.scaleDown),
        title: HistoryListTileTitle(historyModel: historyModel),
        subtitle: HistoryListTileSubTitle(historyModel: historyModel),
        trailing: HistoryListTileTraling(historyModel: historyModel),
      ),
    );
  }
}

class HistoryInActiveListTile extends StatelessWidget {
  const HistoryInActiveListTile({super.key, required this.historyModel});
  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(historyModel.image, fit: BoxFit.scaleDown),
      title: HistoryListTileTitle(historyModel: historyModel),
      subtitle: HistoryListTileSubTitle(historyModel: historyModel),
      trailing: HistoryListTileTraling(historyModel: historyModel),
    );
  }
}
