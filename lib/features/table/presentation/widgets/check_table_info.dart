import 'package:flutter/material.dart';
import 'package:horizon/features/table/data/models/table_model.dart';

import 'table_list_view.dart';
import 'check_table_name.dart';

class CheckTableInfo extends StatelessWidget {
  const CheckTableInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CheckTableName(),
        TableListView(tableModel: TableModel(title: 'PROGRESS', number: 2)),
        TableListView(tableModel: TableModel(title: 'QUANTITY', number: 3)),
        TableListView(tableModel: TableModel(title: 'DATE', number: 4)),
      ],
    );
  }
}
