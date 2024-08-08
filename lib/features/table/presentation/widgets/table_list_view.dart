import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

import '../../data/models/table_model.dart';

class TableListView extends StatelessWidget {
  const TableListView({super.key, required this.tableModel});
  final TableModel tableModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tableModel.title, style: Styles.medium14(context)),
        const SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(tableModel.length, (index) {
            return Padding(
              padding:
                  EdgeInsets.only(bottom: tableModel.length == 4 ? 30 : 20),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                      tableModel.number == 1
                          ? tableModel.items1[index]
                          : tableModel.number == 2
                              ? tableModel.items2[index]
                              : tableModel.number == 3
                                  ? tableModel.items3[index]
                                  : tableModel.number == 4
                                      ? tableModel.items4[index]
                                      : tableModel.number == 5
                                          ? tableModel.items5[index]
                                          : tableModel.progressValue[index],
                      style: Styles.bold14(context))),
            );
          }),
        )
      ],
    );
  }
}
