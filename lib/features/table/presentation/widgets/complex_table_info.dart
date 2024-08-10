import 'package:flutter/material.dart';

import '../../data/models/table_model.dart';
import 'complex_table_status.dart';
import 'table_list_view.dart';

class ComplexTableInfo extends StatelessWidget {
  const ComplexTableInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TableListView(
            tableModel: TableModel(title: 'NAME', number: 1, length: 4)),
        if (MediaQuery.sizeOf(context).width < 365) const SizedBox(width: 32),
        ComplexTableStatus(tableModel: TableModel(title: 'STATUS', length: 4)),
        if (MediaQuery.sizeOf(context).width < 365) const SizedBox(width: 24),
        TableListView(
            tableModel: TableModel(title: 'DATE', number: 5, length: 4)),
        if (MediaQuery.sizeOf(context).width < 365) const SizedBox(width: 24),
        TableListView(
            tableModel: TableModel(title: 'PROGRESS', number: 6, length: 4)),
      ],
    );
  }
}
