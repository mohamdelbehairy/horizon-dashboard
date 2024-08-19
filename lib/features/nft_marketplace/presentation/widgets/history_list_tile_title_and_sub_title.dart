import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';
import 'package:horizon/features/nft_marketplace/data/models/history_model.dart';

class HistoryListTileSubTitle extends StatelessWidget {
  const HistoryListTileSubTitle({super.key, required this.historyModel});
  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(historyModel.title,
            style: Styles.regular14(context)
                .copyWith(color: const Color(0xffA3AED0))),
      ),
    );
  }
}

class HistoryListTileTitle extends StatelessWidget {
  const HistoryListTileTitle({super.key, required this.historyModel});
  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(historyModel.subtitle,
            style: Styles.bold16(context)
                .copyWith(color: const Color(0xff1B2559))),
      ),
    );
  }
}
