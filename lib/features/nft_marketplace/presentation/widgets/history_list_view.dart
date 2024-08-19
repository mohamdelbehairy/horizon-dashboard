import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/top_creators_and_history/top_creators_and_history_cubit.dart';
import 'history_list_tile.dart';

class HistoryListView extends StatefulWidget {
  const HistoryListView({super.key});

  @override
  State<HistoryListView> createState() => _HistoryListViewState();
}

class _HistoryListViewState extends State<HistoryListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: context
            .read<TopCreatorsAndHistoryCubit>()
            .historyBody
            .asMap()
            .entries
            .map((e) => Padding(
                  padding: EdgeInsets.only(
                      bottom: 24, left: activeIndex == e.key ? 0 : 16),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activeIndex = e.key;
                      });
                    },
                    child: HistoryListTile(
                        historyModel: e.value, isActive: activeIndex == e.key),
                  ),
                ))
            .toList());
  }
}
